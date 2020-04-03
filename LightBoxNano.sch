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
P 1200 1500
F 0 "J_power_jack1" H 1200 1300 50  0000 C CNN
F 1 "Barrel Jack Switch 5A 2mm" H 1200 1700 50  0000 C CNN
F 2 "LightBoxNanoFootprints:BarrelJack_SPC21364" H 1250 1460 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1692886.pdf?_ga=2.231332955.599385452.1575057425-167263916.1529948031" H 1250 1460 50  0001 C CNN
F 4 "Multicomp" H 1200 1500 50  0001 C CNN "Manufacturer"
F 5 "SPC21364" H 1200 1500 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842" H 1200 1500 50  0001 C CNN "Seller"
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J_addressable1
U 1 1 5DE05544
P 9350 6000
F 0 "J_addressable1" H 9350 6200 50  0000 C CNN
F 1 "MSTBA3" H 9350 5800 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_3pole" H 9350 6000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 9350 6000 50  0001 C CNN
F 4 "1757255" H 9350 6000 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757255/connector-header-tht-ra-5-08mm/dp/3705183" H 9350 6000 50  0001 C CNN "Seller"
	1    9350 6000
	1    0    0    -1  
$EndComp
$Sheet
S 5600 900  900  1050
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 5600 1200 50 
F3 "Buck5VOut" I R 6500 1200 50 
F4 "BuckGND" I L 5600 1800 50 
$EndSheet
$Comp
L power:+5V #PWR0101
U 1 1 5DE4A501
P 6650 1000
F 0 "#PWR0101" H 6650 850 50  0001 C CNN
F 1 "+5V" H 6665 1173 50  0000 C CNN
F 2 "" H 6650 1000 50  0001 C CNN
F 3 "" H 6650 1000 50  0001 C CNN
	1    6650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1400 1800 1400
Wire Wire Line
	6500 1200 6650 1200
Wire Wire Line
	6650 1200 6650 1000
$Comp
L Device:CP C1
U 1 1 5DE52230
P 4550 1700
F 0 "C1" H 4668 1746 50  0000 L CNN
F 1 "100µF" H 4668 1655 50  0000 L CNN
F 2 "" H 4588 1550 50  0001 C CNN
F 3 "~" H 4550 1700 50  0001 C CNN
F 4 "" H 4550 1700 50  0001 C CNN "Article Number"
F 5 "" H 4550 1700 50  0001 C CNN "Seller"
	1    4550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1050 1800 1400
Text GLabel 1950 1050 2    50   Input ~ 0
Vin
Wire Wire Line
	1300 1050 1800 1050
Connection ~ 1800 1050
$Comp
L power:GND #PWR0102
U 1 1 5DE6746F
P 1700 800
F 0 "#PWR0102" H 1700 550 50  0001 C CNN
F 1 "GND" H 1705 627 50  0000 C CNN
F 2 "" H 1700 800 50  0001 C CNN
F 3 "" H 1700 800 50  0001 C CNN
	1    1700 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 800  1400 800 
Wire Wire Line
	1400 950  1300 950 
Wire Notes Line
	2200 750  2200 2200
Wire Notes Line
	600  2200 600  750 
Text Notes 600  700  0    118  ~ 0
Input Connectors
Text GLabel 5450 1200 0    50   Input ~ 0
Vin_fused
Wire Notes Line
	5000 750  5000 2200
Wire Notes Line
	5000 750  7500 750 
Wire Notes Line
	7500 750  7500 2200
Wire Notes Line
	7500 2200 5000 2200
Text Notes 5000 700  0    118  ~ 0
5V Buck
Wire Wire Line
	5450 1200 5600 1200
Wire Notes Line
	600  2200 2200 2200
Wire Notes Line
	600  750  2200 750 
Wire Notes Line
	2300 2200 4850 2200
Wire Notes Line
	4850 750  2300 750 
Wire Notes Line
	2300 750  2300 2200
Wire Notes Line
	4850 750  4850 2200
Wire Wire Line
	3000 1900 3200 1900
Text Notes 2300 700  0    118  ~ 0
Input Protection
Text Notes 2350 1300 0    50   ~ 0
* P-Fet fuse here\n* Polarity protection\n* Add Power LED\n* Test pads\nhttps://www.mouser.se/ProductDetail/Infineon-IR/AUIR3315STRL/\nhttps://www.mouser.se/datasheet/2/196/auir3315-1225292.pdf
Text GLabel 4050 1900 2    50   Input ~ 0
Vin_fused
Text GLabel 3000 1900 0    50   Input ~ 0
Vin
$Comp
L power:GND #PWR0106
U 1 1 5DF44892
P 5450 1950
F 0 "#PWR0106" H 5450 1700 50  0001 C CNN
F 1 "GND" H 5455 1777 50  0000 C CNN
F 2 "" H 5450 1950 50  0001 C CNN
F 3 "" H 5450 1950 50  0001 C CNN
	1    5450 1950
	1    0    0    -1  
$EndComp
Wire Notes Line
	5500 5650 7500 5650
Wire Wire Line
	5450 1950 5450 1800
Wire Wire Line
	5450 1800 5600 1800
Text GLabel 8200 5550 0    50   Input ~ 0
Vin_fused
Text GLabel 10300 900  0    50   Input ~ 0
Vin_fused
$Comp
L Connector_Generic:Conn_01x05 J_RGBW1
U 1 1 5DFDEA6C
P 10500 1100
F 0 "J_RGBW1" H 10580 1142 50  0000 L CNN
F 1 "MSTBA5" H 10580 1051 50  0000 L CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_5pole" H 10500 1100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 10500 1100 50  0001 C CNN
F 4 "1757271" H 10500 1100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757271/header-right-angle-5-08mm-5way/dp/3705201" H 10500 1100 50  0001 C CNN "Seller"
	1    10500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1600 1700 1600
Wire Wire Line
	9400 1050 9400 1000
Wire Wire Line
	9400 1000 10300 1000
$Comp
L power:GND #PWR0110
U 1 1 5E009609
P 8900 1750
F 0 "#PWR0110" H 8900 1500 50  0001 C CNN
F 1 "GND" H 8905 1577 50  0000 C CNN
F 2 "" H 8900 1750 50  0001 C CNN
F 3 "" H 8900 1750 50  0001 C CNN
	1    8900 1750
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_red1
U 1 1 5E00B511
P 8800 1250
F 0 "Q_red1" H 8950 1100 50  0000 L CNN
F 1 "IRLML6344" H 9004 1205 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9000 1160 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8800 1250 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9320 1060 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9080 960 50  0001 C CNN "VDS"
F 6 "±12V" H 9280 960 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9700 870 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8800 1250 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8800 1250 50  0001 C CNN "Article Number"
	1    8800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1050 8900 1000
Wire Wire Line
	8900 1000 9400 1000
Connection ~ 9400 1000
Wire Wire Line
	8900 1450 9400 1450
Wire Wire Line
	9100 950  9100 1250
Wire Wire Line
	9100 950  8600 950 
Wire Wire Line
	8600 950  8600 1250
Wire Wire Line
	8600 1450 8600 1250
