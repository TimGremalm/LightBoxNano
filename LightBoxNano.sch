EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Connector:Barrel_Jack_Switch Jb1
U 1 1 5DE03891
P 1150 1750
F 0 "Jb1" H 1150 1550 50  0000 C CNN
F 1 "Barrel Jack Switch 5A 2mm" H 1150 1950 50  0000 C CNN
F 2 "LightBoxNanoFootprints:BarrelJack_SPC21364" H 1200 1710 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1692886.pdf?_ga=2.231332955.599385452.1575057425-167263916.1529948031" H 1200 1710 50  0001 C CNN
F 4 "Multicomp" H 1150 1750 50  0001 C CNN "Manufacturer"
F 5 "SPC21364" H 1150 1750 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/multicomp/spc21364/connector-power/dp/1654842" H 1150 1750 50  0001 C CNN "Seller"
	1    1150 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 Jadd1
U 1 1 5DE05544
P 10750 6100
F 0 "Jadd1" H 10750 6300 50  0000 C CNN
F 1 "MSTBA3" H 10750 5900 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_3pole" H 10750 6100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 10750 6100 50  0001 C CNN
F 4 "1757255" H 10750 6100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757255/connector-header-tht-ra-5-08mm/dp/3705183" H 10750 6100 50  0001 C CNN "Seller"
	1    10750 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5DE4A501
P 6850 1250
F 0 "#PWR0101" H 6850 1100 50  0001 C CNN
F 1 "+5V" H 6865 1423 50  0000 C CNN
F 2 "" H 6850 1250 50  0001 C CNN
F 3 "" H 6850 1250 50  0001 C CNN
	1    6850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1400 6850 1400
$Comp
L Device:CP Cvin1
U 1 1 5DE52230
P 3850 1800
F 0 "Cvin1" H 3968 1846 50  0000 L CNN
F 1 "100µF 50V 27mΩ" H 3968 1755 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10.5" H 3888 1650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2756457.pdf?_ga=2.147362935.1391520159.1585828864-167263916.1529948031" H 3850 1800 50  0001 C CNN
F 4 "A767MU107M1HLAE027" H 3850 1800 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/kemet/a767mu107m1hlae027/kond-alu-polymer-100-f-50v-rad/dp/2614195RL" H 3850 1800 50  0001 C CNN "Seller"
	1    3850 1800
	1    0    0    -1  
$EndComp
Wire Notes Line
	2200 750  2200 2200
Wire Notes Line
	600  2200 600  750 
Text Notes 600  700  0    118  ~ 0
Input Connectors
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
	5450 1400 5600 1400
Wire Notes Line
	600  2200 2200 2200
Wire Notes Line
	600  750  2200 750 
Wire Notes Line
	2350 2200 4900 2200
Wire Notes Line
	4900 750  2350 750 
Wire Notes Line
	2350 750  2350 2200
Wire Notes Line
	4900 750  4900 2200
Text Notes 2350 700  0    118  ~ 0
Input Protection
Text Notes 2400 1500 0    50   ~ 0
Todo:\n* Add current sense high side switch here (Fuse)\n* Add polarity protection (built in high side switch?)\n* Add Power LED\n* Add test pads\n* Place ESD diodes on connector pins\n* Shorten designators\nhttps://www.mouser.se/ProductDetail/Infineon-IR/AUIR3315STRL/\nhttps://www.mouser.se/datasheet/2/196/auir3315-1225292.pdf
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
Wire Wire Line
	5450 1950 5450 1700
Wire Wire Line
	5450 1700 5600 1700
$Comp
L Connector_Generic:Conn_01x05 Jrgbw1
U 1 1 5DFDEA6C
P 10600 1700
F 0 "Jrgbw1" H 10680 1742 50  0000 L CNN
F 1 "MSTBA5" H 10680 1651 50  0000 L CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_5pole" H 10600 1700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 10600 1700 50  0001 C CNN
F 4 "1757271" H 10600 1700 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757271/header-right-angle-5-08mm-5way/dp/3705201" H 10600 1700 50  0001 C CNN "Seller"
	1    10600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1850 1650 1850
Wire Wire Line
	9500 1500 9500 1450
$Comp
L power:GND #PWR0110
U 1 1 5E009609
P 9000 2200
F 0 "#PWR0110" H 9000 1950 50  0001 C CNN
F 1 "GND" H 9005 2027 50  0000 C CNN
F 2 "" H 9000 2200 50  0001 C CNN
F 3 "" H 9000 2200 50  0001 C CNN
	1    9000 2200
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qr1
U 1 1 5E00B511
P 8900 1700
F 0 "Qr1" H 9050 1550 50  0000 L CNN
F 1 "IRLML6344" H 9104 1655 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9100 1610 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8900 1700 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9420 1510 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9180 1410 50  0001 C CNN "VDS"
F 6 "±12V" H 9380 1410 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9800 1320 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8900 1700 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8900 1700 50  0001 C CNN "Article Number"
	1    8900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1500 9000 1450
Wire Wire Line
	9000 1450 9500 1450
Wire Wire Line
	9000 1900 9500 1900
Wire Wire Line
	9200 1400 9200 1700
Wire Wire Line
	9200 1400 8700 1400
Wire Wire Line
	8700 1400 8700 1700
Wire Wire Line
	8700 1900 8700 1700
Connection ~ 8700 1700
Wire Wire Line
	8300 1700 8350 1700
Wire Wire Line
	8650 1700 8700 1700
$Comp
L Device:R Rred_pulldown1
U 1 1 5E051501
P 8700 2050
F 0 "Rred_pulldown1" H 8800 2100 50  0000 L CNN
F 1 "10k" H 8770 2005 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8630 2050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8700 2050 50  0001 C CNN
F 4 "MC0100W0603110K" H 8700 2050 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8700 2050 50  0001 C CNN "Seller"
	1    8700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rred1
