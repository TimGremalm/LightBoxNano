# LightBoxNano
a generic LED controller with a few buttons that can be populated for either RGBW LED strip or addressable LED strip like WS2812.
It has the option for populating a pair of potentiometer, an a 5 way slider switch for controlling light modes.
An Arduino Nano is mounted using ordinary 2.54mm pitch pin headers.
A RS485 receiver and a pair of XLR connectors can also transform the LED controller into a DMX driver.

# Power Supply and voltage rails
## Input rail
The input voltage to LightBoxNano are called VIN and can range from 5 to 30V.
Make sure to only feed LightBoxNano with a voltage that the LED strip can handle. The maximum voltage is limited by the maximum voltage of the IRLML6344 mosfets and of what the LED strip can handle.

## RGBW rail
The positive rail for the LED strip driver is directly fed from VIN, it's usually 12V.

## Addressable rail
The positive rail for the addressable LED strip driver is directly fed from VIN, it's usually 5V.

## Logic rail
The Arduino Nano is powered by a 5V buck converter using TI's guide:
https://webench.ti.com/power-designer/switching-regulator/select
https://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=572687AF787DDED1

## Protection circuit
* Polartity protection.
* Over current protection selectable via resistor.

# RGBW driver
This is made for LED strip that have red, green, blue and white channels that have a common positive rail like +12V.
The LED driver can drive 4 output channels in constant voltage mode at 5A each. The channel can drive up to 10A current if an optional IRLML6344 is mounted.
A 5m LED strip concisting of 300 LED's will draw 6A (20mAx300) when fully lit. A full RGB strip 18A, and a RGBW strip 24A.

# Addressable LED driver
Addressable LED strip is hooked up directly to VIN and the data pin is going to pin ???x on the Arduino via a 1k resistor.

# Controll interface
Two potentiometers can optionally be mounted and will go to A1 and A2 of Arduino Nano.
A slider switch can be optinally mounted for selecting different modes.
Also a pin header of the Arduino Nano will be easily acessable for hooking up random stuff.

# MCU
An Arduino Nano V3 is selected because it's cheap, available and have enough power for most applications.
Optionally and ESP32 ??? can be mounted to replace the Arduino.

# Submodules
* KiCad schematic symbols https://github.com/KiCad/kicad-symbols
* KiCad footprints https://github.com/KiCad/kicad-footprints

# BOM (Bill Of Material)
| Amount	| Manufacturer		| Modell				| Article Number	| Description				| URL																								|
| --------- | ----------------- | --------------------- | ----------------- | ------------------------- | ------------------------------------------------------------------------------------------------- |
| 1			| Arduino			| Nano V3.1 ATmega328	| A000005			| Arduino Nano 3			| https://se.farnell.com/arduino-org/a000005/arduino-nano-utv-rd-kort/dp/1848691					|
| 2			| Alps Alpine		| RK11K1120A4C			| RK11K1120A4C		| 10k Log Pot				| https://se.farnell.com/alps/rk11k1120a4c/potentiometer-10-ka/dp/1191744							|
| 6			| Infineon			| IRLML6344TRPBF		| IRLML6344TRPBF	| N-Ch Mosfet 5A SOT-23		| https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299RL				|
| 1			| Phoenix Contact	| MSTBA 2,5/ 2-G-5,08	| 1757242			| Connector Male 2 pin		| https://se.farnell.com/phoenix-contact/1757242/header-right-angle-5-08mm-2way/dp/3705171			|
| 1			| Phoenix Contact	| MSTBA 2,5/ 3-G-5,08	| 1757255			| Connector Male 3 pin		| https://se.farnell.com/phoenix-contact/1757255/connector-header-tht-ra-5-08mm/dp/3705183			|
| 1			| Phoenix Contact	| MSTBA 2,5/ 4-G-5,08	| 1757268			| Connector Male 4 pin		| https://se.farnell.com/phoenix-contact/1757268/connector-header-tht-ra-5-08mm/dp/3705195			|
| 1			| Phoenix Contact	| MSTB 2,5/ 2-ST-5,08	| 1757019			| Connector Female 2 pin	| https://se.farnell.com/phoenix-contact/1757019/terminal-block-pluggable-2pos/dp/3705353			|
| 1			| Phoenix Contact	| MSTB 2,5/ 3-ST-5,08	| 1757022			| Connector Female 3 pin	| https://se.farnell.com/phoenix-contact/mstb2-5-3-st-5-08/terminal-block-pluggable-3pos/dp/3705365	|
| 1			| Phoenix Contact	| MSTB 2,5/ 4-ST-5,08	| 1757035			| Connector Female 4 pin	| https://se.farnell.com/phoenix-contact/1757035/terminal-block-pluggable-4pos/dp/3705377			|