Connection ~ 8600 1250
Wire Wire Line
	8200 1250 8250 1250
Wire Wire Line
	8550 1250 8600 1250
$Comp
L Device:R Rred_pulldown1
U 1 1 5E051501
P 8600 1600
F 0 "Rred_pulldown1" H 8700 1650 50  0000 L CNN
F 1 "10k" H 8670 1555 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 1600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8600 1600 50  0001 C CNN
F 4 "MC0100W0603110K" H 8600 1600 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8600 1600 50  0001 C CNN "Seller"
	1    8600 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rred1
U 1 1 5E008B99
P 8400 1250
F 0 "Rred1" V 8193 1250 50  0000 C CNN
F 1 "1k" V 8284 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 1250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 1250 50  0001 C CNN
F 4 "MC0100W060311K" V 8400 1250 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8400 1250 50  0001 C CNN "Seller"
	1    8400 1250
	0    -1   -1   0   
$EndComp
Connection ~ 8900 1450
Wire Wire Line
	8600 1750 8900 1750
Connection ~ 8900 1750
Wire Wire Line
	8900 1750 8900 1450
$Comp
L ProjectSpecific:IRLML6344 Q_red_optional1
U 1 1 5DFE38F5
P 9300 1250
F 0 "Q_red_optional1" H 9450 1100 50  0000 L CNN
F 1 "IRLML6344" H 9450 1000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9500 1160 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 1250 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 1060 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 960 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 960 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 870 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9300 1250 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9300 1250 50  0001 C CNN "Article Number"
	1    9300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2100 9400 2050
Wire Wire Line
	9400 2050 10100 2050
$Comp
L power:GND #PWR0111
U 1 1 5E09EC67
P 8900 2800
F 0 "#PWR0111" H 8900 2550 50  0001 C CNN
F 1 "GND" H 8905 2627 50  0000 C CNN
F 2 "" H 8900 2800 50  0001 C CNN
F 3 "" H 8900 2800 50  0001 C CNN
	1    8900 2800
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_green1
U 1 1 5E09EC75
P 8800 2300
F 0 "Q_green1" H 8950 2150 50  0000 L CNN
F 1 "IRLML6344" H 9004 2255 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9000 2210 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8800 2300 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9320 2110 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9080 2010 50  0001 C CNN "VDS"
F 6 "±12V" H 9280 2010 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9700 1920 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8800 2300 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8800 2300 50  0001 C CNN "Article Number"
	1    8800 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2100 8900 2050
Wire Wire Line
	8900 2050 9400 2050
Connection ~ 9400 2050
Wire Wire Line
	8900 2500 9400 2500
Wire Wire Line
	9100 2000 9100 2300
Wire Wire Line
	9100 2000 8600 2000
Wire Wire Line
	8600 2000 8600 2300
Wire Wire Line
	8600 2500 8600 2300
Connection ~ 8600 2300
Wire Wire Line
	8200 2300 8250 2300
Wire Wire Line
	8550 2300 8600 2300
$Comp
L Device:R Rgreen_pulldown1
U 1 1 5E09EC8B
P 8600 2650
F 0 "Rgreen_pulldown1" H 8670 2696 50  0000 L CNN
F 1 "10k" H 8670 2605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 2650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8600 2650 50  0001 C CNN
F 4 "MC0100W0603110K" H 8600 2650 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8600 2650 50  0001 C CNN "Seller"
	1    8600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rgreen1
U 1 1 5E09EC95
P 8400 2300
F 0 "Rgreen1" V 8193 2300 50  0000 C CNN
F 1 "1k" V 8284 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 2300 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 2300 50  0001 C CNN
F 4 "MC0100W060311K" V 8400 2300 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8400 2300 50  0001 C CNN "Seller"
	1    8400 2300
	0    -1   -1   0   
$EndComp
Connection ~ 8900 2500
Wire Wire Line
	8600 2800 8900 2800
Connection ~ 8900 2800
Wire Wire Line
	8900 2800 8900 2500
$Comp
L ProjectSpecific:IRLML6344 Q_green_optional1
U 1 1 5E09ECA8
P 9300 2300
F 0 "Q_green_optional1" H 9450 2150 50  0000 L CNN
F 1 "IRLML6344" H 9450 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9500 2210 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 2300 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 2110 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 2010 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 2010 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 1920 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9300 2300 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9300 2300 50  0001 C CNN "Article Number"
	1    9300 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3150 9400 3100
Wire Wire Line
	9400 3100 10200 3100
$Comp
L power:GND #PWR0112
U 1 1 5E0DB46E
P 8900 3850
F 0 "#PWR0112" H 8900 3600 50  0001 C CNN
F 1 "GND" H 8905 3677 50  0000 C CNN
F 2 "" H 8900 3850 50  0001 C CNN
F 3 "" H 8900 3850 50  0001 C CNN
	1    8900 3850
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_blue1
U 1 1 5E0DB47C
P 8800 3350
F 0 "Q_blue1" H 8950 3200 50  0000 L CNN
F 1 "IRLML6344" H 9004 3305 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9000 3260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8800 3350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9320 3160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9080 3060 50  0001 C CNN "VDS"
F 6 "±12V" H 9280 3060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9700 2970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8800 3350 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8800 3350 50  0001 C CNN "Article Number"
	1    8800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3150 8900 3100
Wire Wire Line
	8900 3100 9400 3100
Connection ~ 9400 3100
Wire Wire Line
	8900 3550 9400 3550
Wire Wire Line
	9100 3050 9100 3350
Wire Wire Line
	9100 3050 8600 3050
Wire Wire Line
	8600 3050 8600 3350
Wire Wire Line
	8600 3550 8600 3350
Connection ~ 8600 3350
Wire Wire Line
	8200 3350 8250 3350
Wire Wire Line
	8550 3350 8600 3350
$Comp
L Device:R Rblue_pulldown1
U 1 1 5E0DB492
P 8600 3700
F 0 "Rblue_pulldown1" H 8670 3746 50  0000 L CNN
F 1 "10k" H 8670 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 3700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8600 3700 50  0001 C CNN
F 4 "MC0100W0603110K" H 8600 3700 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8600 3700 50  0001 C CNN "Seller"
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rblue1
U 1 1 5E0DB49C
P 8400 3350
F 0 "Rblue1" V 8193 3350 50  0000 C CNN
F 1 "1k" V 8284 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 3350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 3350 50  0001 C CNN
F 4 "MC0100W060311K" V 8400 3350 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8400 3350 50  0001 C CNN "Seller"
	1    8400 3350
	0    -1   -1   0   
$EndComp
Connection ~ 8900 3550
Wire Wire Line
	8600 3850 8900 3850
Connection ~ 8900 3850
Wire Wire Line
	8900 3850 8900 3550
$Comp
L ProjectSpecific:IRLML6344 Q_blue_optional1
U 1 1 5E0DB4AF
P 9300 3350
F 0 "Q_blue_optional1" H 9450 3200 50  0000 L CNN
F 1 "IRLML6344" H 9450 3100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9500 3260 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 3350 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 3160 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 3060 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 3060 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 2970 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9300 3350 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9300 3350 50  0001 C CNN "Article Number"
	1    9300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4200 9400 4150
