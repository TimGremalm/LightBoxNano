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
L MCU_Module1:Arduino_Nano_v3.x MCUnano
U 1 1 5DE0324F
P 1700 4400
F 0 "MCUnano" H 1300 5325 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 1900 3450 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 1700 4400 50  0001 C CIN
F 3 "" H 1700 4400 50  0001 C CNN
	1    1700 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector1:Barrel_Jack_Switch J_Power_BarrelJack
U 1 1 5DE03891
P 1200 1800
F 0 "J_Power_BarrelJack" H 1200 2010 50  0000 C CNN
F 1 "Barrel Jack Switch 5A 2mm" H 1200 1600 50  0000 C CNN
F 2 "" H 1250 1760 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1692886.pdf?_ga=2.231332955.599385452.1575057425-167263916.1529948031" H 1250 1760 50  0001 C CNN
F 4 "Multicomp" H 1200 1800 50  0001 C CNN "Manufacturer"
F 5 "SPC21364" H 1200 1800 50  0001 C CNN "Part Number"
F 6 "https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842" H 1200 1800 50  0001 C CNN "Farnell"
	1    1200 1800
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
P 6450 7000
F 0 "J_Addressable" H 6450 7200 50  0000 C CNN
F 1 "Conn_01x03" H 6450 6800 50  0000 C CNN
F 2 "" H 6450 7000 50  0001 C CNN
F 3 "" H 6450 7000 50  0001 C CNN
	1    6450 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 1150 6650
F 0 "RV_Pot_1" H 1080 6696 50  0000 R CNN
F 1 "10k" H 1080 6605 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 1150 6650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 1150 6650 50  0001 C CNN
F 4 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 1150 6650 50  0001 C CNN "Farnell"
F 5 "MC0100W0603110K" H 1150 6650 50  0001 C CNN "Part Number"
	1    1150 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 2100 6650
F 0 "RV_Pot_2" H 2030 6696 50  0000 R CNN
F 1 "10k" H 2030 6605 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 2100 6650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 2100 6650 50  0001 C CNN
F 4 "MC0100W0603110K" H 2100 6650 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 2100 6650 50  0001 C CNN "Farnell"
	1    2100 6650
	1    0    0    -1  
$EndComp
$Sheet
S 5600 1000 950  1150
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 5600 1300 50 
F3 "Buck5VOut" I R 6550 1300 50 
F4 "BuckGND" I L 5600 1900 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5DE4A501
P 6700 1100
F 0 "#PWR?" H 6700 950 50  0001 C CNN
F 1 "+5V" H 6715 1273 50  0000 C CNN
F 2 "" H 6700 1100 50  0001 C CNN
F 3 "" H 6700 1100 50  0001 C CNN
	1    6700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1700 1800 1700
Wire Wire Line
	6550 1300 6700 1300
Wire Wire Line
	6700 1300 6700 1100
$Comp
L Device:CP C1
U 1 1 5DE52230
P 4550 1750
F 0 "C1" H 4668 1796 50  0000 L CNN
F 1 "100µF" H 4668 1705 50  0000 L CNN
F 2 "" H 4588 1600 50  0001 C CNN
F 3 "~" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1250 1800 1700
Text GLabel 1950 1250 2    50   Input ~ 0
Vin
Wire Wire Line
	1300 1250 1800 1250
Connection ~ 1800 1250
$Comp
L power:GND #PWR?
U 1 1 5DE6746F
P 1550 900
F 0 "#PWR?" H 1550 650 50  0001 C CNN
F 1 "GND" H 1555 727 50  0000 C CNN
F 2 "" H 1550 900 50  0001 C CNN
F 3 "" H 1550 900 50  0001 C CNN
	1    1550 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 900  1400 900 
Wire Wire Line
	1400 900  1400 1150
Wire Wire Line
	1400 1150 1300 1150
Wire Notes Line
	2200 800  2200 2400
Wire Notes Line
	600  2400 600  800 
Text Notes 600  750  0    118  ~ 0
Input Connectors
Text GLabel 5450 1300 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	5000 800  5000 2400
Wire Notes Line
	5000 800  7450 800 
Wire Notes Line
	7450 800  7450 2400
Wire Notes Line
	7450 2400 5000 2400
