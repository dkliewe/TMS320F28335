@page eqep eQEP

The enhanced Quadrature Encoder Pulse (eQEP) module can be used to read information about speed and direction from an encoder for rotary machines. Therefore, the encoder needs to provide two signals that are shifted 90° out of phase from each other: QEPA and QEPB. Furthermore the amount of lines for rotary detection of the encoder needs to be known.  
The TMS302F28335 offers two eQEP-Interfaces: eQEP1 and eQEP2. Each Interface supports up to 4 Pins: QEPA, QEPB, QEPI, QEPS. The implementation of eQEP in this library only uses QEPA and QEPB of one module.

eQEP_getDirection() returns 0 for Counter-clockwise rotation (or reverse movement) and 1 for Clockwise rotation (or forward movement).   
eQEP_getRpm() returns the speed in revolution per minute. 



---

|           | QEPA   | QEPB   |
| --------- | ------ | ------ |
| **eQEP1** | GPIO20 | GPIO21 |
| **eQEP2** | GPIO24 | GPIO25 |

---



### Code example

```c
#include "global_defines.h"						//Include global_defines.h
#include "system_controls/system_controls.h"	//Include module of system controls
#include "eqep/eqep.h"							//Include module of eQEP

eQEPInterface eQEP_1 = {GPIO20, GPIO21, 300};	//Instantiate eQEP Module1 with QEPA on GPIO20, QEPB on GPIO21 and 300 lines for rotary detection of the encoder

void main(void){
    int result = 0;                           	//Optional: can be used to check return values of functions
    int direction = 0;
    int eqep_rpm = 0;
    setSystemControls();						//Call setSystemControls() function
    result = init_eQEP(eQEP_1);					//Configures eQEP1 module. Returns result of operation
    while(1){									//Endless loop
        direction = eQEP_getDirection(eQEP_1);	//Returns the direction of rotary machine/encoder plugged to eQEP1. Returns negative value for invalid input parameter
    	eqep_rpm = eQEP_getRpm(eQEP_1);			//Returns the speed of rotary machine/encoder plugged to eQEP1 in revolution per minute. Returns negative value for invalid input parameter   
    }

}
```

---



### Documented C-Code of module:

<a href="dir_3f97004f7146f2ff37b8e6d1b0cfcac4.html">eQEP</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=389" target="_blank">Technical_Reference_Manual</a>