$Comp
L power:GND #PWR0113
U 1 1 5E1058C2
P 8900 4900
F 0 "#PWR0113" H 8900 4650 50  0001 C CNN
F 1 "GND" H 8905 4727 50  0000 C CNN
F 2 "" H 8900 4900 50  0001 C CNN
F 3 "" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Q_white1
U 1 1 5E1058D0
P 8800 4400
F 0 "Q_white1" H 8950 4250 50  0000 L CNN
F 1 "IRLML6344" H 9004 4355 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9000 4310 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8800 4400 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9320 4210 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9080 4110 50  0001 C CNN "VDS"
F 6 "±12V" H 9280 4110 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9700 4020 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8800 4400 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8800 4400 50  0001 C CNN "Article Number"
	1    8800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 4200 8900 4150
Wire Wire Line
	8900 4150 9400 4150
Connection ~ 9400 4150
Wire Wire Line
	8900 4600 9400 4600
Wire Wire Line
	9100 4100 9100 4400
Wire Wire Line
	9100 4100 8600 4100
Wire Wire Line
	8600 4100 8600 4400
Wire Wire Line
	8600 4600 8600 4400
Connection ~ 8600 4400
Wire Wire Line
	8200 4400 8250 4400
Wire Wire Line
	8550 4400 8600 4400
$Comp
L Device:R Rwhite_pulldown1
U 1 1 5E1058E6
P 8600 4750
F 0 "Rwhite_pulldown1" H 8670 4796 50  0000 L CNN
F 1 "10k" H 8670 4705 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 4750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8600 4750 50  0001 C CNN
F 4 "MC0100W0603110K" H 8600 4750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8600 4750 50  0001 C CNN "Seller"
	1    8600 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rwhite1
U 1 1 5E1058F0
P 8400 4400
F 0 "Rwhite1" V 8193 4400 50  0000 C CNN
F 1 "1k" V 8284 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8330 4400 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8400 4400 50  0001 C CNN
F 4 "MC0100W060311K" V 8400 4400 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8400 4400 50  0001 C CNN "Seller"
	1    8400 4400
	0    -1   -1   0   
$EndComp
Connection ~ 8900 4600
Wire Wire Line
	8600 4900 8900 4900
Connection ~ 8900 4900
Wire Wire Line
	8900 4900 8900 4600
$Comp
L ProjectSpecific:IRLML6344 Q_white_optional1
U 1 1 5E105903
P 9300 4400
F 0 "Q_white_optional1" H 9450 4250 50  0000 L CNN
F 1 "IRLML6344" H 9450 4150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9500 4310 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9300 4400 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9820 4210 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9580 4110 50  0001 C CNN "VDS"
F 6 "±12V" H 9780 4110 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10200 4020 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9300 4400 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9300 4400 50  0001 C CNN "Article Number"
	1    9300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1100 10300 1100
Wire Wire Line
	10200 1200 10300 1200
Wire Wire Line
	10300 1300 10300 4150
Wire Wire Line
	9400 4150 10300 4150
Wire Notes Line
	7600 750  11100 750 
Wire Notes Line
	11100 750  11100 5150
Wire Notes Line
	11100 5150 7600 5150
Wire Notes Line
	7600 5150 7600 750 
Text Notes 7650 700  0    118  ~ 0
RGBW LED Driver (CV-mode)
Wire Wire Line
	8850 6100 9150 6100
Wire Wire Line
	8850 5900 9150 5900
Wire Wire Line
	8600 6000 9150 6000
$Comp
L Device:R R_addressable1
U 1 1 5E225DC9
P 8450 6000
F 0 "R_addressable1" V 8657 6000 50  0000 C CNN
F 1 "1k" V 8566 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8380 6000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8450 6000 50  0001 C CNN
F 4 "MC0100W060311K" V 8450 6000 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8450 6000 50  0001 C CNN "Seller"
	1    8450 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 6000 8300 6000
$Comp
L power:GND #PWR0114
U 1 1 5E2158AC
P 8850 6250
F 0 "#PWR0114" H 8850 6000 50  0001 C CNN
F 1 "GND" H 8855 6077 50  0000 C CNN
F 2 "" H 8850 6250 50  0001 C CNN
F 3 "" H 8850 6250 50  0001 C CNN
	1    8850 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 6250 8850 6100
Wire Notes Line
	600  5750 600  7700
Wire Notes Line
	600  7700 6900 7700
Wire Notes Line
	6900 7700 6900 5750
Text Notes 7600 5350 0    118  ~ 0
Addressable LED
$Comp
L Connector_Generic:Conn_01x02 J_5V1
U 1 1 5DE4F57E
P 6850 1600
F 0 "J_5V1" H 6930 1592 50  0000 L CNN
F 1 "Conn_02 DNP" H 6930 1501 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6850 1600 50  0001 C CNN
F 3 "~" H 6850 1600 50  0001 C CNN
F 4 "" H 6850 1600 50  0001 C CNN "Article Number"
F 5 "" H 6850 1600 50  0001 C CNN "Seller"
	1    6850 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DE7A5F1
P 6650 1950
F 0 "#PWR0117" H 6650 1700 50  0001 C CNN
F 1 "GND" H 6655 1777 50  0000 C CNN
F 2 "" H 6650 1950 50  0001 C CNN
F 3 "" H 6650 1950 50  0001 C CNN
	1    6650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1950 6650 1700
Wire Wire Line
	6650 1600 6650 1200
Connection ~ 6650 1200
$Comp
L Connector_Generic:Conn_01x03 J_vin_vfused1
U 1 1 5DE93F0E
P 3550 1450
F 0 "J_vin_vfused1" V 3514 1262 50  0000 R CNN
F 1 "Conn_03 DNP" V 3423 1262 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3550 1450 50  0001 C CNN
F 3 "~" H 3550 1450 50  0001 C CNN
F 4 "" V 3550 1450 50  0001 C CNN "Article Number"
F 5 "" V 3550 1450 50  0001 C CNN "Seller"
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
Wire Notes Line
	7600 5400 7600 6500
Wire Notes Line
	7600 6500 11100 6500
Wire Notes Line
	11100 6500 11100 5400
Wire Notes Line
	11100 5400 7600 5400
Wire Wire Line
	1800 1050 1950 1050
Wire Wire Line
	1700 1750 1700 1600
$Comp
L power:GND #PWR0119
U 1 1 5DE6183E
P 1700 1750
F 0 "#PWR0119" H 1700 1500 50  0001 C CNN
F 1 "GND" H 1705 1577 50  0000 C CNN
F 2 "" H 1700 1750 50  0001 C CNN
F 3 "" H 1700 1750 50  0001 C CNN
	1    1700 1750
	1    0    0    -1  
$EndComp
Text GLabel 8200 1250 0    50   Input ~ 0
Gate_red
Text GLabel 8200 2300 0    50   Input ~ 0
Gate_green
Text GLabel 8200 3350 0    50   Input ~ 0
Gate_blue
Text GLabel 8200 4400 0    50   Input ~ 0
Gate_white
Text GLabel 8200 6000 0    50   Input ~ 0
Adressable
Wire Wire Line
	2650 1700 3450 1700
