EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "LightBoxNano - Main"
Date ""
Rev ""
Comp "Tim Gremalm"
Comment1 "a generic PCB for controlling LED's both LED strip and WS2812 "
Comment2 ""
Comment3 "https://github.com/TimGremalm/LightBoxNano"
Comment4 "http://tim.gremalm.se/"
$EndDescr
$Comp
L Connector:Barrel_Jack_Switch J_power_jack1
U 1 1 5DE03891
P 1200 1750
F 0 "J_power_jack1" H 1200 1550 50  0000 C CNN
F 1 "Barrel Jack Switch 5A 2mm" H 1200 1950 50  0000 C CNN
F 2 "LightBoxNanoFootprints:BarrelJack_SPC21364" H 1250 1710 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1692886.pdf?_ga=2.231332955.599385452.1575057425-167263916.1529948031" H 1250 1710 50  0001 C CNN
F 4 "Multicomp" H 1200 1750 50  0001 C CNN "Manufacturer"
F 5 "SPC21364" H 1200 1750 50  0001 C CNN "Part Number"
F 6 "https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842" H 1200 1750 50  0001 C CNN "Farnell"
	1    1200 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J_power_terminal1
U 1 1 5DE0534D
P 1100 1200
F 0 "J_power_terminal1" H 1100 1300 50  0000 C CNN
F 1 "Conn_01x02" H 1100 1000 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_2pole" H 1100 1200 50  0001 C CNN
F 3 "" H 1100 1200 50  0001 C CNN
	1    1100 1200
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J_addressable1
U 1 1 5DE05544
P 6500 7150
F 0 "J_addressable1" H 6500 7350 50  0000 C CNN
F 1 "Conn_01x03" H 6500 6950 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_3pole" H 6500 7150 50  0001 C CNN
F 3 "" H 6500 7150 50  0001 C CNN
	1    6500 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_pot1
U 1 1 5DE0985A
P 1000 6900
F 0 "RV_pot1" H 930 6946 50  0000 R CNN
F 1 "10k" H 930 6855 50  0000 R CNN
F 2 "" H 1000 6900 50  0001 C CNN
F 3 "" H 1000 6900 50  0001 C CNN
F 4 "" H 1000 6900 50  0001 C CNN "Farnell"
F 5 "" H 1000 6900 50  0001 C CNN "Part Number"
	1    1000 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_pot2
U 1 1 5DE0A6EA
P 1900 6900
F 0 "RV_pot2" H 1830 6946 50  0000 R CNN
F 1 "10k" H 1830 6855 50  0000 R CNN
F 2 "" H 1900 6900 50  0001 C CNN
F 3 "" H 1900 6900 50  0001 C CNN
F 4 "" H 1900 6900 50  0001 C CNN "Part Number"
F 5 "" H 1900 6900 50  0001 C CNN "Farnell"
	1    1900 6900
	1    0    0    -1  
$EndComp
$Sheet
S 5600 950  900  1050
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 5600 1250 50 
F3 "Buck5VOut" I R 6500 1250 50 
F4 "BuckGND" I L 5600 1850 50 
$EndSheet
$Comp
L power:+5V #PWR0101
U 1 1 5DE4A501
P 6650 1050
F 0 "#PWR0101" H 6650 900 50  0001 C CNN
F 1 "+5V" H 6665 1223 50  0000 C CNN
F 2 "" H 6650 1050 50  0001 C CNN
F 3 "" H 6650 1050 50  0001 C CNN
	1    6650 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1650 1800 1650
Wire Wire Line
	6500 1250 6650 1250
Wire Wire Line
	6650 1250 6650 1050
$Comp
L Device:CP C1
U 1 1 5DE52230
P 4550 1700
F 0 "C1" H 4668 1746 50  0000 L CNN
F 1 "100µF" H 4668 1655 50  0000 L CNN
F 2 "" H 4588 1550 50  0001 C CNN
F 3 "~" H 4550 1700 50  0001 C CNN
	1    4550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1200 1800 1650
Text GLabel 1950 1200 2    50   Input ~ 0
Vin
Wire Wire Line
	1300 1200 1800 1200
Connection ~ 1800 1200
$Comp
L power:GND #PWR0102
U 1 1 5DE6746F
P 1550 850
F 0 "#PWR0102" H 1550 600 50  0001 C CNN
F 1 "GND" H 1555 677 50  0000 C CNN
F 2 "" H 1550 850 50  0001 C CNN
F 3 "" H 1550 850 50  0001 C CNN
	1    1550 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 850  1400 850 
Wire Wire Line
	1400 850  1400 1100
Wire Wire Line
	1400 1100 1300 1100
Wire Notes Line
	2200 750  2200 2350
Wire Notes Line
	600  2350 600  750 
Text Notes 600  700  0    118  ~ 0
Input Connectors
Text GLabel 5450 1250 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	5000 750  5000 2350
Wire Notes Line
	5000 750  7450 750 
