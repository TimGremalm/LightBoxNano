EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "LightBoxNano - DMX512"
Date ""
Rev ""
Comp "Tim Gremalm"
Comment1 "a generic PCB for controlling LED's both LED strip and WS2812 "
Comment2 ""
Comment3 "https://github.com/TimGremalm/LightBoxNano"
Comment4 "http://tim.gremalm.se/"
$EndDescr
Text Notes 7150 4650 2    50   ~ 0
* DMX Terminator resistor is 1206 for isolation.
Wire Wire Line
	8900 1600 8950 1600
$Comp
L XLR:XLR_3pin_Female_Ground XLR_Female?
U 1 1 60A6459E
P 9250 1600
AR Path="/60A6459E" Ref="XLR_Female?"  Part="1" 
AR Path="/60A21BCB/60A6459E" Ref="XLR_Female1"  Part="1" 
F 0 "XLR_Female1" H 9250 1873 50  0000 C CNN
F 1 "XLR_3pin_Female_Ground" H 9250 1950 50  0001 C CNN
F 2 "XLR_Neutrik:XLR_3pole-female_Horizontal_PCB_mount_NC3FAAH2" H 9250 1600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2119816.pdf" H 9250 1600 50  0001 C CNN
F 4 "NC3FAAH2" H 9250 1600 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/neutrik/nc3faah2/socket-xlr-pcb-horizontal-3pole/dp/1310023" H 9250 1600 50  0001 C CNN "Seller"
	1    9250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4350 6050 4350
Connection ~ 6500 4350
Wire Wire Line
	1750 6150 1750 6300
Wire Wire Line
	1750 7300 1750 7150
$Comp
L power:GND #PWR?
U 1 1 60A645C4
P 1750 7300
AR Path="/60A645C4" Ref="#PWR?"  Part="1" 
AR Path="/60A21BCB/60A645C4" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1750 7050 50  0001 C CNN
F 1 "GND" H 1750 7150 50  0000 C CNN
F 2 "" H 1750 7300 50  0001 C CNN
F 3 "" H 1750 7300 50  0001 C CNN
	1    1750 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60A645CB
P 1750 6150
AR Path="/60A645CB" Ref="#PWR?"  Part="1" 
AR Path="/60A21BCB/60A645CB" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1750 6000 50  0001 C CNN
F 1 "+3.3V" H 1765 6323 50  0000 C CNN
F 2 "" H 1750 6150 50  0001 C CNN
F 3 "" H 1750 6150 50  0001 C CNN
	1    1750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3850 4650 3850
Wire Wire Line
	4550 3650 4650 3650
Wire Wire Line
	4550 3450 4650 3450
Wire Wire Line
	3300 2700 3300 3050
Wire Wire Line
	3300 3050 3300 4050
Connection ~ 3300 3050
$Comp
L Jumper:SolderJumper_2_Open Receiver_Disable?
U 1 1 60A645E8
P 1750 6550
AR Path="/60A645E8" Ref="Receiver_Disable?"  Part="1" 
AR Path="/60A21BCB/60A645E8" Ref="Receiver_Disable1"  Part="1" 
F 0 "Receiver_Disable1" V 1750 6150 50  0000 C CNN
F 1 "ReveiverEnable" H 2200 6650 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 1750 6550 50  0001 C CNN
F 3 "~" H 1750 6550 50  0001 C CNN
	1    1750 6550
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open Receiver_Enable?
U 1 1 60A645EE
P 1750 6950
AR Path="/60A645EE" Ref="Receiver_Enable?"  Part="1" 
AR Path="/60A21BCB/60A645EE" Ref="Receiver_Enable1"  Part="1" 
F 0 "Receiver_Enable1" V 1750 7350 50  0000 C CNN
F 1 "ReceiverEnable" H 2200 7050 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 1750 6950 50  0001 C CNN
F 3 "~" H 1750 6950 50  0001 C CNN
	1    1750 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 4050 4650 4050
