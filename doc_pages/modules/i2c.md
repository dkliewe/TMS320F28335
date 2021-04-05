@page i2c I2C

I2C is an Interface for serial communication between different devices. Therefore, one device acts as a master, other participants of the I2C-Bus act as slaves. Each slave has it's own, unique slave address. The master can address the slaves via this address.   

The Microcontroller offers one I2C-Interface, which is on GPIO32 and GPIO33. GPIO32 can be configured as I2C-SDA-Pin for Datatransmission, GPIO33 can be configured as I2C-SCL-Pin for sending or receiving the Clock-Signal for I2C-operations. The TMS320F28335 can operate in I2C-Master and in I2C-Slave mode. In master mode, the Microcontroller can send data actively, in slave mode, all operations for receiving and sending data are managed via interrupts.

Slave-Address-Length is configured to 7 Bit.  
Valid values are from 0x01 to 0x3F. Address 0x00 is used for broadcast to send data to all slaves on I2C-Bus. 

For Rx- and Tx-operations, I2CMSG_transmit type can be used by assigning values for slave address, Register-Address-Length, Register-Address-High- and -Low-Byte, Data-Length and Databytes to each object.  

In Master Mode, TMS320F28335 provides I2C-operations with 100 Kbit per second with 100 kHz on SCL. The maximal length of databytes per transmission is 16 byte.

When TMS320F28335 is configured as I2C-Slave, Master always has to send 2 Registerbytes and 2 Databytes for successful Tx-communication. Make sure that the exact Register-address of I2C-Slave is used to prevent misconfiguration. For successful Rx-communication, Master has to send two Registerbytes to TMS320F28335 -I2C-Slave. Slave will write the value of requested register to I2C-Bus then.

---



### Code examples

Configuration as I2C-Master

```c
#include "global_defines.h"								//Include global_defines.h
#include "system_controls/system_controls.h"			//Include module of system controls
#include "i2c/i2c.h"									//Include module of I2C

I2CInterface I2C = {GPIO32, GPIO33};					//Instantiate I2CInterface and assign GPIO32 and GPIO33 to I2C

I2CMSG_transmit Example_write1 ={
	0x21,												//Slave Address
	0x01,												//Register Length in Byte
	0x00,												//Register Address High
	0x05,												//Register Address Low
	0x03,												//Data Length in Byte
	0x61,												//Data Byte 0
    0x62,												//Data Byte 1
    0x63												//Data Byte 2
};

I2CMSG_transmit Example_write2 ={
	0x21,												//Slave Address
	0x00,												//Register Length in Byte
	0x00,												//Register Address High
	0x00,												//Register Address Low
	0x02,												//Data Length in Byte
	0x00												//Data
};

I2CMSG_transmit Example_read1 ={
	0x21,												//Slave Address
	0x02,												//Register Length in Byte
	0x68,												//Register Address High
	0x44,												//Register Address Low
	0x02,												//Data Length in Byte
	0x00												//Data
};

void main(void){
    int result = 0;                             		//Optional: can be used to check return values of functions
    setSystemControls();								//Call setSystemControls() function
    result = init_I2CMasterMode(I2C);					//Configures GPIO32 and GPIO33 as I2C SDA and I2C SCL. Returns result of operation		
    result = I2C_writeDataAsMaster(&Example_write1);	//Addresses Slave 0x21 and sends 1 Registerbyte and 3 Databytes to Bus. Returns result of operation		
    Example_write2.Data[0] = 0x61;						//Setting up data for Example_write2
    Example_write2.Data[1] = 0x62;						//Setting up data for Example_write2
    result = I2C_writeDataAsMaster(&Example_write2);	//Addresses Slave 0x21 and sends 2 Databytes to Bus. Returns result of operation		
    result = I2C_readDataAsMaster(&Example_read1);		//Addresses Slave 0x21 and asks for data in Register 0x6844. Expects to receive 2 Databytes from Slave. Received Data is stored in Example_read1.Data[]. Returns result of operation		    
}
```



Configuration as I2C-Slave

```c
#include "global_defines.h"								//Include global_defines.h
#include "system_controls/system_controls.h"			//Include module of system controls
#include "i2c/i2c.h"                                    //Include module of I2C

I2CInterface I2C = {GPIO32, GPIO33};					//Define Interface and assign GPIOs

void main(void){
    int result = 0;                             		//Optional: can be used to check return values of functions
    setSystemControls();								//Call setSystemControls() function
    result = init_I2CSlaveMode(I2C, 0x3);				//Configures GPIO32 and GPIO33 as I2C SDA and I2C SCL. Sets slave adress of Device to 0x3. Returns result of operation			    
    while(1){
        												//Endless loop
    }
}
```

---



### Documented C-Code of module:

<a href="dir_4c25b4c2861b8c1e9e0cda0ff69bb2a5.html">I2C</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=616" target="_blank">Technical_Reference_Manual</a>