Text Notes 5000 750  0    118  ~ 0
5V Buck
$Comp
L power:+5V #PWR?
U 1 1 5DEDA48D
P 1150 6350
F 0 "#PWR?" H 1150 6200 50  0001 C CNN
F 1 "+5V" H 1165 6523 50  0000 C CNN
F 2 "" H 1150 6350 50  0001 C CNN
F 3 "" H 1150 6350 50  0001 C CNN
	1    1150 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEDA793
P 1150 7050
F 0 "#PWR?" H 1150 6800 50  0001 C CNN
F 1 "GND" H 1155 6877 50  0000 C CNN
F 2 "" H 1150 7050 50  0001 C CNN
F 3 "" H 1150 7050 50  0001 C CNN
	1    1150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6350 1150 6400
Wire Wire Line
	1150 7050 1150 6950
Wire Wire Line
	1150 6950 2100 6950
Wire Wire Line
	2100 6950 2100 6800
Connection ~ 1150 6950
Wire Wire Line
	1150 6950 1150 6800
Wire Wire Line
	1150 6400 2100 6400
Wire Wire Line
	2100 6400 2100 6500
Connection ~ 1150 6400
Wire Wire Line
	1150 6400 1150 6500
Text GLabel 1350 6650 2    50   Input ~ 0
POT_1
Text GLabel 2300 6650 2    50   Input ~ 0
POT_2
Wire Wire Line
	1300 6650 1350 6650
Wire Wire Line
	2250 6650 2300 6650
Wire Notes Line
	600  6050 4900 6050
Text Notes 600  6000 0    118  ~ 0
User Interface
$Comp
L MCU_Module:WeMos_D1_mini MCUesp
U 1 1 5DF01EF8
P 3550 4400
F 0 "MCUesp" H 3550 3511 50  0000 C CNN
F 1 "WeMos_D1_mini" H 3550 3420 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 3550 3250 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 1700 3250 50  0001 C CNN
	1    3550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1300 5600 1300
Wire Notes Line
	600  2400 2200 2400
Wire Notes Line
	600  800  2200 800 
Wire Notes Line
	2300 2400 4850 2400
Wire Notes Line
	4850 800  2300 800 
Wire Notes Line
	2300 800  2300 2400
Wire Notes Line
	4850 800  4850 2400
Wire Wire Line
	3000 1950 3200 1950
Text Notes 2300 750  0    118  ~ 0
Input Protection
Text Notes 2300 300  0    50   ~ 0
Add electric P-Fet fuse here ???\nhttps://www.mouser.se/ProductDetail/Infineon-IR/AUIR3315STRL/\nhttps://www.mouser.se/datasheet/2/196/auir3315-1225292.pdf
Text GLabel 4050 1950 2    50   Input ~ 0
Vin_fused
Text GLabel 3000 1950 0    50   Input ~ 0
Vin
Text Notes 2300 -50  0    50   ~ 0
Add polarity protection here ???
Text Notes 600  2900 0    118  ~ 0
MCU Option Nano
Text Notes 3050 2900 0    118  ~ 0
MCU Option Wemos
Wire Notes Line
	600  2950 2900 2950
Wire Notes Line
	2900 5750 600  5750
Wire Notes Line
	5450 2950 3050 2950
$Comp
L power:+5V #PWR?
U 1 1 5DF44121
P 1600 3250
F 0 "#PWR?" H 1600 3100 50  0001 C CNN
F 1 "+5V" H 1615 3423 50  0000 C CNN
F 2 "" H 1600 3250 50  0001 C CNN
F 3 "" H 1600 3250 50  0001 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF44892
P 5450 2050
F 0 "#PWR?" H 5450 1800 50  0001 C CNN
F 1 "GND" H 5455 1877 50  0000 C CNN
F 2 "" H 5450 2050 50  0001 C CNN
F 3 "" H 5450 2050 50  0001 C CNN
	1    5450 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF44D7B
P 850 5500
F 0 "#PWR?" H 850 5250 50  0001 C CNN
F 1 "GND" H 855 5327 50  0000 C CNN
F 2 "" H 850 5500 50  0001 C CNN
F 3 "" H 850 5500 50  0001 C CNN
	1    850  5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF45201
