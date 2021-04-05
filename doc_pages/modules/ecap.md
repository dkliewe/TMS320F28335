@page ecap eCAP

The enhanced capture (eCAP) module, can be used in systems where accurate
timing of external events is important. The eCAP module provides 6 eCAP channels, where one eCAP channel provides 4 x 32-bit time-stamp capture registers. eCAP channels also can be configured to provide a single-channel PWM output.  
Each eCAP-Module (eCAP1-eCAP6) can only be used once. 

---

|           | **Pin**                 |
| --------- | ----------------------- |
| **eCAP1** | GPIO5 / GPIO24 / GPIO34 |
| **eCAP2** | GPIO7 / GPIO25          |
| **eCAP3** | GPIO9 / GPIO26          |
| **eCAP4** | GPIO11 / GPIO27         |
| **eCAP5** | GPIO3 / GPIO48          |
| **eCAP6** | GPIO1 / GPIO49          |



---



### Code example 1 (Capture mode)

In this example, eCAP1 is configured on GPIO24. As default, eCAPx is configured with an Interrupt-Service-Routine (ISR) that calculates the applied frequency on respective pin.

```c
#include "global_defines.h"									//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "ecap/ecap.h"										//Include module of eCAP

void main(void){
    int result = 0;                             			//Optional: can be used to check return values of functions
	int frequency_ecap = 0;   
    setSystemControls();									//Call setSystemControls() function
    result = init_eCAP(GPIO24);								//Configures GPIO24 as eCAP pin. Returns result of operation
    while(1){												//Endless loop
        frequency_ecap = eCAP_getFrequency(GPIO24);			//Get frequency on GPIO24. Function returns frequency or negative value for invalid input-parameter or missing configuration  
    }
}
```

---

### Code example 2 (PWM mode)

An eCAP-Module can also be used to generate a PWM-signal with specific frequency and specific dutycycle on configured pin :

**Min. frequency:** 2 Hz  
**Max. frequency:** 1 MHz

**Min. dutycycle:** 0    
**Max. dutycycle:** 100

```c
#include "global_defines.h"									//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "ecap/ecap.h"										//Include module of eCAP

void main(void){
    int result = 0;                   		    			//Optional: can be used to check return values of functions
    setSystemControls();									//Call setSystemControls() function
    result = init_eCAP(GPIO24);								//Configures GPIO24 as eCAP pin. Returns result of operation
    result = eCAP_pwmOutput(GPIO24, 10000, 50);				//Call function to generate a PWM-signal with frequency of 10 kHz and Dutycycle of 50 % on GPIO24. Returns result of operation
    while(1){
        													//Endless loop
    }
}
```



---



### Documented C-Code of module:

<a href="dir_19d118a85527f637ceaaf5d079ae5c69.html">eCAP</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=349" target="_blank">Technical_Reference_Manual</a>