U 1 1 5E008B99
P 8500 1700
F 0 "Rred1" V 8293 1700 50  0000 C CNN
F 1 "1k" V 8384 1700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8430 1700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8500 1700 50  0001 C CNN
F 4 "MC0100W060311K" V 8500 1700 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8500 1700 50  0001 C CNN "Seller"
	1    8500 1700
	0    -1   -1   0   
$EndComp
Connection ~ 9000 1900
Wire Wire Line
	8700 2200 9000 2200
Connection ~ 9000 2200
Wire Wire Line
	9000 2200 9000 1900
$Comp
L ProjectSpecific:IRLML6344 Qr2
U 1 1 5DFE38F5
P 9400 1700
F 0 "Qr2" H 9550 1550 50  0000 L CNN
F 1 "IRLML6344" H 9550 1450 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9600 1610 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9400 1700 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9920 1510 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9680 1410 50  0001 C CNN "VDS"
F 6 "±12V" H 9880 1410 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10300 1320 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9400 1700 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9400 1700 50  0001 C CNN "Article Number"
	1    9400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 2550 9500 2500
Wire Wire Line
	9500 2500 10200 2500
$Comp
L power:GND #PWR0111
U 1 1 5E09EC67
P 9000 3250
F 0 "#PWR0111" H 9000 3000 50  0001 C CNN
F 1 "GND" H 9005 3077 50  0000 C CNN
F 2 "" H 9000 3250 50  0001 C CNN
F 3 "" H 9000 3250 50  0001 C CNN
	1    9000 3250
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qg1
U 1 1 5E09EC75
P 8900 2750
F 0 "Qg1" H 9050 2600 50  0000 L CNN
F 1 "IRLML6344" H 9104 2705 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9100 2660 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8900 2750 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9420 2560 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9180 2460 50  0001 C CNN "VDS"
F 6 "±12V" H 9380 2460 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9800 2370 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8900 2750 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8900 2750 50  0001 C CNN "Article Number"
	1    8900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2550 9000 2500
Wire Wire Line
	9000 2500 9500 2500
Connection ~ 9500 2500
Wire Wire Line
	9000 2950 9500 2950
Wire Wire Line
	9200 2450 9200 2750
Wire Wire Line
	9200 2450 8700 2450
Wire Wire Line
	8700 2450 8700 2750
Wire Wire Line
	8700 2950 8700 2750
Connection ~ 8700 2750
Wire Wire Line
	8300 2750 8350 2750
Wire Wire Line
	8650 2750 8700 2750
$Comp
L Device:R Rgreen_pulldown1
U 1 1 5E09EC8B
P 8700 3100
F 0 "Rgreen_pulldown1" H 8770 3146 50  0000 L CNN
F 1 "10k" H 8770 3055 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8630 3100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8700 3100 50  0001 C CNN
F 4 "MC0100W0603110K" H 8700 3100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8700 3100 50  0001 C CNN "Seller"
	1    8700 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rgreen1
U 1 1 5E09EC95
P 8500 2750
F 0 "Rgreen1" V 8293 2750 50  0000 C CNN
F 1 "1k" V 8384 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8430 2750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8500 2750 50  0001 C CNN
F 4 "MC0100W060311K" V 8500 2750 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8500 2750 50  0001 C CNN "Seller"
	1    8500 2750
	0    -1   -1   0   
$EndComp
Connection ~ 9000 2950
Wire Wire Line
	8700 3250 9000 3250
Connection ~ 9000 3250
Wire Wire Line
	9000 3250 9000 2950
$Comp
L ProjectSpecific:IRLML6344 Qg2
U 1 1 5E09ECA8
P 9400 2750
F 0 "Qg2" H 9550 2600 50  0000 L CNN
F 1 "IRLML6344" H 9550 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9600 2660 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9400 2750 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9920 2560 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9680 2460 50  0001 C CNN "VDS"
F 6 "±12V" H 9880 2460 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10300 2370 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9400 2750 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9400 2750 50  0001 C CNN "Article Number"
	1    9400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3600 9500 3550
Wire Wire Line
	9500 3550 10300 3550
$Comp
L power:GND #PWR0112
U 1 1 5E0DB46E
P 9000 4300
F 0 "#PWR0112" H 9000 4050 50  0001 C CNN
F 1 "GND" H 9005 4127 50  0000 C CNN
F 2 "" H 9000 4300 50  0001 C CNN
F 3 "" H 9000 4300 50  0001 C CNN
	1    9000 4300
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qb1
U 1 1 5E0DB47C
P 8900 3800
F 0 "Qb1" H 9050 3650 50  0000 L CNN
F 1 "IRLML6344" H 9104 3755 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9100 3710 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8900 3800 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9420 3610 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9180 3510 50  0001 C CNN "VDS"
F 6 "±12V" H 9380 3510 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9800 3420 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8900 3800 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8900 3800 50  0001 C CNN "Article Number"
	1    8900 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3600 9000 3550
Wire Wire Line
	9000 3550 9500 3550
Connection ~ 9500 3550
Wire Wire Line
	9000 4000 9500 4000
Wire Wire Line
	8700 4000 8700 3800
Connection ~ 8700 3800
Wire Wire Line
	8300 3800 8350 3800
Wire Wire Line
	8650 3800 8700 3800
$Comp
L Device:R Rblue_pulldown1
U 1 1 5E0DB492
P 8700 4150
F 0 "Rblue_pulldown1" H 8770 4196 50  0000 L CNN
F 1 "10k" H 8770 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8630 4150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8700 4150 50  0001 C CNN
F 4 "MC0100W0603110K" H 8700 4150 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8700 4150 50  0001 C CNN "Seller"
	1    8700 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rblue1
U 1 1 5E0DB49C
P 8500 3800
F 0 "Rblue1" V 8293 3800 50  0000 C CNN
F 1 "1k" V 8384 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8430 3800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8500 3800 50  0001 C CNN
F 4 "MC0100W060311K" V 8500 3800 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8500 3800 50  0001 C CNN "Seller"
	1    8500 3800
	0    -1   -1   0   