$Comp
L Jumper:SolderJumper_2_Open Driver_Disable?
U 1 1 60A645F5
P 2800 6950
AR Path="/60A645F5" Ref="Driver_Disable?"  Part="1" 
AR Path="/60A21BCB/60A645F5" Ref="Driver_Disable1"  Part="1" 
F 0 "Driver_Disable1" V 2800 6600 50  0000 C CNN
F 1 "DriverEnable" H 3250 7050 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 2800 6950 50  0001 C CNN
F 3 "~" H 2800 6950 50  0001 C CNN
	1    2800 6950
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open Driver_Enable?
U 1 1 60A645FB
P 2800 6550
AR Path="/60A645FB" Ref="Driver_Enable?"  Part="1" 
AR Path="/60A21BCB/60A645FB" Ref="Driver_Enable1"  Part="1" 
F 0 "Driver_Enable1" V 2800 6900 50  0000 C CNN
F 1 "DriverEnable" H 3250 6650 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 2800 6550 50  0001 C CNN
F 3 "~" H 2800 6550 50  0001 C CNN
	1    2800 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3250 4650 3250
$Comp
L Jumper:SolderJumper_2_Open LinkDriverOutput?
U 1 1 60A6460C
P 9650 4750
AR Path="/60A6460C" Ref="LinkDriverOutput?"  Part="1" 
AR Path="/60A21BCB/60A6460C" Ref="Link_DriverOutputB1"  Part="1" 
F 0 "Link_DriverOutputB1" H 9650 4650 50  0000 C CNN
F 1 "LinkDriverOutput" H 10100 4850 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 9650 4750 50  0001 C CNN
F 3 "~" H 9650 4750 50  0001 C CNN
	1    9650 4750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open LinkDriverOutput?
U 1 1 60A64612
P 9650 4450
AR Path="/60A64612" Ref="LinkDriverOutput?"  Part="1" 
AR Path="/60A21BCB/60A64612" Ref="Link_DriverOutputA1"  Part="1" 
F 0 "Link_DriverOutputA1" H 9650 4350 50  0000 C CNN
F 1 "LinkDriverOutput" H 9650 4564 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 9650 4450 50  0001 C CNN
F 3 "~" H 9650 4450 50  0001 C CNN
	1    9650 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R_termination?
U 1 1 60A6461A
P 9650 3250
AR Path="/60A6461A" Ref="R_termination?"  Part="1" 
AR Path="/60A21BCB/60A6461A" Ref="R_termination1"  Part="1" 
F 0 "R_termination1" H 9300 3300 50  0000 C CNN
F 1 "120R DNP" H 9400 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9580 3250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2563624.pdf" H 9650 3250 50  0001 C CNN
F 4 "MCWR12X1200FTL" V 9650 3250 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mcwr12x1200ftl/res-120r-1-0-25w-thick-film/dp/2447462" V 9650 3250 50  0001 C CNN "Seller"
	1    9650 3250
	-1   0    0    1   
$EndComp
Text Notes 5300 2400 0    50   ~ 0
* Place capacitors as close to ADM2687E for noise suppression.\n* Avoid sharp corners around the isolation barrier and\nground plane.\nSee Analogs application notes for further tips:\nhttps://www.analog.com/media/en/technical-documentation/\napplication-notes/AN-0971.pdf
Connection ~ 6050 4050
Wire Wire Line
	5850 4050 6050 4050
Connection ~ 3800 4350
Connection ~ 4250 4050
Connection ~ 4250 3050
Wire Wire Line
	4650 3050 4250 3050
Connection ~ 6500 3050
Connection ~ 6500 4050
Wire Wire Line
	7250 3050 6500 3050
Wire Wire Line
	7250 4050 7250 3050
Wire Wire Line
	6500 4050 7250 4050
Wire Wire Line
	6050 4050 6500 4050
