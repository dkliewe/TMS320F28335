@page general_input_pin General Input

This module can be used to configure a GPIO as a general input pin.  Possible GPIO-values as input parameter are defined in global_defines.h and can also be seen in <a href="../html/db/dea/first_steps.html">this overview table</a>.  
The module allows to read the applied signal-value of the input pin (high=1/low=0).  
Furthermore an interrupt can be configured for an input pin at different events: 0=falling edge, 1=rising edge, 2=falling and rising edge.  
The function interrupt_ack() needs to be called at the end of an interrupt service routine, to acknowledge more interrupts.    

For **GPIO0 - GPIO31**: Two external interrupts can be configured (XINT1 - XINT2)  
For **GPIO32 - GPIO63**: Five external interrupts can be configured (XINT3 - XINT7)

---




### Code example
```c
#include "global_defines.h"														//Include global_defines.h
#include "general_input/general_input.h"										//Include module of general_input
#include "system_controls/system_controls.h"									//Include module of system_controls

__interrupt void isr(void);														//Function prototype for interrupt service routine

void main(void){
    int result = 0;																//Optional: can be used to check return values of functions
    setSystemControls();														//Call setSystemControls() function
    result = init_generalInputPin(GPIO0);										//Configures GPIO0 as general input pin. Returns result of operation
    result = generalInputPin_getValue(GPIO0);									//Get value of input pin. Returns value of applied signal on input pin (0=low/1=high) or -1 for invalid input parameter
    result = generalInputPin_configureExternalInterrupt(GPIO0, &isr, 0); 		//Configuring GPIO0 to listen for falling edge and to call function xint1_isr on interrupt. Returns result of operation
    while(1){
        																		//Endless loop
    }
}

__interrupt void isr(void){
	static int i = 0;
	i++;
	generalInputPin_interruptAck();												//Acknowledgement to get more interrupts
}
```

---



### Documented C-Code of module:

<a href="dir_696933bb00f0c12773530015290c1c27.html">general_input</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=92" target="_blank">Technical_Reference_Manual</a>