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
Text Notes 5750 1650 0    50   ~ 0
A much cheaper option then the high side switch, but one time use only.\nPopulate with a  appropriate 1206 fast blow fuse.\nExample: Fuse Fast Blow 10A 1206 MCCFB1206TFF/10
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
Text Notes 5750 3900 0    50   ~ 0
The Infineon BTS50055-1TMC is a highside high current power switch with buildt in reverse\npolarity and temperature protection.\nIt's also used to measure current consumption; Current_Feedback as analog output.\nTo enable the high power switch Enable_Vin_fused must be driven low.\nBoth Current_Feedback and Enable_Vin_fused goes to the MCU so it can act on over current\nand act as a breaker.
Text Notes 5700 3300 0    118  ~ 0
Highside Power Switch (Option 2)
Wire Notes Line
	5700 6200 5700 3350
Wire Notes Line
	9600 6200 5700 6200
Wire Notes Line
	9600 3350 9600 6200
Wire Notes Line
	5700 3350 9600 3350
Wire Wire Line
	7300 4600 7500 4600
Wire Wire Line
	7500 4800 7300 4800
$Comp
L Device:R Rblue?
U 1 1 5E8FBBFB
P 7300 5600
AR Path="/5E8FBBFB" Ref="Rblue?"  Part="1" 
AR Path="/5EB9FA1E/5E8FBBFB" Ref="Rfeedback1"  Part="1" 
F 0 "Rfeedback1" H 7000 5650 50  0000 C CNN
F 1 "1k" H 7150 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7230 5600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 7300 5600 50  0001 C CNN
F 4 "MC0100W060311K" V 7300 5600 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w060311k/motst-tjockfilm-1k-1-0-063w-0603/dp/2845750" V 7300 5600 50  0001 C CNN "Seller"
	1    7300 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8F7D36
P 7300 5850
AR Path="/5E8F7D36" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5E8F7D36" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 7300 5600 50  0001 C CNN
F 1 "GND" H 7305 5677 50  0000 C CNN
F 2 "" H 7300 5850 50  0001 C CNN
F 3 "" H 7300 5850 50  0001 C CNN
	1    7300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4250 7800 4400
Wire Wire Line
	8400 4700 8100 4700
$Comp
L Power_Management:BTS50055-1TMC Qhigh1
U 1 1 5E8E4AD3
P 7800 4700
F 0 "Qhigh1" H 7800 4425 50  0000 C CNN
F 1 "BTS50055-1TMC" H 7800 4334 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-7_TabPin4" H 8600 4450 50  0001 C CNN
F 3 "https://www.infineon.com/dgdl/Infineon-BTS50055-1TMC-DS-v01_00-EN.pdf?fileId=5546d4625a888733015aa9b0007235e9" H 7800 4300 50  0001 C CNN
F 4 "BTS500551TMCATMA1" H 7800 4700 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/infineon/bts500551tmcatma1/effektbelastning-h-s-34v-to-220/dp/2480566" H 7800 4700 50  0001 C CNN "Seller"
	1    7800 4700
	1    0    0    -1  
$EndComp
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
P 3250 1850
AR Path="/5EBAC8B0" Ref="Cvin?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B0" Ref="Cvin1"  Part="1" 
F 0 "Cvin1" H 2900 1900 50  0000 L CNN
F 1 "100µF 50V 27mΩ" H 2450 1800 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10.5" H 3288 1700 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2756457.pdf?_ga=2.147362935.1391520159.1585828864-167263916.1529948031" H 3250 1850 50  0001 C CNN
F 4 "A767MU107M1HLAE027" H 3250 1850 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/kemet/a767mu107m1hlae027/kond-alu-polymer-100-f-50v-rad/dp/2614195RL" H 3250 1850 50  0001 C CNN "Seller"
	1    3250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1550 3250 1550
Text Notes 1550 1300 0    118  ~ 0
Decoupling and Breakout Pin Header
Wire Notes Line
	1550 3950 1550 1350