Wire Wire Line
	3450 1700 3450 1650
Wire Wire Line
	3550 1800 3550 1650
Wire Wire Line
	3200 1800 3550 1800
$Comp
L Analog-Devices-ADM2687E:Analog-Devices-ADM2687E_RS485 U_DMX1
U 1 1 5ED98CF2
P 4200 6800
F 0 "U_DMX1" H 4200 6050 50  0000 C CNN
F 1 "Analog-Devices-ADM2687E_RS485" V 4150 6900 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x12.8mm_Pitch1.27mm" H 4200 6800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1941753.pdf" H 4200 6800 50  0001 C CNN
F 4 "ADM2687EBRIZ" H 4200 6800 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/analog-devices/adm2687ebriz/transceiver-iso-rs485-16soic/dp/2008784" H 4200 6800 50  0001 C CNN "Seller"
	1    4200 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE091A0
P 2600 7500
F 0 "#PWR?" H 2600 7250 50  0001 C CNN
F 1 "GND" H 2600 7350 50  0000 C CNN
F 2 "" H 2600 7500 50  0001 C CNN
F 3 "" H 2600 7500 50  0001 C CNN
	1    2600 7500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EE098F2
P 2600 6150
F 0 "#PWR?" H 2600 5900 50  0001 C CNN
F 1 "GND" H 2600 6000 50  0000 C CNN
F 2 "" H 2600 6150 50  0001 C CNN
F 3 "" H 2600 6150 50  0001 C CNN
	1    2600 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EE0A7BB
P 2450 6050
F 0 "#PWR?" H 2450 5900 50  0001 C CNN
F 1 "+3.3V" H 2465 6223 50  0000 C CNN
F 2 "" H 2450 6050 50  0001 C CNN
F 3 "" H 2450 6050 50  0001 C CNN
	1    2450 6050
	1    0    0    -1  
$EndComp
Wire Notes Line
	6900 5750 600  5750
Text Notes 4150 5950 2    50   ~ 0
Micro controller side\n 
Wire Wire Line
	2450 6400 2800 6400
$Comp
L Device:C C2
U 1 1 5EE0CC54
P 2800 6250
F 0 "C2" H 2900 6300 50  0000 L CNN
F 1 "100nF" H 2900 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2838 6100 50  0001 C CNN
F 3 "~" H 2800 6250 50  0001 C CNN
F 4 "" H 2800 6250 50  0001 C CNN "Article Number"
F 5 "" H 2800 6250 50  0001 C CNN "Seller"
	1    2800 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F0842CF
P 3300 6250
F 0 "C3" H 3400 6300 50  0000 L CNN
F 1 "10nF" H 3400 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3338 6100 50  0001 C CNN
F 3 "~" H 3300 6250 50  0001 C CNN
F 4 "" H 3300 6250 50  0001 C CNN "Article Number"
F 5 "" H 3300 6250 50  0001 C CNN "Seller"
	1    3300 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6100 3300 6100
Wire Wire Line
	2800 6400 3300 6400
Connection ~ 2800 6400
$Comp
L Device:C C6
U 1 1 5F0B6ABF
P 2800 7350
F 0 "C6" H 2900 7400 50  0000 L CNN
F 1 "10µF" H 2900 7300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 2838 7200 50  0001 C CNN
F 3 "~" H 2800 7350 50  0001 C CNN
F 4 "" H 2800 7350 50  0001 C CNN "Article Number"
F 5 "" H 2800 7350 50  0001 C CNN "Seller"
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F0B78A0
P 3300 7350
F 0 "C7" H 3400 7400 50  0000 L CNN
F 1 "100nF" H 3400 7300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3338 7200 50  0001 C CNN
F 3 "~" H 3300 7350 50  0001 C CNN
F 4 "" H 3300 7350 50  0001 C CNN "Article Number"
F 5 "" H 3300 7350 50  0001 C CNN "Seller"
	1    3300 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 7500 3300 7500
Wire Wire Line
	2800 7200 3300 7200
Text Notes 4250 5950 0    50   ~ 0
DMX Side - Fully isolated (ADM268 have buildt in DCDC isolation)\n 
Wire Wire Line
	1400 800  1400 950 
Wire Wire Line
	7050 3000 7000 3000
Connection ~ 5850 3500
Wire Wire Line
	5650 3500 5850 3500
$Comp
L power:+3.3V #PWR?
U 1 1 5EF23D23
P 5650 3500
F 0 "#PWR?" H 5650 3350 50  0001 C CNN
F 1 "+3.3V" H 5665 3673 50  0000 C CNN
F 2 "" H 5650 3500 50  0001 C CNN
F 3 "" H 5650 3500 50  0001 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Text GLabel 7050 4400 2    50   Input ~ 0
SW_5
Wire Wire Line
	6250 4400 7050 4400
Wire Wire Line
	7050 4400 7050 3900
Text GLabel 6150 4100 2    50   Input ~ 0
SW_4
Text GLabel 6450 4200 2    50   Input ~ 0
SW_4
Text GLabel 6750 4300 2    50   Input ~ 0
SW_4
Text GLabel 5850 3950 2    50   Input ~ 0
SW_1
$Comp
L Switch:SW_Rotary12 5_way_pos1
U 1 1 5E47EEBD
P 6450 4900
F 0 "5_way_pos1" H 6350 5681 50  0000 C CNN
F 1 "SW_Rotary12" H 6350 5590 50  0000 C CNN
F 2 "" H 6250 5600 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/C200/DS-Serie%23LOR.pdf" H 6250 5600 50  0001 C CNN
F 4 "" H 6450 4900 50  0001 C CNN "Article Number"
F 5 "" H 6450 4900 50  0001 C CNN "Seller"
	1    6450 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 4500 6250 4400
Wire Wire Line
	6750 4300 6750 3900
Wire Wire Line
	6150 4300 6750 4300
Wire Wire Line
	6150 4500 6150 4300
Wire Wire Line
	6450 4200 6450 3900
Wire Wire Line
	6050 4200 6450 4200
Wire Wire Line
	6050 4500 6050 4200
Wire Wire Line
	6150 4100 6150 3900
Wire Wire Line
	5950 4100 6150 4100
Wire Wire Line
	5950 4500 5950 4100
Wire Wire Line
	5850 3900 5850 4500
Connection ~ 6750 3500
Wire Wire Line
	7050 3500 7050 3600
Wire Wire Line
	6750 3500 7050 3500
Connection ~ 6450 3500
Wire Wire Line
	6750 3500 6750 3600
Wire Wire Line
	6450 3500 6750 3500
Connection ~ 6150 3500
Wire Wire Line
	6450 3500 6450 3600
Wire Wire Line
	6150 3500 6450 3500
Wire Wire Line
	6150 3500 6150 3600
Wire Wire Line
	5850 3500 6150 3500
Wire Wire Line
	5850 3500 5850 3600
