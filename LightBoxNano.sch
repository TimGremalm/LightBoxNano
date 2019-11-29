EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module1:Arduino_Nano_v3.x U1
U 1 1 5DE0324F
P 1750 4050
F 0 "U1" H 1350 4975 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 1950 3100 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 1750 4050 50  0001 C CIN
F 3 "" H 1750 4050 50  0001 C CNN
	1    1750 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector1:Barrel_Jack_Switch J_Power_BarrelJack
U 1 1 5DE03891
P 1050 1800
F 0 "J_Power_BarrelJack" H 1050 2010 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1050 1600 50  0000 C CNN
F 2 "" H 1100 1760 50  0001 C CNN
F 3 "" H 1100 1760 50  0001 C CNN
	1    1050 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x02 J_Power_Terminal
U 1 1 5DE0534D
P 1100 1250
F 0 "J_Power_Terminal" H 1100 1350 50  0000 C CNN
F 1 "Conn_01x02" H 1100 1050 50  0000 C CNN
F 2 "" H 1100 1250 50  0001 C CNN
F 3 "" H 1100 1250 50  0001 C CNN
	1    1100 1250
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic1:Conn_01x03 J_Addressable
U 1 1 5DE05544
P 10100 1800
F 0 "J_Addressable" H 10100 2000 50  0000 C CNN
F 1 "Conn_01x03" H 10100 1600 50  0000 C CNN
F 2 "" H 10100 1800 50  0001 C CNN
F 3 "" H 10100 1800 50  0001 C CNN
	1    10100 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x04 J_RGB
U 1 1 5DE05747
P 10100 2500
F 0 "J_RGB" H 10100 2700 50  0000 C CNN
F 1 "Conn_01x04" H 10100 2200 50  0000 C CNN
F 2 "" H 10100 2500 50  0001 C CNN
F 3 "" H 10100 2500 50  0001 C CNN
	1    10100 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 1250 6550
F 0 "RV_Pot_1" H 1180 6596 50  0000 R CNN
F 1 "R_POT" H 1180 6505 50  0000 R CNN
F 2 "" H 1250 6550 50  0001 C CNN
F 3 "~" H 1250 6550 50  0001 C CNN
	1    1250 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 2200 6550
F 0 "RV_Pot_2" H 2130 6596 50  0000 R CNN
F 1 "R_POT" H 2130 6505 50  0000 R CNN
F 2 "" H 2200 6550 50  0001 C CNN
F 3 "~" H 2200 6550 50  0001 C CNN
	1    2200 6550
	1    0    0    -1  
$EndComp
$Sheet
S 6550 1000 950  1150
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 6550 1300 50 
F3 "Buck5VOut" I R 7500 1300 50 
F4 "BuckGND" I L 6550 1900 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5DE4A501
P 7700 1200
F 0 "#PWR?" H 7700 1050 50  0001 C CNN
F 1 "+5V" H 7715 1373 50  0000 C CNN
F 2 "" H 7700 1200 50  0001 C CNN
F 3 "" H 7700 1200 50  0001 C CNN
	1    7700 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1700 1650 1700
Wire Wire Line
	1350 1900 1650 1900
Wire Wire Line
	7500 1300 7700 1300
Wire Wire Line
	7700 1300 7700 1200
$Comp
L Device:CP C1
U 1 1 5DE52230
P 1950 1550
F 0 "C1" H 2068 1596 50  0000 L CNN
F 1 "100µF" H 2068 1505 50  0000 L CNN
F 2 "" H 1988 1400 50  0001 C CNN
F 3 "~" H 1950 1550 50  0001 C CNN
	1    1950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1250 1650 1700
$Comp
L power:GND #PWR?
U 1 1 5DE6183E
P 1650 1900
F 0 "#PWR?" H 1650 1650 50  0001 C CNN
F 1 "GND" H 1655 1727 50  0000 C CNN
F 2 "" H 1650 1900 50  0001 C CNN
F 3 "" H 1650 1900 50  0001 C CNN
	1    1650 1900
	1    0    0    -1  
$EndComp
Text GLabel 2550 1250 2    50   Input ~ 0
Vin
Wire Wire Line
	2550 1250 1950 1250
Wire Wire Line
	1300 1250 1650 1250
Connection ~ 1650 1250
$Comp
L power:GND #PWR?
U 1 1 5DE6746F
P 1650 900
F 0 "#PWR?" H 1650 650 50  0001 C CNN
F 1 "GND" H 1655 727 50  0000 C CNN
F 2 "" H 1650 900 50  0001 C CNN
F 3 "" H 1650 900 50  0001 C CNN
	1    1650 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 900  1500 900 