$EndComp
Connection ~ 9000 4000
Wire Wire Line
	8700 4300 9000 4300
Connection ~ 9000 4300
Wire Wire Line
	9000 4300 9000 4000
$Comp
L ProjectSpecific:IRLML6344 Qb2
U 1 1 5E0DB4AF
P 9400 3800
F 0 "Qb2" H 9550 3650 50  0000 L CNN
F 1 "IRLML6344" H 9550 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9600 3710 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9400 3800 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9920 3610 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9680 3510 50  0001 C CNN "VDS"
F 6 "±12V" H 9880 3510 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10300 3420 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9400 3800 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9400 3800 50  0001 C CNN "Article Number"
	1    9400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4650 9500 4600
$Comp
L power:GND #PWR0113
U 1 1 5E1058C2
P 9000 5350
F 0 "#PWR0113" H 9000 5100 50  0001 C CNN
F 1 "GND" H 9005 5177 50  0000 C CNN
F 2 "" H 9000 5350 50  0001 C CNN
F 3 "" H 9000 5350 50  0001 C CNN
	1    9000 5350
	1    0    0    -1  
$EndComp
$Comp
L ProjectSpecific:IRLML6344 Qw1
U 1 1 5E1058D0
P 8900 4850
F 0 "Qw1" H 9050 4700 50  0000 L CNN
F 1 "IRLML6344" H 9104 4805 50  0001 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9100 4760 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 8900 4850 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9420 4660 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9180 4560 50  0001 C CNN "VDS"
F 6 "±12V" H 9380 4560 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 9800 4470 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 8900 4850 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 8900 4850 50  0001 C CNN "Article Number"
	1    8900 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4650 9000 4600
Wire Wire Line
	9000 4600 9500 4600
Connection ~ 9500 4600
Wire Wire Line
	9000 5050 9500 5050
Wire Wire Line
	9200 4550 9200 4850
Wire Wire Line
	9200 4550 8700 4550
Wire Wire Line
	8700 4550 8700 4850
Wire Wire Line
	8700 5050 8700 4850
Connection ~ 8700 4850
Wire Wire Line
	8300 4850 8350 4850
Wire Wire Line
	8650 4850 8700 4850
$Comp
L Device:R Rwhite_pulldown1
U 1 1 5E1058E6
P 8700 5200
F 0 "Rwhite_pulldown1" H 8770 5246 50  0000 L CNN
F 1 "10k" H 8770 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8630 5200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8700 5200 50  0001 C CNN
F 4 "MC0100W0603110K" H 8700 5200 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" H 8700 5200 50  0001 C CNN "Seller"
	1    8700 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rwhite1
U 1 1 5E1058F0
P 8500 4850
F 0 "Rwhite1" V 8293 4850 50  0000 C CNN
F 1 "1k" V 8384 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8430 4850 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8500 4850 50  0001 C CNN
F 4 "MC0100W060311K" V 8500 4850 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 8500 4850 50  0001 C CNN "Seller"
	1    8500 4850
	0    -1   -1   0   
$EndComp
Connection ~ 9000 5050
Wire Wire Line
	8700 5350 9000 5350
Connection ~ 9000 5350
Wire Wire Line
	9000 5350 9000 5050
$Comp
L ProjectSpecific:IRLML6344 Qw2
U 1 1 5E105903
P 9400 4850
F 0 "Qw2" H 9550 4700 50  0000 L CNN
F 1 "IRLML6344" H 9550 4600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 9600 4760 50  0001 L CIN
F 3 "http://www.farnell.com/datasheets/1911844.pdf" H 9400 4850 50  0001 L CNN
F 4 "IRLML6344TRPbF" H 9920 4660 50  0001 C CNN "Orderable part number"
F 5 "30V" H 9680 4560 50  0001 C CNN "VDS"
F 6 "±12V" H 9880 4560 50  0001 C CNN "VGS Max"
F 7 "29mΩ @VGS4.5V / 37mΩ @VGS2.5V" H 10300 4470 50  0001 C CNN "RDSON Max"
F 8 "https://se.farnell.com/infineon/irlml6344trpbf/mosfet-n-kan-30v-5a-sot23/dp/1857299" H 9400 4850 50  0001 C CNN "Seller"
F 9 "IRLML6344TRPBF" H 9400 4850 50  0001 C CNN "Article Number"
	1    9400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1700 10400 1700
Wire Wire Line
	10300 1800 10400 1800
Wire Wire Line
	10400 1900 10400 4600
Wire Wire Line
	9500 4600 10400 4600
Wire Notes Line
	7600 750  11100 750 
Wire Notes Line
	11100 750  11100 5600
Wire Notes Line
	11100 5600 7600 5600
Wire Notes Line
	7600 5600 7600 750 
Text Notes 7600 700  0    118  ~ 0
RGBW LED Driver (CV-mode)
Wire Wire Line
	10400 6200 10550 6200
Wire Wire Line
	10200 6100 10550 6100
$Comp
L Device:R Radd1
U 1 1 5E225DC9
P 10050 6100
F 0 "Radd1" V 9950 6100 50  0000 C CNN
F 1 "1k" V 9850 6100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9980 6100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 10050 6100 50  0001 C CNN
F 4 "MC0100W060311K" V 10050 6100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 10050 6100 50  0001 C CNN "Seller"
	1    10050 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 6100 9900 6100
$Comp
L power:GND #PWR0114
U 1 1 5E2158AC
P 10400 6250
F 0 "#PWR0114" H 10400 6000 50  0001 C CNN
F 1 "GND" H 10405 6077 50  0000 C CNN
F 2 "" H 10400 6250 50  0001 C CNN
F 3 "" H 10400 6250 50  0001 C CNN
	1    10400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 6250 10400 6200