$Comp
L Device:R R_sw1
U 1 1 5E4C9983
P 5850 3750
F 0 "R_sw1" V 5643 3750 50  0000 C CNN
F 1 "10k" V 5734 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5780 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 5850 3750 50  0001 C CNN
F 4 "MC0100W0603110K" V 5850 3750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 5850 3750 50  0001 C CNN "Seller"
	1    5850 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw2
U 1 1 5E4BF77A
P 6150 3750
F 0 "R_sw2" V 5943 3750 50  0000 C CNN
F 1 "10k" V 6034 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 6150 3750 50  0001 C CNN
F 4 "MC0100W0603110K" V 6150 3750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 6150 3750 50  0001 C CNN "Seller"
	1    6150 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw3
U 1 1 5E4BEFE9
P 6450 3750
F 0 "R_sw3" V 6243 3750 50  0000 C CNN
F 1 "10k" V 6334 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6380 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 6450 3750 50  0001 C CNN
F 4 "MC0100W0603110K" V 6450 3750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 6450 3750 50  0001 C CNN "Seller"
	1    6450 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw5
U 1 1 5E4BEC05
P 7050 3750
F 0 "R_sw5" V 6843 3750 50  0000 C CNN
F 1 "10k" V 6934 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 7050 3750 50  0001 C CNN
F 4 "MC0100W0603110K" V 7050 3750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 7050 3750 50  0001 C CNN "Seller"
	1    7050 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw4
U 1 1 5E4BD26C
P 6750 3750
F 0 "R_sw4" V 6543 3750 50  0000 C CNN
F 1 "10k" V 6634 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6680 3750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 6750 3750 50  0001 C CNN
F 4 "MC0100W0603110K" V 6750 3750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 6750 3750 50  0001 C CNN "Seller"
	1    6750 3750
	-1   0    0    1   
$EndComp
NoConn ~ 6350 4500
NoConn ~ 6550 4500
NoConn ~ 6650 4500
NoConn ~ 6750 4500
NoConn ~ 6850 4500
NoConn ~ 6950 4500
NoConn ~ 7050 4500
$Comp
L power:GND #PWR0115
U 1 1 5E49F4A7
P 6650 5400
F 0 "#PWR0115" H 6650 5150 50  0001 C CNN
F 1 "GND" H 6655 5227 50  0000 C CNN
F 2 "" H 6650 5400 50  0001 C CNN
F 3 "" H 6650 5400 50  0001 C CNN
	1    6650 5400
	1    0    0    -1  
$EndComp
Wire Notes Line
	5500 2500 7500 2500
Wire Notes Line
	7500 2500 7500 5650
Connection ~ 3900 5350
Wire Wire Line
	3900 5350 4100 5350
Connection ~ 4200 2750
Wire Wire Line
	4200 2750 4050 2750
$Comp
L ESP32:ESP32-PICO-KIT MCU_esp1
U 1 1 5ECC2DB7
P 4000 4300
F 0 "MCU_esp1" H 3550 3350 50  0000 C CNN
F 1 "ESP32-PICO-KIT" V 4000 4350 50  0000 C CNN
F 2 "ESP32:ESP32-PICO-KIT_Jumper" V 4100 4350 50  0001 C CNN
F 3 "https://dl.espressif.com/dl/schematics/esp32-pico-kit-v4.1_schematic.pdf" H 3875 4800 50  0001 C CNN
F 4 "ESP32-PICO-KIT" H 4000 4300 50  0001 C CNN "Article Number"
F 5 "https://www.digikey.com/product-detail/en/espressif-systems/ESP32-PICO-KIT/1904-1030-ND/9381703" H 4000 4300 50  0001 C CNN "Seller"
	1    4000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4750 4700 4750
Wire Wire Line
	4950 4650 4700 4650
NoConn ~ 1600 2950
NoConn ~ 2200 3600
NoConn ~ 2200 3800
NoConn ~ 2200 3900
NoConn ~ 2200 4000
NoConn ~ 2200 4100
NoConn ~ 2200 4200
NoConn ~ 2200 4500
NoConn ~ 2200 4600
NoConn ~ 2200 4800
NoConn ~ 1200 4800
NoConn ~ 1200 4700
NoConn ~ 1200 4400
NoConn ~ 1200 4300
NoConn ~ 1200 4000
NoConn ~ 1200 3800
NoConn ~ 1200 3600
Wire Wire Line
	1900 2900 1900 2950
Wire Wire Line
	2000 2900 1900 2900
Wire Wire Line
	1750 2900 1750 2950
Connection ~ 1650 5100
Wire Wire Line
	1750 5100 1650 5100
$Comp
L ArduinoNano:Arduino-Nano-V3 MCU_nano1
U 1 1 5EBE5347
P 1700 4100
F 0 "MCU_nano1" H 1300 3200 50  0000 C CNN
F 1 "Arduino-Nano-V3" V 1700 4100 50  0000 C CNN
F 2 "ArduinoNano:Arduino-Nano-V3_Jumper" V 2500 4250 50  0001 C CNN
F 3 "https://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1700 4100 50  0001 C CNN
F 4 "A000005" H 1700 4100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/arduino-org/a000005/arduino-nano-utv-rd-kort/dp/1848691" H 1700 4100 50  0001 C CNN "Seller"
	1    1700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4400 2400 4400
Wire Wire Line
	2400 4250 2400 4400
Wire Wire Line
	2300 4300 2200 4300
Wire Wire Line
	2300 4250 2300 4300
Wire Notes Line
	2500 2500 2500 5300
$Comp
L power:GND #PWR?
U 1 1 5EB39AD3
P 1650 5100
F 0 "#PWR?" H 1650 4850 50  0001 C CNN
F 1 "GND" H 1650 4950 50  0000 C CNN
F 2 "" H 1650 5100 50  0001 C CNN
F 3 "" H 1650 5100 50  0001 C CNN
	1    1650 5100
	1    0    0    -1  
$EndComp
NoConn ~ 4700 3350
NoConn ~ 4700 3450
NoConn ~ 4700 3550
NoConn ~ 4700 4050
NoConn ~ 4700 4150
NoConn ~ 4700 4250
NoConn ~ 4700 4350
NoConn ~ 4700 4450
NoConn ~ 4700 4550
NoConn ~ 4700 4850
NoConn ~ 4700 4950
NoConn ~ 4700 5050
NoConn ~ 3300 4950
NoConn ~ 3300 4850
NoConn ~ 3300 4750
NoConn ~ 3300 4650
NoConn ~ 3300 4050
NoConn ~ 3300 3750
NoConn ~ 3300 3650
NoConn ~ 3300 3550
NoConn ~ 3300 3450
NoConn ~ 3300 3350
Wire Wire Line
	3200 4450 3300 4450
Wire Wire Line
	3200 4350 3300 4350
Wire Wire Line
	3200 4250 3300 4250
Wire Wire Line
	3200 3950 3300 3950
Wire Wire Line
	3200 3850 3300 3850