$Comp
L Device:C C?
U 1 1 60A6463B
P 6500 4200
AR Path="/60A6463B" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A6463B" Ref="C9"  Part="1" 
F 0 "C9" H 6600 4250 50  0000 L CNN
F 1 "10µF" H 6600 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6538 4050 50  0001 C CNN
F 3 "~" H 6500 4200 50  0001 C CNN
F 4 "" H 6500 4200 50  0001 C CNN "Article Number"
F 5 "" H 6500 4200 50  0001 C CNN "Seller"
	1    6500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A64643
P 6500 2900
AR Path="/60A64643" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A64643" Ref="C8"  Part="1" 
F 0 "C8" H 6600 2950 50  0000 L CNN
F 1 "100nF" H 6600 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6538 2750 50  0001 C CNN
F 3 "~" H 6500 2900 50  0001 C CNN
F 4 "" H 6500 2900 50  0001 C CNN "Article Number"
F 5 "" H 6500 2900 50  0001 C CNN "Seller"
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A6464B
P 6050 4200
AR Path="/60A6464B" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A6464B" Ref="C7"  Part="1" 
F 0 "C7" H 6150 4250 50  0000 L CNN
F 1 "100nF" H 6150 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6088 4050 50  0001 C CNN
F 3 "~" H 6050 4200 50  0001 C CNN
F 4 "" H 6050 4200 50  0001 C CNN "Article Number"
F 5 "" H 6050 4200 50  0001 C CNN "Seller"
	1    6050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2750 6500 2750
Wire Wire Line
	6050 3050 6500 3050
$Comp
L Device:C C?
U 1 1 60A64657
P 6050 2900
AR Path="/60A64657" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A64657" Ref="C6"  Part="1" 
F 0 "C6" H 6150 2950 50  0000 L CNN
F 1 "10nF" H 6150 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 6088 2750 50  0001 C CNN
F 3 "~" H 6050 2900 50  0001 C CNN
F 4 "" H 6050 2900 50  0001 C CNN "Article Number"
F 5 "" H 6050 2900 50  0001 C CNN "Seller"
	1    6050 2900
	1    0    0    -1  
$EndComp
Wire Notes Line width 12
	5250 600  5250 7600
Connection ~ 3800 2750
Wire Wire Line
	3500 2750 3800 2750
Wire Wire Line
	3500 2800 3500 2750
Connection ~ 3800 4050
Wire Wire Line
	3300 4050 3800 4050
Wire Wire Line
	3300 4350 3800 4350
Text Notes 5350 700  0    59   ~ 0
DMX Side
Wire Wire Line
	3800 4050 4250 4050
Wire Wire Line
	3800 4350 4250 4350
$Comp
L Device:C C?
U 1 1 60A6466B
P 4250 4200
AR Path="/60A6466B" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A6466B" Ref="C5"  Part="1" 
F 0 "C5" H 4350 4250 50  0000 L CNN
F 1 "100nF" H 4350 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4288 4050 50  0001 C CNN
F 3 "~" H 4250 4200 50  0001 C CNN
F 4 "" H 4250 4200 50  0001 C CNN "Article Number"
F 5 "" H 4250 4200 50  0001 C CNN "Seller"
	1    4250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A64673
P 3800 4200
AR Path="/60A64673" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A64673" Ref="C3"  Part="1" 
F 0 "C3" H 3900 4250 50  0000 L CNN
F 1 "10µF" H 3900 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3838 4050 50  0001 C CNN
F 3 "~" H 3800 4200 50  0001 C CNN
F 4 "" H 3800 4200 50  0001 C CNN "Article Number"
F 5 "" H 3800 4200 50  0001 C CNN "Seller"
	1    3800 4200
	1    0    0    -1  
$EndComp
Connection ~ 3800 3050
Wire Wire Line
	3800 3050 4250 3050
Wire Wire Line
	3800 2750 4250 2750
$Comp
L Device:C C?
U 1 1 60A6467E
P 4250 2900
AR Path="/60A6467E" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A6467E" Ref="C4"  Part="1" 
F 0 "C4" H 4350 2950 50  0000 L CNN
F 1 "10nF" H 4350 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 4288 2750 50  0001 C CNN
F 3 "~" H 4250 2900 50  0001 C CNN
F 4 "" H 4250 2900 50  0001 C CNN "Article Number"
F 5 "" H 4250 2900 50  0001 C CNN "Seller"
	1    4250 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A64686