P 5150 5450
F 0 "#PWR?" H 5150 5200 50  0001 C CNN
F 1 "GND" H 5155 5277 50  0000 C CNN
F 2 "" H 5150 5450 50  0001 C CNN
F 3 "" H 5150 5450 50  0001 C CNN
	1    5150 5450
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  6050 600  7700
Wire Notes Line
	600  7700 4900 7700
Wire Notes Line
	4900 6050 4900 7700
Wire Notes Line
	600  2950 600  5750
Wire Notes Line
	2900 2950 2900 5750
Wire Notes Line
	3050 2950 3050 5700
Wire Notes Line
	3050 5700 5450 5700
Wire Notes Line
	5450 2950 5450 5700
Wire Wire Line
	850  5500 850  5450
Wire Wire Line
	850  5450 1700 5450
Wire Wire Line
	1700 5450 1700 5400
Wire Wire Line
	1600 3250 1600 3400
Wire Wire Line
	3450 3500 3450 3600
Text GLabel 2550 3450 1    50   Input ~ 0
POT_1
Text GLabel 2800 3450 1    50   Input ~ 0
POT_2
Text GLabel 5150 3500 1    50   Input ~ 0
POT_1
$Comp
L power:+5V #PWR?
U 1 1 5DF4373E
P 3450 3500
F 0 "#PWR?" H 3450 3350 50  0001 C CNN
F 1 "+5V" H 3465 3673 50  0000 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
Text Notes 2850 3050 2    50   ~ 0
328 can handle 5V from pot
Wire Wire Line
	2550 3450 2550 4500
Wire Wire Line
	2550 4500 2200 4500
Wire Wire Line
	2800 3450 2800 4600
Wire Wire Line
	2800 4600 2200 4600
$Comp
L Device:R R1
U 1 1 5DF9EC70
P 5150 3700
F 0 "R1" H 5220 3746 50  0000 L CNN
F 1 "33k" H 5220 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 3700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 5150 3700 50  0001 C CNN
F 4 "MC0100W0603133K" H 5150 3700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603133k/motst-tjockfilm-33k-1-0-063w-0603/dp/2845872" H 5150 3700 50  0001 C CNN "Farnell"
	1    5150 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DFA2915
P 5150 4100
F 0 "R2" H 5220 4146 50  0000 L CNN
F 1 "47k" H 5220 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 4100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 5150 4100 50  0001 C CNN
F 4 "MC0100W0603147K" H 5150 4100 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603147k/motst-tjockfilm-47k-1-0-063w-0603/dp/2845909" H 5150 4100 50  0001 C CNN "Farnell"
	1    5150 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3900 5150 3900
Wire Wire Line
	5150 3900 5150 3850
Wire Wire Line
	5150 3900 5150 3950
Connection ~ 5150 3900
Wire Wire Line
	5150 3550 5150 3500
Text Notes 5400 3150 2    50   ~ 0
ESP8266 only have one analog input\nRescale 5V to 1V by adding a resistor divider
Wire Wire Line
	5450 2050 5450 1900
Wire Wire Line
	5450 1900 5600 1900
Text GLabel 5950 6750 1    50   Input ~ 0
Vin_fused
Text GLabel 10100 1000 0    50   Input ~ 0
Vin_fused
$Comp
L Connector_Generic:Conn_01x05 J_RGBW
U 1 1 5DFDEA6C
P 10550 1200
F 0 "J_RGBW" H 10630 1242 50  0000 L CNN
F 1 "Conn_01x05" H 10630 1151 50  0000 L CNN
F 2 "" H 10550 1200 50  0001 C CNN
F 3 "~" H 10550 1200 50  0001 C CNN
	1    10550 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1000 10350 1000
Wire Wire Line
	1500 1900 1800 1900
Wire Wire Line
	9350 1150 9350 1100
Wire Wire Line
	9350 1100 10350 1100
$Comp
L power:GND #PWR?
U 1 1 5E009609
P 8700 1950
F 0 "#PWR?" H 8700 1700 50  0001 C CNN
F 1 "GND" H 8705 1777 50  0000 C CNN
F 2 "" H 8700 1950 50  0001 C CNN
F 3 "" H 8700 1950 50  0001 C CNN
	1    8700 1950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qred
U 1 1 5E00B511
P 8600 1350
F 0 "Qred" H 8805 1350 50  0000 L CNN
F 1 "IRLML6344" H 8804 1305 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8600 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9120 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8880 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9080 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9500 970 50  0001 C CNN "RDSON Max"
	1    8600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1150 8700 1100
