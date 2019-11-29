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
P 1700 4400
F 0 "U1" H 1300 5325 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 1900 3450 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 1700 4400 50  0001 C CIN
F 3 "" H 1700 4400 50  0001 C CNN
	1    1700 4400
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
P 7150 4250
F 0 "J_Addressable" H 7150 4450 50  0000 C CNN
F 1 "Conn_01x03" H 7150 4050 50  0000 C CNN
F 2 "" H 7150 4250 50  0001 C CNN
F 3 "" H 7150 4250 50  0001 C CNN
	1    7150 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 1150 6700
F 0 "RV_Pot_1" H 1080 6746 50  0000 R CNN
F 1 "10k" H 1080 6655 50  0000 R CNN
F 2 "" H 1150 6700 50  0001 C CNN
F 3 "~" H 1150 6700 50  0001 C CNN
	1    1150 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 2100 6700
F 0 "RV_Pot_2" H 2030 6746 50  0000 R CNN
F 1 "10k" H 2030 6655 50  0000 R CNN
F 2 "" H 2100 6700 50  0001 C CNN
F 3 "~" H 2100 6700 50  0001 C CNN
	1    2100 6700
	1    0    0    -1  
$EndComp
$Sheet
S 6050 1000 950  1150
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 6050 1300 50 
F3 "Buck5VOut" I R 7000 1300 50 
F4 "BuckGND" I L 6050 1900 50 
$EndSheet
$Comp
L power:+5V #PWR?
U 1 1 5DE4A501
P 7200 1200
F 0 "#PWR?" H 7200 1050 50  0001 C CNN
F 1 "+5V" H 7215 1373 50  0000 C CNN
F 2 "" H 7200 1200 50  0001 C CNN
F 3 "" H 7200 1200 50  0001 C CNN
	1    7200 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1700 1750 1700
Wire Wire Line
	7000 1300 7200 1300
Wire Wire Line
	7200 1300 7200 1200
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
	1750 1250 1750 1700
$Comp
L power:GND #PWR?
U 1 1 5DE6183E
P 1550 2100
F 0 "#PWR?" H 1550 1850 50  0001 C CNN
F 1 "GND" H 1555 1927 50  0000 C CNN
F 2 "" H 1550 2100 50  0001 C CNN
F 3 "" H 1550 2100 50  0001 C CNN
	1    1550 2100
	1    0    0    -1  
$EndComp
Text GLabel 2550 1250 2    50   Input ~ 0
Vin
Wire Wire Line
	2550 1250 1950 1250
Wire Wire Line
	1300 1250 1750 1250
Connection ~ 1750 1250
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
	2900 800  2900 2400
Wire Notes Line
	600  2400 600  800 
Text Notes 600  750  0    118  ~ 0
Input Connectors
Text GLabel 5400 1300 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	4950 800  4950 2400
Wire Notes Line
	4950 800  7400 800 
Wire Notes Line
	7400 800  7400 2400
Wire Notes Line
	7400 2400 4950 2400
Text Notes 4950 750  0    118  ~ 0
5V Buck
Wire Wire Line
	1950 1900 1950 1700
Wire Wire Line
	1950 1400 1950 1250
$Comp
L power:+5V #PWR?
U 1 1 5DEDA48D
P 1150 6400
F 0 "#PWR?" H 1150 6250 50  0001 C CNN
F 1 "+5V" H 1165 6573 50  0000 C CNN
F 2 "" H 1150 6400 50  0001 C CNN
F 3 "" H 1150 6400 50  0001 C CNN
	1    1150 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEDA793
P 1150 7100
F 0 "#PWR?" H 1150 6850 50  0001 C CNN
F 1 "GND" H 1155 6927 50  0000 C CNN
F 2 "" H 1150 7100 50  0001 C CNN
F 3 "" H 1150 7100 50  0001 C CNN
	1    1150 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6400 1150 6450