Wire Notes Line
	7450 750  7450 2350
Wire Notes Line
	7450 2350 5000 2350
Text Notes 5000 700  0    118  ~ 0
5V Buck
$Comp
L power:GND #PWR0104
U 1 1 5DEDA793
P 1000 7300
F 0 "#PWR0104" H 1000 7050 50  0001 C CNN
F 1 "GND" H 1005 7127 50  0000 C CNN
F 2 "" H 1000 7300 50  0001 C CNN
F 3 "" H 1000 7300 50  0001 C CNN
	1    1000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6600 1000 6650
Wire Wire Line
	1000 7300 1000 7200
Wire Wire Line
	1000 7200 1900 7200
Wire Wire Line
	1900 7200 1900 7050
Connection ~ 1000 7200
Wire Wire Line
	1000 7200 1000 7050
Wire Wire Line
	1000 6650 1900 6650
Wire Wire Line
	1900 6650 1900 6750
Connection ~ 1000 6650
Wire Wire Line
	1000 6650 1000 6750
Text GLabel 1250 6450 1    50   Input ~ 0
POT_1
Text GLabel 2150 6450 1    50   Input ~ 0
POT_2
Wire Wire Line
	2050 6900 2150 6900
Wire Notes Line
	600  5850 4900 5850
Text Notes 600  5800 0    118  ~ 0
User Interface
Wire Wire Line
	5450 1250 5600 1250
Wire Notes Line
	600  2350 2200 2350
Wire Notes Line
	600  750  2200 750 
Wire Notes Line
	2300 2350 4850 2350
Wire Notes Line
	4850 750  2300 750 
Wire Notes Line
	2300 750  2300 2350
Wire Notes Line
	4850 750  4850 2350
Wire Wire Line
	3000 1900 3200 1900
Text Notes 2300 700  0    118  ~ 0
Input Protection
Text Notes 2300 300  0    50   ~ 0
Add electric P-Fet fuse here ???\nhttps://www.mouser.se/ProductDetail/Infineon-IR/AUIR3315STRL/\nhttps://www.mouser.se/datasheet/2/196/auir3315-1225292.pdf
Text GLabel 4050 1900 2    50   Input ~ 0
Vin_fused
Text GLabel 3000 1900 0    50   Input ~ 0
Vin
Text Notes 2300 -50  0    50   ~ 0
Add polarity protection here ???
Text Notes 600  2600 0    118  ~ 0
MCU Option Nano
Text Notes 2650 2600 0    118  ~ 0
MCU Option ESP32
Wire Notes Line
	600  2650 2500 2650
Wire Notes Line
	2500 5450 600  5450
Wire Notes Line
	5450 2650 2650 2650
$Comp
L power:+5V #PWR0105
U 1 1 5DF44121
P 2000 3000
F 0 "#PWR0105" H 2000 2850 50  0001 C CNN
F 1 "+5V" H 2015 3173 50  0000 C CNN
F 2 "" H 2000 3000 50  0001 C CNN
F 3 "" H 2000 3000 50  0001 C CNN
	1    2000 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DF44892
P 5450 2000
F 0 "#PWR0106" H 5450 1750 50  0001 C CNN
F 1 "GND" H 5455 1827 50  0000 C CNN
F 2 "" H 5450 2000 50  0001 C CNN
F 3 "" H 5450 2000 50  0001 C CNN
	1    5450 2000
	1    0    0    -1  
$EndComp
Wire Notes Line
	600  5850 600  7700
Wire Notes Line
	600  7700 4900 7700
Wire Notes Line
	4900 5850 4900 7700
Wire Notes Line
	600  2650 600  5450
Wire Notes Line
	2650 2650 2650 5750
Wire Notes Line
	2650 5750 5450 5750
Wire Notes Line
	5450 2650 5450 5750
Text GLabel 2400 4400 1    50   Input ~ 0
POT_1
Text GLabel 2300 4400 1    50   Input ~ 0
POT_2
Wire Wire Line
	5450 2000 5450 1850
Wire Wire Line
	5450 1850 5600 1850
Text GLabel 6000 6900 1    50   Input ~ 0
Vin_fused
Text GLabel 10250 1000 0    50   Input ~ 0
Vin_fused
$Comp
L Connector_Generic:Conn_01x05 J_RGBW1
U 1 1 5DFDEA6C
P 10450 1200
F 0 "J_RGBW1" H 10530 1242 50  0000 L CNN
F 1 "Conn_01x05" H 10530 1151 50  0000 L CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_5pole" H 10450 1200 50  0001 C CNN
F 3 "~" H 10450 1200 50  0001 C CNN
	1    10450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1850 1800 1850
Wire Wire Line
	9350 1150 9350 1100
Wire Wire Line
	9350 1100 10250 1100
