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
P 1750 4400
F 0 "U1" H 1350 5325 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 1950 3450 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 1750 4400 50  0001 C CIN
F 3 "" H 1750 4400 50  0001 C CNN
	1    1750 4400
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
P 10050 3800
F 0 "J_Addressable" H 10050 4000 50  0000 C CNN
F 1 "Conn_01x03" H 10050 3600 50  0000 C CNN
F 2 "" H 10050 3800 50  0001 C CNN
F 3 "" H 10050 3800 50  0001 C CNN
	1    10050 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x04 J_RGB
U 1 1 5DE05747
P 10050 4800
F 0 "J_RGB" H 10050 5000 50  0000 C CNN
F 1 "Conn_01x04" H 10050 4500 50  0000 C CNN
F 2 "" H 10050 4800 50  0001 C CNN
F 3 "" H 10050 4800 50  0001 C CNN
	1    10050 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 1200 6700
F 0 "RV_Pot_1" H 1130 6746 50  0000 R CNN
F 1 "10k" H 1130 6655 50  0000 R CNN
F 2 "" H 1200 6700 50  0001 C CNN
F 3 "~" H 1200 6700 50  0001 C CNN
	1    1200 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 2150 6700
F 0 "RV_Pot_2" H 2080 6746 50  0000 R CNN
F 1 "10k" H 2080 6655 50  0000 R CNN
F 2 "" H 2150 6700 50  0001 C CNN
F 3 "~" H 2150 6700 50  0001 C CNN
	1    2150 6700
	1    0    0    -1  
$EndComp
$Sheet
S 6150 1000 950  1150
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 6150 1300 50 
F3 "Buck5VOut" I R 7100 1300 50 
F4 "BuckGND" I L 6150 1900 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5DE4A501
P 7300 1200
F 0 "#PWR?" H 7300 1050 50  0001 C CNN
F 1 "+5V" H 7315 1373 50  0000 C CNN
F 2 "" H 7300 1200 50  0001 C CNN
F 3 "" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1700 1650 1700
Wire Wire Line
	1350 1900 1650 1900
Wire Wire Line
	7100 1300 7300 1300
Wire Wire Line
	7300 1300 7300 1200
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
Text GLabel 5500 1300 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	5050 800  5050 2400
Wire Notes Line
	5050 800  7500 800 
Wire Notes Line
	7500 800  7500 2400
Wire Notes Line
	7500 2400 5050 2400
Text Notes 5050 750  0    118  ~ 0
Power
Wire Wire Line
	1950 1900 1950 1700
Wire Wire Line
	1950 1400 1950 1250
$Comp
L power:+5V #PWR?
U 1 1 5DEDA48D
P 1200 6400
F 0 "#PWR?" H 1200 6250 50  0001 C CNN
F 1 "+5V" H 1215 6573 50  0000 C CNN
F 2 "" H 1200 6400 50  0001 C CNN
F 3 "" H 1200 6400 50  0001 C CNN
	1    1200 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEDA793
P 1200 7100
F 0 "#PWR?" H 1200 6850 50  0001 C CNN
F 1 "GND" H 1205 6927 50  0000 C CNN
F 2 "" H 1200 7100 50  0001 C CNN
F 3 "" H 1200 7100 50  0001 C CNN
	1    1200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6400 1200 6450
Wire Wire Line
	1200 7100 1200 7000
Wire Wire Line
	1200 7000 2150 7000
Wire Wire Line
	2150 7000 2150 6850
Connection ~ 1200 7000
Wire Wire Line
	1200 7000 1200 6850
Wire Wire Line
	1200 6450 2150 6450
Wire Wire Line
	2150 6450 2150 6550
Connection ~ 1200 6450
Wire Wire Line
	1200 6450 1200 6550
Text GLabel 1400 6700 2    50   Input ~ 0
POT_1
Text GLabel 2350 6700 2    50   Input ~ 0
POT_2
Wire Wire Line
	1350 6700 1400 6700
Wire Wire Line
	2300 6700 2350 6700
Wire Notes Line
	700  6100 5000 6100
Text Notes 700  6050 0    118  ~ 0
User Interface
$Comp
L MCU_Module:WeMos_D1_mini U2
U 1 1 5DF01EF8
P 4300 4400
F 0 "U2" H 4300 3511 50  0000 C CNN
F 1 "WeMos_D1_mini" H 4300 3420 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 4300 3250 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2450 3250 50  0001 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1300 6150 1300
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
	3150 2400 4800 2400
Wire Notes Line
	4800 800  3150 800 
Wire Notes Line
	3150 800  3150 2400
Wire Notes Line
	4800 800  4800 2400
Wire Wire Line
	3450 2100 4000 2100
