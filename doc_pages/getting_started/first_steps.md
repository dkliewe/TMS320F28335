@page first_steps First Steps

This page gives some basic information and describes how to get started with Code Composer Studio and TMS320F28335 Library

---



- A GPIO can only be configured for one module

- An overview of which GPIO can be configured for which module can be seen in the table below

- All possible GPIOs and ADC-Pins as Input-Parameter can be seen in the table below or in global_defines.h

  
  


1) Plan which modules you need in your program and which GPIOs you want to use for each module

2) <a href="df/dbc/setup_ccs_project.html">Set up CCS Project</a> and <a href="d1/d93/import_library.html">Import Library</a>

4) <a href="d5/d8f/link_to_library.html">Link Library to Project</a>

3) Include global_defines.h and the header-files of the modules you want to use

4) Call setSystemControls() function

5) Call init-functions of the modules you want to use

- For available functions of each module  see the description of respective module in Modules-Section

- In CCS main(): Type "init" and then press Ctrl+Space to see an overview of all init functions

    
  
  

<div class="contents">
<div class="textblock"></div><div class="directory">
<table class="directory" width="100%">
<tr id="row_0_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	<b>Pin</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>General Input</b>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>General Output</b>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>ADC</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>CAN</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>eCAP</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>ePWM</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>eQEP</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>I2C</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>SCI</b>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <b>SPI</b>
    </td>
</tr>
<tr id="row_1_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO0
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM1A
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_2_" class="even">
    <td style="width:%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP6
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM1B
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_3_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO2
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM2A
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_4_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO3
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP5
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM2B
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_5_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO4
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM3
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_6_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO5
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM3B
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_7_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO6
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM4A
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_8_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO7
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
	<td></td>
	<td></td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP2
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM4B
    </td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr id="row_9_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO8
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">

    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM5A
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_10_" class="even">
 <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO9
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP3
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM5B
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_11_">
 <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO10
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM6A
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_12_" class="even">
 <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO11
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP4
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>ePWM6B
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_13_">
 <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO12
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_14_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO13
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_15_">
 <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO14
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_16_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO15
    </td>
  <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_17_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO16
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SPI_A_SIMO
    </td>
</tr>
<tr id="row_18_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO17
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SPI_A_SOMI
    </td>
</tr>
<tr id="row_19_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO18
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_A_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SPI_A_CLK
    </td>
</tr>
<tr id="row_20_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO19
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_A_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SPI_A_SS
    </td>
</tr>
<tr id="row_21_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO20
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_1_A
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_22_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO21
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_1_B
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_23_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO22
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_1_S
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_24_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO23
    </td>
   <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_1_I
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_B_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_25_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO24
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_2_A
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_26_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO25
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP2
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_2_B
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_27_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO26
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP3
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_2_I
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_28_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO27
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP4
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eQEP_2_S
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_29_">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO28
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_A_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_30_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO29
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_A_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_31_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO30
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_A_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_32_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO31
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>CAN_A_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_33_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO32
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>I2C_A_SDA
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_34_" class="even">
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO33
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>I2C_A_SCL
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_35_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO34
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
         <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_36_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO48
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
         <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP5
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_37_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO49
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
         <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>eCAP6
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_38_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO58
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_39_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO59
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_40_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO60
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_41_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO61
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_42_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO62
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_C_RX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_43_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO63
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:10px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img><br>SCI_C_TX
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_44_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO84
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_45_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO85
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_46_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO86
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_47_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	GPIO87
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_48_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA0
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_49_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_50_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA2
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_51_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA3
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_52_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA4
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_53_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA5
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_54_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA6
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_55_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINA7
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_56_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB0
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_57_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB1
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_58_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB2
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_59_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB3
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_60_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB4
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_61_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB5
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_62_" class="even">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB6
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        

    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
<tr id="row_63_">
    <td style="width:8%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
    	ADCINB7
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:10%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
   	<td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        <img src="../doc_pages/getting_started/img/haken.png" alt="haken" height=20 width=20></img>
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
         
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
    <td style="width:9%; text-align: center; vertical-align: middle; font-size:15px; height: 25px;">
        
    </td>
</tr>
</table>
</div><!-- directory -->
</div><!-- contents -->