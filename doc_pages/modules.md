Modules {#ModuleSection}
===============

<div class="contents">
<div class="textblock">Modules of the TMS320F28335 Library with brief descriptions:</div><div class="directory">
<table class="directory">
<tr id="row_0_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage system_controls</div>
    </td>
    <td class="desc">The System Controls module configures the clocks of peripheral modules, the watchdog and the PLL status register. Therefore this function <b>needs to be called first</b> to ensure the functionality of other modules.</td>
</tr>
    <tr id="row_1_">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage general_output_pin</div>
    </td>
    <td class="desc">The General Output module can be used to configure a GPIO as a general output pin with two possible states: HIGH (3,3 V) and LOW (0 V).</td>
</tr>
<tr id="row_2_" class="even">
    <td class="entry"><div class="el" style="font-size:15px; height: 25px;">@subpage general_input_pin</div>
    </td>
    <td class="desc">The General Input module can be used to configure a GPIO as a general input pin. It enables to read the signal value of the input pin and to generate interrupts on different input events.</td>
</tr>
<tr id="row_3_">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage adc</div>
    </td>
    <td class="desc">The Analog-to-Digital Converter (ADC) module enables to convert an analog value of 0 V - 3 V into a digital value of 0-4095 on 16 channels.</td>
</tr>
<tr id="row_4_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage can</div>
    </td>
    <td class="desc">The two Controller-Area-Network (CAN) Interfaces CAN_A and CAN_B offer up to 32 mailboxes each. Mailboxes can be configured with different identifiers and can be used for transmit- and receive-operations.The max. message-length for each operation is 8 byte.</td>
</tr>
<tr id="row_5_">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage cpu_timer</div>
    </td>
    <td class="desc">The CPU-Timer module provides the usage of 32-Bit CPU-Timer 0/1/2.</td>
</tr>
    <tr id="row_6_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage ecap</div>
    </td>
    <td class="desc">The enhanced capture (eCAP) module, can be used in systems where accurate
timing of external events is important or to provide a single-channel PWM output.</td>
</tr>
<tr id="row_7_">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage epwm</div>
    </td>
    <td class="desc">The enhanced Pulse Width Modulator (ePWM) module provides the configuration of a PWM output signal with specific frequency and dutycycle on specific pins.</td>
</tr>
<tr id="row_8_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage eqep</div>
    </td>
    <td class="desc">The enhanced Quadrature Encoder Pulse (eQEP) module can be used to read information about speed and direction from an encoder for rotary machines.</td>
</tr>
<tr id="row_9_">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage i2c</div></td>
    <td class="desc">The Inter-Integrated-Circuit (I2C) module of TMS320F28335 provides I2C-Master and I2C-Slave operations. In Master-mode, user can send data to different I2C-slaves via I2C Bus.
    </td>
</tr>
    <tr id="row_10_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage sci</div>
    </td>
    <td class="desc">The Serial Communications Interface (SCI)can be used for serial communication with configurable baud rates. Messages of 8 Bit can be transferred via up to three SCI-Modules: SCI_A, SCI_B, SCI_C.</td>
</tr>
<tr id="row_11_"><td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage spi</div>
    </td>
    <td class="desc">The Serial Peripheral Interface (SPI) can be used for serial communication with configurable baud rates. Messages of 16 Bit can be transferred via SPI. TMS320F28335 can operate in master and slave mode.</td>
</tr>
</tr>
    <tr id="row_12_" class="even">
    <td class="entry">
    <div class="el" style="font-size:15px; height: 25px;">@subpage delay</div>
    </td>
    <td class="desc">Describes how to implement files for usage of Delay()-function.</td>
</tr>
</table>
</div><!-- directory -->
</div><!-- contents -->