Wire Wire Line
	8700 1100 9350 1100
Connection ~ 9350 1100
Wire Wire Line
	8700 1550 9350 1550
Wire Wire Line
	9050 950  9050 1350
Text Label 8000 1350 2    50   ~ 0
redGate
Wire Wire Line
	9050 950  8400 950 
Wire Wire Line
	8400 950  8400 1350
Wire Wire Line
	8400 1550 8400 1350
Connection ~ 8400 1350
Wire Wire Line
	8000 1350 8050 1350
Wire Wire Line
	8350 1350 8400 1350
$Comp
L Device:R Rred_pulldown
U 1 1 5E051501
P 8400 1700
F 0 "Rred_pulldown" H 8470 1746 50  0000 L CNN
F 1 "10k" H 8470 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 1700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 1700 50  0001 C CNN
F 4 "MC0100W0603110K" H 8400 1700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8400 1700 50  0001 C CNN "Farnell"
	1    8400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rred
U 1 1 5E008B99
P 8200 1350
F 0 "Rred" V 7993 1350 50  0000 C CNN
F 1 "1k" V 8084 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 1350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8200 1350 50  0001 C CNN
F 4 "MC0100W060311K" V 8200 1350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8200 1350 50  0001 C CNN "Farnell"
	1    8200 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 1950 8700 1850
Connection ~ 8700 1550
Wire Wire Line
	8400 1850 8700 1850
Connection ~ 8700 1850
Wire Wire Line
	8700 1850 8700 1550
$Comp
L ProjectSpecific:IRLML6344 Qred_optional
U 1 1 5DFE38F5
P 9250 1350
F 0 "Qred_optional" H 9454 1396 50  0000 L CNN
F 1 "IRLML6344" H 9454 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 970 50  0001 C CNN "RDSON Max"
	1    9250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2450 9350 2400
Wire Wire Line
	9350 2400 10000 2400
$Comp
L power:GND #PWR?
U 1 1 5E09EC67
P 8700 3250
F 0 "#PWR?" H 8700 3000 50  0001 C CNN
F 1 "GND" H 8705 3077 50  0000 C CNN
F 2 "" H 8700 3250 50  0001 C CNN
F 3 "" H 8700 3250 50  0001 C CNN
	1    8700 3250
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qgreen
U 1 1 5E09EC75
P 8600 2650
F 0 "Qgreen" H 8804 2650 50  0000 L CNN
F 1 "IRLML6344" H 8804 2605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8600 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9120 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8880 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9080 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9500 2270 50  0001 C CNN "RDSON Max"
	1    8600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2450 8700 2400
Wire Wire Line
	8700 2400 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	8700 2850 9350 2850
Wire Wire Line
	9050 2250 9050 2650
Text Label 8000 2650 2    50   ~ 0
greenGate
Wire Wire Line
	9050 2250 8400 2250
Wire Wire Line
	8400 2250 8400 2650
Wire Wire Line
	8400 2850 8400 2650
Connection ~ 8400 2650
Wire Wire Line
	8000 2650 8050 2650
Wire Wire Line
	8350 2650 8400 2650
$Comp
L Device:R Rgreen_pulldown
U 1 1 5E09EC8B
P 8400 3000
F 0 "Rgreen_pulldown" H 8470 3046 50  0000 L CNN
F 1 "10k" H 8470 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 3000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 3000 50  0001 C CNN
F 4 "MC0100W0603110K" H 8400 3000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8400 3000 50  0001 C CNN "Farnell"
	1    8400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rgreen
U 1 1 5E09EC95
P 8200 2650
F 0 "Rgreen" V 7993 2650 50  0000 C CNN
F 1 "1k" V 8084 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8200 2650 50  0001 C CNN
F 4 "MC0100W060311K" V 8200 2650 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8200 2650 50  0001 C CNN "Farnell"
	1    8200 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 3250 8700 3150
Connection ~ 8700 2850
Wire Wire Line
	8400 3150 8700 3150
Connection ~ 8700 3150
Wire Wire Line
	8700 3150 8700 2850
$Comp
L ProjectSpecific:IRLML6344 Qgreen_optional
U 1 1 5E09ECA8
P 9250 2650
F 0 "Qgreen_optional" H 9454 2696 50  0000 L CNN
F 1 "IRLML6344" H 9454 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 2270 50  0001 C CNN "RDSON Max"
	1    9250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3800 9350 3750
