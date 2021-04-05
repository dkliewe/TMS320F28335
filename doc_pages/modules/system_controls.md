@page system_controls System Controls

The System Controls module configures the clock of the device. It sets the watchdog, the phase-locked loop (PLL) status register and configures the clocking of peripheral modules. This function <b>needs to be called first</b> to ensure the functionality of other modules.

---



### Code example

```c
#include "global_defines.h"				//Include global_defines
#include "system_controls.h"			//Include system controls module

void main(void){
    setSystemControls();				//Call setSystemControls() function in your main function
    									//Call other (init-) functions and write program
}
```

---




### Documented C-Code of module:

<a href="dir_d6d493f58fb291616d6d9bc3c45686a0.html">system_controls</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=59" target="_blank">Technical_Reference_Manual</a>