Wire Notes Line
	5050 3950 1550 3950
Wire Notes Line
	5050 1350 5050 3950
Wire Notes Line
	1550 1350 5050 1350
Wire Wire Line
	3350 2800 3450 2800
Wire Wire Line
	3350 2700 3450 2700
Wire Wire Line
	3350 2600 3450 2600
Text HLabel 3150 1550 0    50   Input ~ 0
Vin
Text HLabel 7800 2350 2    50   Input ~ 0
Vin_fused
Wire Wire Line
	3450 2800 3450 2900
$Comp
L power:GND #PWR?
U 1 1 5EBAC8BE
P 3450 2900
AR Path="/5EBAC8BE" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8BE" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3450 2650 50  0001 C CNN
F 1 "GND" H 3455 2727 50  0000 C CNN
F 2 "" H 3450 2900 50  0001 C CNN
F 3 "" H 3450 2900 50  0001 C CNN
	1    3450 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 Jvoltagebreakout?
U 1 1 5EBAC8B8
P 3150 2700
AR Path="/5EBAC8B8" Ref="Jvoltagebreakout?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B8" Ref="Jvoltagebreakout1"  Part="1" 
F 0 "Jvoltagebreakout1" H 3900 2650 50  0000 R CNN
F 1 "Conn_03 DNP" H 3750 2750 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3150 2700 50  0001 C CNN
F 3 "~" H 3150 2700 50  0001 C CNN
F 4 "" V 3150 2700 50  0001 C CNN "Article Number"
F 5 "" V 3150 2700 50  0001 C CNN "Seller"
	1    3150 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 5300 7300 4800
Wire Wire Line
	7300 5300 8400 5300
Wire Wire Line
	6400 4250 7800 4250
$Comp
L power:GND #PWR?
U 1 1 5EAF0E74
P 3250 2050
AR Path="/5EAF0E74" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5EAF0E74" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 3250 1800 50  0001 C CNN
F 1 "GND" H 3255 1877 50  0000 C CNN
F 2 "" H 3250 2050 50  0001 C CNN
F 3 "" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1550 3250 1700
Wire Wire Line
	3250 2000 3250 2050
Text HLabel 7300 4600 0    50   Input ~ 0
Enable_Vin_fused
Text HLabel 8400 5300 2    50   Input ~ 0
Current_Feedback
Text HLabel 8400 4700 2    50   Input ~ 0
Vin_fused
Text HLabel 6400 4250 0    50   Input ~ 0
Vin
Text HLabel 3450 2600 2    50   Input ~ 0
Vin_fused
Text HLabel 3450 2700 2    50   Input ~ 0
Vin
Text HLabel 7050 2350 0    50   Input ~ 0
Vin
$Comp
L Connector_Generic:Conn_01x02 Jvoltagebreakout?
U 1 1 5EBEADFB
P 3150 3550
AR Path="/5EBEADFB" Ref="Jvoltagebreakout?"  Part="1" 
AR Path="/5EB9FA1E/5EBEADFB" Ref="Jpowerswitchbreakout1"  Part="1" 
F 0 "Jpowerswitchbreakout1" H 4100 3450 50  0000 R CNN
F 1 "Conn_02 DNP" H 3750 3550 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3150 3550 50  0001 C CNN
F 3 "~" H 3150 3550 50  0001 C CNN
F 4 "" V 3150 3550 50  0001 C CNN "Article Number"
F 5 "" V 3150 3550 50  0001 C CNN "Seller"
	1    3150 3550
	-1   0    0    1   
$EndComp
Text HLabel 3450 3450 2    50   Input ~ 0
Enable_Vin_fused
Text HLabel 3450 3550 2    50   Input ~ 0
Current_Feedback
Wire Wire Line
	3350 3450 3450 3450
Wire Wire Line
	3350 3550 3450 3550
Wire Wire Line
	7300 5300 7300 5450
Connection ~ 7300 5300
Wire Wire Line
	7300 5850 7300 5750
$EndSCHEMATC