Wire Wire Line
	9350 3750 10100 3750
$Comp
L power:GND #PWR?
U 1 1 5E0DB46E
P 8700 4600
F 0 "#PWR?" H 8700 4350 50  0001 C CNN
F 1 "GND" H 8705 4427 50  0000 C CNN
F 2 "" H 8700 4600 50  0001 C CNN
F 3 "" H 8700 4600 50  0001 C CNN
	1    8700 4600
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qblue
U 1 1 5E0DB47C
P 8600 4000
F 0 "Qblue" H 8804 4000 50  0000 L CNN
F 1 "IRLML6344" H 8804 3955 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8600 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9120 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8880 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9080 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9500 3620 50  0001 C CNN "RDSON Max"
	1    8600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3800 8700 3750
Wire Wire Line
	8700 3750 9350 3750
Connection ~ 9350 3750
Wire Wire Line
	8700 4200 9350 4200
Wire Wire Line
	9050 3600 9050 4000
Text Label 8000 4000 2    50   ~ 0
blueGate
Wire Wire Line
	9050 3600 8400 3600
Wire Wire Line
	8400 3600 8400 4000
Wire Wire Line
	8400 4200 8400 4000
Connection ~ 8400 4000
Wire Wire Line
	8000 4000 8050 4000
Wire Wire Line
	8350 4000 8400 4000
$Comp
L Device:R Rblue_pulldown
U 1 1 5E0DB492
P 8400 4350
F 0 "Rblue_pulldown" H 8470 4396 50  0000 L CNN
F 1 "10k" H 8470 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 4350 50  0001 C CNN
F 4 "MC0100W0603110K" H 8400 4350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8400 4350 50  0001 C CNN "Farnell"
	1    8400 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rblue
U 1 1 5E0DB49C
P 8200 4000
F 0 "Rblue" V 7993 4000 50  0000 C CNN
F 1 "1k" V 8084 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 4000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8200 4000 50  0001 C CNN
F 4 "MC0100W060311K" V 8200 4000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8200 4000 50  0001 C CNN "Farnell"
	1    8200 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 4600 8700 4500
Connection ~ 8700 4200
Wire Wire Line
	8400 4500 8700 4500
Connection ~ 8700 4500
Wire Wire Line
	8700 4500 8700 4200
$Comp
L ProjectSpecific:IRLML6344 Qblue_optional
U 1 1 5E0DB4AF
P 9250 4000
F 0 "Qblue_optional" H 9455 4046 50  0000 L CNN
F 1 "IRLML6344" H 9455 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 3620 50  0001 C CNN "RDSON Max"
	1    9250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5150 9350 5100
$Comp
L power:GND #PWR?
U 1 1 5E1058C2
P 8700 5950
F 0 "#PWR?" H 8700 5700 50  0001 C CNN
F 1 "GND" H 8705 5777 50  0000 C CNN
F 2 "" H 8700 5950 50  0001 C CNN
F 3 "" H 8700 5950 50  0001 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qwhite
U 1 1 5E1058D0
P 8600 5350
F 0 "Qwhite" H 8805 5350 50  0000 L CNN
F 1 "IRLML6344" H 8804 5305 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8600 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9120 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8880 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9080 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9500 4970 50  0001 C CNN "RDSON Max"
	1    8600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5150 8700 5100
Wire Wire Line
	8700 5100 9350 5100
Connection ~ 9350 5100
Wire Wire Line
	8700 5550 9350 5550
Wire Wire Line
	9050 4950 9050 5350
Text Label 8000 5350 2    50   ~ 0
whiteGate
Wire Wire Line
	9050 4950 8400 4950
Wire Wire Line
	8400 4950 8400 5350
Wire Wire Line
	8400 5550 8400 5350
Connection ~ 8400 5350
Wire Wire Line
	8000 5350 8050 5350
Wire Wire Line
	8350 5350 8400 5350
$Comp
L Device:R Rwhite_pulldown
U 1 1 5E1058E6
P 8400 5700
F 0 "Rwhite_pulldown" H 8470 5746 50  0000 L CNN
F 1 "10k" H 8470 5655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 5700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 5700 50  0001 C CNN
F 4 "MC0100W0603110K" H 8400 5700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8400 5700 50  0001 C CNN "Farnell"
	1    8400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rwhite
