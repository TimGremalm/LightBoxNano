EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "LightBoxNano - Input Protection"
Date ""
Rev ""
Comp "Tim Gremalm"
Comment1 "a generic PCB for controlling LED's both LED strip and WS2812"
Comment2 ""
Comment3 "https://github.com/TimGremalm/LightBoxNano"
Comment4 "http://tim.gremalm.se/"
$EndDescr
Text Label 6300 4400 2    50   ~ 0
Vin
Text Label 8950 4850 0    50   ~ 0
Vin_fused
Text Notes 5750 1650 0    50   ~ 0
A much cheaper option then the high side switch, but one time use only.\nPopulate with a  apropiate 1206 fast blow fuse.\nExample: Fuse Fast Blow 10A 1206 MCCFB1206TFF/10
Text Notes 5700 1300 0    118  ~ 0
Classic Fuse (Option 1)
Wire Notes Line
	5700 2900 5700 1350
Wire Notes Line
	9600 2900 5700 2900
Wire Notes Line
	9600 1350 9600 2900
Wire Notes Line
	5700 1350 9600 1350
Text Notes 5750 3550 0    50   ~ 0
The Infineon BTS50055-1TMC is a highside high current power switch with buildt in reverse\npolarity, temperature protection and current protection.
Text Notes 5700 3300 0    118  ~ 0
Highside Power Switch (Option 2)
Wire Notes Line
	5700 5750 5700 3350
Wire Notes Line
	9600 5750 5700 5750
Wire Notes Line
	9600 3350 9600 5750
Wire Notes Line
	5700 3350 9600 3350
Wire Wire Line
	7150 5350 6850 5350
Connection ~ 7150 5350
Wire Wire Line
	7150 4750 7800 4750
Wire Wire Line
	7150 5350 7150 4750
Wire Wire Line
	6850 5350 6850 4950
Connection ~ 6850 5350
Wire Wire Line
	7550 5350 7150 5350
Wire Wire Line
	7550 5300 7550 5350
Wire Wire Line
	7550 4950 7550 5000
Wire Wire Line
	7800 4950 7550 4950
$Comp
L Device:R Rblue?
U 1 1 5E8FBBFB
P 7550 5150
AR Path="/5E8FBBFB" Ref="Rblue?"  Part="1" 
AR Path="/5EB9FA1E/5E8FBBFB" Ref="Rfuse1"  Part="1" 
F 0 "Rfuse1" H 7350 5200 50  0000 C CNN
F 1 "1k" H 7450 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7480 5150 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 7550 5150 50  0001 C CNN
F 4 "MC0100W060311K" V 7550 5150 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 7550 5150 50  0001 C CNN "Seller"
	1    7550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5450 6850 5350
$Comp
L power:GND #PWR?
U 1 1 5E8F7D36
P 6850 5450
AR Path="/5E8F7D36" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5E8F7D36" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 6850 5200 50  0001 C CNN
F 1 "GND" H 6855 5277 50  0000 C CNN
F 2 "" H 6850 5450 50  0001 C CNN
F 3 "" H 6850 5450 50  0001 C CNN
	1    6850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4400 8100 4400
Connection ~ 6850 4400
Wire Wire Line
	6850 4650 6850 4400
Wire Wire Line
	8100 4400 8100 4550
Wire Wire Line
	6300 4400 6850 4400
Wire Wire Line
	8950 4850 8400 4850
$Comp
L Power_Management:BTS50055-1TMC Qhigh1
U 1 1 5E8E4AD3
P 8100 4850
F 0 "Qhigh1" H 8100 4575 50  0000 C CNN
F 1 "BTS50055-1TMC" H 8100 4484 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-7_TabPin4" H 8900 4600 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/Infineon-BTS50055-1TMC-DS-v01_00-EN.pdf?fileId=5546d4625a888733015aa9b0007235e9" H 8100 4450 50  0001 C CNN
F 4 "BTS500551TMCATMA1" H 8100 4850 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/infineon/bts500551tmcatma1/effektbelastning-h-s-34v-to-220/dp/2480566" H 8100 4850 50  0001 C CNN "Seller"
	1    8100 4850
	1    0    0    -1  