Text Notes 7600 5800 0    118  ~ 0
Addressable LED
$Comp
L Connector_Generic:Conn_01x02 J5V1
U 1 1 5DE4F57E
P 6650 1700
F 0 "J5V1" H 6250 1600 50  0000 L CNN
F 1 "Conn_02 DNP" H 5900 1700 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6650 1700 50  0001 C CNN
F 3 "~" H 6650 1700 50  0001 C CNN
F 4 "" H 6650 1700 50  0001 C CNN "Article Number"
F 5 "" H 6650 1700 50  0001 C CNN "Seller"
	1    6650 1700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5DE7A5F1
P 6850 1950
F 0 "#PWR0117" H 6850 1700 50  0001 C CNN
F 1 "GND" H 6855 1777 50  0000 C CNN
F 2 "" H 6850 1950 50  0001 C CNN
F 3 "" H 6850 1950 50  0001 C CNN
	1    6850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1950 6850 1700
Wire Wire Line
	6850 1600 6850 1400
Connection ~ 6850 1400
$Comp
L Connector_Generic:Conn_01x03 Jvoltagebreakout1
U 1 1 5DE93F0E
P 3250 1650
F 0 "Jvoltagebreakout1" H 4000 1600 50  0000 R CNN
F 1 "Conn_03 DNP" H 3850 1700 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3250 1650 50  0001 C CNN
F 3 "~" H 3250 1650 50  0001 C CNN
F 4 "" V 3250 1650 50  0001 C CNN "Article Number"
F 5 "" V 3250 1650 50  0001 C CNN "Seller"
	1    3250 1650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5DEA77D9
P 3850 2000
F 0 "#PWR0118" H 3850 1750 50  0001 C CNN
F 1 "GND" H 3855 1827 50  0000 C CNN
F 2 "" H 3850 2000 50  0001 C CNN
F 3 "" H 3850 2000 50  0001 C CNN
	1    3850 2000
	1    0    0    -1  
$EndComp
Wire Notes Line
	7600 5850 7600 6500
Wire Notes Line
	7600 6500 11100 6500
Wire Notes Line
	11100 6500 11100 5850
Wire Notes Line
	11100 5850 7600 5850
$Comp
L power:GND #PWR0119
U 1 1 5DE6183E
P 1650 1950
F 0 "#PWR0119" H 1650 1700 50  0001 C CNN
F 1 "GND" H 1655 1777 50  0000 C CNN
F 2 "" H 1650 1950 50  0001 C CNN
F 3 "" H 1650 1950 50  0001 C CNN
	1    1650 1950
	1    0    0    -1  
$EndComp
Connection ~ 5900 5400
Wire Wire Line
	5900 5400 6100 5400
Connection ~ 6200 2800
Wire Wire Line
	6200 2800 6050 2800
$Comp
L ESP32:ESP32-PICO-KIT MCU_esp1
U 1 1 5ECC2DB7
P 6000 4350
F 0 "MCU_esp1" H 5550 3400 50  0000 C CNN
F 1 "ESP32-PICO-KIT" V 6000 4400 50  0000 C CNN
F 2 "ESP32:ESP32-PICO-KIT_Jumper" V 6100 4400 50  0001 C CNN
F 3 "https://dl.espressif.com/dl/schematics/esp32-pico-kit-v4.1_schematic.pdf" H 5875 4850 50  0001 C CNN
F 4 "ESP32-PICO-KIT" H 6000 4350 50  0001 C CNN "Article Number"
F 5 "https://www.digikey.com/product-detail/en/espressif-systems/ESP32-PICO-KIT/1904-1030-ND/9381703" H 6000 4350 50  0001 C CNN "Seller"
	1    6000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4800 6700 4800
Wire Wire Line
	6950 4700 6700 4700
NoConn ~ 2650 2850
NoConn ~ 3250 3500
NoConn ~ 3250 3700
NoConn ~ 3250 3800
NoConn ~ 3250 3900
NoConn ~ 3250 4000
NoConn ~ 3250 4100
NoConn ~ 3250 4400
NoConn ~ 3250 4500
NoConn ~ 3250 4700
NoConn ~ 2250 3900
NoConn ~ 2250 3700
NoConn ~ 2250 3500
Wire Wire Line
	2950 2800 2950 2850
Wire Wire Line
	3050 2800 2950 2800
Wire Wire Line
	2800 2800 2800 2850
$Comp
L ArduinoNano:Arduino-Nano-V3 MCU_nano1
U 1 1 5EBE5347
P 2750 4000
F 0 "MCU_nano1" H 2350 3100 50  0000 C CNN
F 1 "Arduino-Nano-V3" V 2750 4000 50  0000 C CNN
F 2 "ArduinoNano:Arduino-Nano-V3_Jumper" V 3550 4150 50  0001 C CNN
F 3 "https://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2750 4000 50  0001 C CNN
F 4 "A000005" H 2750 4000 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/arduino-org/a000005/arduino-nano-utv-rd-kort/dp/1848691" H 2750 4000 50  0001 C CNN "Seller"
	1    2750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4300 3550 4300
Wire Wire Line
	3550 4150 3550 4300
Wire Wire Line
	3450 4200 3250 4200
Wire Wire Line
	3450 4150 3450 4200
Wire Notes Line
	3800 2500 3800 5250
$Comp
L power:GND #PWR0103
U 1 1 5EB39AD3
P 2700 5000
F 0 "#PWR0103" H 2700 4750 50  0001 C CNN
F 1 "GND" H 2700 4850 50  0000 C CNN
F 2 "" H 2700 5000 50  0001 C CNN
F 3 "" H 2700 5000 50  0001 C CNN
	1    2700 5000
	1    0    0    -1  