U 1 1 5E1058F0
P 8200 5350
F 0 "Rwhite" V 7993 5350 50  0000 C CNN
F 1 "1k" V 8084 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8130 5350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8200 5350 50  0001 C CNN
F 4 "MC0100W060311K" V 8200 5350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8200 5350 50  0001 C CNN "Farnell"
	1    8200 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8700 5950 8700 5850
Connection ~ 8700 5550
Wire Wire Line
	8400 5850 8700 5850
Connection ~ 8700 5850
Wire Wire Line
	8700 5850 8700 5550
$Comp
L ProjectSpecific:IRLML6344 Qwhite_optional
U 1 1 5E105903
P 9250 5350
F 0 "Qwhite_optional" H 9454 5396 50  0000 L CNN
F 1 "IRLML6344" H 9454 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 4970 50  0001 C CNN "RDSON Max"
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2400 10000 1200
Wire Wire Line
	10000 1200 10350 1200
Wire Wire Line
	10100 3750 10100 1300
Wire Wire Line
	10100 1300 10350 1300
Wire Wire Line
	10350 1400 10200 1400
Wire Wire Line
	10200 1400 10200 5100
Wire Wire Line
	9350 5100 10200 5100
Wire Notes Line
	7600 800  11100 800 
Wire Notes Line
	11100 800  11100 6400
Wire Notes Line
	11100 6400 7600 6400
Wire Notes Line
	7600 6400 7600 800 
Text Notes 7650 750  0    118  ~ 0
RGBW LED Driver (CV-mode)
Text Label 4600 4250 0    50   ~ 0
redGate
Text Label 4600 4400 0    50   ~ 0
greenGate
Text Label 4600 4550 0    50   ~ 0
blueGate
Text Label 4600 4700 0    50   ~ 0
whiteGate
Text Label 1050 3800 2    50   ~ 0
redGate
Text Label 1050 3950 2    50   ~ 0
greenGate
Text Label 1050 4100 2    50   ~ 0
blueGate
Text Label 1050 4250 2    50   ~ 0
whiteGate
Wire Wire Line
	5950 7100 6250 7100
Wire Wire Line
	5950 6750 5950 6900
Text Label 5450 7000 2    50   ~ 0
adressable
Wire Wire Line
	5950 6900 6250 6900
Wire Wire Line
	5800 7000 6250 7000
$Comp
L Device:R Raddressable
U 1 1 5E225DC9
P 5650 7000
F 0 "Raddressable" V 5857 7000 50  0000 C CNN
F 1 "1k" V 5766 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 7000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 5650 7000 50  0001 C CNN
F 4 "MC0100W060311K" V 5650 7000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 5650 7000 50  0001 C CNN "Farnell"
	1    5650 7000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 7000 5500 7000
$Comp
L power:GND #PWR?
U 1 1 5E2158AC
P 5950 7250
F 0 "#PWR?" H 5950 7000 50  0001 C CNN
F 1 "GND" H 5955 7077 50  0000 C CNN
F 2 "" H 5950 7250 50  0001 C CNN
F 3 "" H 5950 7250 50  0001 C CNN
	1    5950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 7250 5950 7100
Wire Notes Line
	5600 2950 5600 5700
Wire Notes Line
	5600 5700 7450 5700
Wire Notes Line
	7450 5700 7450 2950
Wire Notes Line
	7450 2950 5600 2950
Text Notes 5000 6000 0    118  ~ 0
Addressable LED
Text Label 4600 4900 0    50   ~ 0
adressable
Text Label 1050 4450 2    50   ~ 0
adressable
$Comp
L power:GND #PWR?
U 1 1 5E49F4A7
P 2550 7300
F 0 "#PWR?" H 2550 7050 50  0001 C CNN
F 1 "GND" H 2555 7127 50  0000 C CNN
F 2 "" H 2550 7300 50  0001 C CNN
F 3 "" H 2550 7300 50  0001 C CNN
	1    2550 7300
	1    0    0    -1  