$Comp
L power:GND #PWR0110
U 1 1 5E009609
P 8850 1950
F 0 "#PWR0110" H 8850 1700 50  0001 C CNN
F 1 "GND" H 8855 1777 50  0000 C CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_red1
U 1 1 5E00B511
P 8750 1350
F 0 "Q_red1" H 8900 1200 50  0000 L CNN
F 1 "IRLML6344" H 8954 1305 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8950 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8750 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9270 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9030 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9230 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9650 970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8750 1350 50  0001 C CNN "Farnell"
	1    8750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1150 8850 1100
Wire Wire Line
	8850 1100 9350 1100
Connection ~ 9350 1100
Wire Wire Line
	8850 1550 9350 1550
Wire Wire Line
	9050 950  9050 1350
Wire Wire Line
	9050 950  8550 950 
Wire Wire Line
	8550 950  8550 1350
Wire Wire Line
	8550 1550 8550 1350
Connection ~ 8550 1350
Wire Wire Line
	8150 1350 8200 1350
Wire Wire Line
	8500 1350 8550 1350
$Comp
L Device:R Rred_pulldown1
U 1 1 5E051501
P 8550 1700
F 0 "Rred_pulldown1" H 8650 1750 50  0000 L CNN
F 1 "10k" H 8620 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 1700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8550 1700 50  0001 C CNN
F 4 "MC0100W0603110K" H 8550 1700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8550 1700 50  0001 C CNN "Farnell"
	1    8550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rred1
U 1 1 5E008B99
P 8350 1350
F 0 "Rred1" V 8143 1350 50  0000 C CNN
F 1 "1k" V 8234 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 1350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8350 1350 50  0001 C CNN
F 4 "MC0100W060311K" V 8350 1350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8350 1350 50  0001 C CNN "Farnell"
	1    8350 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 1950 8850 1850
Connection ~ 8850 1550
Wire Wire Line
	8550 1850 8850 1850
Connection ~ 8850 1850
Wire Wire Line
	8850 1850 8850 1550
$Comp
L ProjectSpecific:IRLML6344 Q_red_optional1
U 1 1 5DFE38F5
P 9250 1350
F 0 "Q_red_optional1" H 9400 1200 50  0000 L CNN
F 1 "IRLML6344" H 9400 1100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9450 1260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 1350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 1160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 1060 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 1060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9250 1350 50  0001 C CNN "Farnell"
	1    9250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2450 9350 2400
Wire Wire Line
	9350 2400 10050 2400
$Comp
L power:GND #PWR0111
U 1 1 5E09EC67
P 8850 3250
F 0 "#PWR0111" H 8850 3000 50  0001 C CNN
F 1 "GND" H 8855 3077 50  0000 C CNN
F 2 "" H 8850 3250 50  0001 C CNN
F 3 "" H 8850 3250 50  0001 C CNN
	1    8850 3250
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_green1
U 1 1 5E09EC75
P 8750 2650
F 0 "Q_green1" H 8900 2500 50  0000 L CNN
F 1 "IRLML6344" H 8954 2605 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8950 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8750 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9270 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9030 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9230 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9650 2270 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8750 2650 50  0001 C CNN "Farnell"
	1    8750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2450 8850 2400
Wire Wire Line
	8850 2400 9350 2400
Connection ~ 9350 2400
Wire Wire Line
	8850 2850 9350 2850
Wire Wire Line
	9050 2250 9050 2650
Wire Wire Line
	9050 2250 8550 2250
Wire Wire Line
	8550 2250 8550 2650
Wire Wire Line
	8550 2850 8550 2650
Connection ~ 8550 2650
Wire Wire Line
	8150 2650 8200 2650
Wire Wire Line
	8500 2650 8550 2650
$Comp
L Device:R Rgreen_pulldown1
U 1 1 5E09EC8B
P 8550 3000
F 0 "Rgreen_pulldown1" H 8620 3046 50  0000 L CNN
F 1 "10k" H 8620 2955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 3000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8550 3000 50  0001 C CNN
F 4 "MC0100W0603110K" H 8550 3000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8550 3000 50  0001 C CNN "Farnell"
	1    8550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rgreen1
U 1 1 5E09EC95
P 8350 2650
F 0 "Rgreen1" V 8143 2650 50  0000 C CNN
F 1 "1k" V 8234 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8350 2650 50  0001 C CNN
F 4 "MC0100W060311K" V 8350 2650 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8350 2650 50  0001 C CNN "Farnell"
	1    8350 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 3250 8850 3150
Connection ~ 8850 2850
Wire Wire Line
	8550 3150 8850 3150
Connection ~ 8850 3150
Wire Wire Line
	8850 3150 8850 2850
$Comp
L ProjectSpecific:IRLML6344 Q_green_optional1
U 1 1 5E09ECA8
P 9250 2650
F 0 "Q_green_optional1" H 9400 2500 50  0000 L CNN
F 1 "IRLML6344" H 9400 2400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9450 2560 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 2650 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 2460 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 2360 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 2360 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 2270 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9250 2650 50  0001 C CNN "Farnell"
	1    9250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3800 9350 3750
