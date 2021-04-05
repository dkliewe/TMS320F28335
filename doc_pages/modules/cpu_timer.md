@page cpu_timer CPU-Timer

Usage of 32-Bit CPU-Timer 0/1/2. Timer will be configured in microseconds.

CPU-Timer 0 and CPU-Timer 1 can be used in user applications. CPU-Timer 2 is reserved for DSP/BIOS. If the
application is not using DSP/BIOS, then CPU-Timer 2 can be used in the application.

---



### Code example

```c
#include "global_defines.h"						//Include global_defines.h
#include "cpu_timer/cpu_timer.h"				//Include module of cpu_timer
#include "general_output/general_output.h"		//Include module of general_output
#include "system_controls/system_controls.h"	//Include module of system controls

__interrupt void isr(void);						//Function prototype for interrupt service routine

void main(void){
    int result = 0;								//Optional: can be used to check return values of functions
    setSystemControls();						//Call setSystemControls() function
    result = init_generalOutputPin(GPIO22);		//Configure GPIO as general output
    result = init_CPUTimer(0, &isr);			//Configure CPU-Timer 0 to call function isr on interrupt. Returns result of operation
	result = CPUTimer_start(0, 1000000);		//Starts CPU-Timer 0 with 1000000 microSec <=> 1 sec. Returns result of operation
    while(1){
        										//Endless loop
    }
    result = CPUTimer_stop(0);					//Stops CPU-Timer 0. Returns result of operation
}


__interrupt void isr(void){						//Changes value on GPIO22 on every interrupt (every second)
	static int led_on=0;
	if(!led_on){
		generalOutputPin_setPinHigh(GPIO22);
		led_on = 1;
	}
	else{
		generalOutputPin_setPinLow(GPIO22);
		led_on = 0;
	}
	CPUTimer_interruptAck();					//Acknowledgement to get more interrupts
}
```

---



### Documented C-Code of module:

<a href="dir_798623b0749830126911e1dfdad5d0c6.html">cpu_timer</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=81" target="_blank">Technical_Reference_Manual</a>