$EndComp
NoConn ~ 6700 3400
NoConn ~ 6700 3500
NoConn ~ 6700 3600
NoConn ~ 6700 4100
NoConn ~ 6700 4200
NoConn ~ 6700 4300
NoConn ~ 6700 4400
NoConn ~ 6700 4500
NoConn ~ 6700 4600
NoConn ~ 6700 4900
NoConn ~ 6700 5000
NoConn ~ 6700 5100
NoConn ~ 5300 5000
NoConn ~ 5300 4100
NoConn ~ 5300 3800
NoConn ~ 5300 3700
NoConn ~ 5300 3600
NoConn ~ 5300 3500
NoConn ~ 5300 3400
Wire Wire Line
	5200 4700 5300 4700
Wire Wire Line
	5200 4600 5300 4600
Wire Wire Line
	5200 4300 5300 4300
Wire Wire Line
	5200 4000 5300 4000
Wire Wire Line
	5200 3900 5300 3900
$Comp
L power:GND #PWR0107
U 1 1 5E94AB2B
P 5900 5400
F 0 "#PWR0107" H 5900 5150 50  0001 C CNN
F 1 "GND" H 5905 5227 50  0000 C CNN
F 2 "" H 5900 5400 50  0001 C CNN
F 3 "" H 5900 5400 50  0001 C CNN
	1    5900 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3800 2250 3800
Wire Wire Line
	2200 4000 2250 4000
Wire Wire Line
	2200 4100 2250 4100
Wire Wire Line
	2200 4400 2250 4400
$Comp
L power:+3.3V #PWR0108
U 1 1 5E8D368D
P 6200 2800
F 0 "#PWR0108" H 6200 2650 50  0001 C CNN
F 1 "+3.3V" H 6215 2973 50  0000 C CNN
F 2 "" H 6200 2800 50  0001 C CNN
F 3 "" H 6200 2800 50  0001 C CNN
	1    6200 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5E8D2999
P 5900 2800
F 0 "#PWR0109" H 5900 2650 50  0001 C CNN
F 1 "+5V" H 5915 2973 50  0000 C CNN
F 2 "" H 5900 2800 50  0001 C CNN
F 3 "" H 5900 2800 50  0001 C CNN
	1    5900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0116
U 1 1 5E8A34E7
P 2800 2800
F 0 "#PWR0116" H 2800 2650 50  0001 C CNN
F 1 "+3.3V" H 2815 2973 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Text Notes 650  3900 0    50   ~ 0
Ports:\nD1   PD0 (TX) DMX_Send\nD0   PD1 (RX) DMX_Receive\nD3   PD3 addressable\nD5   PD5 red\nD6   PD6 green\nD9   PB1 blue\nD10  PB2 white\nA1   PC1 POT_1\nA2   PC2 POT_2\nD7   PD7 SwCode1\nD8   PB0 SwCode2\nD11  PB3 SwCode4\nD12  PB4 SwCode8
Wire Wire Line
	2200 4500 2250 4500
Wire Notes Line
	7500 2500 7500 5650
Wire Notes Line
	3950 5650 7500 5650
Wire Notes Line
	3950 2500 3950 5650
Wire Notes Line
	600  2500 600  5250
$Comp
L power:+5V #PWR0105
U 1 1 5DF44121
P 3050 2800
F 0 "#PWR0105" H 3050 2650 50  0001 C CNN
F 1 "+5V" H 3065 2973 50  0000 C CNN
F 2 "" H 3050 2800 50  0001 C CNN
F 3 "" H 3050 2800 50  0001 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
Wire Notes Line
	7500 2500 3950 2500
Wire Notes Line
	600  2500 3800 2500
Text Notes 3950 2450 0    118  ~ 0
MCU Option ESP32
Text Notes 600  2450 0    118  ~ 0
MCU Option Nano
Wire Wire Line
	2200 3400 2250 3400
Wire Wire Line
	6950 4500 6950 4700
Wire Wire Line
	7100 4500 7100 4800
$Comp
L Connector_Generic:Conn_01x02 Jc1
U 1 1 5DE0534D
P 2050 1650
F 0 "Jc1" H 2050 1400 50  0000 C CNN
F 1 "MSTBA2" H 2050 1750 50  0000 C CNN
F 2 "PhoenixContact:PhoenixContact-MSTBA_2,5_4-G-5,08_2pole" H 2050 1650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309813.pdf" H 2050 1650 50  0001 C CNN
F 4 "1757242" H 2050 1650 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/phoenix-contact/1757242/header-right-angle-5-08mm-2way/dp/3705171" H 2050 1650 50  0001 C CNN "Seller"
	1    2050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 2500 10200 1700
Wire Wire Line
	10300 3550 10300 1800
Wire Wire Line
	2200 3300 2250 3300
NoConn ~ 5300 4200
Wire Wire Line
	6850 3600 6850 3700
Wire Wire Line
	6850 3700 6700 3700
Wire Wire Line
	7000 3600 7000 3800
Wire Wire Line
	7000 3800 6700 3800
Wire Wire Line
	7150 3600 7150 3900
Wire Wire Line
	7150 3900 6700 3900
Wire Wire Line
	7300 3600 7300 4000
Wire Wire Line
	7300 4000 6700 4000
Wire Notes Line
	3800 5250 600  5250
Wire Wire Line
	2200 4700 2250 4700
Wire Wire Line
	2200 4600 2250 4600
Wire Wire Line
	2200 4300 2250 4300
Wire Wire Line
	2200 4200 2250 4200
Wire Wire Line
	5200 4400 5300 4400
Wire Wire Line
	5200 4500 5300 4500
Wire Wire Line
	5200 4800 5300 4800
Wire Wire Line
	5200 4900 5300 4900
Wire Wire Line
	2800 5000 2700 5000