Wire Wire Line
	1150 7100 1150 7000
Wire Wire Line
	1150 7000 2100 7000
Wire Wire Line
	2100 7000 2100 6850
Connection ~ 1150 7000
Wire Wire Line
	1150 7000 1150 6850
Wire Wire Line
	1150 6450 2100 6450
Wire Wire Line
	2100 6450 2100 6550
Connection ~ 1150 6450
Wire Wire Line
	1150 6450 1150 6550
Text GLabel 1350 6700 2    50   Input ~ 0
POT_1
Text GLabel 2300 6700 2    50   Input ~ 0
POT_2
Wire Wire Line
	1300 6700 1350 6700
Wire Wire Line
	2250 6700 2300 6700
Wire Notes Line
	600  6100 4900 6100
Text Notes 600  6050 0    118  ~ 0
User Interface
$Comp
L MCU_Module:WeMos_D1_mini U2
U 1 1 5DF01EF8
P 3850 4400
F 0 "U2" H 3850 3511 50  0000 C CNN
F 1 "WeMos_D1_mini" H 3850 3420 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 3850 3250 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 2000 3250 50  0001 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1300 6050 1300
Connection ~ 1950 1250
Wire Wire Line
	1950 1250 1750 1250
Text Notes 2050 1750 0    50   ~ 0
Place Close to input
Wire Notes Line
	600  2400 2900 2400
Wire Notes Line
	600  800  2900 800 
Wire Notes Line
	3100 2400 4750 2400
Wire Notes Line
	4750 800  3100 800 
Wire Notes Line
	3100 800  3100 2400
Wire Notes Line
	4750 800  4750 2400
Wire Wire Line
	3500 1800 4050 1800
Text Notes 3100 750  0    118  ~ 0
Input Protection
Text Notes 3300 1600 0    50   ~ 0
Add electric P-Fet fuse here ???
Text GLabel 4050 1800 2    50   Input ~ 0
Vin_fused
Text GLabel 3500 1800 0    50   Input ~ 0
Vin
Text Notes 3300 1450 0    50   ~ 0
Add polarity protection here ???
Text Notes 600  2900 0    118  ~ 0
MCU Option Nano
Text Notes 3100 2900 0    118  ~ 0
MCU Option Wemos
Wire Notes Line
	600  2950 2900 2950
Wire Notes Line
	2900 5750 600  5750
Wire Notes Line
	5500 2950 3100 2950
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
P 5250 2100
F 0 "#PWR?" H 5250 1850 50  0001 C CNN
F 1 "GND" H 5255 1927 50  0000 C CNN
F 2 "" H 5250 2100 50  0001 C CNN
F 3 "" H 5250 2100 50  0001 C CNN
	1    5250 2100
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
P 5200 5450
F 0 "#PWR?" H 5200 5200 50  0001 C CNN
F 1 "GND" H 5205 5277 50  0000 C CNN
F 2 "" H 5200 5450 50  0001 C CNN
F 3 "" H 5200 5450 50  0001 C CNN
	1    5200 5450
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  6100 600  7500
Wire Notes Line
	650  7500 4950 7500
Wire Notes Line
	4900 6100 4900 7500
Wire Notes Line
	600  2950 600  5750
Wire Notes Line
	2900 2950 2900 5750
Wire Notes Line
	3100 2950 3100 5700
Wire Notes Line
	3100 5700 5500 5700
Wire Notes Line
	5500 2950 5500 5700
Wire Wire Line
	850  5500 850  5450
Wire Wire Line
	850  5450 1700 5450
Wire Wire Line
	1700 5450 1700 5400
Wire Wire Line
	1600 3250 1600 3400
Wire Wire Line
	3750 3450 3750 3600