Wire Wire Line
	9350 3750 10150 3750
$Comp
L power:GND #PWR0112
U 1 1 5E0DB46E
P 8850 4600
F 0 "#PWR0112" H 8850 4350 50  0001 C CNN
F 1 "GND" H 8855 4427 50  0000 C CNN
F 2 "" H 8850 4600 50  0001 C CNN
F 3 "" H 8850 4600 50  0001 C CNN
	1    8850 4600
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_blue1
U 1 1 5E0DB47C
P 8750 4000
F 0 "Q_blue1" H 8900 3850 50  0000 L CNN
F 1 "IRLML6344" H 8954 3955 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8950 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8750 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9270 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9030 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9230 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9650 3620 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8750 4000 50  0001 C CNN "Farnell"
	1    8750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3800 8850 3750
Wire Wire Line
	8850 3750 9350 3750
Connection ~ 9350 3750
Wire Wire Line
	8850 4200 9350 4200
Wire Wire Line
	9050 3600 9050 4000
Wire Wire Line
	9050 3600 8550 3600
Wire Wire Line
	8550 3600 8550 4000
Wire Wire Line
	8550 4200 8550 4000
Connection ~ 8550 4000
Wire Wire Line
	8150 4000 8200 4000
Wire Wire Line
	8500 4000 8550 4000
$Comp
L Device:R Rblue_pulldown1
U 1 1 5E0DB492
P 8550 4350
F 0 "Rblue_pulldown1" H 8620 4396 50  0000 L CNN
F 1 "10k" H 8620 4305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 4350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8550 4350 50  0001 C CNN
F 4 "MC0100W0603110K" H 8550 4350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8550 4350 50  0001 C CNN "Farnell"
	1    8550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rblue1
U 1 1 5E0DB49C
P 8350 4000
F 0 "Rblue1" V 8143 4000 50  0000 C CNN
F 1 "1k" V 8234 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 4000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8350 4000 50  0001 C CNN
F 4 "MC0100W060311K" V 8350 4000 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8350 4000 50  0001 C CNN "Farnell"
	1    8350 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 4600 8850 4500
Connection ~ 8850 4200
Wire Wire Line
	8550 4500 8850 4500
Connection ~ 8850 4500
Wire Wire Line
	8850 4500 8850 4200
$Comp
L ProjectSpecific:IRLML6344 Q_blue_optional1
U 1 1 5E0DB4AF
P 9250 4000
F 0 "Q_blue_optional1" H 9400 3850 50  0000 L CNN
F 1 "IRLML6344" H 9400 3750 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9450 3910 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 4000 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 3810 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 3710 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 3710 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 3620 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9250 4000 50  0001 C CNN "Farnell"
	1    9250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 5150 9350 5100
$Comp
L power:GND #PWR0113
U 1 1 5E1058C2
P 8850 5950
F 0 "#PWR0113" H 8850 5700 50  0001 C CNN
F 1 "GND" H 8855 5777 50  0000 C CNN
F 2 "" H 8850 5950 50  0001 C CNN
F 3 "" H 8850 5950 50  0001 C CNN
	1    8850 5950
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_white1
U 1 1 5E1058D0
P 8750 5350
F 0 "Q_white1" H 8900 5200 50  0000 L CNN
F 1 "IRLML6344" H 8954 5305 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8950 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8750 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9270 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9030 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9230 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9650 4970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8750 5350 50  0001 C CNN "Farnell"
	1    8750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 5150 8850 5100
Wire Wire Line
	8850 5100 9350 5100
Connection ~ 9350 5100
Wire Wire Line
	8850 5550 9350 5550
Wire Wire Line
	9050 4950 9050 5350
Wire Wire Line
	9050 4950 8550 4950
Wire Wire Line
	8550 4950 8550 5350
Wire Wire Line
	8550 5550 8550 5350
Connection ~ 8550 5350
Wire Wire Line
	8150 5350 8200 5350
Wire Wire Line
	8500 5350 8550 5350
$Comp
L Device:R Rwhite_pulldown1
U 1 1 5E1058E6
P 8550 5700
F 0 "Rwhite_pulldown1" H 8620 5746 50  0000 L CNN
F 1 "10k" H 8620 5655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 5700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8550 5700 50  0001 C CNN
F 4 "MC0100W0603110K" H 8550 5700 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8550 5700 50  0001 C CNN "Farnell"
	1    8550 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rwhite1
U 1 1 5E1058F0
P 8350 5350
F 0 "Rwhite1" V 8143 5350 50  0000 C CNN
F 1 "1k" V 8234 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8280 5350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8350 5350 50  0001 C CNN
F 4 "MC0100W060311K" V 8350 5350 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8350 5350 50  0001 C CNN "Farnell"
	1    8350 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 5950 8850 5850
Connection ~ 8850 5550
Wire Wire Line
	8550 5850 8850 5850
