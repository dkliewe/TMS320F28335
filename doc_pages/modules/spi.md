@page spi SPI

The TMS320F28335 provides one Serial Peripheral Interface (SPI) module. The device can operate in SPI-Master or in SPI-Slave mode. For the configuration of the SPI-module, user needs to create an instance of SPIInterface and assign the GPIOs of SPI-module to it (see table below). 

User can also configure the length in bit to be sent and received by one message via SPI. The max. length is 16 bit.

To address different slaves, user has to configure different GPIOs as outputs and connect these pins to slave-select pins of slave. When starting communication with a slave, the respective GPIO output signal for this slave needs to be set to low. After communication, the respective GPIO output signal for this slave needs to be set to high again. The Slave-Select pin of SPI-Master is not connected  in this case.

When communicating to a slave, master sends data via SIMO to the slave and equal amount of databits is sent back from slave to master via SOMI. 

For data communication, there are 3 possibilities:

1) Master sends valid data to slave and gets back valid data from slave (valid communication in both ways)  
2) Master sends dummy data to slave and gets back valid data from slave (valid communication from slave to master)  
3) Master sends valid data to slave and gets back dummy data from slave (valid communication from master to slave)

--> Master only gets back data from slave (valid or not), when Master sends data to slave (valid or not)

---

|                                | Pin    |
| ------------------------------ | ------ |
| **Slave In Master Out (SIMO)** | GPIO16 |
| **Slave Out Master In (SOMI)** | GPIO17 |
| **Clock**                      | GPIO18 |
| **Slave-Select**               | GPIO19 |



---

### Code example

Configuration as SPI-Master without interrupt

```c
#include "global_defines.h"                     			//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "spi/spi.h"                   		   				//Include module of SPI

SPIInterface SPI_A = {GPIO16, GPIO17, GPIO18, GPIO19, 16};	//Instantiate SPIInterface and assign GPIO16, GPIO17, GPIO18 and GPIO19 to SPI_A with a wordlength of 16 Bit
	
void main(void){
    int spi_sdata = 0xF6F6;
    int spi_rdata = 0;
    int result = 0;                            				//Optional: can be used to check return values of functions
    setSystemControls();									//Call setSystemControls() function
    result = init_SPIMasterMode(SPI_A, 1500000); 			//Init SPI_A with a baudrate of 1,5 MHz. Return result of operation
    while(1){												//Endless loop
        SPI_send(spi_sdata);								//SPI send data to TX-FIFO
    	SPI_read(&spi_rdata);								//SPI read data from RX-FIFO
    }

}
```

Configuration as SPI-Master with interrupt

```c
#include "global_defines.h"                     			//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "spi/spi.h"                   		   				//Include module of SPI

SPIInterface SPI_A = {GPIO16, GPIO17, GPIO18, GPIO19, 16};	//Instantiate SPIInterface and assign GPIO16, GPIO17, GPIO18 and GPIO19 to SPI_A with a wordlength of 16 Bit

__interrupt void spiTxFIFOISR(void);						//Declare ISR for Tx
__interrupt void spiRxFIFOISR(void);						//Declare ISR for Rx

Uint16 spi_sdata;    										//Send data 
Uint16 spi_rdata;     										//Receive data 
	
void main(void){
    int result = 0;                            				//Optional: can be used to check return values of functions
    spi_rdata = 0;
    spi_sdata = 0x1234;										//Setup data for slave
    setSystemControls();									//Call setSystemControls() function
    result = init_SPIMasterMode(SPI_A, 1500000); 			//Init SPI_A with a baudrate of 1,5 MHz. Return result of operation
    SPI_setTxInterrupt(&spiTxFIFOISR);						//Assign Tx-ISR to SPI-module. Tx-ISR will be called when Tx-FIFO is empty. No return value
    SPI_setRxInterrupt(&spiRxFIFOISR);						//Assign Rx-ISR to SPI-module. Rx-ISR will be called when there are one or more words (word = 16 Bit) in Rx-FIFO. No return value
    while(1){
        													//Endless loop
    }
}

__interrupt void spiTxFIFOISR(void){
	SPI_send(spi_sdata);									//SPI send data to TX-FIFO - data will be sent to slave
	SPI_clearTxInterruptFlag();
	SPI_interruptAck();
}

__interrupt void spiRxFIFOISR(void){
	SPI_read(&spi_rdata);									//SPI read data from RX-FIFO
	SPI_clearRxInterruptFlag();
	SPI_interruptAck();
}
```



Configuration as SPI-Slave without interrupt

```c
#include "global_defines.h"                     			//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "spi/spi.h"                   		   				//Include module of SPI

SPIInterface SPI_A = {GPIO16, GPIO17, GPIO18, GPIO19, 16};	//Instantiate SPIInterface and assign GPIO16, GPIO17, GPIO18 and GPIO19 to SPI_A with a wordlength of 16 Bit
	
void main(void){
    int spi_sdata = 0xF6F6;
    int spi_rdata = 0;
    int result = 0;                            				//Optional: can be used to check return values of functions
    setSystemControls();									//Call setSystemControls() function
    result = init_SPISlaveMode(SPI_A); 						//Init SPI_A. Return result of operation
    while(1){												//Endless Loop
        SPI_send(spi_sdata);								//SPI send data to TX-FIFO. Data will only be shifted out when master sends data to slave
    	SPI_read(&spi_rdata);								//SPI read data from RX-FIFO
    }

}
```

Configuration as SPI-Slave with interrupt

```c
#include "global_defines.h"                     			//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "spi/spi.h"                   		   				//Include module of SPI

SPIInterface SPI_A = {GPIO16, GPIO17, GPIO18, GPIO19, 16};	//Instantiate SPIInterface and assign GPIO16, GPIO17, GPIO18 and GPIO19 to SPI_A with a wordlength of 16 Bit

__interrupt void spiTxFIFOISR(void);						//Declare ISR for Tx
__interrupt void spiRxFIFOISR(void);						//Declare ISR for Rx

Uint16 spi_sdata;    										//Send data 
Uint16 spi_rdata;     										//Receive data 
	
void main(void){
    int result = 0;                            				//Optional: can be used to check return values of functions
    spi_rdata = 0;
    spi_sdata = 0x1234;										//Setup data for slave
    setSystemControls();									//Call setSystemControls() function
    result = init_SPISlaveMode(SPI_A, 1500000); 			//Init SPI_A with a baudrate of 1,5 MHz. Return result of operation
    SPI_setTxInterrupt(&spiTxFIFOISR);						//Assign Tx-ISR to SPI-module. Tx-ISR will be called when Tx-FIFO is empty. No return value
    SPI_setRxInterrupt(&spiRxFIFOISR);						//Assign Rx-ISR to SPI-module. Rx-ISR will be called when there are one or more words (word = 16 Bit) in Rx-FIFO. No return value
    while(1){
        													//Endless loop
    }
}

__interrupt void spiTxFIFOISR(void){
	SPI_send(spi_sdata);									//SPI send data to TX-FIFO - data will only be shifted out when master sends data
	SPI_clearTxInterruptFlag();
	SPI_interruptAck();
}

__interrupt void spiRxFIFOISR(void){
	SPI_read(&spi_rdata);									//SPI read data from RX-FIFO
	SPI_clearRxInterruptFlag();
	SPI_interruptAck();
}
```



---



### Documented C-Code of module:

<a href="dir_74e3a7ad2c0344d5e2e438cbd6b4ae4f.html">SPI</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=548" target="_blank">Technical_Reference_Manual</a>