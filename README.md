# LightBoxNano
a generic LED controller that can be populated for either RGBW LED strip or addressable LED strip like WS2812.

It has the option for populating a pair of potentiometer, and a 5 way slider switch for controlling light modes.

An Arduino Nano is mounted using ordinary 2.54mm pitch pin headers.

Optionally a ESP32 Pico Kit can be mounted instead of the Nano, this is much more expensive it is a more powerful MCU and have WiFi.

A RS485 receiver and a pair of XLR connectors can also transform the LED controller into a DMX driver.

# Power Supply and voltage rails
## Input rail
The input voltage to LightBoxNano are called VIN and can range from 5 to 30V.

Make sure to only feed LightBoxNano with a voltage that the LED strip can handle. The maximum voltage is limited by the maximum voltage of the IRLML6344 Mosfets and of what the LED strip can handle.

## RGBW rail
The positive rail for the LED strip driver is directly fed from VIN, it's usually 12V.

## Addressable rail
The positive rail for the addressable LED strip driver is directly fed from VIN, it's usually 5V.

## Logic rail
The micro controller is powered by a 5V buck converter using TI's guide:

https://webench.ti.com/power-designer/switching-regulator/select

https://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=572687AF787DDED1

## Protection circuit
* Polarity protection.
* Over current protection selectable via resistor.


# RGBW driver
This is made for LED strip that have red, green, blue and white channels that have a common positive rail like +12V.
The LED driver can drive 4 output channels in constant voltage mode at 5A each. The channel can drive up to 10A current if an optional IRLML6344 is mounted.
One color channel on a 5m LED strip consisting of 300 LED's will draw 6A (20mA x 300px) when fully lit. A full RGB strip 18A, and a RGBW strip 24A.

| Channel	| Arduino Nano		| ESP32 |
| --------- | ----------------- | ----- |
| Red		| D5 (PD5)			| IO26	|
| Green		| D6 (PD6)			| IO27	|
| Blue		| D9 (PB1)			| IO14	|
| White		| D10 (PB2)			| IO12	|


# Addressable LED driver
Addressable LED strip is hooked up directly to VIN and the data pin is going to micro controller via a 1k resistor.

| Channel		| Arduino Nano		| ESP32 |
| ------------- | ----------------- | ----- |
| Addressable	| D3 (PD3)			| IO25	|

# Control interface
Two potentiometers can optionally be mounted. They are pulled up to 3.3V, so you won't get the full range on the Nano.
| Channel	| Arduino Nano		| ESP32 |
| --------- | ----------------- | ----- |
| POT_1		| A1 (PC1)			| IO26	|
| POT_2		| A2 (PC2)			| IO27	|

A 10 position rotary coded switch can optionally be mounted for selecting different modes.
| Channel	| Arduino Nano		| ESP32 |
| --------- | ----------------- | ----- |
| SwCode1	| D7 (PD7)			| IO13	|
| SwCode2	| D8 (PB0)			| IO15	|
| SwCode4	| D11 (PB3)			| IO2	|
| SwCode8	| D12 (PB4)			| IO4	|

10 position switch is coded in binary.
| Code	| 0	| 1	| 2	| 3	| 4	| 5	| 6	| 7	| 8	| 9	|
| ----- | -	| -	| -	| -	| -	| -	| -	| -	| -	| -	|
| 1		| 	| *	| 	| *	| 	| *	| 	| *	| 	| *	|
| 2		| 	| 	| *	| *	| 	| 	| *	| *	| 	| 	|
| 4		| 	| 	| 	| 	| *	| *	| *	| *	| 	| 	|
| 8		| 	| 	| 	| 	| 	| 	| 	| 	| *	| *	|


Also a pin header of the Arduino Nano will be easily assessable for hooking up random stuff.


# DMX Tranceiver
A RS-485 transceiver can optionally be mounted for sending and receiveing DMX512.
It uses ADM2687E which isolates the RS-485 bus from the low voltage micro controller side. This is important as electrical errors down the bus can propagage along the bus.
ADM2687E also isolates the power on the bus side by a buildt in DC to DC converter.

The tranceiver can be set to send DMX data if the jumper links "Link_DriverOutputA1" and "Link_DriverOutputB1" is soldered.

| Jumper							| Description													|
| --------------------------------- | -------------------------------------------------------------	|
| Link_DriverOutputA1				| Links the Z (Driver Inverting Output) to DMX+					|
| Link_DriverOutputB1				| Links the Y (Driver Noninverting Output) to DMX-				|
| Receiver_Disable1					| Pulls RE (Receiver Enable) to High which disables receiver	|
| Receiver_Enable1					| Pulls RE (Receiver Enable) to Low which enables receiver		|
| Driver_Enable1					| Pulls DE (Driver Enable) to High which enables sender			|
| Driver_Disable1					| Pulls DE (Driver Enable) to Low which disables sender			|
| Link_TransceiverGnd_To_DMXgnd1	| Links DMX bus Gnd to ADM2687E Gnd2							|
| Link_DMXgnd_To_DMXchassignd1		| Links DMX ground shield to ADM2687E Gnd2						|

DMX Send and Receive can be hooked up to UART channels on a MCU.
Receiver Enable and Driver Enable can also be driven by the micro controller (only ESP32).
| Channel			| Arduino Nano		| ESP32 |
| ----------------- | ----------------- | ----- |
| DMX_Send			| D1 TX (PD0)		| IO21	|
| DMX_Receive		| D0 RX (PD1)		| IO22	|
| DMX_ReceiveEnable	| N.C				| IO19	|
| DMX_DriveEnable	| N.C				| IO23	|


# MCU
An Arduino Nano V3 (ATmega328) is selected because it's cheap, available and have enough power for most applications.