$EndComp
NoConn ~ 3600 7600
NoConn ~ 3600 7500
NoConn ~ 3600 7400
NoConn ~ 3600 7300
NoConn ~ 3600 7200
NoConn ~ 3600 7100
NoConn ~ 3600 6900
$Comp
L Device:R Rsw4
U 1 1 5E4BD26C
P 4250 7300
F 0 "Rsw4" V 4043 7300 50  0000 C CNN
F 1 "10k" V 4134 7300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 7300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4250 7300 50  0001 C CNN
F 4 "MC0100W0603110K" V 4250 7300 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4250 7300 50  0001 C CNN "Farnell"
	1    4250 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R Rsw5
U 1 1 5E4BEC05
P 4250 7600
F 0 "Rsw5" V 4043 7600 50  0000 C CNN
F 1 "10k" V 4134 7600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 7600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4250 7600 50  0001 C CNN
F 4 "MC0100W0603110K" V 4250 7600 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4250 7600 50  0001 C CNN "Farnell"
	1    4250 7600
	0    1    1    0   
$EndComp
$Comp
L Device:R Rsw3
U 1 1 5E4BEFE9
P 4250 7000
F 0 "Rsw3" V 4043 7000 50  0000 C CNN
F 1 "10k" V 4134 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 7000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4250 7000 50  0001 C CNN
F 4 "MC0100W0603110K" V 4250 7000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4250 7000 50  0001 C CNN "Farnell"
	1    4250 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R Rsw2
U 1 1 5E4BF77A
P 4250 6700
F 0 "Rsw2" V 4043 6700 50  0000 C CNN
F 1 "10k" V 4134 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 6700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4250 6700 50  0001 C CNN
F 4 "MC0100W0603110K" V 4250 6700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4250 6700 50  0001 C CNN "Farnell"
	1    4250 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R Rsw1
U 1 1 5E4C9983
P 4250 6400
F 0 "Rsw1" V 4043 6400 50  0000 C CNN
F 1 "10k" V 4134 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 6400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4250 6400 50  0001 C CNN
F 4 "MC0100W0603110K" V 4250 6400 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4250 6400 50  0001 C CNN "Farnell"
	1    4250 6400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E4D786A
P 4500 6300
F 0 "#PWR?" H 4500 6150 50  0001 C CNN
F 1 "+5V" H 4515 6473 50  0000 C CNN
F 2 "" H 4500 6300 50  0001 C CNN
F 3 "" H 4500 6300 50  0001 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6300 4500 6400
Wire Wire Line
	4500 6400 4400 6400
Wire Wire Line
	4500 6400 4500 6700
Wire Wire Line
	4500 6700 4400 6700
Connection ~ 4500 6400
Wire Wire Line
	4500 6700 4500 7000
Wire Wire Line
	4500 7000 4400 7000
Connection ~ 4500 6700
Wire Wire Line
	4500 7000 4500 7300
Wire Wire Line
	4500 7300 4400 7300
Connection ~ 4500 7000
Wire Wire Line
	4500 7300 4500 7600
Wire Wire Line
	4500 7600 4400 7600
Connection ~ 4500 7300
Wire Wire Line
	4100 6400 3600 6400
Wire Wire Line
	3600 6500 4050 6500
Wire Wire Line
	4050 6500 4050 6700
Wire Wire Line
	4050 6700 4100 6700
Wire Wire Line
	3600 6600 3950 6600
Wire Wire Line
	3950 6600 3950 7000
Wire Wire Line
	3950 7000 4100 7000
Wire Wire Line
	3600 6700 3850 6700
Wire Wire Line
	3850 6700 3850 7300
Wire Wire Line
	3850 7300 4100 7300
Wire Wire Line
	3600 6800 3750 6800
Wire Wire Line
	3750 6800 3750 7600
Wire Wire Line
	3750 7600 4100 7600
$Comp
L Switch:SW_Rotary12 5_way_pos
U 1 1 5E47EEBD
P 3200 7000
F 0 "5_way_pos" H 3100 7781 50  0000 C CNN
F 1 "SW_Rotary12" H 3100 7690 50  0000 C CNN
F 2 "" H 3000 7700 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C200/DS-Serie%23LOR.pdf" H 3000 7700 50  0001 C CNN
	1    3200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7000 2550 7000
Wire Wire Line
	2550 7000 2550 7300
Wire Wire Line
	5150 4250 5150 5250
Wire Wire Line
	3550 5200 3550 5250
Wire Wire Line
	3550 5250 5150 5250
