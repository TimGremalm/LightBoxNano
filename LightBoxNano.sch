EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Module1:Arduino_Nano_v3.x A?
U 1 1 5DE0324F
P 2150 3700
F 0 "A?" H 1750 4625 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 2350 2750 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 2150 3700 50  0001 C CIN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector1:Barrel_Jack_Switch J_Power_BarrelJack
U 1 1 5DE03891
P 8100 4000
F 0 "J_Power_BarrelJack" H 8100 4210 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 8100 3800 50  0000 C CNN
F 2 "" H 8150 3960 50  0001 C CNN
F 3 "" H 8150 3960 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x02 J_Power_Terminal
U 1 1 5DE0534D
P 8050 3200
F 0 "J_Power_Terminal" H 8050 3300 50  0000 C CNN
F 1 "Conn_01x02" H 8050 3000 50  0000 C CNN
F 2 "" H 8050 3200 50  0001 C CNN
F 3 "" H 8050 3200 50  0001 C CNN
	1    8050 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x03 J_Addressable
U 1 1 5DE05544
P 5300 2650
F 0 "J_Addressable" H 5300 2850 50  0000 C CNN
F 1 "Conn_01x03" H 5300 2450 50  0000 C CNN
F 2 "" H 5300 2650 50  0001 C CNN
F 3 "" H 5300 2650 50  0001 C CNN
	1    5300 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x04 J_RGB
U 1 1 5DE05747
P 5250 3400
F 0 "J_RGB" H 5250 3600 50  0000 C CNN
F 1 "Conn_01x04" H 5250 3100 50  0000 C CNN
F 2 "" H 5250 3400 50  0001 C CNN
F 3 "" H 5250 3400 50  0001 C CNN
	1    5250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 4800 4700
F 0 "RV_Pot_1" H 4730 4746 50  0000 R CNN
F 1 "R_POT" H 4730 4655 50  0000 R CNN
F 2 "" H 4800 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 4800 5200
F 0 "RV_Pot_2" H 4730 5246 50  0000 R CNN
F 1 "R_POT" H 4730 5155 50  0000 R CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