Connection ~ 8850 5850
Wire Wire Line
	8850 5850 8850 5550
$Comp
L ProjectSpecific:IRLML6344 Q_white_optional1
U 1 1 5E105903
P 9250 5350
F 0 "Q_white_optional1" H 9400 5200 50  0000 L CNN
F 1 "IRLML6344" H 9400 5100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9450 5260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9250 5350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9770 5160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9530 5060 50  0001 C CNN "VDS"
F 6 "±12V" H 9730 5060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10150 4970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9250 5350 50  0001 C CNN "Farnell"
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 2400 10050 1200
Wire Wire Line
	10050 1200 10250 1200
Wire Wire Line
	10150 3750 10150 1300
Wire Wire Line
	10150 1300 10250 1300
Wire Wire Line
	10250 1400 10250 5100
Wire Wire Line
	9350 5100 10250 5100
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
Wire Wire Line
	6000 7250 6300 7250
Wire Wire Line
	6000 6900 6000 7050
Wire Wire Line
	6000 7050 6300 7050
Wire Wire Line
	5850 7150 6300 7150
$Comp
L Device:R R_addressable1
U 1 1 5E225DC9
P 5700 7150
F 0 "R_addressable1" V 5907 7150 50  0000 C CNN
F 1 "1k" V 5816 7150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5630 7150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 5700 7150 50  0001 C CNN
F 4 "MC0100W060311K" V 5700 7150 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 5700 7150 50  0001 C CNN "Farnell"
	1    5700 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 7150 5550 7150
$Comp
L power:GND #PWR0114
U 1 1 5E2158AC
P 6000 7400
F 0 "#PWR0114" H 6000 7150 50  0001 C CNN
F 1 "GND" H 6005 7227 50  0000 C CNN
F 2 "" H 6000 7400 50  0001 C CNN
F 3 "" H 6000 7400 50  0001 C CNN
	1    6000 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 7400 6000 7250
Wire Notes Line
	5600 2650 5600 5400
Wire Notes Line
	5600 5400 7450 5400
Wire Notes Line
	7450 5400 7450 2650
Wire Notes Line
	7450 2650 5600 2650
Text Notes 5000 6200 0    118  ~ 0
Addressable LED
$Comp
L power:GND #PWR0115
U 1 1 5E49F4A7
P 2500 7100
F 0 "#PWR0115" H 2500 6850 50  0001 C CNN
F 1 "GND" H 2505 6927 50  0000 C CNN
F 2 "" H 2500 7100 50  0001 C CNN
F 3 "" H 2500 7100 50  0001 C CNN
	1    2500 7100
	1    0    0    -1  
$EndComp
NoConn ~ 3500 7400
NoConn ~ 3500 7300
NoConn ~ 3500 7200
NoConn ~ 3500 7100
NoConn ~ 3500 7000
NoConn ~ 3500 6900
NoConn ~ 3500 6700
$Comp
L Device:R R_sw4
U 1 1 5E4BD26C
P 4500 7100
F 0 "R_sw4" V 4293 7100 50  0000 C CNN
F 1 "10k" V 4384 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 7100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4500 7100 50  0001 C CNN
F 4 "MC0100W0603110K" V 4500 7100 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4500 7100 50  0001 C CNN "Farnell"
	1    4500 7100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_sw5
U 1 1 5E4BEC05
P 4500 7400
F 0 "R_sw5" V 4293 7400 50  0000 C CNN
F 1 "10k" V 4384 7400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 7400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4500 7400 50  0001 C CNN
F 4 "MC0100W0603110K" V 4500 7400 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4500 7400 50  0001 C CNN "Farnell"
	1    4500 7400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_sw3
U 1 1 5E4BEFE9
P 4500 6800
F 0 "R_sw3" V 4293 6800 50  0000 C CNN
F 1 "10k" V 4384 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 6800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4500 6800 50  0001 C CNN
F 4 "MC0100W0603110K" V 4500 6800 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4500 6800 50  0001 C CNN "Farnell"
	1    4500 6800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_sw2
U 1 1 5E4BF77A
P 4500 6500
F 0 "R_sw2" V 4293 6500 50  0000 C CNN
F 1 "10k" V 4384 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 6500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4500 6500 50  0001 C CNN
F 4 "MC0100W0603110K" V 4500 6500 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4500 6500 50  0001 C CNN "Farnell"
	1    4500 6500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R_sw1
U 1 1 5E4C9983
P 4500 6200
F 0 "R_sw1" V 4293 6200 50  0000 C CNN
F 1 "10k" V 4384 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4430 6200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 4500 6200 50  0001 C CNN
F 4 "MC0100W0603110K" V 4500 6200 50  0001 C CNN "Part Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 4500 6200 50  0001 C CNN "Farnell"
	1    4500 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5E4D786A
