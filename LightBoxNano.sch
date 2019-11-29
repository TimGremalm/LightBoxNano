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
P 4200 3400
F 0 "A?" H 3800 4325 50  0000 L BNN
F 1 "Arduino_Nano_v3.x" H 4400 2450 50  0000 L TNN
F 2 "Module:Arduino_Nano" H 4200 3400 50  0001 C CIN
F 3 "" H 4200 3400 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector1:Barrel_Jack_Switch J_Power_BarrelJack
U 1 1 5DE03891
P 1100 3700
F 0 "J_Power_BarrelJack" H 1100 3910 50  0000 C CNN
F 1 "Barrel_Jack_Switch" H 1100 3500 50  0000 C CNN
F 2 "" H 1150 3660 50  0001 C CNN
F 3 "" H 1150 3660 50  0001 C CNN
	1    1100 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x02 J_Power_Terminal
U 1 1 5DE0534D
P 1200 2950
F 0 "J_Power_Terminal" H 1200 3050 50  0000 C CNN
F 1 "Conn_01x02" H 1200 2750 50  0000 C CNN
F 2 "" H 1200 2950 50  0001 C CNN
F 3 "" H 1200 2950 50  0001 C CNN
	1    1200 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic1:Conn_01x03 J_Addressable
U 1 1 5DE05544
P 8650 2250
F 0 "J_Addressable" H 8650 2450 50  0000 C CNN
F 1 "Conn_01x03" H 8650 2050 50  0000 C CNN
F 2 "" H 8650 2250 50  0001 C CNN
F 3 "" H 8650 2250 50  0001 C CNN
	1    8650 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic1:Conn_01x04 J_RGB
U 1 1 5DE05747
P 8850 3500
F 0 "J_RGB" H 8850 3700 50  0000 C CNN
F 1 "Conn_01x04" H 8850 3200 50  0000 C CNN
F 2 "" H 8850 3500 50  0001 C CNN
F 3 "" H 8850 3500 50  0001 C CNN
	1    8850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_1
U 1 1 5DE0985A
P 4050 1550
F 0 "RV_Pot_1" H 3980 1596 50  0000 R CNN
F 1 "R_POT" H 3980 1505 50  0000 R CNN
F 2 "" H 4050 1550 50  0001 C CNN
F 3 "~" H 4050 1550 50  0001 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV_Pot_2
U 1 1 5DE0A6EA
P 4800 1550
F 0 "RV_Pot_2" H 4730 1596 50  0000 R CNN
F 1 "R_POT" H 4730 1505 50  0000 R CNN
F 2 "" H 4800 1550 50  0001 C CNN
F 3 "~" H 4800 1550 50  0001 C CNN
	1    4800 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