P 3800 2900
AR Path="/60A64686" Ref="C?"  Part="1" 
AR Path="/60A21BCB/60A64686" Ref="C2"  Part="1" 
F 0 "C2" H 3900 2950 50  0000 L CNN
F 1 "100nF" H 3900 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 3838 2750 50  0001 C CNN
F 3 "~" H 3800 2900 50  0001 C CNN
F 4 "" H 3800 2900 50  0001 C CNN "Article Number"
F 5 "" H 3800 2900 50  0001 C CNN "Seller"
	1    3800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3050 3800 3050
Text Notes 5150 700  2    59   ~ 0
Micro controller side
$Comp
L power:+3.3V #PWR?
U 1 1 60A6468E
P 3300 2700
AR Path="/60A6468E" Ref="#PWR?"  Part="1" 
AR Path="/60A21BCB/60A6468E" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 3300 2550 50  0001 C CNN
F 1 "+3.3V" H 3315 2873 50  0000 C CNN
F 2 "" H 3300 2700 50  0001 C CNN
F 3 "" H 3300 2700 50  0001 C CNN
	1    3300 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A64694
P 3500 2800
AR Path="/60A64694" Ref="#PWR?"  Part="1" 
AR Path="/60A21BCB/60A64694" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 3500 2550 50  0001 C CNN
F 1 "GND" H 3500 2650 50  0000 C CNN
F 2 "" H 3500 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A6469A
P 3300 4500
AR Path="/60A6469A" Ref="#PWR?"  Part="1" 
AR Path="/60A21BCB/60A6469A" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 3300 4250 50  0001 C CNN
F 1 "GND" H 3300 4350 50  0000 C CNN
F 2 "" H 3300 4500 50  0001 C CNN
F 3 "" H 3300 4500 50  0001 C CNN
	1    3300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4500 3300 4350
Text Label 8750 2050 2    50   ~ 0
DMX+
Wire Wire Line
	10450 2050 9250 2050
Wire Wire Line
	9250 2050 9250 1900
Wire Wire Line
	10800 1150 8900 1150
Wire Wire Line
	8900 1150 8900 1600
Text Label 8750 1600 2    50   ~ 0
DMX-
Wire Wire Line
	8750 1600 8900 1600
Connection ~ 8900 1600
Wire Wire Line
	8750 2050 9250 2050
Connection ~ 9250 2050
Text Label 9800 1750 2    50   ~ 0
DMXgnd
Connection ~ 9850 1600
Wire Wire Line
	9550 1600 9850 1600
Wire Wire Line
	9800 1750 9850 1750
Wire Wire Line
	9850 1600 9850 1750
Text Label 10350 3100 0    50   ~ 0
DMX+
Text Label 10350 3400 0    50   ~ 0
DMX-
Text Label 10350 5850 0    50   ~ 0
DMXgnd
Wire Wire Line
	1750 7150 2800 7150
Wire Wire Line
	1750 6300 2800 6300
Connection ~ 1750 6300
Wire Wire Line
	1750 6300 1750 6400
Wire Wire Line
	1750 6750 1750 6700
Wire Wire Line
	1750 7100 1750 7150
Connection ~ 1750 7150
Wire Wire Line
	1750 6800 1750 6750
Connection ~ 1750 6750
Wire Wire Line
	2800 7100 2800 7150
Wire Wire Line
	2800 6800 2800 6750
Wire Wire Line
	2800 6750 2800 6700
Connection ~ 2800 6750
Wire Wire Line
	2800 6400 2800 6300
Text Label 4550 3650 2    50   ~ 0
DMX_DE
Text Label 4550 3450 2    50   ~ 0
DMX_RE
Text Label 4550 3250 2    50   ~ 0
DMX_Receive
Text Label 4550 3850 2    50   ~ 0
DMX_Send
Wire Wire Line
	4250 2750 4650 2750