Text GLabel 2550 3450 1    50   Input ~ 0
POT_1
Text GLabel 2800 3450 1    50   Input ~ 0
POT_2
Text GLabel 5200 3500 1    50   Input ~ 0
POT_1
$Comp
L power:+5V #PWR?
U 1 1 5DF4373E
P 3750 3450
F 0 "#PWR?" H 3750 3300 50  0001 C CNN
F 1 "+5V" H 3765 3623 50  0000 C CNN
F 2 "" H 3750 3450 50  0001 C CNN
F 3 "" H 3750 3450 50  0001 C CNN
	1    3750 3450
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
P 5200 3700
F 0 "R1" H 5270 3746 50  0000 L CNN
F 1 "33k" H 5270 3655 50  0000 L CNN
F 2 "" V 5130 3700 50  0001 C CNN
F 3 "~" H 5200 3700 50  0001 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DFA2915
P 5200 4100
F 0 "R2" H 5270 4146 50  0000 L CNN
F 1 "47k" H 5270 4055 50  0000 L CNN
F 2 "" V 5130 4100 50  0001 C CNN
F 3 "~" H 5200 4100 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3900 5200 3900
Wire Wire Line
	5200 3900 5200 3850
Wire Wire Line
	5200 3900 5200 3950
Connection ~ 5200 3900
Wire Wire Line
	5200 3550 5200 3500
Text Notes 5450 3150 2    50   ~ 0
ESP8266 only have one analog input\nRescale 5V to 1V by adding a resistor divider
Wire Wire Line
	5250 2100 5250 1900
Wire Wire Line
	5250 1900 6050 1900
Text GLabel 6650 4000 1    50   Input ~ 0
Vin_fused
Text GLabel 10150 1000 0    50   Input ~ 0
Vin_fused
$Comp
L Connector_Generic:Conn_01x05 J_RGBW
U 1 1 5DFDEA6C
P 10600 1200
F 0 "J_RGBW" H 10680 1242 50  0000 L CNN
F 1 "Conn_01x05" H 10680 1151 50  0000 L CNN
F 2 "" H 10600 1200 50  0001 C CNN
F 3 "~" H 10600 1200 50  0001 C CNN
	1    10600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1000 10400 1000
Wire Wire Line
	1350 1900 1550 1900
Wire Wire Line
	1550 2100 1550 1900
Connection ~ 1550 1900
Wire Wire Line
	1550 1900 1950 1900
Wire Wire Line
	9400 1150 9400 1100
Wire Wire Line
	9400 1100 10400 1100
$Comp
L power:GND #PWR?
U 1 1 5E009609
P 8750 1950
F 0 "#PWR?" H 8750 1700 50  0001 C CNN
F 1 "GND" H 8755 1777 50  0000 C CNN
F 2 "" H 8750 1950 50  0001 C CNN
F 3 "" H 8750 1950 50  0001 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qred
U 1 1 5E00B511
P 8650 1350
F 0 "Qred" H 8855 1350 50  0000 L CNN
F 1 "IRLML6344" H 8854 1305 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8850 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8650 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9170 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8930 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9130 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9550 970 50  0001 C CNN "RDSON Max"
	1    8650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1150 8750 1100
Wire Wire Line
	8750 1100 9400 1100
Connection ~ 9400 1100
Wire Wire Line
	8750 1550 9400 1550
Wire Wire Line
	9100 950  9100 1350
Text Label 8050 1350 2    50   ~ 0
redGate
Wire Wire Line
	9100 950  8450 950 
Wire Wire Line
	8450 950  8450 1350
Wire Wire Line
	8450 1550 8450 1350
Connection ~ 8450 1350
Wire Wire Line
	8050 1350 8100 1350
Wire Wire Line
	8400 1350 8450 1350
$Comp
L Device:R Rred_pulldown
U 1 1 5E051501
P 8450 1700
F 0 "Rred_pulldown" H 8520 1746 50  0000 L CNN
F 1 "10k" H 8520 1655 50  0000 L CNN
F 2 "" V 8380 1700 50  0001 C CNN
F 3 "~" H 8450 1700 50  0001 C CNN
	1    8450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rred
