; Enthält den Code zum Initialisieren des Controllers
; Wird vor der main() ausgeführt


    .ref _c_int00       ; _c_int00 bekanntmachen

    .global _RamfuncsLoadStart
    .global _RamfuncsLoadEnd

    .global code_start  ; code_start funktion veröffentlichen

********************************************************************
* Defines der benötigten Registeradressen
********************************************************************
    .define "#0x1C0",SYSCTL_PAGE
    .define "@0x11",PLLSTS
    .define "@0x1C",PCLKCR0
    .define "@0x1D",PCLKCR1
    .define "@0x20",PCLKCR3
    .define "@0x21",PLLCR
    .define "@0x29",WDCR

    .define "#0x33",PIE_PAGE
    .define "@0x20",PIECTRL
    .define "@0x22",PIEIER1

    .define "#0x02A",FLASH_PAGE
    .define "@0x00",FOPT
    .define "@0x86",FBANKWAIT
    .define "@0x87",FOTPWAIT

    .define "#0x1BE",GPIO_PAGE
    .define "@0x09",GPAMUX2H


    .define "#0x180",CANA_PAGE
    .define "@0x2A",CANTIOC
    .define "@0x2C",CANRIOC
    .define "@0x14",CANMC

    .define "#0x030",TIMER_PAGE
    .define "@0x02",TIMER0PRD
    .define "@0x04",TIMER0CR
    .define "@0x06",TIMER0TPR
    .define "@0x0A",TIMER1PRD
    .define "@0x0B",TIMER1PRDH
    .define "@0x0C",TIMER1CR
    .define "@0x0E",TIMER1TPR
    .define "@0x0F",TIMER1TPRH

    .define "#0x1C4",ADC_PAGE
    .define "@0x18",ADCTRL3
    .define "@0x00",ADCTRL1
    .define "@0x01",ADCTRL2
    .define "@0x02",ADCMAXCONV



    .define "#0x1C4",ADC_PAGE


************************************************************
*Funktion: code_start
*
*Description: Lädt die initialisierungsfunktion
*
*Section: codestart
*************************************************************

    .sect "codestart"

code_start:
    LB  _initialise_controller

************************************************************
*Funktion: initialise
*
*Description: Initialiseiert den Controller
*
*Section: text
*************************************************************

    .text


_initialise_controller:
    SETC OBJMODE
    EALLOW

    ;Watchdog abschalten
    MOVW DP,SYSCTL_PAGE   ;Data-Page setzen
    MOV WDCR,#0x00E8   ;Watchdog abschalten
    ;PLL auf 150MHz einstellen
    MOV PLLSTS,#0x0040  ; PLL Bypassen und Missing Clock Detection abschalten
    MOV PLLCR,#0x000A   ; Multiplikaotr auf 10 einstellen
    TBIT PLLSTS,#0x0    ; Prüfen ob PLL stabil ist
    SBF  #-1,NTC
    MOV PLLSTS,#0x0100  ; Teiler auf 2 einstellen
    MOV PCLKCR0,#0xffff ; Peripherie-Takt einschalten
    MOV PCLKCR1,#0xffff
    MOV PCLKCR3,#0xffff

    MOVW DP,PIE_PAGE
    MOV  PIECTRL,#0x0001    ; PIE aktivieren

    ;Erste und letzte Adresse des Ramfuncs sectors laden
    MOVL  XAR5, #_RamfuncsLoadStart
    MOVL  XAR4, #_RamfuncsLoadEnd
    MOVL  @ACC, XAR5
    SUBL  @XAR4, ACC
    MOVL  @ACC, XAR4
    MOVL  XAR4, #0x008000
    LCR   __memcpy_ff ;
    LCR  init_Flash   ; Flash Initialisieren


    LCR _ADC_cal    ; ADA_Kalibrieren

    LB init_CAN     ; CAN Initialisieren
CAN_RET:

    LCR init_Timer  ; Timer0-2 Initialisieren

    LB init_ADC     ; AD-Wandler initialisieren
ADC_RET:



    ;Interrupts aktivieren
    MOVW DP,PIE_PAGE
    MOV  PIEIER1,  #0x0048
    OR   IER,#0x1                ;Interrrupt aktivieren

    clrc INTM

    EDIS
    LB _c_int00



init_CAN:
    MOVW DP,GPIO_PAGE
    MOV GPAMUX2H,#0x5000    ; GPIO 30 und 31 als CAN-Rx/Tx
    MOVW DP,CANA_PAGE
    MOV  CANRIOC,#0x08       ; CAN-Rx Pin aktivieren
    MOV  CANTIOC,#0x08       ; CAN-TX Pin aktivieren
    MOV  AL,#0x2400
    MOV  AH,#0x0001
    MOVL CANMC,ACC      ; E-CAN-Modu    s, Datenordnung= Highbyte->Lowbyte

    ;Mailboxen zurücksetzen
    MOV   *-SP[1], #0           ;Zähler mit 0 Initialisieren