Wire Wire Line
	4650 2750 4650 2850
Connection ~ 4250 2750
Wire Wire Line
	4250 4350 4650 4350
Wire Wire Line
	4650 4350 4650 4250
Connection ~ 4250 4350
$Comp
L Analog-Devices-ADM2687E:Analog-Devices-ADM2687E_RS485 U_DMX?
U 1 1 60A646A2
P 5250 3550
AR Path="/60A646A2" Ref="U_DMX?"  Part="1" 
AR Path="/60A21BCB/60A646A2" Ref="U_DMX1"  Part="1" 
F 0 "U_DMX1" H 5050 2650 50  0000 C CNN
F 1 "Analog-Devices-ADM2687E_RS485" V 5200 3600 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x12.8mm_Pitch1.27mm" H 5250 3550 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1941753.pdf" H 5250 3550 50  0001 C CNN
F 4 "ADM2687EBRIZ" H 5250 3550 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/analog-devices/adm2687ebriz/transceiver-iso-rs485-16soic/dp/2008784" H 5250 3550 50  0001 C CNN "Seller"
	1    5250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 2850 5850 2750
Wire Wire Line
	5850 2750 6050 2750
Connection ~ 6050 2750
Wire Wire Line
	5850 4250 5850 4350
Wire Wire Line
	5850 4350 6050 4350
Connection ~ 6050 4350
Wire Wire Line
	5850 3050 6050 3050
Connection ~ 6050 3050
Text Label 1900 6750 0    50   ~ 0
DMX_RE
Text Label 2950 6750 0    50   ~ 0
DMX_DE
Wire Wire Line
	2950 6750 2800 6750
Wire Wire Line
	1900 6750 1750 6750
$Comp
L Connector_Generic:Conn_01x04 J_DMX?
U 1 1 60A645BB
P 2050 3100
AR Path="/60A645BB" Ref="J_DMX?"  Part="1" 
AR Path="/60A21BCB/60A645BB" Ref="J_DMX_Breakout1"  Part="1" 
F 0 "J_DMX_Breakout1" H 1968 2675 50  0000 C CNN
F 1 "Conn_04" H 1968 2766 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2050 3100 50  0001 C CNN
F 3 "~" H 2050 3100 50  0001 C CNN
	1    2050 3100
	1    0    0    -1  
$EndComp
Text Label 1700 3000 2    50   ~ 0
DMX_Receive
Text Label 1700 3100 2    50   ~ 0
DMX_RE
Text Label 1700 3200 2    50   ~ 0
DMX_DE
Text Label 1700 3300 2    50   ~ 0
DMX_Send
Wire Wire Line
	1700 3000 1850 3000
Wire Wire Line
	1700 3100 1850 3100
Wire Wire Line
	1700 3200 1850 3200
Wire Wire Line
	1700 3300 1850 3300
Text Label 9000 4450 2    50   ~ 0
DMXTransmitterZ
Text Label 9000 4750 2    50   ~ 0
DMXTransmitterY
Text Label 6050 3650 0    50   ~ 0
DMXTransmitterZ
Text Label 6050 3850 0    50   ~ 0
DMXTransmitterY
Wire Wire Line
	9000 4450 9500 4450
Wire Wire Line
	9000 4750 9500 4750
Wire Wire Line
	5850 3650 6050 3650
Wire Wire Line
	5850 3850 6050 3850
Text Label 7050 4350 0    50   ~ 0
GND2
Text Label 7050 2750 0    50   ~ 0
GND2
Wire Wire Line
	7050 2750 6500 2750
Connection ~ 6500 2750
Wire Wire Line
	6500 4350 7050 4350
Text Label 6050 3250 0    50   ~ 0
DMXReceiverA
Text Label 6050 3450 0    50   ~ 0
DMXReceiverB
Wire Wire Line
	5850 3450 6050 3450
Wire Wire Line
	5850 3250 6050 3250
