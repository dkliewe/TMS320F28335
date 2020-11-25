@page adc ADC

The Analog-to-Digital Converter (ADC) module enables to convert an analog value of 0 V - 3 V into a digital value of 0-4095 on 16 channels.  
Possible ADC-Channels as input parameter are defined in global_defines.h and can also be seen in <a href="../html/db/dea/first_steps.html">this overview table</a>.

---



### Code example

```c
#include "global_defines.h"						//Include global_defines.h
#include "system_controls/system_controls.h"	//Include module of system controls
#include "adc/adc.h"							//Include module of ADC

void main(void){
    int adc_value = 0;							//Variable to store returned ADC-Value
    setSystemControls();						//Call setSystemControls() function		
    init_ADC();									//Call init_ADC() function to configure all 16 ADC channels
    while(1){									//Endless loop
        adc_value = ADC_getValue(ADCINA0);		//Get Value of ADC Channel A0. Function returns ADC value of 0-4095 or -1 for invalid input parameter
    }
}
```

---



### Documented C-Code of module:

<a href="dir_4dab8a2dc4741d147a951a94aaa47ae7.html">adc</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=445" target="_blank">Technical_Reference_Manual</a>

