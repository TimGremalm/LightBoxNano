EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MCU_Module
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
EELAYER 25 0
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
L Arduino_Nano_v3.x A?
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
L Barrel_Jack_Switch J_Power_BarrelJack
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
L Conn_01x02 J_Power_Terminal
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
L Conn_01x03 J_Addressable
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
L Conn_01x04 J_RGB
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
L POT RV_Pot0
U 1 1 5DE05DE1
P 5750 4300
F 0 "RV_Pot0" V 5575 4300 50  0000 C CNN
F 1 "POT" V 5650 4300 50  0000 C CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
$Comp
L POT RV_Pot1
U 1 1 5DE0868B
P 6150 4750
F 0 "RV_Pot1" V 5975 4750 50  0000 C CNN
F 1 "POT" V 6050 4750 50  0000 C CNN
F 2 "" H 6150 4750 50  0001 C CNN
F 3 "" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