Text Notes 2650 3450 0    50   ~ 0
IO21  DMX_Send\nIO22  DMX_Receive\nIO19  DMX_ReceiveEnable\nIO23  DMX_DriveEnable\nIO25  addressable\nIO26  red\nIO27  green\nIO14  blue\nIO12  white\nIO34  POT_1\nIO35  POT_2
$Comp
L power:GND #PWR?
U 1 1 5E94AB2B
P 3900 5350
F 0 "#PWR?" H 3900 5100 50  0001 C CNN
F 1 "GND" H 3905 5177 50  0000 C CNN
F 2 "" H 3900 5350 50  0001 C CNN
F 3 "" H 3900 5350 50  0001 C CNN
	1    3900 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E93FFB4
P 5950 2750
F 0 "#PWR?" H 5950 2600 50  0001 C CNN
F 1 "+3.3V" H 5965 2923 50  0000 C CNN
F 2 "" H 5950 2750 50  0001 C CNN
F 3 "" H 5950 2750 50  0001 C CNN
	1    5950 2750
	1    0    0    -1  
$EndComp
Text GLabel 1150 3900 0    50   Input ~ 0
Adressable
Wire Wire Line
	1150 3900 1200 3900
Text GLabel 1150 4100 0    50   Input ~ 0
Gate_red
Wire Wire Line
	1150 4100 1200 4100
Text GLabel 1150 4200 0    50   Input ~ 0
Gate_green
Wire Wire Line
	1150 4200 1200 4200
Text GLabel 1150 4500 0    50   Input ~ 0
Gate_blue
Wire Wire Line
	1150 4500 1200 4500
$Comp
L power:+3.3V #PWR?
U 1 1 5E8D368D
P 4200 2750
F 0 "#PWR?" H 4200 2600 50  0001 C CNN
F 1 "+3.3V" H 4215 2923 50  0000 C CNN
F 2 "" H 4200 2750 50  0001 C CNN
F 3 "" H 4200 2750 50  0001 C CNN
	1    4200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E8D2999
P 3900 2750
F 0 "#PWR?" H 3900 2600 50  0001 C CNN
F 1 "+5V" H 3915 2923 50  0000 C CNN
F 2 "" H 3900 2750 50  0001 C CNN
F 3 "" H 3900 2750 50  0001 C CNN
	1    3900 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E8A34E7
P 1750 2900
F 0 "#PWR?" H 1750 2750 50  0001 C CNN
F 1 "+3.3V" H 1765 3073 50  0000 C CNN
F 2 "" H 1750 2900 50  0001 C CNN
F 3 "" H 1750 2900 50  0001 C CNN
	1    1750 2900
	1    0    0    -1  
$EndComp
Text Notes 650  3250 0    50   ~ 0
D1   PD0 (TX) DMX_Send\nD0   PD1 (RX) DMX_Receive\nD3   PD3 addressable\nD5   PD5 red\nD6   PD6 green\nD9   PB1 blue\nD10  PB2 white\nA1   PC1 POT_1\nA2   PC2 POT_2
Text GLabel 3200 3950 0    50   Input ~ 0
Gate_red
Text GLabel 3200 3850 0    50   Input ~ 0
Adressable
Wire Wire Line
	1150 4600 1200 4600
Text GLabel 1150 4600 0    50   Input ~ 0
Gate_white
Wire Wire Line
	6100 3000 6150 3000
Text Notes 600  5700 0    118  ~ 0
DMX512 Isolated
Text GLabel 2300 4250 1    50   Input ~ 0
POT_2
Text GLabel 2400 4250 1    50   Input ~ 0
POT_1
Wire Notes Line
	5400 2500 5400 5600
Wire Notes Line
	2600 5600 5400 5600
Wire Notes Line
	2600 2500 2600 5600
Wire Notes Line
	600  2500 600  5300
Wire Notes Line
	5500 2500 5500 5650
$Comp
L power:+5V #PWR0105
U 1 1 5DF44121
P 2000 2900
F 0 "#PWR0105" H 2000 2750 50  0001 C CNN
F 1 "+5V" H 2015 3073 50  0000 C CNN
F 2 "" H 2000 2900 50  0001 C CNN
F 3 "" H 2000 2900 50  0001 C CNN
	1    2000 2900
	1    0    0    -1  
$EndComp
Wire Notes Line
	5400 2500 2600 2500
Wire Notes Line
	2500 5300 600  5300
Wire Notes Line
	600  2500 2500 2500
Text Notes 2600 2450 0    118  ~ 0
MCU Option ESP32
Text Notes 600  2450 0    118  ~ 0
MCU Option Nano
Text Notes 5500 2450 0    118  ~ 0
User Interface
Text GLabel 7050 3000 2    50   Input ~ 0
POT_2
Text GLabel 6150 3000 2    50   Input ~ 0
POT_1
Wire Wire Line
	5950 2800 5950 2850
Connection ~ 5950 2800
Wire Wire Line
	6850 2800 6850 2850
Wire Wire Line
	5950 2800 6850 2800
Wire Wire Line
	5950 3200 5950 3150
Connection ~ 5950 3200
Wire Wire Line
	6850 3200 6850 3150
Wire Wire Line
	5950 3200 6850 3200
Wire Wire Line
	5950 2750 5950 2800
$Comp
L power:GND #PWR0104
U 1 1 5DEDA793
P 5950 3200
F 0 "#PWR0104" H 5950 2950 50  0001 C CNN
F 1 "GND" H 5955 3027 50  0000 C CNN
F 2 "" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_pot2
U 1 1 5DE0A6EA
P 6850 3000
F 0 "RV_pot2" H 6780 3046 50  0000 R CNN
F 1 "10k" H 6780 2955 50  0000 R CNN
F 2 "" H 6850 3000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/317982.pdf" H 6850 3000 50  0001 C CNN
F 4 "RK11K1120A4C" H 6850 3000 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/alps/rk11k1120a4c/potentiometer-10-ka/dp/1191744" H 6850 3000 50  0001 C CNN "Seller"
	1    6850 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_pot1
U 1 1 5DE0985A
P 5950 3000
F 0 "RV_pot1" H 5880 3046 50  0000 R CNN
F 1 "10k" H 5880 2955 50  0000 R CNN
F 2 "" H 5950 3000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/317982.pdf" H 5950 3000 50  0001 C CNN
F 4 "https://se.farnell.com/alps/rk11k1120a4c/potentiometer-10-ka/dp/1191744" H 5950 3000 50  0001 C CNN "Seller"
F 5 "RK11K1120A4C" H 5950 3000 50  0001 C CNN "Article Number"
	1    5950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 7500 2800 7500
Wire Wire Line
	2450 7200 2800 7200
Connection ~ 2800 7200
Wire Wire Line
	2600 6150 2600 6100
Wire Wire Line
	2600 6100 2800 6100
Connection ~ 2800 6100
Wire Wire Line
	3300 6100 3600 6100
Connection ~ 3300 6100
Wire Notes Line
	4200 5800 4200 7650
$Comp
L Device:C C4
U 1 1 5F358604
P 4950 6250
F 0 "C4" H 5050 6300 50  0000 L CNN
F 1 "10nF" H 5050 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4988 6100 50  0001 C CNN
F 3 "~" H 4950 6250 50  0001 C CNN
F 4 "" H 4950 6250 50  0001 C CNN "Article Number"
F 5 "" H 4950 6250 50  0001 C CNN "Seller"
	1    4950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6100 4950 6100