Connection ~ 5150 5250
Wire Wire Line
	5150 5250 5150 5450
$Comp
L Connector_Generic:Conn_01x02 J5V
U 1 1 5DE4F57E
P 6900 1700
F 0 "J5V" H 6980 1692 50  0000 L CNN
F 1 "Conn_01x02" H 6980 1601 50  0000 L CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "~" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE7A5F1
P 6700 2050
F 0 "#PWR?" H 6700 1800 50  0001 C CNN
F 1 "GND" H 6705 1877 50  0000 C CNN
F 2 "" H 6700 2050 50  0001 C CNN
F 3 "" H 6700 2050 50  0001 C CNN
	1    6700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2050 6700 1800
Wire Wire Line
	6700 1700 6700 1300
Connection ~ 6700 1300
$Comp
L Connector_Generic:Conn_01x03 Jvin_vfused
U 1 1 5DE93F0E
P 3550 1500
F 0 "Jvin_vfused" V 3514 1312 50  0000 R CNN
F 1 "Conn_01x03" V 3423 1312 50  0000 R CNN
F 2 "" H 3550 1500 50  0001 C CNN
F 3 "~" H 3550 1500 50  0001 C CNN
	1    3550 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 1700 3450 1850
Wire Wire Line
	3450 1850 3200 1850
Wire Wire Line
	3200 1850 3200 1950
Connection ~ 3200 1950
Wire Wire Line
	3200 1950 3950 1950
Wire Wire Line
	3650 1700 3650 1850
Wire Wire Line
	3650 1850 3950 1850
Wire Wire Line
	3950 1850 3950 1950
Connection ~ 3950 1950
Wire Wire Line
	3950 1950 4050 1950
$Comp
L power:GND #PWR?
U 1 1 5DEA77D9
P 3550 1700
F 0 "#PWR?" H 3550 1450 50  0001 C CNN
F 1 "GND" H 3555 1527 50  0000 C CNN
F 2 "" H 3550 1700 50  0001 C CNN
F 3 "" H 3550 1700 50  0001 C CNN
	1    3550 1700
	1    0    0    -1  
$EndComp
Text Notes 5600 2900 0    118  ~ 0
DMX
$Comp
L Interface_UART:MAX485E U?
U 1 1 5DEB6312
P 6300 4850
F 0 "U?" H 6300 5531 50  0000 C CNN
F 1 "MAX485E" H 6300 5440 50  0000 C CNN
F 2 "" H 6300 4150 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6300 4900 50  0001 C CNN
	1    6300 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3_Ground J?
U 1 1 5DEB7DDB
P 7050 3450
F 0 "J?" H 7050 3815 50  0000 C CNN
F 1 "XLR3_Ground" H 7050 3724 50  0000 C CNN
F 2 "" H 7050 3450 50  0001 C CNN
F 3 " ~" H 7050 3450 50  0001 C CNN
	1    7050 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3_Ground J?
U 1 1 5DEB90CA
P 7050 4150
F 0 "J?" H 7050 4515 50  0000 C CNN
F 1 "XLR3_Ground" H 7050 4424 50  0000 C CNN
F 2 "" H 7050 4150 50  0001 C CNN
F 3 " ~" H 7050 4150 50  0001 C CNN
	1    7050 4150
	1    0    0    -1  
$EndComp
Wire Notes Line
	5000 6050 5000 7700
Wire Notes Line
	5000 7700 6850 7700
Wire Notes Line
	6850 7700 6850 6050
Wire Notes Line
	6850 6050 5000 6050
$Comp
L Interface_UART:MAX481E U?
U 1 1 5DF00C1F
P 6200 3450
F 0 "U?" H 6200 4131 50  0000 C CNN
F 1 "MAX481E" H 6200 4040 50  0000 C CNN
F 2 "" H 6200 2750 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6200 3500 50  0001 C CNN
	1    6200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1250 1950 1250
Wire Wire Line
	1800 2100 1800 1900
$Comp
L power:GND #PWR?
U 1 1 5DE6183E
P 1800 2100
F 0 "#PWR?" H 1800 1850 50  0001 C CNN
F 1 "GND" H 1805 1927 50  0000 C CNN
F 2 "" H 1800 2100 50  0001 C CNN
F 3 "" H 1800 2100 50  0001 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