P 4750 6100
F 0 "#PWR0116" H 4750 5950 50  0001 C CNN
F 1 "+5V" H 4750 6250 50  0000 C CNN
F 2 "" H 4750 6100 50  0001 C CNN
F 3 "" H 4750 6100 50  0001 C CNN
	1    4750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6100 4750 6200
Wire Wire Line
	4750 6200 4650 6200
Wire Wire Line
	4750 6200 4750 6500
Wire Wire Line
	4750 6500 4650 6500
Connection ~ 4750 6200
Wire Wire Line
	4750 6500 4750 6800
Wire Wire Line
	4750 6800 4650 6800
Connection ~ 4750 6500
Wire Wire Line
	4750 6800 4750 7100
Wire Wire Line
	4750 7100 4650 7100
Connection ~ 4750 6800
Wire Wire Line
	4750 7100 4750 7400
Wire Wire Line
	4750 7400 4650 7400
Connection ~ 4750 7100
Wire Wire Line
	4350 6200 3500 6200
Wire Wire Line
	3500 6300 4150 6300
Wire Wire Line
	4150 6300 4150 6500
Wire Wire Line
	4150 6500 4350 6500
Wire Wire Line
	3500 6400 4050 6400
Wire Wire Line
	4050 6400 4050 6800
Wire Wire Line
	4050 6800 4350 6800
Wire Wire Line
	3500 6500 3950 6500
Wire Wire Line
	3950 6500 3950 7100
Wire Wire Line
	3950 7100 4350 7100
Wire Wire Line
	3500 6600 3850 6600
$Comp
L Switch:SW_Rotary12 5_way_pos1
U 1 1 5E47EEBD
P 3100 6800
F 0 "5_way_pos1" H 3000 7581 50  0000 C CNN
F 1 "SW_Rotary12" H 3000 7490 50  0000 C CNN
F 2 "" H 2900 7500 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C200/DS-Serie%23LOR.pdf" H 2900 7500 50  0001 C CNN
	1    3100 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6800 2500 7100
$Comp
L Connector_Generic:Conn_01x02 J_5V1
U 1 1 5DE4F57E
P 6850 1650
F 0 "J_5V1" H 6930 1642 50  0000 L CNN
F 1 "Conn_01x02" H 6930 1551 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6850 1650 50  0001 C CNN
F 3 "~" H 6850 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DE7A5F1
P 6650 2000
F 0 "#PWR0117" H 6650 1750 50  0001 C CNN
F 1 "GND" H 6655 1827 50  0000 C CNN
F 2 "" H 6650 2000 50  0001 C CNN
F 3 "" H 6650 2000 50  0001 C CNN
	1    6650 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2000 6650 1750
Wire Wire Line
	6650 1650 6650 1250
Connection ~ 6650 1250
$Comp
L Connector_Generic:Conn_01x03 J_vin_vfused1
U 1 1 5DE93F0E
P 3550 1450
F 0 "J_vin_vfused1" V 3514 1262 50  0000 R CNN
F 1 "Conn_01x03" V 3423 1262 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3550 1450 50  0001 C CNN
F 3 "~" H 3550 1450 50  0001 C CNN
	1    3550 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 1800 3200 1900
Connection ~ 3200 1900
Wire Wire Line
	3200 1900 3950 1900
Wire Wire Line
	3650 1650 3650 1800
Wire Wire Line
	3650 1800 3950 1800
Wire Wire Line
	3950 1800 3950 1900
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 4050 1900
$Comp
L power:GND #PWR0118
U 1 1 5DEA77D9
P 2650 1700
F 0 "#PWR0118" H 2650 1450 50  0001 C CNN
F 1 "GND" H 2655 1527 50  0000 C CNN
F 2 "" H 2650 1700 50  0001 C CNN
F 3 "" H 2650 1700 50  0001 C CNN
	1    2650 1700
	1    0    0    -1  
$EndComp
Text Notes 5600 2600 0    118  ~ 0
DMX
$Comp
L Interface_UART:MAX485E U3
U 1 1 5DEB6312
P 6500 4700
F 0 "U3" H 6500 5381 50  0000 C CNN
F 1 "MAX485E" H 6500 5290 50  0000 C CNN
F 2 "" H 6500 4000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6500 4750 50  0001 C CNN
	1    6500 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3_Ground J1
U 1 1 5DEB7DDB
P 7050 3150
F 0 "J1" H 7050 3515 50  0000 C CNN
F 1 "XLR3_Ground" H 7050 3424 50  0000 C CNN
F 2 "" H 7050 3150 50  0001 C CNN
F 3 " ~" H 7050 3150 50  0001 C CNN
	1    7050 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3_Ground J2
U 1 1 5DEB90CA
P 7050 4050
F 0 "J2" H 7050 4415 50  0000 C CNN
F 1 "XLR3_Ground" H 7050 4324 50  0000 C CNN
F 2 "" H 7050 4050 50  0001 C CNN
F 3 " ~" H 7050 4050 50  0001 C CNN
	1    7050 4050
	1    0    0    -1  