U 1 1 5E008B99
P 8250 1350
F 0 "Rred" V 8043 1350 50  0000 C CNN
F 1 "1k" V 8134 1350 50  0000 C CNN
F 2 "" V 8180 1350 50  0001 C CNN
F 3 "~" H 8250 1350 50  0001 C CNN
	1    8250 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 1950 8750 1850
Connection ~ 8750 1550
Wire Wire Line
	8450 1850 8750 1850
Connection ~ 8750 1850
Wire Wire Line
	8750 1850 8750 1550
$Comp
L ProjectSpecific:IRLML6344 Qred_optional
U 1 1 5DFE38F5
P 9300 1350
F 0 "Qred_optional" H 9504 1396 50  0000 L CNN
F 1 "IRLML6344" H 9504 1305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 970 50  0001 C CNN "RDSON Max"
	1    9300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2450 9400 2400
Wire Wire Line
	9400 2400 10050 2400
$Comp
L power:GND #PWR?
U 1 1 5E09EC67
P 8750 3250
F 0 "#PWR?" H 8750 3000 50  0001 C CNN
F 1 "GND" H 8755 3077 50  0000 C CNN
F 2 "" H 8750 3250 50  0001 C CNN
F 3 "" H 8750 3250 50  0001 C CNN
	1    8750 3250
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qgreen
U 1 1 5E09EC75
P 8650 2650
F 0 "Qgreen" H 8854 2650 50  0000 L CNN
F 1 "IRLML6344" H 8854 2605 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8850 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8650 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9170 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8930 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9130 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9550 2270 50  0001 C CNN "RDSON Max"
	1    8650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2450 8750 2400
Wire Wire Line
	8750 2400 9400 2400
Connection ~ 9400 2400
Wire Wire Line
	8750 2850 9400 2850
Wire Wire Line
	9100 2250 9100 2650
Text Label 8050 2650 2    50   ~ 0
greenGate
Wire Wire Line
	9100 2250 8450 2250
Wire Wire Line
	8450 2250 8450 2650
Wire Wire Line
	8450 2850 8450 2650
Connection ~ 8450 2650
Wire Wire Line
	8050 2650 8100 2650
Wire Wire Line
	8400 2650 8450 2650
$Comp
L Device:R Rgreen_pulldown
U 1 1 5E09EC8B
P 8450 3000
F 0 "Rgreen_pulldown" H 8520 3046 50  0000 L CNN
F 1 "10k" H 8520 2955 50  0000 L CNN
F 2 "" V 8380 3000 50  0001 C CNN
F 3 "~" H 8450 3000 50  0001 C CNN
	1    8450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rgreen
U 1 1 5E09EC95
P 8250 2650
F 0 "Rgreen" V 8043 2650 50  0000 C CNN
F 1 "1k" V 8134 2650 50  0000 C CNN
F 2 "" V 8180 2650 50  0001 C CNN
F 3 "~" H 8250 2650 50  0001 C CNN
	1    8250 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 3250 8750 3150
Connection ~ 8750 2850
Wire Wire Line
	8450 3150 8750 3150
Connection ~ 8750 3150
Wire Wire Line
	8750 3150 8750 2850
$Comp
L ProjectSpecific:IRLML6344 Qgreen_optional
U 1 1 5E09ECA8
P 9300 2650
F 0 "Qgreen_optional" H 9504 2696 50  0000 L CNN
F 1 "IRLML6344" H 9504 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 2270 50  0001 C CNN "RDSON Max"
	1    9300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3800 9400 3750
Wire Wire Line
	9400 3750 10150 3750