Wire Wire Line
	1500 900  1500 1150
Wire Wire Line
	1500 1150 1300 1150
Wire Notes Line
	2900 800  2900 2400
Wire Notes Line
	600  2400 600  800 
Text Notes 600  750  0    118  ~ 0
Input Connectors
Text GLabel 5900 1300 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	5450 800  5450 2400
Wire Notes Line
	5450 800  7900 800 
Wire Notes Line
	7900 800  7900 2400
Wire Notes Line
	7900 2400 5450 2400
Text Notes 5450 750  0    118  ~ 0
Power
Wire Wire Line
	1950 1900 1950 1700
Wire Wire Line
	1950 1400 1950 1250
$Comp
L power:+5V #PWR?
U 1 1 5DEDA48D
P 1250 6250
F 0 "#PWR?" H 1250 6100 50  0001 C CNN
F 1 "+5V" H 1265 6423 50  0000 C CNN
F 2 "" H 1250 6250 50  0001 C CNN
F 3 "" H 1250 6250 50  0001 C CNN
	1    1250 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEDA793
P 1250 6950
F 0 "#PWR?" H 1250 6700 50  0001 C CNN
F 1 "GND" H 1255 6777 50  0000 C CNN
F 2 "" H 1250 6950 50  0001 C CNN
F 3 "" H 1250 6950 50  0001 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6250 1250 6300
Wire Wire Line
	1250 6950 1250 6850
Wire Wire Line
	1250 6850 2200 6850
Wire Wire Line
	2200 6850 2200 6700
Connection ~ 1250 6850
Wire Wire Line
	1250 6850 1250 6700
Wire Wire Line
	1250 6300 2200 6300
Wire Wire Line
	2200 6300 2200 6400
Connection ~ 1250 6300
Wire Wire Line
	1250 6300 1250 6400
Text GLabel 1450 6550 2    50   Input ~ 0
POT_1
Text GLabel 2400 6550 2    50   Input ~ 0
POT_2
Wire Wire Line
	1400 6550 1450 6550
Wire Wire Line
	2350 6550 2400 6550
Wire Notes Line
	4900 5550 4900 7550
Wire Notes Line
	4900 7550 600  7550
Wire Notes Line
	600  7550 600  5550
Wire Notes Line
	600  5550 4900 5550
Text Notes 600  5450 0    118  ~ 0
User Interface
$Comp
L MCU_Module:WeMos_D1_mini U2
U 1 1 5DF01EF8
P 4700 4000
F 0 "U2" H 4700 3111 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4700 3020 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4700 2850 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2850 2850 50  0001 C CNN
	1    4700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1300 6550 1300
Connection ~ 1950 1250
Wire Wire Line
	1950 1250 1650 1250
Wire Wire Line
	1950 1900 1650 1900
Connection ~ 1650 1900
Text Notes 2800 1800 2    50   ~ 0
Place Close to MCU
Wire Notes Line
	600  2400 2900 2400
Wire Notes Line
	600  800  2900 800 
Wire Notes Line
	3550 2400 5200 2400
Wire Notes Line
	5200 800  3550 800 
Wire Notes Line
	3550 800  3550 2400
Wire Notes Line
	5200 800  5200 2400
Wire Wire Line
	3850 2100 4400 2100
Text Notes 3550 750  0    118  ~ 0
Input Protection
Text Notes 3650 1900 0    50   ~ 0
Add electric P-Fet fuse here ???
Text GLabel 4400 2100 2    50   Input ~ 0
Vin_fused
Text GLabel 3850 2100 0    50   Input ~ 0
Vin
Text Notes 3650 1750 0    50   ~ 0
Add polarity protection here ???
Text Notes 650  2900 0    118  ~ 0
MCU Option Nano
Text Notes 3550 2950 0    118  ~ 0
MCU Option Wemos
Wire Notes Line
	650  2950 2950 2950
Wire Notes Line
	2950 2950 2950 5200
Wire Notes Line
	2950 5200 650  5200
Wire Notes Line
	650  5200 650  2950
Wire Notes Line
	3550 3000 3550 5200
Wire Notes Line
	3550 5200 5950 5200
Wire Notes Line
	5950 5200 5950 3000
Wire Notes Line
	5950 3000 3550 3000
$EndSCHEMATC