Text Label 9000 3100 2    50   ~ 0
DMXReceiverA
Text Label 9000 3400 2    50   ~ 0
DMXReceiverB
Wire Wire Line
	9000 3100 9650 3100
Wire Wire Line
	10350 3400 9650 3400
Connection ~ 9650 3400
Wire Wire Line
	9650 3400 9000 3400
Connection ~ 9650 3100
Wire Wire Line
	9650 3100 10350 3100
Text Label 9000 5850 2    50   ~ 0
GND2
$Comp
L Jumper:SolderJumper_2_Open LinkDriverOutput?
U 1 1 60FEA1F2
P 9650 5850
AR Path="/60FEA1F2" Ref="LinkDriverOutput?"  Part="1" 
AR Path="/60A21BCB/60FEA1F2" Ref="Link_TransceiverGnd_To_DMXgnd1"  Part="1" 
F 0 "Link_TransceiverGnd_To_DMXgnd1" H 9650 5750 50  0000 C CNN
F 1 "LinkDriverOutput" H 9650 5964 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 9650 5850 50  0001 C CNN
F 3 "~" H 9650 5850 50  0001 C CNN
	1    9650 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5850 9500 5850
Wire Wire Line
	9800 5850 10350 5850
Text Label 10350 6150 0    50   ~ 0
DMXchassignd
Text Label 9000 6150 2    50   ~ 0
DMXgnd
Text Label 8750 1900 2    50   ~ 0
DMXchassignd
Text Label 10000 1900 2    50   ~ 0
DMXchassignd
Wire Wire Line
	8750 1900 9150 1900
$Comp
L Jumper:SolderJumper_2_Open LinkTransieverToDMXGround?
U 1 1 61015394
P 9650 6150
AR Path="/61015394" Ref="LinkTransieverToDMXGround?"  Part="1" 
AR Path="/60A21BCB/61015394" Ref="Link_DMXgnd_To_DMXchassignd1"  Part="1" 
F 0 "Link_DMXgnd_To_DMXchassignd1" H 9650 6050 50  0000 C CNN
F 1 "LinkDriverOutput" H 9650 6264 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 9650 6150 50  0001 C CNN
F 3 "~" H 9650 6150 50  0001 C CNN
	1    9650 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 6150 9000 6150
Wire Wire Line
	9800 6150 10350 6150
Text Label 10350 4450 0    50   ~ 0
DMX-
Text Label 10350 4750 0    50   ~ 0
DMX+
Wire Wire Line
	10350 4750 9800 4750
Wire Wire Line
	9800 4450 10350 4450
Text HLabel 1750 2200 0    50   Input ~ 0
DMX_Send
Text HLabel 1750 2550 0    50   Input ~ 0
DMX_Receive
Text HLabel 1750 2700 0    50   Input ~ 0
DMX_Enable_Receive
Text HLabel 1750 2350 0    50   Input ~ 0
DMX_Enable_Send
Text Label 1950 2200 0    50   ~ 0
DMX_Send
Text Label 1950 2700 0    50   ~ 0
DMX_RE
Text Label 1950 2350 0    50   ~ 0
DMX_DE
Wire Wire Line
	1750 2700 1950 2700
Wire Wire Line
	1750 2550 1950 2550
Wire Wire Line
	1750 2350 1950 2350
Wire Wire Line
	1750 2200 1950 2200
Wire Notes Line
	8100 2600 10950 2600
Wire Notes Line
	10950 2600 10950 3700
Wire Notes Line
	10950 3700 8100 3700
Wire Notes Line
	8100 3700 8100 2600
Text Notes 8100 2550 0    118  ~ 0
Terminator
Wire Notes Line
	2950 1900 7850 1900
Wire Notes Line
	7850 1900 7850 4800
Wire Notes Line
	7850 4800 2950 4800
Wire Notes Line
	2950 4800 2950 1900
Text Notes 3000 1800 0    118  ~ 0
RS-485 Transceiver
Wire Notes Line
	8100 4000 10950 4000
Wire Notes Line
	10950 4000 10950 5100
Wire Notes Line
	10950 5100 8100 5100