$Comp
L power:GND #PWR?
U 1 1 5E0DB46E
P 8750 4600
F 0 "#PWR?" H 8750 4350 50  0001 C CNN
F 1 "GND" H 8755 4427 50  0000 C CNN
F 2 "" H 8750 4600 50  0001 C CNN
F 3 "" H 8750 4600 50  0001 C CNN
	1    8750 4600
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qblue
U 1 1 5E0DB47C
P 8650 4000
F 0 "Qblue" H 8854 4000 50  0000 L CNN
F 1 "IRLML6344" H 8854 3955 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8850 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8650 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9170 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8930 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9130 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9550 3620 50  0001 C CNN "RDSON Max"
	1    8650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3800 8750 3750
Wire Wire Line
	8750 3750 9400 3750
Connection ~ 9400 3750
Wire Wire Line
	8750 4200 9400 4200
Wire Wire Line
	9100 3600 9100 4000
Text Label 8050 4000 2    50   ~ 0
blueGate
Wire Wire Line
	9100 3600 8450 3600
Wire Wire Line
	8450 3600 8450 4000
Wire Wire Line
	8450 4200 8450 4000
Connection ~ 8450 4000
Wire Wire Line
	8050 4000 8100 4000
Wire Wire Line
	8400 4000 8450 4000
$Comp
L Device:R Rblue_pulldown
U 1 1 5E0DB492
P 8450 4350
F 0 "Rblue_pulldown" H 8520 4396 50  0000 L CNN
F 1 "10k" H 8520 4305 50  0000 L CNN
F 2 "" V 8380 4350 50  0001 C CNN
F 3 "~" H 8450 4350 50  0001 C CNN
	1    8450 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rblue
U 1 1 5E0DB49C
P 8250 4000
F 0 "Rblue" V 8043 4000 50  0000 C CNN
F 1 "1k" V 8134 4000 50  0000 C CNN
F 2 "" V 8180 4000 50  0001 C CNN
F 3 "~" H 8250 4000 50  0001 C CNN
	1    8250 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 4600 8750 4500
Connection ~ 8750 4200
Wire Wire Line
	8450 4500 8750 4500
Connection ~ 8750 4500
Wire Wire Line
	8750 4500 8750 4200
$Comp
L ProjectSpecific:IRLML6344 Qblue_optional
U 1 1 5E0DB4AF
P 9300 4000
F 0 "Qblue_optional" H 9505 4046 50  0000 L CNN
F 1 "IRLML6344" H 9505 3955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 3620 50  0001 C CNN "RDSON Max"
	1    9300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5150 9400 5100
$Comp
L power:GND #PWR?
U 1 1 5E1058C2
P 8750 5950
F 0 "#PWR?" H 8750 5700 50  0001 C CNN
F 1 "GND" H 8755 5777 50  0000 C CNN
F 2 "" H 8750 5950 50  0001 C CNN
F 3 "" H 8750 5950 50  0001 C CNN
	1    8750 5950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qwhite
U 1 1 5E1058D0
P 8650 5350
F 0 "Qwhite" H 8855 5350 50  0000 L CNN
F 1 "IRLML6344" H 8854 5305 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8850 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8650 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9170 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 8930 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9130 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9550 4970 50  0001 C CNN "RDSON Max"
	1    8650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5150 8750 5100
Wire Wire Line
	8750 5100 9400 5100
Connection ~ 9400 5100
Wire Wire Line
	8750 5550 9400 5550
Wire Wire Line
	9100 4950 9100 5350
Text Label 8050 5350 2    50   ~ 0
whiteGate
Wire Wire Line
	9100 4950 8450 4950
Wire Wire Line
	8450 4950 8450 5350
Wire Wire Line
	8450 5550 8450 5350
Connection ~ 8450 5350
Wire Wire Line
	8050 5350 8100 5350
Wire Wire Line
	8400 5350 8450 5350
$Comp
L Device:R Rwhite_pulldown
U 1 1 5E1058E6
P 8450 5700
F 0 "Rwhite_pulldown" H 8520 5746 50  0000 L CNN
F 1 "10k" H 8520 5655 50  0000 L CNN
F 2 "" V 8380 5700 50  0001 C CNN
F 3 "~" H 8450 5700 50  0001 C CNN
	1    8450 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rwhite