Connection ~ 2700 5000
Text Notes 4000 4050 0    50   ~ 0
Ports:\nIO21  DMX_Send\nIO22  DMX_Receive\nIO19  DMX_Enable_Receive\nIO23  DMX_Enable_Send\nIO25  addressable\nIO26  red\nIO27  green\nIO13  blue\nIO15  white\nIO34  POT_1\nIO35  POT_2\nIO14  SwCode1\nIO12  SwCode2\nIO2   SwCode4\nIO4   SwCode8
$Sheet
S 5600 1150 900  750 
U 5DE1594D
F0 "Buck Converter" 50
F1 "buck_converter.sch" 50
F2 "BuckVin" I L 5600 1400 50 
F3 "Buck5VOut" I R 6500 1400 50 
F4 "BuckGND" I L 5600 1700 50 
$EndSheet
Text Label 1750 1350 1    50   ~ 0
Vin
Text Label 4000 1650 0    50   ~ 0
Vin
Text Label 4000 1550 0    50   ~ 0
Vin_fused
Text Label 5450 1400 2    50   ~ 0
Vin_fused
Text Label 10400 1500 2    50   ~ 0
Vin_fused
Text Label 9700 6000 2    50   ~ 0
Vin_fused
Text Label 9700 6100 2    50   ~ 0
Addressable
Text Label 5200 3900 2    50   ~ 0
Addressable
Text Label 2200 3800 2    50   ~ 0
Addressable
Text Label 2200 4000 2    50   ~ 0
Gate_red
Text Label 5200 4000 2    50   ~ 0
Gate_red
Text Label 8300 1700 2    50   ~ 0
Gate_red
Text Label 2200 4100 2    50   ~ 0
Gate_green
Text Label 5200 4300 2    50   ~ 0
Gate_green
Text Label 8300 2750 2    50   ~ 0
Gate_green
Text Label 2200 4200 2    50   ~ 0
SwCode1
Text Label 2200 4300 2    50   ~ 0
SwCode2
Text Label 2200 4600 2    50   ~ 0
SwCode4
Text Label 2200 4700 2    50   ~ 0
SwCode8
Text Label 2200 4400 2    50   ~ 0
Gate_blue
Text Label 2200 4500 2    50   ~ 0
Gate_white
Text Label 5200 4400 2    50   ~ 0
SwCode1
Text Label 5200 4500 2    50   ~ 0
SwCode2
Text Label 5200 4800 2    50   ~ 0
SwCode4
Text Label 5200 4900 2    50   ~ 0
SwCode8
Text Label 5200 4600 2    50   ~ 0
Gate_blue
Text Label 5200 4700 2    50   ~ 0
Gate_white
Text Label 8300 3800 2    50   ~ 0
Gate_blue
Text Label 8300 4850 2    50   ~ 0
Gate_white
Text Label 3550 4150 1    50   ~ 0
POT_1
Text Label 3450 4150 1    50   ~ 0
POT_2
Text Label 6950 4500 1    50   ~ 0
POT_2
Text Label 7100 4500 1    50   ~ 0
POT_1
Text Label 6850 3600 1    50   ~ 0
DMX_Send
Text Label 7000 3600 1    50   ~ 0
DMX_Receive
Text Label 7150 3600 1    50   ~ 0
DMX_Enable_Receive
Text Label 7300 3600 1    50   ~ 0
DMX_Enable_Send
Text Label 2200 3300 2    50   ~ 0
DMX_Send
Text Label 2200 3400 2    50   ~ 0
DMX_Receive
Text Notes 4000 2700 0    50   ~ 0
Populate the ESP32 if you want plenty of\npower or WiFi capabillities.
Text Notes 650  2700 0    50   ~ 0
Populate the Arduino Nano for simpler\njobs like DMX controlling etc.
Text Notes 650  1200 0    50   ~ 0
Make sure to feed Vin with voltage that\nthe LED strip can handle 5-30VDC.\nTwo connector options for power:\n* Phoenix Contact MSTBA\n* Barrel Jack 2x6.4mm
Text Notes 7650 1350 0    50   ~ 0
LED driver  is made for LED strip that have red, green, blue and white channels that\nhave a common positive rail like +12V.\n\nThe LED driver can drive 4 output channels in constant voltage mode at 5A each.\nThe channel can drive up to 10A current if an optional IRLML6344 is mounted.\nOne color channel on a 5m LED strip consisting of 300 LED's will draw\n6A (20mA x 300px) when fully lit. A full RGB strip 18A, and a RGBW strip 24A.
Text Notes 5050 950  0    50   ~ 0
The 5V buck converter will feed the\nmicro controllers with 5V DC.
Text Notes 7650 6200 0    50   ~ 0
Make sure to feed Vin with the\nright voltage for the LED strip.\nUsually 5V for addressable LED strip.\nPlace cennector close to Vin_fused.
Wire Wire Line
	9700 6000 10550 6000
Wire Wire Line
	6200 7000 6100 7000
Wire Wire Line
	4800 6650 4900 6650
Wire Wire Line
	4800 6750 4900 6750
Wire Wire Line
	4800 7100 4900 7100
Text Label 4800 6750 2    50   ~ 0
DMX_Enable_Send
Text Label 4800 7100 2    50   ~ 0
DMX_Enable_Receive
Text Label 6200 7000 0    50   ~ 0
DMX_Receive
Text Label 4800 6650 2    50   ~ 0
DMX_Send
Wire Notes Line
	3950 7700 6850 7700
$Sheet
S 4900 6500 1200 900 
U 60A21BCB
F0 "DMX512" 50
F1 "DMX512.sch" 50
F2 "DMX_Send" I L 4900 6650 50 
F3 "DMX_Receive" I R 6100 7000 50 
F4 "DMX_Enable_Receive" I L 4900 7100 50 
F5 "DMX_Enable_Send" I L 4900 6750 50 
$EndSheet
Text Notes 3950 5950 0    118  ~ 0
DMX512 Isolated
Wire Notes Line
	6850 6000 3950 6000
Wire Notes Line
	6850 7700 6850 6000
Wire Notes Line
	3950 6000 3950 7700