Wire Wire Line
	4950 6400 5450 6400
Wire Wire Line
	4950 6100 5450 6100
Connection ~ 4950 6100
$Comp
L Device:C C8
U 1 1 5F384BA2
P 4950 7350
F 0 "C8" H 5050 7400 50  0000 L CNN
F 1 "100nF" H 5050 7300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4988 7200 50  0001 C CNN
F 3 "~" H 4950 7350 50  0001 C CNN
F 4 "" H 4950 7350 50  0001 C CNN "Article Number"
F 5 "" H 4950 7350 50  0001 C CNN "Seller"
	1    4950 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F3593F1
P 5450 6250
F 0 "C5" H 5550 6300 50  0000 L CNN
F 1 "100nF" H 5550 6200 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5488 6100 50  0001 C CNN
F 3 "~" H 5450 6250 50  0001 C CNN
F 4 "" H 5450 6250 50  0001 C CNN "Article Number"
F 5 "" H 5450 6250 50  0001 C CNN "Seller"
	1    5450 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F3906AF
P 5450 7350
F 0 "C9" H 5550 7400 50  0000 L CNN
F 1 "10µF" H 5550 7300 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5488 7200 50  0001 C CNN
F 3 "~" H 5450 7350 50  0001 C CNN
F 4 "" H 5450 7350 50  0001 C CNN "Article Number"
F 5 "" H 5450 7350 50  0001 C CNN "Seller"
	1    5450 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7200 5450 7200
Wire Wire Line
	5550 7500 5450 7500
Wire Wire Line
	4950 7500 4800 7500
Connection ~ 4950 7500
Wire Wire Line
	5450 7200 6000 7200
Wire Wire Line
	6000 7200 6000 6400
Wire Wire Line
	6000 6400 5450 6400
Connection ~ 5450 7200
Connection ~ 5450 6400
Wire Wire Line
	3600 6300 3600 6400
Wire Wire Line
	3600 6400 3300 6400
Connection ~ 3300 6400
Wire Wire Line
	3600 7500 3300 7500
Connection ~ 3300 7500
Wire Wire Line
	3600 7200 3600 7300
Connection ~ 3300 7200
Connection ~ 2800 7500
Wire Wire Line
	4800 6300 4800 6400
Wire Wire Line
	4800 6400 4950 6400
Connection ~ 4950 6400
Wire Wire Line
	4800 7300 4800 7200
Wire Wire Line
	4800 7200 4950 7200
Connection ~ 4950 7200
Text Notes 6900 7700 2    50   ~ 0
* Place capacitors as close to ADM2687E for noise suppression.
Text GLabel 3500 6500 0    50   Input ~ 0
DMX_Receive
$Comp
L Device:R R_termination1
U 1 1 5F6B00F6
P 5350 6650
F 0 "R_termination1" H 5000 6700 50  0000 C CNN
F 1 "120R DNP" H 5100 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5280 6650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 5350 6650 50  0001 C CNN
F 4 "MCWR12X1200FTL" V 5350 6650 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mcwr12x1200ftl/res-120r-1-0-25w-thick-film/dp/2447462" V 5350 6650 50  0001 C CNN "Seller"
	1    5350 6650
	-1   0    0    1   
$EndComp
Text GLabel 1150 3500 0    50   Input ~ 0
DMX_Receive
Wire Wire Line
	1150 3500 1200 3500
Text GLabel 4950 4450 1    50   Input ~ 0
POT_2
Wire Wire Line
	4950 4450 4950 4650
Text GLabel 5100 4450 1    50   Input ~ 0
POT_1
Wire Wire Line
	5100 4450 5100 4750
$Comp
L Connector_Generic:Conn_01x02 J_power_terminal1
U 1 1 5DE0534D
P 1100 1050
F 0 "J_power_terminal1" H 1100 1150 50  0000 C CNN
F 1 "MSTBA2" H 1100 850 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_2pole" H 1100 1050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 1100 1050 50  0001 C CNN
F 4 "1757242" H 1100 1050 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757242/header-right-angle-5-08mm-2way/dp/3705171" H 1100 1050 50  0001 C CNN "Seller"
	1    1100 1050
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open LinkDriverOutput1
U 1 1 5F804E58
P 4950 6900
F 0 "LinkDriverOutput1" H 5400 6900 50  0000 C CNN
F 1 "LinkDriverOutput" H 4950 7014 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 4950 6900 50  0001 C CNN
F 3 "~" H 4950 6900 50  0001 C CNN
	1    4950 6900
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open LinkDriverOutput2
U 1 1 5F807BF0
P 4950 7100
F 0 "LinkDriverOutput2" H 5400 7100 50  0000 C CNN
F 1 "LinkDriverOutput" H 5400 7200 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 4950 7100 50  0001 C CNN
F 3 "~" H 4950 7100 50  0001 C CNN
	1    4950 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 6900 5100 6800
Wire Wire Line
	5100 6700 4800 6700
Wire Wire Line
	5100 7100 5150 7100
Wire Wire Line
	5150 7100 5150 6500
Wire Wire Line
	5150 6500 4800 6500
Wire Wire Line
	5150 6500 5350 6500
Connection ~ 5150 6500
Wire Wire Line
	5100 6800 5350 6800
Connection ~ 5100 6800
Wire Wire Line
	5100 6800 5100 6700
Wire Wire Line
	3500 6500 3600 6500
$Comp
L Jumper:SolderJumper_2_Open Driver_Enable1
U 1 1 5F85E1FE
P 2150 6950
F 0 "Driver_Enable1" V 2150 7300 50  0000 C CNN
F 1 "DriverEnable" H 2600 7050 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 2150 6950 50  0001 C CNN
F 3 "~" H 2150 6950 50  0001 C CNN
	1    2150 6950
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open Driver_Disable1
U 1 1 5F85F097
P 2150 7250
F 0 "Driver_Disable1" V 2150 6900 50  0000 C CNN
F 1 "DriverEnable" H 2600 7350 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 2150 7250 50  0001 C CNN
F 3 "~" H 2150 7250 50  0001 C CNN
	1    2150 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 7200 3600 7200
$Comp
L Jumper:SolderJumper_2_Open Receiver_Enable1
U 1 1 5F87F34C
P 1350 7250
F 0 "Receiver_Enable1" V 1350 7650 50  0000 C CNN
F 1 "ReceiverEnable" H 1800 7350 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 1350 7250 50  0001 C CNN
F 3 "~" H 1350 7250 50  0001 C CNN
	1    1350 7250
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open Receiver_Disable1
U 1 1 5F8808F7
P 1350 6950
F 0 "Receiver_Disable1" V 1350 6550 50  0000 C CNN
F 1 "ReveiverEnable" H 1800 7050 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 1350 6950 50  0001 C CNN
F 3 "~" H 1350 6950 50  0001 C CNN
	1    1350 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	10100 2050 10100 1100
