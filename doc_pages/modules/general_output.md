@page general_output_pin General Output

This module can be used to configure a GPIO as a general output pin with two possible states: HIGH (3,3 V) and LOW (0 V).  
Possible GPIO-values as input parameter are defined in global_defines.h and can also be seen in <a href="../html/db/dea/first_steps.html">this overview table</a>.

---



### Code example
```c
#include "global_defines.h"								//Include global_defines.h
#include "general_output.h"								//Include module of general_output
#include "system_controls.h"							//Include module of system controls

void main(void){
    int result = 0;										//Optional: can be used to check return values of functions
    setSystemControls();								//Call setSystemControls() function
    result = init_generalOutputPin(GPIO0);				//Configures GPIO0 as general output pin. Returns result of operation
    result = generalOutputPin_setPinHigh(GPIO0);		//Set output pin high (3,3 V). Returns result of operation
    DELAY_US(150000);									//Delay of 150 milliseconds
    result = generalOutputPin_setPinLow(GPIO0);			//Set output pin low (0 V). Returns result of operation
}
```

---



### Documented C-Code of module:

<a href="dir_d69eb471f4b1060fd0ede99694f9c60e.html">general_output</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=92" target="_blank">Technical_Reference_Manual</a>