$Comp
L power:+3.3V #PWR0120
U 1 1 5EF23D23
P 2400 5900
F 0 "#PWR0120" H 2400 5750 50  0001 C CNN
F 1 "+3.3V" H 2415 6073 50  0000 C CNN
F 2 "" H 2400 5900 50  0001 C CNN
F 3 "" H 2400 5900 50  0001 C CNN
	1    2400 5900
	1    0    0    -1  
$EndComp
$Comp
L KnitterSwitchCoded:DRR4010 SW1
U 1 1 6048EE6B
P 2300 6700
F 0 "SW1" H 2650 7250 50  0000 L CNN
F 1 "Knitter-Switch DRR4010" H 2650 7150 50  0000 L CNN
F 2 "Knitter-Switch:DRR4010" V 1850 7400 50  0001 L CNN
F 3 "https://www.knitter-switch.com/var/pms/model-911/DRR%204010.pdf" H 2300 7100 50  0001 C CNN
F 4 "DRR4010" H 2300 6700 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/knitter-switch/drr4010/rotary-switch-pcb-bcd/dp/807620" H 2300 6700 50  0001 C CNN "Seller"
	1    2300 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 3400 6700
Wire Wire Line
	2400 6700 2400 6750
Wire Wire Line
	2200 6700 2200 6800
Wire Wire Line
	2000 6700 2000 6850
Wire Wire Line
	2000 6850 2000 6950
Connection ~ 2000 6850
Wire Wire Line
	2350 6850 2000 6850
Wire Wire Line
	2350 6900 2350 6850
Connection ~ 3400 6700
Wire Wire Line
	3750 6700 3400 6700
Wire Wire Line
	3750 6900 3750 6700
Connection ~ 2900 6750
Wire Wire Line
	3250 6750 2900 6750
Wire Wire Line
	3250 6900 3250 6750
Connection ~ 2450 6800
Wire Wire Line
	2800 6800 2450 6800
Wire Wire Line
	2800 6900 2800 6800
Wire Wire Line
	2400 6750 2900 6750
Wire Wire Line
	2900 6750 2900 6950
$Comp
L Device:R R_sw2
U 1 1 5E4BEFE9
P 2900 7100
F 0 "R_sw2" V 2693 7100 50  0000 C CNN
F 1 "10k" V 2784 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2830 7100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 2900 7100 50  0001 C CNN
F 4 "MC0100W0603110K" V 2900 7100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 2900 7100 50  0001 C CNN "Seller"
	1    2900 7100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 7350 2900 7250
Connection ~ 2900 7350
Wire Wire Line
	3400 7350 3400 7250
Wire Wire Line
	2900 7350 3400 7350
Connection ~ 2450 7350
Wire Wire Line
	2450 7350 2900 7350
Wire Wire Line
	2000 7350 2000 7450
Connection ~ 2000 7350
Wire Wire Line
	2450 7350 2450 7250
Wire Wire Line
	2000 7350 2450 7350
Wire Wire Line
	2000 7250 2000 7350
Wire Wire Line
	2450 6800 2450 6950
Wire Wire Line
	2200 6800 2450 6800
Wire Wire Line
	3400 6700 3400 6950
$Comp
L power:GND #PWR0115
U 1 1 5E49F4A7
P 2000 7450
F 0 "#PWR0115" H 2000 7200 50  0001 C CNN
F 1 "GND" H 2005 7277 50  0000 C CNN
F 2 "" H 2000 7450 50  0001 C CNN
F 3 "" H 2000 7450 50  0001 C CNN
	1    2000 7450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_sw1
U 1 1 5E4BD26C
P 3400 7100
F 0 "R_sw1" V 3193 7100 50  0000 C CNN
F 1 "10k" V 3284 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3330 7100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 3400 7100 50  0001 C CNN
F 4 "MC0100W0603110K" V 3400 7100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 3400 7100 50  0001 C CNN "Seller"
	1    3400 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw4
U 1 1 5E4BF77A
P 2450 7100
F 0 "R_sw4" V 2243 7100 50  0000 C CNN
F 1 "10k" V 2334 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2380 7100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 2450 7100 50  0001 C CNN
F 4 "MC0100W0603110K" V 2450 7100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 2450 7100 50  0001 C CNN "Seller"
	1    2450 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R_sw8
U 1 1 5E4C9983
P 2000 7100
F 0 "R_sw8" V 1793 7100 50  0000 C CNN
F 1 "10k" V 1884 7100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1930 7100 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 2000 7100 50  0001 C CNN
F 4 "MC0100W0603110K" V 2000 7100 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w0603110k/motst-tjockfilm-10k-1-0-063w-0603/dp/2845751" V 2000 7100 50  0001 C CNN "Seller"
	1    2000 7100
	-1   0    0    1   
$EndComp
Text Label 3750 6900 3    50   ~ 0
SwCode1
Text Label 3250 6900 3    50   ~ 0
SwCode2
Text Label 2800 6900 3    50   ~ 0
SwCode4
Text Label 2350 6900 3    50   ~ 0
SwCode8
Text Label 1000 7050 0    50   ~ 0
POT_1
Text Label 1600 7050 0    50   ~ 0
POT_2
Wire Notes Line
	600  7700 3800 7700
Wire Notes Line
	600  5550 3800 5550
Wire Notes Line
	3800 5550 3800 7700
Wire Notes Line
	600  5550 600  7700
Text Notes 600  5500 0    118  ~ 0
User Interface
Connection ~ 1400 7300
Wire Wire Line
	1400 7400 1400 7300
Wire Wire Line
	800  7300 800  7200
Wire Wire Line
	1400 7200 1400 7300
Wire Wire Line
	800  7300 1400 7300