$EndComp
Text Label 7050 2350 2    50   ~ 0
Vin
Text Label 7800 2350 0    50   ~ 0
Vin_fused
Wire Wire Line
	7600 2350 7800 2350
Wire Wire Line
	7050 2350 7300 2350
$Comp
L Device:Fuse F1
U 1 1 5EC0532A
P 7450 2350
F 0 "F1" V 7253 2350 50  0000 C CNN
F 1 "Fuse DNP" V 7344 2350 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_HandSoldering" V 7380 2350 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864161.pdf?_ga=2.245989188.1391520159.1585828864-167263916.1529948031" H 7450 2350 50  0001 C CNN
F 4 "MCCFB1206TFF/10" V 7450 2350 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mccfb1206tff-10/s-kring-ytmont-10a-snabb-1206/dp/2850011" V 7450 2350 50  0001 C CNN "Seller"
	1    7450 2350
	0    1    1    0   
$EndComp
$Comp
L Device:CP Cvin?
U 1 1 5EBAC8B0
P 6850 4800
AR Path="/5EBAC8B0" Ref="Cvin?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B0" Ref="Cvin1"  Part="1" 
F 0 "Cvin1" H 6500 4850 50  0000 L CNN
F 1 "100µF 50V 27mΩ" H 6050 4750 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10.5" H 6888 4650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2756457.pdf?_ga=2.147362935.1391520159.1585828864-167263916.1529948031" H 6850 4800 50  0001 C CNN
F 4 "A767MU107M1HLAE027" H 6850 4800 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/kemet/a767mu107m1hlae027/kond-alu-polymer-100-f-50v-rad/dp/2614195RL" H 6850 4800 50  0001 C CNN "Seller"
	1    6850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2850 3200 2850
Wire Wire Line
	2900 2650 3200 2650
Text Label 3200 2650 0    50   ~ 0
Vin
Text Label 2900 2850 2    50   ~ 0
Vin_fused
Text Notes 1750 1300 0    118  ~ 0
Connectors
Wire Notes Line
	1750 3200 1750 1350
Wire Notes Line
	4500 3200 1750 3200
Wire Notes Line
	4500 1350 4500 3200
Wire Notes Line
	1750 1350 4500 1350
Wire Wire Line
	3250 2100 3350 2100
Wire Wire Line
	3250 2000 3350 2000
Wire Wire Line
	3250 1900 3350 1900
Text HLabel 2900 2650 0    50   Input ~ 0
Vin
Text HLabel 3200 2850 2    50   Input ~ 0
Vin_fused
Wire Wire Line
	3350 2100 3350 2200
Text Label 3350 1900 0    50   ~ 0
Vin_fused
Text Label 3350 2000 0    50   ~ 0
Vin
$Comp
L power:GND #PWR?
U 1 1 5EBAC8BE
P 3350 2200
AR Path="/5EBAC8BE" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8BE" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3350 1950 50  0001 C CNN
F 1 "GND" H 3355 2027 50  0000 C CNN
F 2 "" H 3350 2200 50  0001 C CNN
F 3 "" H 3350 2200 50  0001 C CNN
	1    3350 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 Jvoltagebreakout?
U 1 1 5EBAC8B8
P 3050 2000
AR Path="/5EBAC8B8" Ref="Jvoltagebreakout?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B8" Ref="Jvoltagebreakout1"  Part="1" 
F 0 "Jvoltagebreakout1" H 3800 1950 50  0000 R CNN
F 1 "Conn_03 DNP" H 3650 2050 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3050 2000 50  0001 C CNN
F 3 "~" H 3050 2000 50  0001 C CNN
F 4 "" V 3050 2000 50  0001 C CNN "Article Number"
F 5 "" V 3050 2000 50  0001 C CNN "Seller"
	1    3050 2000
	-1   0    0    1   
$EndComp
$EndSCHEMATC