Wire Notes Line
	8100 5100 8100 4000
Wire Notes Line
	8100 5450 10950 5450
Wire Notes Line
	10950 5450 10950 6400
Wire Notes Line
	10950 6400 8100 6400
Wire Notes Line
	8100 6400 8100 5450
Text Notes 8100 3950 0    118  ~ 0
Link Tx to Rx (Optional)
Text Notes 8100 5400 0    118  ~ 0
Link Ground (Optional)
Wire Notes Line
	8100 2150 10950 2150
Wire Notes Line
	10950 2150 10950 850 
Wire Notes Line
	10950 850  8100 850 
Wire Notes Line
	8100 850  8100 2150
Text Notes 8100 800  0    118  ~ 0
DMX Connectors
Wire Notes Line
	2700 3650 2700 1900
Text Notes 700  1850 0    118  ~ 0
MCU Interface
Wire Notes Line
	700  5300 4100 5300
Wire Notes Line
	4100 5300 4100 7550
Wire Notes Line
	4100 7550 700  7550
Wire Notes Line
	700  7550 700  5300
Text Notes 700  5250 0    118  ~ 0
Configure Transceiver (Rx & Tx)
Wire Notes Line
	700  1900 700  3650
Text Notes 3000 2400 0    50   ~ 0
For sending and receiving DMX512 a Analog Devices\nADM268 is used which isolates the RS-485 bus from the\nlow voltage micro controller side.\n\nADM2687E also isolates the power on the bus side by a\nbuildt in DC to DC converter.
Wire Wire Line
	10000 1900 10350 1900
Wire Wire Line
	10450 2050 10450 1900
Wire Wire Line
	9850 1600 10150 1600
$Comp
L XLR:XLR_3pin_Male_Ground XLR_Male?
U 1 1 60A64596
P 10450 1600
AR Path="/60A64596" Ref="XLR_Male?"  Part="1" 
AR Path="/60A21BCB/60A64596" Ref="XLR_Male1"  Part="1" 
F 0 "XLR_Male1" H 10450 1873 50  0000 C CNN
F 1 "XLR_3pin_Male_Ground" H 10450 1950 50  0001 C CNN
F 2 "XLR_Neutrik:XLR_3pole-male_Horizontal_PCB_mount_NC3MAAH" H 10450 1600 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/53968.pdf" H 10450 1600 50  0001 C CNN
F 4 "NC3MAAH" H 10450 1600 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/neutrik/nc3maah/plug-xlr-pcb-horizontal-3pole/dp/1310044" H 10450 1600 50  0001 C CNN "Seller"
	1    10450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 1600 10800 1600
Wire Wire Line
	10800 1600 10800 1150
Text Notes 5200 1700 1    59   ~ 0
Isolation Barrier
Text Notes 5200 6450 1    59   ~ 0
Isolation Barrier
Text Notes 8150 2800 0    50   ~ 0
A RS-485 bus is terminated by a 120 ohm resistor.\nThis can be mounted here if needed.
Text Notes 8150 1050 0    50   ~ 0
Neutrik female (NC3FAAH2) and male (NC3MAAH) 3 pin XLR connector\nis used for DMX512.\n
Text Notes 8150 4200 0    50   ~ 0
For enabling sending on the DMX bus, these two jumper links must be\nsoldered.
Text Notes 8150 5650 0    50   ~ 0
Options for linking ground and shield of XLR connectors with RS-485\nside of the transceiver.
Text Notes 750  5850 0    50   ~ 0
To receive data on the DMX bus; RE (Receiver Enable) must be pulled low, or high\nfor disable.\nFor sending data; Tx to Rx link must be enabled, and DE (Driver Enable) must be\npulled high, or low to disable.\n\nRE and DE can be controlled from the MCU, or hard coded via these jumper links.
Wire Notes Line
	700  3650 2700 3650
Wire Notes Line
	2700 1900 700  1900
Text Label 1950 2550 0    50   ~ 0
DMX_Receive
$EndSCHEMATC
