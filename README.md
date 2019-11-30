# LightBoxNano
a generic LED controller with a few buttons that can be populated for either RGBW LED strip or addressable LED strip like WS2812.

It has the option for populating a pair of potentiometer, an a 5 way slider switch for controlling light modes.

An Arduino Nano is mounted using ordinary 2.54mm pitch pin headers.

Optionally an ESP8266 can be mounted instead of the Nano, this is much more expensive it is a more powerful MCU and have WiFi.

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
The Arduino Nano is powered by a 5V buck converter using TI's guide:

https://webench.ti.com/power-designer/switching-regulator/select

https://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=572687AF787DDED1

## Protection circuit
* Polarity protection.
* Over current protection selectable via resistor.

# RGBW driver
This is made for LED strip that have red, green, blue and white channels that have a common positive rail like +12V.
The LED driver can drive 4 output channels in constant voltage mode at 5A each. The channel can drive up to 10A current if an optional IRLML6344 is mounted.
A 5m LED strip consisting of 300 LED's will draw 6A (20mAx300) when fully lit. A full RGB strip 18A, and a RGBW strip 24A.

# Addressable LED driver
Addressable LED strip is hooked up directly to VIN and the data pin is going to pin ???x on the Arduino via a 1k resistor.

# Control interface
Two potentiometers can optionally be mounted and will go to A1 and A2 of Arduino Nano.

A slider switch can be optionally mounted for selecting different modes.

Also a pin header of the Arduino Nano will be easily assessable for hooking up random stuff.

# MCU
An Arduino Nano V3 is selected because it's cheap, available and have enough power for most applications.
Optionally and ESP32 ??? can be mounted to replace the Arduino.

# BOM (Bill Of Material)
| Amount	| Manufacturer		| Modell				| Article Number		| Description				| URL																									|
| --------- | ----------------- | --------------------- | --------------------- | ------------------------- | ----------------------------------------------------------------------------------------------------- |
| 1			| Arduino			| Nano V3.1 ATmega328	| A000005				| Arduino Nano 3			| https://se.farnell.com/arduino-org/a000005/arduino-nano-utv-rd-kort/dp/1848691						|
| 2			| Alps Alpine		| RK11K1120A4C			| RK11K1120A4C			| 10k Log Pot				| https://se.farnell.com/alps/rk11k1120a4c/potentiometer-10-ka/dp/1191744								|
| 6			| Infineon			| IRLML6344TRPBF		| IRLML6344TRPBF		| N-Ch Mosfet 5A SOT-23		| https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299RL					|
| 1			| Phoenix Contact	| MSTBA 2,5/ 2-G-5,08	| 1757242				| Connector Male 2 pin		| https://se.farnell.com/phoenix-contact/1757242/header-right-angle-5-08mm-2way/dp/3705171				|
| 1			| Phoenix Contact	| MSTBA 2,5/ 3-G-5,08	| 1757255				| Connector Male 3 pin		| https://se.farnell.com/phoenix-contact/1757255/connector-header-tht-ra-5-08mm/dp/3705183				|
| 1			| Phoenix Contact	| MSTBA 2,5/ 5-G-5,08	| 1757271				| Connector Male 5 pin		| https://se.farnell.com/phoenix-contact/1757271/header-right-angle-5-08mm-5way/dp/3705201				|
| 1			| Phoenix Contact	| MSTB 2,5/ 2-ST-5,08	| 1757019				| Connector Female 2 pin	| https://se.farnell.com/phoenix-contact/1757019/terminal-block-pluggable-2pos/dp/3705353				|
| 1			| Phoenix Contact	| MSTB 2,5/ 3-ST-5,08	| 1757022				| Connector Female 3 pin	| https://se.farnell.com/phoenix-contact/mstb2-5-3-st-5-08/terminal-block-pluggable-3pos/dp/3705365		|
| 1			| Phoenix Contact	| MSTB 2,5/ 5-ST-5,08	| 1757048				| Connector Female 5 pin	| https://se.farnell.com/phoenix-contact/1757048/terminal-block-pluggable-5pos/dp/3705389				|
| 1			| Multicomp			| SPC21364				| SPC21364				| Barrel Jack Switch 5A 2mm	| https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842									|
| 1			| Panasonic			| 50SVPF18M				| 50SVPF18M				| Cap 18µF 50V 35mΩ			| https://se.farnell.com/panasonic/50svpf18m/cap-18-f-50v-20-radial/dp/2354813							|
| 1			| AVX				| TPSA475K010R1400		| TPSA475K010R1400		| Cap 4.7µF 10V 1.4Ω 1206	| https://se.farnell.com/avx/tpsa475k010r1400/cap-4-7-f-10v-10-1206-smd/dp/1135104						|
| 1			| Littelfuse		| MBRD10200CT			| MBRD10200CT			| Schottky 200V 10A			| https://se.farnell.com/littelfuse/mbrd10200ct/schottky-rect-200v-10a-to-252/dp/2773825				|
| 1			| Vishay-Dale		| IHLP6767GZER470M11	| IHLP6767GZER470M11	| Inductor 47µH 42.7mΩ		| https://se.farnell.com/vishay/ihlp6767gzer470m11/inductor-47uh-8-6a-20/dp/1845598						|
| 1			| Texas Instruments	| LM2596SX-5.0/NOPB		| LM2596SX-5.0/NOPB		| Buck 5V 3A				| https://se.farnell.com/texas-instruments/lm2596sx-5-0-nopb/dc-dc-conv-buck-150khz-to-263/dp/2781829	|
| ?			| Multicomp			| MC0100W06031300R		| MC0100W06031300R		| 300R 0603					| https://se.farnell.com/multicomp/mc0100w06031300r/motst-tjockfilm-300r-1-0-063w/dp/2845860			|
| ?			| Multicomp			| MC0100W060311K		| MC0100W060311K		| 1k 0603					| https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750			|
| ?			| Multicomp			| MC0100W0603110K		| MC0100W0603110K		| 10k 0603					| https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751			|
| 1			| Multicomp			| MC0100W0603133K		| MC0100W0603133K		| 33k 0603					| https://se.farnell.com/multicomp/mc0100w0603133k/motst-tjockfilm-33k-1-0-063w-0603/dp/2845872			|
| 1			| Multicomp			| MC0100W0603147K		| MC0100W0603147K		| 47k 0603					| https://se.farnell.com/multicomp/mc0100w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/2845909			|
