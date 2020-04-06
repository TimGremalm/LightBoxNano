EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "LightBoxNano - Input Protection"
Date ""
Rev ""
Comp "Tim Gremalm"
Comment1 "a generic PCB for controlling LED's both LED strip and WS2812"
Comment2 ""
Comment3 "https://github.com/TimGremalm/LightBoxNano"
Comment4 "http://tim.gremalm.se/"
$EndDescr
$Comp
L Device:CP Cvin?
U 1 1 5EBAC8B0
P 5150 3350
AR Path="/5EBAC8B0" Ref="Cvin?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B0" Ref="Cvin1"  Part="1" 
F 0 "Cvin1" H 5268 3396 50  0000 L CNN
F 1 "100µF 50V 27mΩ" H 5268 3305 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_10x10.5" H 5188 3200 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2756457.pdf?_ga=2.147362935.1391520159.1585828864-167263916.1529948031" H 5150 3350 50  0001 C CNN
F 4 "A767MU107M1HLAE027" H 5150 3350 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/kemet/a767mu107m1hlae027/kond-alu-polymer-100-f-50v-rad/dp/2614195RL" H 5150 3350 50  0001 C CNN "Seller"
	1    5150 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 Jvoltagebreakout?
U 1 1 5EBAC8B8
P 4550 3200
AR Path="/5EBAC8B8" Ref="Jvoltagebreakout?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8B8" Ref="Jvoltagebreakout1"  Part="1" 
F 0 "Jvoltagebreakout1" H 5300 3150 50  0000 R CNN
F 1 "Conn_03 DNP" H 5150 3250 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4550 3200 50  0001 C CNN
F 3 "~" H 4550 3200 50  0001 C CNN
F 4 "" V 4550 3200 50  0001 C CNN "Article Number"
F 5 "" V 4550 3200 50  0001 C CNN "Seller"
	1    4550 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EBAC8BE
P 5150 3550
AR Path="/5EBAC8BE" Ref="#PWR?"  Part="1" 
AR Path="/5EB9FA1E/5EBAC8BE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 3300 50  0001 C CNN
F 1 "GND" H 5155 3377 50  0000 C CNN
F 2 "" H 5150 3550 50  0001 C CNN
F 3 "" H 5150 3550 50  0001 C CNN
	1    5150 3550
	1    0    0    -1  
$EndComp
Text Label 6350 3200 0    50   ~ 0
Vin
Text Label 5300 3100 0    50   ~ 0
Vin_fused
Wire Wire Line
	5300 3100 5150 3100
Connection ~ 5150 3200
Wire Wire Line
	5150 3200 4750 3200
Wire Wire Line
	5150 3500 5150 3550
Wire Wire Line
	5150 3500 4850 3500
Wire Wire Line
	4850 3500 4850 3300
Connection ~ 5150 3500
Wire Wire Line
	4750 3300 4850 3300
Wire Wire Line
	5150 3200 5150 3100
Connection ~ 5150 3100
Wire Wire Line
	5150 3100 4750 3100
Text HLabel 5150 2950 1    50   Input ~ 0
Vin_fused
Wire Wire Line
	5150 2950 5150 3100
Wire Wire Line
	5150 3200 6150 3200
Wire Wire Line
	6150 2950 6150 3200
Connection ~ 6150 3200
Wire Wire Line
	6150 3200 6350 3200
Text HLabel 6150 2950 1    50   Input ~ 0
Vin
$EndSCHEMATC