U 1 1 5E1058F0
P 8250 5350
F 0 "Rwhite" V 8043 5350 50  0000 C CNN
F 1 "1k" V 8134 5350 50  0000 C CNN
F 2 "" V 8180 5350 50  0001 C CNN
F 3 "~" H 8250 5350 50  0001 C CNN
	1    8250 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 5950 8750 5850
Connection ~ 8750 5550
Wire Wire Line
	8450 5850 8750 5850
Connection ~ 8750 5850
Wire Wire Line
	8750 5850 8750 5550
$Comp
L ProjectSpecific:IRLML6344 Qwhite_optional
U 1 1 5E105903
P 9300 5350
F 0 "Qwhite_optional" H 9504 5396 50  0000 L CNN
F 1 "IRLML6344" H 9504 5305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9500 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 4970 50  0001 C CNN "RDSON Max"
	1    9300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2400 10050 1200
Wire Wire Line
	10050 1200 10400 1200
Wire Wire Line
	10150 3750 10150 1300
Wire Wire Line
	10150 1300 10400 1300
Wire Wire Line
	10400 1400 10250 1400
Wire Wire Line
	10250 1400 10250 5100
Wire Wire Line
	9400 5100 10250 5100
Wire Notes Line
	7650 800  11150 800 
Wire Notes Line
	11150 800  11150 6400
Wire Notes Line
	11150 6400 7650 6400
Wire Notes Line
	7650 6400 7650 800 
Text Notes 7700 750  0    118  ~ 0
RGBW LED Driver (CV-mode)
Text Label 4650 4250 0    50   ~ 0
redGate
Text Label 4650 4400 0    50   ~ 0
greenGate
Text Label 4650 4550 0    50   ~ 0
blueGate
Text Label 4650 4700 0    50   ~ 0
whiteGate
Wire Wire Line
	5200 4250 5200 5250
Wire Wire Line
	5200 5250 3850 5250
Wire Wire Line
	3850 5250 3850 5200
Connection ~ 5200 5250
Wire Wire Line
	5200 5250 5200 5450
Text Label 1050 3800 2    50   ~ 0
redGate
Text Label 1050 3950 2    50   ~ 0
greenGate
Text Label 1050 4100 2    50   ~ 0
blueGate
Text Label 1050 4250 2    50   ~ 0
whiteGate
Wire Wire Line
	6650 4350 6950 4350
Wire Wire Line
	6650 4000 6650 4150
Text Label 6150 4250 2    50   ~ 0
adressable
Wire Wire Line
	6650 4150 6950 4150
Wire Wire Line
	6500 4250 6950 4250
$Comp
L Device:R Raddressable
U 1 1 5E225DC9
P 6350 4250
F 0 "Raddressable" V 6557 4250 50  0000 C CNN
F 1 "1k" V 6466 4250 50  0000 C CNN
F 2 "" V 6280 4250 50  0001 C CNN
F 3 "~" H 6350 4250 50  0001 C CNN
	1    6350 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4250 6200 4250
$Comp
L power:GND #PWR?
U 1 1 5E2158AC
P 6650 4500
F 0 "#PWR?" H 6650 4250 50  0001 C CNN
F 1 "GND" H 6655 4327 50  0000 C CNN
F 2 "" H 6650 4500 50  0001 C CNN
F 3 "" H 6650 4500 50  0001 C CNN
	1    6650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4500 6650 4350
Wire Notes Line
	5700 2950 5700 5700
Wire Notes Line
	5700 5700 7550 5700
Wire Notes Line
	7550 5700 7550 2950
Wire Notes Line
	7550 2950 5700 2950
Text Notes 5700 2900 0    118  ~ 0
Addressable LED
$EndSCHEMATC
