@page can CAN

The TMS302F28335 offers two CAN-Interfaces: CAN_A and CAN_B. Each Interface needs one RX and one TX Pin for receive and transmit operations. Each Interface can only be used one time.

Each CAN-Module can use up to 32 mailboxes. Use 0-15 for Tx-operations, and 16-31 for Rx- operation. 

For configuration of mailboxes, user needs to create an object of type CanMailbox and assign values for Identifier, extended Identifier, messageLength, direction and active/inactive to respective object.

For extended Identifier = 0, the Identifier-length will be 11 bit. Identifier values are valid from 0x00 to 0x7FF.   
For extended Identifier = 1, the  Identifier-length will be 29 bit. Identifier values are valid from 0x00 to 0x1FFF FFFF.  
Messages are priorized by lowest identifier first

Amount of  data-bytes that will be sent or received via a mailbox, needs to be configured by assigning a value to messageLength attribute of CanMailbox object. The maximal length for receive and transmit operations is 8 byte. Variable msg for CAN-operations in example code is of type Uint64. Using a variable of Uint64 for receive and transmit operations enables the module to read and write all bytes (in case of messageLength = 8).

---

|           | RX                                | TX                               |
| --------- | --------------------------------- | -------------------------------- |
| **CAN_A** | GPIO18 / GPIO30                   | GPIO19 / GPIO31                  |
| **CAN_B** | GPIO10 / GPIO13 / GPIO17 / GPIO21 | GPIO8 / GPIO12 / GPIO16 / GPIO20 |

---



### Code example

```c
#include "global_defines.h"									//Include global_defines.h
#include "system_controls/system_controls.h"				//Include module of system controls
#include "can/can.h"										//Include module of CAN

Uint16 runProgram=True;										//Declaration of global variable

CanInterface CAN_A = {GPIO30, GPIO31};						//Instantiate CANInterface and assign GPIO30 and GPIO31 to CAN_A
CanMailbox CAN_MB_0 = {0x00, 0, 0, CAN_Rx, 1};				//Instantiate CAN-Mailbox: Identifier 0x00, extended 0 (no), messageLength in Byte (0), direction CAN_Rx (receive), active (1) as CAN_MB_0
CanMailbox CAN_MB_1 = {0x01, 0, 4, CAN_Rx, 1};				//Instantiate CAN-Mailbox: Identifier 0x01, extended 0 (no), messageLength in Byte (4), direction CAN_Rx (receive), active (1) as CAN_MB_1
CanMailbox CAN_MB_2 = {0x02, 0, 2, CAN_Tx, 1};  			//Instantiate CAN-Mailbox: Identifier 0x02, extended 0 (no), messageLength in Byte (2), direction CAN_Tx (transmit), active (1) as CAN_MB_2

void main(void){
    int result = 0;											//Optional: can be used to check return values of functions
    Uint64 msg = 0;											//Create variables for CAN-operations
    int mBYTES[4];
    setSystemControls();									//Call setSystemControls() function
    result = init_CAN(CAN_A, 100000);						//Init CAN_A peripheral with baudrate of 100 kHz. Returns result of operation

	CAN_setupMailbox(CAN_A, 0, &CAN_MB_0);					//Setup mailbox CAN_MB_0 and assign mailbox-number 0 to Mailbox CAN_MB_0
	CAN_setupMailbox(CAN_A, 1, &CAN_MB_1);					//Setup mailbox CAN_MB_1 and assign mailbox-number 1 to Mailbox CAN_MB_1
    CAN_setupMailbox(CAN_A, 2, &CAN_MB_2);					//Setup mailbox CAN_MB_2 and assign mailbox-number 2 to Mailbox CAN_MB_2
    
    while(runProgram){
        if (CAN_dataAvailableAtMailbox(CAN_A, 0)){           //Check if mailbox message available at CAN_A mailbox0
			CAN_getDataFromMailbox(CAN_A, 0, &msg, CAN_MB_0.messageLength); //Save message from CAN_A mailbox 0 in variable msg
		    runProgram=False;								 //Stop program, because of received message on CAN_A mailbox 0
		}
		else if(CAN_dataAvailableAtMailbox(CAN_A, 1)){		 //Check if mailbox message available at CAN_A mailbox 1
			CAN_getDataFromMailbox(CAN_A, 1, &msg, CAN_MB_1.messageLength); //Save message from CAN_A mailbox 0 in variable msg

			mBYTES[0] = (msg >> 0) & 0xFF;                   //Copy CAN message byte 0 in mBytes[0]
			mBYTES[1] = (msg >> 8) & 0xFF;             		 //Copy CAN message byte 1 in mBytes[1]
            mBYTES[2] = (msg >> 16) & 0xFF;                  //Copy CAN message byte 2 in mBytes[2]
            mBYTES[3] = (msg >> 24) & 0xFF;                  //Copy CAN message byte 3 in mBytes[3]
			msg = 0;                                         //Clean msg data
		}
        
        msg = 0x1122;										 //Setup Data for transmission
        CAN_sendDataOnMailbox(CAN_A, 2, &msg, CAN_MB_2.messageLength);	 //Send Data msg on Tx mailbox-number 2
    }
}
```

---



### Documented C-Code of module:

<a href="dir_3fb58befa5a5aac34aab8587948ccb58.html">CAN</a>

---




### Detailed description in Technical Reference Manual:

<a href="../doc_documents/Technical_Reference_Manual.pdf#page=773" target="_blank">Technical_Reference_Manual</a>