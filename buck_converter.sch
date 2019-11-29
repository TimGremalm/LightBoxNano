EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2750 2100 0    50   Input ~ 0
BuckVin
$Comp
L Regulator_Switching:LM2596S-5 U1
U 1 1 5DE17061
P 4600 2200
F 0 "U1" H 4600 2567 50  0000 C CNN
F 1 "LM2596S-5" H 4600 2476 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4650 1950 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 4600 2200 50  0001 C CNN
F 4 "Texas Instruments" H 4600 2200 50  0001 C CNN "Manufacturer"
F 5 "LM2596SX-5.0/NOPB" H 4600 2200 50  0001 C CNN "Part Number"
	1    4600 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:CP Cout
U 1 1 5DE18AEA
P 6800 2850
F 0 "Cout" H 6918 2896 50  0000 L CNN
F 1 "4.7µF 10V 1.4Ω" H 6918 2805 50  0000 L CNN
F 2 "" H 6838 2700 50  0001 C CNN
F 3 "~" H 6800 2850 50  0001 C CNN
F 4 "AVX" H 6800 2850 50  0001 C CNN "Manufacturer"
F 5 "TPSA475K010R1400" H 6800 2850 50  0001 C CNN "Part Number"
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5DE1A597
P 5350 2850
F 0 "D1" V 5304 2929 50  0000 L CNN
F 1 "Schottky 200V 10A" V 5395 2929 50  0000 L CNN
F 2 "" H 5350 2850 50  0001 C CNN
F 3 "http://www.smc-diodes.com/propdf/SBRD10200%20N1314%20REV.-.pdf" H 5350 2850 50  0001 C CNN
F 4 "SMC Diode Solutions" V 5350 2850 50  0001 C CNN "Manufacturer"
F 5 "SBRD10200TR" V 5350 2850 50  0001 C CNN "Part Number"
	1    5350 2850
	0    1    1    0   
$EndComp
$Comp
L Device:L L1
U 1 1 5DE1B486
P 6000 2300
F 0 "L1" V 6100 2300 50  0000 C CNN
F 1 " 47µH 42.7mΩ" V 5900 2300 50  0000 C CNN
F 2 "" H 6000 2300 50  0001 C CNN
F 3 "http://www.vishay.com/docs/34306/lp67dz11.pdf" H 6000 2300 50  0001 C CNN
F 4 "Vishay-Dale" V 6000 2300 50  0001 C CNN "Manufacturer"
F 5 "IHLP6767GZER470M11" V 6000 2300 50  0001 C CNN "Part Number"
	1    6000 2300
	0    -1   -1   0   
$EndComp
Text HLabel 7300 2300 2    50   Input ~ 0
Buck5VOut
Text HLabel 2750 3500 0    50   Input ~ 0
BuckGND
Wire Wire Line
	2750 2100 3250 2100
Wire Wire Line
	3250 2100 4100 2100
Connection ~ 3250 2100
Wire Wire Line
	2750 3500 3250 3500
Connection ~ 3250 3500
Wire Wire Line
	4600 3500 4600 2500
Wire Wire Line
	3250 3500 4600 3500
NoConn ~ 4100 2300
Wire Wire Line
	5100 2300 5350 2300
Wire Wire Line
	5350 2700 5350 2300
Connection ~ 5350 2300
Wire Wire Line
	5350 2300 5850 2300
Wire Wire Line
	5350 3000 5350 3500
Wire Wire Line
	5350 3500 4600 3500
Connection ~ 4600 3500
Wire Wire Line
	6150 2300 6800 2300
Wire Wire Line
	6800 2300 6800 2700
Wire Wire Line
	6800 3000 6800 3500
Wire Wire Line
	6800 3500 5350 3500
Connection ~ 5350 3500
Wire Wire Line
	7300 2300 6800 2300
Connection ~ 6800 2300
Wire Wire Line
	3250 2950 3250 3500
Wire Wire Line
	3250 2100 3250 2650
$Comp
L Device:CP Cin
U 1 1 5DE18376
P 3250 2800
F 0 "Cin" H 3368 2846 50  0000 L CNN
F 1 "18µF 50V 35mΩ" H 3368 2755 50  0000 L CNN
F 2 "" H 3288 2650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/CP/PDF/OS-CON/S_OS-CON_SVPF_e.pdf" H 3250 2800 50  0001 C CNN
F 4 "Panasonic" H 3250 2800 50  0001 C CNN "Manufacturer"
F 5 "50SVPF18M" H 3250 2800 50  0001 C CNN "Part Number"
	1    3250 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2100 6800 2100
Wire Wire Line
	6800 2100 6800 2300
Text Notes 1650 6300 0    118  ~ 0
Using TI's LM2596 guide:\nVin: 30V\nVout: 5V\nIout: 3A\nEfficiency: 77.1%\nDuty Cycle: 19.95%\nFrequency: 150kHz\nVout p-p: 945.86mV\nhttps://webench.ti.com/power-designer/switching-regulator/select\nhttps://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=572687AF787DDED1
$EndSCHEMATC
