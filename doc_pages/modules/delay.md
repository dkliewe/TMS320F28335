@page delay Delay

This page describes how to use the DELAY_US()-function

---

1) Click your Project with the right Mouse Button --> New --> File

2) Name your file "DSP2833x_usDelay.asm" - Ensure that it is an assembly file with ending .asm

![delay1](../doc_pages/modules/img/delay_1.png) 

![delay2](../doc_pages/modules/img/delay_2.png) 

Click Finish

![delay3](../doc_pages/modules/img/delay_3.png) 

3) Open file DSP2833x_usDelay.asm and replace code by <a href="../doc_documents/DSP2833x_usDelay.asm" target="_blank">this code</a>  

4) With included global_defines.h file, user is now able to use the DELAY_US() function which provides a delay for desired amount of microseconds

---



### Code example

```c
#include "global_defines.h"						//Include global_defines.h
#include "system_controls/system_controls.h"	//Include module of system controls

void main(void){
    setSystemControls();						//Call setSystemControls() function		
	DELAY_US(150);								//Delay of 150 microseconds
}
```