But there is a option for mounting a ESP32 Pico Kit instead which is much more powerful and have built in WiFi.


# BOM (Bill Of Material)
| Amount	| Manufacturer		| Description									| Article Number		| URL																									|
| --------- | ----------------- | --------------------------------------------- | --------------------- | ----------------------------------------------------------------------------------------------------- |
| 1			| Arduino			| MCU Arduino Nano 3 ATmega328					| A000005				| https://se.farnell.com/arduino-org/a000005/arduino-nano-utv-rd-kort/dp/1848691						|
| 1			| Espressif			| MCU ESP32 Pico Kit V4							| ESP32-PICO-KIT		| https://www.digikey.com/product-detail/en/espressif-systems/ESP32-PICO-KIT/1904-1030-ND/9381703		|
| 2			| Alps Alpine		| Pot 10k Linear								| 29 0001				| https://se.farnell.com/alps/29-0001/potentiometer-10k-20-0-05w/dp/1191735								|
| 2			| Knitter-Switch	| Rotary Coded Switch 10 Position				| DRR4010				| https://se.farnell.com/knitter-switch/drr4010/rotary-switch-pcb-bcd/dp/807620							|
| 8			| Infineon			| Mosfet N-Ch 5A SOT-23							| IRLML6344TRPBF		| https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299					|
| 1			| Analog Devices	| RS485 Transceiver Isolated					| ADM2687EBRIZ			| https://se.farnell.com/analog-devices/adm2687ebriz/transceiver-iso-rs485-16soic/dp/2008784			|
| 1			| Phoenix Contact	| Connector Male 2 pin MSTBA 2,5/ 2-G-5,08		| 1757242				| https://se.farnell.com/phoenix-contact/1757242/header-right-angle-5-08mm-2way/dp/3705171				|
| 1			| Phoenix Contact	| Connector Male 3 pin MSTBA 2,5/ 3-G-5,08		| 1757255				| https://se.farnell.com/phoenix-contact/1757255/connector-header-tht-ra-5-08mm/dp/3705183				|
| 1			| Phoenix Contact	| Connector Male 5 pin MSTBA 2,5/ 5-G-5,08		| 1757271				| https://se.farnell.com/phoenix-contact/1757271/header-right-angle-5-08mm-5way/dp/3705201				|
| 1			| Phoenix Contact	| Connector Female 2 pin MSTB 2,5/ 2-ST-5,08	| 1757019				| https://se.farnell.com/phoenix-contact/1757019/terminal-block-pluggable-2pos/dp/3705353				|
| 1			| Phoenix Contact	| Connector Female 3 pin MSTB 2,5/ 3-ST-5,08	| 1757022				| https://se.farnell.com/phoenix-contact/mstb2-5-3-st-5-08/terminal-block-pluggable-3pos/dp/3705365		|
| 1			| Phoenix Contact	| Connector Female 5 pin MSTB 2,5/ 5-ST-5,08	| 1757048				| https://se.farnell.com/phoenix-contact/1757048/terminal-block-pluggable-5pos/dp/3705389				|
| 1			| Multicomp			| Barrel Jack Switch 5A 2mm						| SPC21364				| https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842									|
| 1			| Neutrik			| XLR 3-pole female Horizontal PCB mount		| NC3FAAH2				| https://se.farnell.com/neutrik/nc3faah2/socket-xlr-pcb-horizontal-3pole/dp/1310023					|
| 1			| Neutrik			| XLR 3-pole male Horizontal PCB mount			| NC3MAAH				| https://se.farnell.com/neutrik/nc3maah/plug-xlr-pcb-horizontal-3pole/dp/1310044						|
| 1			| Panasonic			| Cap 18µF 50V 35mΩ								| 50SVPF18M				| https://se.farnell.com/panasonic/50svpf18m/cap-18-f-50v-20-radial/dp/2354813							|
| 1			| AVX				| Cap 4.7µF 10V 1.4Ω 1206						| TPSA475K010R1400		| https://se.farnell.com/avx/tpsa475k010r1400/cap-4-7-f-10v-10-1206-smd/dp/1135104						|
| 1			| Littelfuse		| Schottky 200V 10A								| MBRD10200CT			| https://se.farnell.com/littelfuse/mbrd10200ct/schottky-rect-200v-10a-to-252/dp/2773825				|
| 1			| Vishay-Dale		| Inductor 47µH 42.7mΩ							| IHLP6767GZER470M11	| https://se.farnell.com/vishay/ihlp6767gzer470m11/inductor-47uh-8-6a-20/dp/1845598						|
| 1			| Texas Instruments	| Buck 5V 3A									| LM2596SX-5.0/NOPB		| https://se.farnell.com/texas-instruments/lm2596sx-5-0-nopb/dc-dc-conv-buck-150khz-to-263/dp/2781829	|
| 1			| Multicomp			| 120R 1206										| MCWR12X1200FTL		| https://se.farnell.com/multicomp/mcwr12x1200ftl/res-120r-1-0-25w-thick-film/dp/2447462				|
| ?			| Multicomp			| 300R 0603										| MC0100W06031300R		| https://se.farnell.com/multicomp/mc0100w06031300r/motst-tjockfilm-300r-1-0-063w/dp/2845860			|
| ?			| Multicomp			| 1k 0603										| MC0100W060311K		| https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750			|
| ?			| Multicomp			| 10k 0603										| MC0100W0603110K		| https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751			|
| ?			| Multicomp			| 33k 0603										| MC0100W0603133K		| https://se.farnell.com/multicomp/mc0100w0603133k/motst-tjockfilm-33k-1-0-063w-0603/dp/2845872			|
| ?			| Multicomp			| 47k 0603										| MC0100W0603147K		| https://se.farnell.com/multicomp/mc0100w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/2845909			|