Text Notes 3150 750  0    118  ~ 0
Input Protection
Text Notes 3250 1900 0    50   ~ 0
Add electric P-Fet fuse here ???
Text GLabel 4000 2100 2    50   Input ~ 0
Vin_fused
Text GLabel 3450 2100 0    50   Input ~ 0
Vin
Text Notes 3250 1750 0    50   ~ 0
Add polarity protection here ???
Text Notes 650  2900 0    118  ~ 0
MCU Option Nano
Text Notes 3150 2900 0    118  ~ 0
MCU Option Wemos
Wire Notes Line
	650  2950 2950 2950
Wire Notes Line
	2950 5750 650  5750
Wire Notes Line
	5550 2950 3150 2950
$Comp
L power:+5V #PWR?
U 1 1 5DF44121
P 1650 3250
F 0 "#PWR?" H 1650 3100 50  0001 C CNN
F 1 "+5V" H 1665 3423 50  0000 C CNN
F 2 "" H 1650 3250 50  0001 C CNN
F 3 "" H 1650 3250 50  0001 C CNN
	1    1650 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF44892
P 5350 2100
F 0 "#PWR?" H 5350 1850 50  0001 C CNN
F 1 "GND" H 5355 1927 50  0000 C CNN
F 2 "" H 5350 2100 50  0001 C CNN
F 3 "" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF44D7B
P 900 5500
F 0 "#PWR?" H 900 5250 50  0001 C CNN
F 1 "GND" H 905 5327 50  0000 C CNN
F 2 "" H 900 5500 50  0001 C CNN
F 3 "" H 900 5500 50  0001 C CNN
	1    900  5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF45201
P 5250 5450
F 0 "#PWR?" H 5250 5200 50  0001 C CNN
F 1 "GND" H 5255 5277 50  0000 C CNN
F 2 "" H 5250 5450 50  0001 C CNN
F 3 "" H 5250 5450 50  0001 C CNN
	1    5250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 5450 5250 5250
Wire Wire Line
	4300 5250 4300 5200
Wire Notes Line
	700  6100 700  7500
Wire Notes Line
	700  7500 5000 7500
Wire Notes Line
	5000 6100 5000 7500
Wire Notes Line
	650  2950 650  5750
Wire Notes Line
	2950 2950 2950 5750
Wire Notes Line
	3150 2950 3150 5700
Wire Notes Line
	3150 5700 5550 5700
Wire Notes Line
	5550 2950 5550 5700
Wire Wire Line
	900  5500 900  5450
Wire Wire Line
	900  5450 1750 5450
Wire Wire Line
	1750 5450 1750 5400
Wire Wire Line
	1650 3250 1650 3400
Wire Wire Line
	4200 3450 4200 3600
Text GLabel 2600 3450 1    50   Input ~ 0
POT_1
Text GLabel 2850 3450 1    50   Input ~ 0
POT_2
Text GLabel 5250 3500 1    50   Input ~ 0
POT_1
$Comp
L power:+5V #PWR?
U 1 1 5DF4373E
P 4200 3450
F 0 "#PWR?" H 4200 3300 50  0001 C CNN
F 1 "+5V" H 4215 3623 50  0000 C CNN
F 2 "" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
Text Notes 2900 3050 2    50   ~ 0
328 can handle 5V from pot
Wire Wire Line
	2600 3450 2600 4500
Wire Wire Line
	2600 4500 2250 4500
Wire Wire Line
	2850 3450 2850 4600
Wire Wire Line
	2850 4600 2250 4600
$Comp
L Device:R R1
U 1 1 5DF9EC70
P 5250 3700
F 0 "R1" H 5320 3746 50  0000 L CNN
F 1 "33k" H 5320 3655 50  0000 L CNN
F 2 "" V 5180 3700 50  0001 C CNN
F 3 "~" H 5250 3700 50  0001 C CNN
	1    5250 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DFA2915
P 5250 4100
F 0 "R2" H 5320 4146 50  0000 L CNN
F 1 "47k" H 5320 4055 50  0000 L CNN
F 2 "" V 5180 4100 50  0001 C CNN
F 3 "~" H 5250 4100 50  0001 C CNN
	1    5250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3900 5250 3900
Wire Wire Line
	5250 3900 5250 3850
Wire Wire Line
	5250 3900 5250 3950
Connection ~ 5250 3900
Wire Wire Line
	5250 3550 5250 3500
Wire Wire Line
	5250 4250 5250 5250
Connection ~ 5250 5250
Wire Wire Line
	5250 5250 4300 5250
Text Notes 5500 3150 2    50   ~ 0
ESP8266 only have one analog input\nRescale 5V to 1V by adding a resistor divider
$EndSCHEMATC
