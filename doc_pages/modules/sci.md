@page sci SCI

The Serial Communications Interface (SCI), also known as Universal Asynchronous Receiver Transmitter (UART) can be used for serial communication. Messages of 8 Bit can be transferred via up to three SCI-Modules: SCI_A, SCI_B, SCI_C. Each module can only be used once.

For the configuration of one of the SCI-modules, user needs to create an instance of SCIInterface and assign the GPIOs of desired SCI-Module to it (see table below).  

With Tx and Rx Pin, the SCI-Module can use full-duplex communication with specific baud rate, that also needs to be assigned to SCIInterface instance. Standard baud rates for SCI are 110, 300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 38400, 57600, 115200, 128000 and 256000 bits per second. 

---

|           | Rx                                  | Tx                               |
| --------- | ----------------------------------- | -------------------------------- |
| **SCI_A** | GPIO28                              | GPIO29                           |
| **SCI_B** | GPIO11 / GPIO 15 / GPIO19 /  GPIO23 | GPIO9 / GPIO14 / GPIO18 / GPIO22 |
| **SCI_C** | GPIO62                              | GPIO63                           |

---



### Code example

Use SCI-module without interrupts

```c
#include "global_defines.h"						//Include global_defines.h
#include "system_controls/system_controls.h"	//Include module of system controls
#include "sci/sci.h"			                //Include module of SCI

SCIInterface SCI_B = {GPIO11, GPIO9, 115200};	//Instantiate SCIInterface and assign GPIO11 (scirx) and GPIO9 (scitx) to SCI_B with baudrate 115200

void main(void){
    char sci_sdata = 0x66;
    char sci_rdata = 0;
    int result = 0;                             //Optional: can be used to check return values of functions
    setSystemControls();						//Call setSystemControls() function
    result = init_SCI(SCI_B);					//Configures SCI_B. Returns result of operation 
    while(1){									//Endless Loop
        result = SCI_send(SCI_B, sci_sdata);	//Sends 8 Bit via SCI_B Interface on tx pin. Returns result of operation 
    	result = SCI_read(SCI_B, &sci_rdata);	//Reads 8-Bit-Data via SCI_B Interface on rx pin. Returns result of operation 
    }
}
```



Use SCI-module with interrupts



```c
#include "global_defines.h"								//Include global_defines.h
#include "system_controls/system_controls.h"			//Include module of system controls
#include "sci/sci.h"			              			//Include module of SCI

SCIInterface SCI_B = {GPIO11, GPIO9, 115200};			//Instantiate SCIInterface and assign GPIO11 (scirx) and GPIO9 (scitx) to SCI_B with baudrate 115200

__interrupt void sciTxFIFOISR(void);					//Declare Tx Interrupt function
__interrupt void sciRxFIFOISR(void);					//Declare Rx Interrupt function

char sci_sdata;
char sci_rdata;

void main(void){
	sci_rdata = 0;
	sci_sdata = 0x66;
    int result = 0;                             		//Optional: can be used to check return values of functions
    setSystemControls();								//Call setSystemControls() function
    result = init_SCI(SCI_B);							//Configures SCI_B. Returns result of operation 
    result = SCI_setInterruptRx(SCI_B, &sciRxFIFOISR); 	//Assign Rx-ISR to SCI-module B. Rx-ISR will be called when there is one or more byte in Rx-FIFO. Returns result of operation
	result = SCI_setInterruptTx(SCI_B, &sciTxFIFOISR);	//Assign Tx-ISR to SCI-module B. Tx-ISR will be called when Tx-FIFO is empty. Returns result of operation
    while(1){
        												//Endless loop
    }
}

__interrupt void sciTxFIFOISR(void){
    int result = 0;
	result = SCI_send(SCI_B, sci_sdata);				//Send data
	result = SCI_clearTxInterruptFlag(SCI_B);			//Clear Interrupt Flag
	SCI_interruptAck();									//Acknowledgement for future interrupts
}

__interrupt void sciRxFIFOISR(void){
    int result = 0;
	result = SCI_read(SCI_B, &sci_rdata);				//Receive data
	SCI_clearRxInterruptFlag(SCI_B);					//Clear Interrupt Flag
	SCI_interruptAck();									//Acknowledgement for future interrupts
}
```



---



### Documented C-Code of module:

<a href="dir_abd9d75bd53711dcc65e38733baa2f85.html">SCI</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=581" target="_blank">Technical_Reference_Manual</a>