$Comp
L Device:R_POT RV_pot1
U 1 1 5DE0985A
P 800 7050
F 0 "RV_pot1" H 1150 6950 50  0000 R CNN
F 1 "10k" H 1000 6850 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Vertical" H 800 7050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/317977.pdf?_ga=2.253999944.1391520159.1585828864-167263916.1529948031" H 800 7050 50  0001 C CNN
F 4 "https://se.farnell.com/alps/29-0001/potentiometer-10k-20-0-05w/dp/1191735" H 800 7050 50  0001 C CNN "Seller"
F 5 "29 0001" H 800 7050 50  0001 C CNN "Article Number"
	1    800  7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_pot2
U 1 1 5DE0A6EA
P 1400 7050
F 0 "RV_pot2" H 1750 6950 50  0000 R CNN
F 1 "10k" H 1600 6850 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Alps_RK09K_Vertical" H 1400 7050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/317977.pdf?_ga=2.253999944.1391520159.1585828864-167263916.1529948031" H 1400 7050 50  0001 C CNN
F 4 "29 0001" H 1400 7050 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/alps/29-0001/potentiometer-10k-20-0-05w/dp/1191735" H 1400 7050 50  0001 C CNN "Seller"
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DEDA793
P 1400 7400
F 0 "#PWR0104" H 1400 7150 50  0001 C CNN
F 1 "GND" H 1405 7227 50  0000 C CNN
F 2 "" H 1400 7400 50  0001 C CNN
F 3 "" H 1400 7400 50  0001 C CNN
	1    1400 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  6750 800  6800
Wire Wire Line
	800  6800 1400 6800
Wire Wire Line
	1400 6800 1400 6900
Connection ~ 800  6800
Wire Wire Line
	800  6800 800  6900
Wire Wire Line
	950  7050 1000 7050
$Comp
L power:+3.3V #PWR0121
U 1 1 5E93FFB4
P 800 6750
F 0 "#PWR0121" H 800 6600 50  0001 C CNN
F 1 "+3.3V" H 815 6923 50  0000 C CNN
F 2 "" H 800 6750 50  0001 C CNN
F 3 "" H 800 6750 50  0001 C CNN
	1    800  6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 7050 1550 7050
Wire Wire Line
	8700 3500 8700 3800
Wire Wire Line
	9200 3500 9200 3800
Wire Wire Line
	9200 3500 8700 3500
Wire Wire Line
	9500 1450 9950 1450
Wire Wire Line
	9950 1450 9950 1600
Wire Wire Line
	9950 1600 10400 1600
Connection ~ 9500 1450
Text Notes 4000 6250 0    50   ~ 0
A RS-485 transceiver can optionally be mounted for sending and\nreceiveing DMX512.\nSee sheet DMX512 for configuration.
Text Notes 650  5900 0    50   ~ 0
2 potentiometers can be utilized to hue and brightness for example.\nThe pot's give out max 3.3V.\nThere is also a 10 position rotary coded\nswitch that can be used for modes.
Text Notes 7650 6450 0    50   ~ 0
Place ESD diodes on connector pins.
Wire Wire Line
	4000 1550 3850 1550
Wire Wire Line
	4000 1650 3850 1650
Wire Wire Line
	1650 1750 1650 1850
Wire Wire Line
	1650 1750 1850 1750
Connection ~ 1650 1850
Wire Wire Line
	1750 1350 1750 1650
Wire Wire Line
	1450 1650 1750 1650
Connection ~ 1750 1650
Wire Wire Line
	1750 1650 1850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 3450 1650
Wire Wire Line
	3850 1950 3850 2000
Wire Wire Line
	3850 1950 3550 1950
Wire Wire Line
	3550 1950 3550 1750
Connection ~ 3850 1950
Wire Wire Line
	3450 1750 3550 1750
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E8EAED4
P 1800 1350
F 0 "#FLG0101" H 1800 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 1800 1523 50  0001 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "~" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1350 1750 1350
Wire Wire Line
	1650 1850 1650 1950
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E91DEF0
P 1900 1950
F 0 "#FLG0102" H 1900 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 1900 2123 50  0001 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "~" H 1900 1950 50  0001 C CNN
	1    1900 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 1950 1900 1850
Wire Wire Line
	1900 1850 1650 1850
NoConn ~ 1450 1750
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E94B7E7
P 6950 1250
F 0 "#FLG0103" H 6950 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 6950 1423 50  0001 C CNN
F 2 "" H 6950 1250 50  0001 C CNN
F 3 "~" H 6950 1250 50  0001 C CNN
	1    6950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1250 6950 1400
Wire Wire Line
	3850 1650 3850 1550
Connection ~ 3850 1550
Wire Wire Line
	3850 1550 3450 1550
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E975B8B
P 6300 2800
F 0 "#FLG0104" H 6300 2875 50  0001 C CNN
F 1 "PWR_FLAG" H 6300 2973 50  0001 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "~" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2800 6200 2800
Wire Wire Line
	6950 1400 6850 1400
Wire Wire Line
	6850 1400 6850 1250
$Comp
L Mechanical:MountingHole H1
U 1 1 5EB7CEAB
P 6950 5800
F 0 "H1" H 7050 5846 50  0000 L CNN
F 1 "MountingHole" H 7050 5755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6950 5800 50  0001 C CNN
F 3 "~" H 6950 5800 50  0001 C CNN
	1    6950 5800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EB8008A
P 6950 6000
F 0 "H2" H 7050 6046 50  0000 L CNN
F 1 "MountingHole" H 7050 5955 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6950 6000 50  0001 C CNN
F 3 "~" H 6950 6000 50  0001 C CNN
	1    6950 6000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EB80344
P 6950 6200
F 0 "H3" H 7050 6246 50  0000 L CNN
F 1 "MountingHole" H 7050 6155 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6950 6200 50  0001 C CNN
F 3 "~" H 6950 6200 50  0001 C CNN
	1    6950 6200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EB8064C
P 6950 6400
F 0 "H4" H 7050 6446 50  0000 L CNN
F 1 "MountingHole" H 7050 6355 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 6950 6400 50  0001 C CNN
F 3 "~" H 6950 6400 50  0001 C CNN
	1    6950 6400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