Wire Wire Line
	10200 3100 10200 1200
Wire Wire Line
	8850 5550 8850 5900
Wire Wire Line
	8200 5550 8850 5550
Wire Wire Line
	6650 5400 6550 5400
Wire Wire Line
	6550 5400 6550 5500
Wire Wire Line
	6550 5500 6450 5500
Wire Wire Line
	1250 7100 1350 7100
Connection ~ 1350 7100
Connection ~ 2450 6400
Wire Wire Line
	2450 6400 2450 7200
Wire Wire Line
	2450 6050 2450 6400
Text GLabel 5600 6500 2    50   Input ~ 0
DMX+
Text GLabel 5600 6800 2    50   Input ~ 0
DMX-
Wire Wire Line
	5350 6500 5600 6500
Connection ~ 5350 6500
Wire Wire Line
	5350 6800 5600 6800
Connection ~ 5350 6800
Text GLabel 3500 6700 0    50   Input ~ 0
DMX_RE
Text GLabel 3500 6900 0    50   Input ~ 0
DMX_DE
Text GLabel 3500 7100 0    50   Input ~ 0
DMX_Send
Wire Wire Line
	3500 6700 3600 6700
Wire Wire Line
	3500 6900 3600 6900
Wire Wire Line
	3500 7100 3600 7100
Text GLabel 1250 7100 0    50   Input ~ 0
DMX_RE
Text GLabel 2050 7100 0    50   Input ~ 0
DMX_DE
Wire Wire Line
	2050 7100 2150 7100
Connection ~ 2150 7100
Wire Wire Line
	2150 6800 1350 6800
Wire Wire Line
	1350 7400 2150 7400
$Comp
L power:+3.3V #PWR?
U 1 1 5FDF5E26
P 1350 6700
F 0 "#PWR?" H 1350 6550 50  0001 C CNN
F 1 "+3.3V" H 1365 6873 50  0000 C CNN
F 2 "" H 1350 6700 50  0001 C CNN
F 3 "" H 1350 6700 50  0001 C CNN
	1    1350 6700
	1    0    0    -1  
$EndComp
Connection ~ 1350 6800
$Comp
L power:GND #PWR?
U 1 1 5FDF6859
P 1350 7500
F 0 "#PWR?" H 1350 7250 50  0001 C CNN
F 1 "GND" H 1350 7350 50  0000 C CNN
F 2 "" H 1350 7500 50  0001 C CNN
F 3 "" H 1350 7500 50  0001 C CNN
	1    1350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 7500 1350 7400
Connection ~ 1350 7400
Wire Wire Line
	1350 6700 1350 6800
$Comp
L Connector_Generic:Conn_01x04 J_DMX1
U 1 1 5FE3B077
P 850 6250
F 0 "J_DMX1" H 768 5825 50  0000 C CNN
F 1 "Conn_04" H 768 5916 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 850 6250 50  0001 C CNN
F 3 "~" H 850 6250 50  0001 C CNN
	1    850  6250
	-1   0    0    1   
$EndComp
Text GLabel 1200 6050 2    50   Input ~ 0
DMX_Receive
Text GLabel 1200 6150 2    50   Input ~ 0
DMX_RE
Text GLabel 1200 6250 2    50   Input ~ 0
DMX_DE
Text GLabel 1200 6350 2    50   Input ~ 0
DMX_Send
Wire Wire Line
	1050 6050 1200 6050
Wire Wire Line
	1050 6150 1200 6150
Wire Wire Line
	1050 6250 1200 6250
Wire Wire Line
	1050 6350 1200 6350
Text GLabel 1150 3400 0    50   Input ~ 0
DMX_Send
Wire Wire Line
	1150 3400 1200 3400
Text GLabel 5550 7500 2    50   Input ~ 0
DMXgnd
Connection ~ 5450 7500
Wire Wire Line
	5450 7500 4950 7500
Text GLabel 6800 6300 1    50   Input ~ 0
DMXgnd
Text GLabel 6550 6650 2    50   Input ~ 0
DMX+
NoConn ~ 3300 4550
NoConn ~ 3300 4150
Text GLabel 3200 4250 0    50   Input ~ 0
Gate_green
Text GLabel 3200 4350 0    50   Input ~ 0
Gate_blue
Text GLabel 3200 4450 0    50   Input ~ 0
Gate_white
Text GLabel 6200 6300 1    50   Input ~ 0
DMX-
Text GLabel 6200 7150 1    50   Input ~ 0
DMXgnd
Text GLabel 6800 7150 1    50   Input ~ 0
DMX-
Text GLabel 6550 7500 2    50   Input ~ 0
DMX+
Text GLabel 4850 3550 1    50   Input ~ 0
DMX_Send
Text GLabel 5000 3550 1    50   Input ~ 0
DMX_Receive
Wire Wire Line
	4850 3550 4850 3650
Wire Wire Line
	4850 3650 4700 3650
Wire Wire Line
	5000 3550 5000 3750
Wire Wire Line
	5000 3750 4700 3750
Text GLabel 5150 3550 1    50   Input ~ 0
DMX_RE
Text GLabel 5300 3550 1    50   Input ~ 0
DMX_DE
Wire Wire Line
	5150 3550 5150 3850
Wire Wire Line
	5150 3850 4700 3850
Wire Wire Line
	5300 3550 5300 3950
Wire Wire Line
	5300 3950 4700 3950
Wire Wire Line
	6550 6650 6500 6650
Wire Wire Line
	6500 7500 6550 7500
Wire Wire Line
	6200 6300 6200 6350
Wire Wire Line
	6800 6300 6800 6350
Wire Wire Line
	6800 7150 6800 7200
Wire Wire Line
	6200 7150 6200 7200
Text Notes 7450 5700 2    50   ~ 0
Fix a nice switch\n 
$Comp
L XLR:XLR_3pin_Female_Ground XLR_Female1
U 1 1 6018CB3F
P 6500 6350
F 0 "XLR_Female1" H 6500 6623 50  0000 C CNN
F 1 "XLR_3pin_Female_Ground" H 6500 6700 50  0001 C CNN
F 2 "" H 6500 6350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2119816.pdf" H 6500 6350 50  0001 C CNN
F 4 "NC3FAAH2" H 6500 6350 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/neutrik/nc3faah2/socket-xlr-pcb-horizontal-3pole/dp/1310023" H 6500 6350 50  0001 C CNN "Seller"
	1    6500 6350
	1    0    0    -1  
$EndComp
$Comp
L XLR:XLR_3pin_Male_Ground XLR_Male1
U 1 1 6018E7B4
P 6500 7200
F 0 "XLR_Male1" H 6500 7473 50  0000 C CNN
F 1 "XLR_3pin_Male_Ground" H 6500 7550 50  0001 C CNN
F 2 "" H 6500 7200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/53968.pdf" H 6500 7200 50  0001 C CNN
F 4 "NC3MAAH" H 6500 7200 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/neutrik/nc3maah/plug-xlr-pcb-horizontal-3pole/dp/1310044" H 6500 7200 50  0001 C CNN "Seller"
	1    6500 7200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