$EndComp
Wire Notes Line
	5000 6250 5000 7700
Wire Notes Line
	5000 7700 6850 7700
Wire Notes Line
	6850 7700 6850 6250
Wire Notes Line
	6850 6250 5000 6250
$Comp
L Interface_UART:MAX481E U2
U 1 1 5DF00C1F
P 6100 3450
F 0 "U2" H 6100 4131 50  0000 C CNN
F 1 "MAX481E" H 6100 4040 50  0000 C CNN
F 2 "" H 6100 2750 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6100 3500 50  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1200 1950 1200
Wire Wire Line
	1800 2050 1800 1850
$Comp
L power:GND #PWR0119
U 1 1 5DE6183E
P 1800 2050
F 0 "#PWR0119" H 1800 1800 50  0001 C CNN
F 1 "GND" H 1805 1877 50  0000 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Text GLabel 8150 1350 0    50   Input ~ 0
Gate_red
Text GLabel 8150 2650 0    50   Input ~ 0
Gate_green
Text GLabel 8150 4000 0    50   Input ~ 0
Gate_blue
Text GLabel 8150 5350 0    50   Input ~ 0
Gate_white
Text GLabel 5500 7150 0    50   Input ~ 0
Adressable
Text GLabel 4300 6200 3    50   Input ~ 0
SW_1
Text GLabel 3950 7100 3    50   Input ~ 0
SW_4
Text GLabel 4050 6800 3    50   Input ~ 0
SW_4
Text GLabel 4150 6500 3    50   Input ~ 0
SW_4
Wire Wire Line
	3850 7400 4350 7400
Wire Wire Line
	3850 6600 3850 7400
Text GLabel 3850 7400 3    50   Input ~ 0
SW_5
Wire Wire Line
	1150 6900 1250 6900
Wire Wire Line
	1250 6450 1250 6900
Wire Wire Line
	2150 6900 2150 6450
Text GLabel 1100 4750 0    50   Input ~ 0
Gate_white
Wire Wire Line
	1100 4750 1200 4750
Text GLabel 3250 4000 0    50   Input ~ 0
Adressable
Text GLabel 3250 4100 0    50   Input ~ 0
Gate_red
Text GLabel 3250 4400 0    50   Input ~ 0
Gate_green
Text GLabel 3250 4500 0    50   Input ~ 0
Gate_blue
Text GLabel 3250 4600 0    50   Input ~ 0
Gate_white
Text Notes 650  3250 0    50   ~ 0
D3   PD3 addressable\nD5   PD5 red\nD6   PD6 green\nD9   PB1 blue\nD10  PB2 white\nA1   POT_1\nA2   POT_2
$Comp
L power:+3.3V #PWR?
U 1 1 5E8A34E7
P 1750 3000
F 0 "#PWR?" H 1750 2850 50  0001 C CNN
F 1 "+3.3V" H 1765 3173 50  0000 C CNN
F 2 "" H 1750 3000 50  0001 C CNN
F 3 "" H 1750 3000 50  0001 C CNN
	1    1750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D2999
P 3950 2900
F 0 "#PWR?" H 3950 2750 50  0001 C CNN
F 1 "+5V" H 3965 3073 50  0000 C CNN
F 2 "" H 3950 2900 50  0001 C CNN
F 3 "" H 3950 2900 50  0001 C CNN
	1    3950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E8D368D
P 4250 2900
F 0 "#PWR?" H 4250 2750 50  0001 C CNN
F 1 "+3.3V" H 4265 3073 50  0000 C CNN
F 2 "" H 4250 2900 50  0001 C CNN
F 3 "" H 4250 2900 50  0001 C CNN
	1    4250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4650 1200 4650
Text GLabel 1100 4650 0    50   Input ~ 0
Gate_blue
Wire Wire Line
	1100 4350 1200 4350
Text GLabel 1100 4350 0    50   Input ~ 0
Gate_green
Wire Wire Line
	1100 4250 1200 4250
Text GLabel 1100 4250 0    50   Input ~ 0
Gate_red
Wire Wire Line
	1100 4050 1200 4050
Text GLabel 1100 4050 0    50   Input ~ 0
Adressable
$Comp
L power:+3.3V #PWR?
U 1 1 5E93FFB4
P 1000 6600
F 0 "#PWR?" H 1000 6450 50  0001 C CNN
F 1 "+3.3V" H 1015 6773 50  0000 C CNN
F 2 "" H 1000 6600 50  0001 C CNN
F 3 "" H 1000 6600 50  0001 C CNN
	1    1000 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E94AB2B
P 3950 5500
F 0 "#PWR?" H 3950 5250 50  0001 C CNN
F 1 "GND" H 3955 5327 50  0000 C CNN
F 2 "" H 3950 5500 50  0001 C CNN
F 3 "" H 3950 5500 50  0001 C CNN
	1    3950 5500
	1    0    0    -1  