CANMCR_Reset_loop:
    MOV   ACC, *-SP[1] << 3     ;Zählerwert*8 in den ACC laden
    MOVL  XAR4, #0x006100       ;Basisadresse = Adresse des MSGCTRL von MO-0 laden
    MOVB  XAR6, #0x00           ;Wert der in das Register geschrieben werden soll
    ADDL  @XAR4, ACC            ;Adressoffset zur basisadresse lande
    MOVL  *+XAR4[0], XAR6       ;Wert in das aktuelle MSGID laden
    MOVL  *+XAR4[2], XAR6       ;Wert in das aktuelle MSGCTRL laden
    MOVL  *+XAR4[4], XAR6       ;Wert in das aktuelle CANMDL laden
    MOVL  *+XAR4[6], XAR6       ;Wert in das aktuelle CANMDH laden
    INC   *-SP[1]               ;Zähler um 1 erhöhen
    MOV   AL, *-SP[1]           ;Zählerwert in den ACC (Akkumulator) laden
    CMPB  AL, #0x20             ;Mit Maximalwert (32) vergleichen
    SB    CANMCR_Reset_loop, LO ;Wenn Kleiner Schleife nochmal durchlaufen

    LB CAN_RET



init_Timer:
    MOVW DP,TIMER_PAGE
    MOV  TIMER0TPR, #1         ;Prescaler 150 -> Zählfrequenz 1MHz
    MOV  TIMER0PRD,#150        ;Periode   1000 -> Interruptfrequenz 1kHz -> Periode = 1ms
    MOV  TIMER0CR, #0x4810       ;Free Running Modus und Interrupt enable

    MOV  TIMER1TPR, #150         ;Prescaler 150 -> Zählfrequenz 1MHz -> Auflösung 1µS
    MOV  TIMER1PRD ,#0xFFFF
    MOV  TIMER1PRDH,#0x7FFF
    MOV  TIMER1CR, #0x0810       ;Free Running Modus und Interrupt enable

    LRETR

init_ADC:

    MOVW DP,ADC_PAGE
    MOV  ADCTRL3,  #0x00E6      ; Aktivieren des ADC
    MOV  ADCTRL1,  #0x0700      ;
    LB   ADC_RET


;*********************************************************************
;*Funktion zum Initialisieren des Flash-Timings
;*********************************************************************
    .sect "ramfuncs"
init_Flash:
    MOVW DP,FLASH_PAGE
    MOV FOPT,#0x0001        ;Flash-pipelining aktivieren
    MOV FBANKWAIT,#0x0505   ;Waitstates laut Datenblatt setzen
    MOV FOTPWAIT,#0x0008    ;
    RPT #7 || NOP           ; 7 Zyklen Waren damit Flash sich initialisieren kann
    LRETR


;*********************************************************************
;*Funktion zum Kalibirieren des A/D-Wandlers. Kalibrierungswerten
;*sind von Texas im Werk ermittelt worden und im
;*ADC_CAL Speicherbereich hinterlegt
;*********************************************************************
    .sect ".adc_cal"

_ADC_cal:
    MOVW  DP,ADC_PAGE
    MOV   @28,#0xAAAA     ; Platzhalter, Richtiger Wert ist von Texas schon einprogrammiert worden
    MOV   @29,#0xBBBB     ; Platzhalter, Richtiger Wert ist von Texas schon einprogrammiert worden
    LRETR


;*********************************************************************
; Funktion zum Kopieren des Inhalts eines Speicherbereichs aus dem Flash
; in den RAM
;*********************************************************************
   .text

__memcpy_ff:
    MOVL  P, ACC
    MOV   AL, @PL
    MOVL  XAR0, @XAR4
    MOVL  XAR7, @XAR4
    SBF   7, EQ
    ADDB  AL, #-1
    MOVZ  AR6, @AL
    MOV   AL, *XAR5++
    MOV   *XAR7++, AL
    BANZ  -2,AR6--
    MOV   AL, @PL
    MOVZ  AR6, @AL
    MOVL  @ACC, P
    CMPL  ACC, @XAR6
    SBF   16, EQ
    MOV   AH, @PH
    SBF   14, EQ
    MOVL  @ACC, P
    ADDB  AH, #-1
    MOVZ  AR4, @AH
    MOVL  XAR6, #0x3ffffe
    MOV   AL, *XAR5++
    MOV   *XAR7++, AL
    BANZ  -2,AR6--
    MOV   AL, *XAR5++
    MOV   *XAR7++, AL
    BANZ  -8,AR4--
    MOVL  XAR4, @XAR0
    LRETR

    .end
