@page epwm ePWM

Configure a GPIO pin as ePWM. Set frequency and start PWM signal with specific dutycycle.  

**Min. frequency:** 1145 Hz (2289 Hz in Up- or Down-Count-Mode)  
**Max. frequency:** 1 MHz

**Min. dutycycle:** 0    
**Max. dutycycle:** 100

---



|           | ePWMxA | ePWMxB |
| --------- | ------ | ------ |
| **ePWM1** | GPIO0  | GPIO1  |
| **ePWM2** | GPIO2  | GPIO3  |
| **ePWM3** | GPIO4  | GPIO5  |
| **ePWM4** | GPIO6  | GPIO7  |
| **ePWM5** | GPIO8  | GPIO9  |
| **ePWM6** | GPIO10 | GPIO11 |

----

### Initialisation of ePWM Pins

- ePWMxA and ePWMxB pins can be configured and signals can be set independently.  
- ePWMxA and ePWMxB pins can be driven with different dutycycles but **not with different frequencies**.  
  --> Configuring a pin as ePWM output with a frequency will affect both pins of the respective PWM-module: ePWMxA and ePWMxB.  

```c
init_ePWM(GPIO0, 125000);	//configuring ePWM1A with 125 kHZ
init_ePWM(GPIO1, 100000);	//configuring ePWM1B with 100 kHz
```
- ePWM1A and ePWM1B will both run at 100 kHz because they belong to one PWM-module (which was configured with 100 kHz)
- first configuration is overwritten
-  both pins need to be configured to ensure their configuration as ePWM pins


If you want to use both ePWM pins of one module, ePWMxA and ePWMxB, configure both with the same frequency to prevent misconfiguration:

```c
init_ePWM(GPIO0, 100000);	//configuring ePWM1A with 100 kHZ
init_ePWM(GPIO1, 100000);	//configuring ePWM1B with 100 kHz
```

----



### Code example

```c
#include "global_defines.h"						//Include global_defines.h
#include "system_controls/system_controls.h"	//Include module of system controls
#include "epwm/epwm.h"							//Include module of epwm

void main(void){
	int result = 0;								//Optional: can be used to check return values of functions
    setSystemControls();						//Call setSystemControls() function
	result = init_ePWM(GPIO0, 100000);			//Init GPIO0 pin as ePWM1A pin with a frequency of 100 kHz. Returns result of operation
	result = ePWM_start(GPIO0, 50);				//Start ePWM1A output signal on GPIO0 with a Dutycycle of 50%. Returns result of operation
    while(1){
        										//Endless loop
    }
	result = ePWM_stop(GPIO0);					//Stop ePWM1A output signal on GPIO0. GPIO0 is set to low. Returns result of operation
}
```

---



### Documented C-Code of module:

<a href="dir_df5f356de0723df4fb4c9c590c71ccd9.html">epwm</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=218" target="_blank">Technical_Reference_Manual</a>