$EndComp
Text GLabel 5050 4750 1    50   Input ~ 0
POT_1
Text GLabel 4950 4750 1    50   Input ~ 0
POT_2
Text Notes 2700 3250 0    50   ~ 0
IO25  addressable\nIO26  red\nIO27  green\nIO14  blue\nIO12  white\nIO34  POT_1\nIO35  POT_2
Wire Wire Line
	5050 4750 5050 4900
Wire Wire Line
	4950 4750 4950 4800
Wire Wire Line
	3250 4000 3350 4000
Wire Wire Line
	3250 4100 3350 4100
Wire Wire Line
	3250 4400 3350 4400
Wire Wire Line
	3250 4500 3350 4500
Wire Wire Line
	3250 4600 3350 4600
NoConn ~ 3350 3500
NoConn ~ 3350 3600
NoConn ~ 3350 3700
NoConn ~ 3350 3800
NoConn ~ 3350 3900
NoConn ~ 3350 4200
NoConn ~ 3350 4300
NoConn ~ 3350 4700
NoConn ~ 3350 4800
NoConn ~ 3350 4900
NoConn ~ 3350 5000
NoConn ~ 3350 5100
NoConn ~ 4750 5200
NoConn ~ 4750 5100
NoConn ~ 4750 5000
NoConn ~ 4750 4700
NoConn ~ 4750 4600
NoConn ~ 4750 4500
NoConn ~ 4750 4400
NoConn ~ 4750 4300
NoConn ~ 4750 4200
NoConn ~ 4750 4100
NoConn ~ 4750 4000
NoConn ~ 4750 3900
NoConn ~ 4750 3800
NoConn ~ 4750 3700
NoConn ~ 4750 3600
NoConn ~ 4750 3500
$Comp
L power:GND #PWR?
U 1 1 5EB39AD3
P 1650 5250
F 0 "#PWR?" H 1650 5000 50  0001 C CNN
F 1 "GND" H 1650 5100 50  0000 C CNN
F 2 "" H 1650 5250 50  0001 C CNN
F 3 "" H 1650 5250 50  0001 C CNN
	1    1650 5250
	1    0    0    -1  
$EndComp
Wire Notes Line
	2500 2650 2500 5450
Wire Wire Line
	2300 4400 2300 4450
Wire Wire Line
	2300 4450 2200 4450
Wire Wire Line
	2400 4400 2400 4550
Wire Wire Line
	2200 4550 2400 4550
$Comp
L ArduinoNano:Arduino-Nano-V3 MCU_nano1
U 1 1 5EBE5347
P 1700 4250
F 0 "MCU_nano1" H 1300 3350 50  0000 C CNN
F 1 "Arduino-Nano-V3" V 1700 4250 50  0000 C CNN
F 2 "ArduinoNano:Arduino-Nano-V3_Jumper" V 2500 4400 50  0001 C CNN
F 3 "https://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1700 4250 50  0001 C CNN
	1    1700 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5250 1650 5250
Connection ~ 1650 5250
Wire Wire Line
	1750 3000 1750 3100
Wire Wire Line
	2000 3000 1900 3000
Wire Wire Line
	1900 3000 1900 3100
NoConn ~ 1200 3550
NoConn ~ 1200 3650
NoConn ~ 1200 3750
NoConn ~ 1200 3950
NoConn ~ 1200 4150
NoConn ~ 1200 4450
NoConn ~ 1200 4550
NoConn ~ 1200 4850
NoConn ~ 1200 4950
NoConn ~ 2200 4950
NoConn ~ 2200 4750
NoConn ~ 2200 4650
NoConn ~ 2200 4350
NoConn ~ 2200 4250
NoConn ~ 2200 4150
NoConn ~ 2200 4050
NoConn ~ 2200 3950
NoConn ~ 2200 3750
NoConn ~ 1600 3100
Wire Wire Line
	4950 4800 4750 4800
Wire Wire Line
	5050 4900 4750 4900
$Comp
L ESP32:ESP32-PICO-KIT MCU_esp1
U 1 1 5ECC2DB7
P 4050 4450
F 0 "MCU_esp1" H 3600 3500 50  0000 C CNN
F 1 "ESP32-PICO-KIT" V 4050 4500 50  0000 C CNN
F 2 "ESP32:ESP32-PICO-KIT_Jumper" V 4150 4500 50  0001 C CNN
F 3 "https://dl.espressif.com/dl/schematics/esp32-pico-kit-v4.1_schematic.pdf" H 3925 4950 50  0001 C CNN
	1    4050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2900 4100 2900
Connection ~ 4250 2900
Wire Wire Line
	3950 5500 4150 5500
Connection ~ 3950 5500
Wire Wire Line
	2650 1700 3450 1700
Wire Wire Line
	3450 1700 3450 1650
Wire Wire Line
	3550 1800 3550 1650
Wire Wire Line
	3200 1800 3550 1800
$EndSCHEMATC
