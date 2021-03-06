EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "LightBoxNano - Buck Converter"
Date "2020-04-13"
Rev ""
Comp "Tim Gremalm"
Comment1 "a generic PCB for controlling LED's both LED strip and WS2812 "
Comment2 ""
Comment3 "https://github.com/TimGremalm/LightBoxNano"
Comment4 "http://tim.gremalm.se/"
$EndDescr
Text HLabel 1900 1800 0    50   Input ~ 0
BuckVin
$Comp
L Regulator_Switching:LM2596S-5 Ubuck1
U 1 1 5DE17061
P 3600 1900
F 0 "Ubuck1" H 3600 2267 50  0000 C CNN
F 1 "LM2596SX 5V 3A" H 3600 2176 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TO-263-5_TabPin3" H 3650 1650 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3600 1900 50  0001 C CNN
F 4 "Texas Instruments" H 3600 1900 50  0001 C CNN "Manufacturer"
F 5 "LM2596SX-5.0/NOPB" H 3600 1900 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/texas-instruments/lm2596sx-5-0-nopb/dc-dc-conv-buck-150khz-to-263/dp/2781829" H 3600 1900 50  0001 C CNN "Seller"
	1    3600 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP Cbo1
U 1 1 5DE18AEA
P 5500 2550
F 0 "Cbo1" H 5618 2596 50  0000 L CNN
F 1 "4.7µF 10V 1.4Ω" H 5618 2505 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 5538 2400 50  0001 C CNN
F 3 "https://www.farnell.com/datasheets/2068142.pdf" H 5500 2550 50  0001 C CNN
F 4 "AVX" H 5500 2550 50  0001 C CNN "Manufacturer"
F 5 "TPSA475K010R1400" H 5500 2550 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/avx/tpsa475k010r1400/cap-4-7-f-10v-10-1206-smd/dp/1135104" H 5500 2550 50  0001 C CNN "Seller"
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky Db1
U 1 1 5DE1A597
P 4350 2550
F 0 "Db1" V 4304 2629 50  0000 L CNN
F 1 "Schottky 200V 10A" V 4395 2629 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2_Rectifier" H 4350 2550 50  0001 C CNN
F 3 "https://www.littelfuse.com/~/media/electronics/datasheets/power_semiconductors/littelfuse_power_semiconductor_schottky_diode_mbrd10200ct_datasheet.pdf.pdf" H 4350 2550 50  0001 C CNN
F 4 "Littelfuse" V 4350 2550 50  0001 C CNN "Manufacturer"
F 5 "MBRD10200CT" V 4350 2550 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/littelfuse/mbrd10200ct/schottky-rect-200v-10a-to-252/dp/2773825" V 4350 2550 50  0001 C CNN "Seller"
	1    4350 2550
	0    1    1    0   
$EndComp
$Comp
L Device:L Lbuck1
U 1 1 5DE1B486
P 4900 2000
F 0 "Lbuck1" V 5000 2000 50  0000 C CNN
F 1 "Inductor 47µH 42.7mΩ" V 4800 2000 50  0000 C CNN
F 2 "LightBoxNanoFootprints:Inductor_IHLP6767GZER470M11" H 4900 2000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/34306/lp67dz11.pdf" H 4900 2000 50  0001 C CNN
F 4 "Vishay-Dale" V 4900 2000 50  0001 C CNN "Manufacturer"
F 5 "IHLP6767GZER470M11" V 4900 2000 50  0001 C CNN "Article Number"
F 6 "https://se.farnell.com/vishay/ihlp6767gzer470m11/inductor-47uh-8-6a-20/dp/1845598" V 4900 2000 50  0001 C CNN "Seller"
	1    4900 2000
	0    -1   -1   0   
$EndComp
Text HLabel 9650 1500 2    50   Input ~ 0
Buck5VOut
Wire Wire Line
	1900 1800 2250 1800
Wire Wire Line
	2250 1800 3100 1800
Connection ~ 2250 1800
Wire Wire Line
	1900 3200 2250 3200
Connection ~ 2250 3200
Wire Wire Line
	3600 3200 3600 2200
Wire Wire Line
	2250 3200 3600 3200
NoConn ~ 3100 2000
Wire Wire Line
	4100 2000 4350 2000
Wire Wire Line
	4350 2400 4350 2000
Connection ~ 4350 2000
Wire Wire Line
	4350 2000 4750 2000
Wire Wire Line
	4350 2700 4350 3200
Wire Wire Line
	4350 3200 3600 3200
Connection ~ 3600 3200
Wire Wire Line
	5050 2000 5500 2000
Wire Wire Line
	5500 2000 5500 2400
Wire Wire Line
	5500 2700 5500 3200
Wire Wire Line
	5500 3200 4350 3200
Connection ~ 4350 3200
Wire Wire Line
	9650 1500 9250 1500
Connection ~ 5500 2000
Wire Wire Line
	2250 2650 2250 3200
Wire Wire Line
	2250 1800 2250 2350
$Comp
L Device:CP Cbi1
U 1 1 5DE18376
P 2250 2500
F 0 "Cbi1" H 2368 2546 50  0000 L CNN
F 1 "18µF 50V 35mΩ" H 2368 2455 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_8x10" H 2288 2350 50  0001 C CNN
F 3 "https://industrial.panasonic.com/content/data/CP/PDF/OS-CON/S_OS-CON_SVPF_e.pdf" H 2250 2500 50  0001 C CNN
F 4 "Panasonic" H 2250 2500 50  0001 C CNN "Manufacturer"
F 5 "50SVPF18M" H 2250 2500 50  0001 C CNN "Article Number"
F 6 "8.0mm" H 2250 2500 50  0001 C CNN "Diameter"
F 7 "6.9mm" H 2250 2500 50  0001 C CNN "Length"
F 8 "E7" H 2250 2500 50  0001 C CNN "FootprintSize"
F 9 "https://se.farnell.com/panasonic/50svpf18m/cap-18-f-50v-20-radial/dp/2354813" H 2250 2500 50  0001 C CNN "Seller"
	1    2250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1800 5500 1800
Wire Wire Line
	5500 1800 5500 2000
Text Notes 1650 4500 0    59   ~ 0
Using TI's LM2596 guide:\nVin: 30V\nVout: 5V\nIout: 3A\nEfficiency: 77.1%\nDuty Cycle: 19.95%\nFrequency: 150kHz\nVout p-p: 945.86mV\nhttps://webench.ti.com/power-designer/switching-regulator/select\nhttps://webench.ti.com/appinfo/webench/scripts/SDP.cgi?ID=572687AF787DDED1
Text Notes 5550 2750 0    50   ~ 0
AVX Solid Electrolyte Marking:
$Bitmap
Pos 6050 3000
Scale 1.000000
Data
89 50 4E 47 0D 0A 1A 0A 00 00 00 0D 49 48 44 52 00 00 01 1E 00 00 00 64 08 06 00 00 00 50 07 5F 
C5 00 00 00 04 73 42 49 54 08 08 08 08 7C 08 64 88 00 00 00 09 70 48 59 73 00 00 19 00 00 00 19 
00 01 0B D4 57 46 00 00 1D AA 49 44 41 54 78 9C ED 9D 79 7C 54 D5 D9 C7 BF 33 99 2C 24 21 84 25 
6C 21 99 84 84 1D 01 59 2B 20 02 16 44 EC EB 2B A8 75 6D 15 41 8A A5 EE 5B D5 56 DB AA AD 75 B7 
55 71 01 01 B5 A8 6F D5 22 82 51 59 2C B2 83 22 BB 80 09 09 5B D8 C3 1E 42 32 CB FB C7 73 6E EE 
9D C9 4C F6 64 B2 9C EF E7 33 9F 99 7B E6 DC 7B CE 0D DC DF 3C E7 39 E7 79 0E 68 34 F5 9B 38 E0 
35 60 9B 7A CD 05 DA D5 70 9B 37 03 53 D5 E7 DB 6B B8 2D 2B 7F 0E D0 5E 37 E0 B3 20 F5 2F 53 E7 
54 85 19 40 8F 2A 5E 63 2B 90 E5 F7 D2 68 EA 35 0B 80 47 01 BB 3A BE 03 58 5A C3 6D C6 01 F1 EA 
F3 FE 1A 6E CB CA 45 C0 5A BF B2 67 80 BB 82 D4 1F 8F 88 72 55 68 0B 44 56 F1 1A F9 98 FF 3E 1A 
4D BD A7 33 B0 0F B0 59 CA 6C C0 70 F5 3E 08 F8 06 F8 2F B0 1A F9 E5 B6 23 C2 F4 3E B0 04 F9 45 
77 00 11 C0 1B C0 B7 C0 77 C0 1F D5 F5 5A 03 9F 03 2B 80 65 40 2A A6 C5 F3 10 50 A0 AE 11 EC FC 
C7 80 17 55 3F 36 03 23 54 F9 60 60 15 B0 06 78 57 9D EF 04 BE 50 75 3F 23 B0 E5 B6 05 E8 A2 3E 
87 01 99 40 0B 44 70 57 A8 D7 5C 44 2C 0C E1 89 C4 57 8C 9F B1 F4 E3 2F C0 72 F5 BA 26 40 7B 86 
C5 F3 6B E0 1F C0 D7 C0 8F C0 8D 01 EA 7E 09 BC 0A 64 20 7F 33 43 9C 4B 08 8F 23 C0 C9 1A 4D AD 
D2 C9 E9 EC E6 F5 DA 7B 96 59 D1 CB F9 CC BD D9 F3 AC A7 22 66 BC D7 A7 96 08 0D C0 38 60 12 62 
DA 4F 01 6E 03 1E 04 86 00 7D 90 87 F8 6D E0 3A 60 07 90 AD EA 45 22 82 F6 34 F2 60 66 00 AF 03 
97 23 0F 67 3E D0 1C 78 0A B8 1B 98 08 F4 0B 72 7E 4B 20 1A 79 D0 C7 20 62 F5 5F 60 26 F0 BF C0 
76 E0 59 44 24 1F 45 44 6A 21 70 25 F0 1C 22 72 56 66 00 37 01 8F 03 A3 10 41 3D 07 0C 00 86 01 
6E E4 A1 1F 62 39 C7 06 24 5B 8E 5B A9 3E 5D 09 74 07 2E 56 C7 2B 11 71 3D 64 A9 6B 58 3C CD 10 
A1 1F 03 A4 AB 36 E6 F8 F5 2D 15 98 06 FC 0E 78 00 B8 1F 53 80 BF C6 FC 77 9A AE 85 47 13 52 9C 
4E 67 3B 0F B6 45 D8 BC 6B B1 51 54 6A 65 AF F7 24 60 15 9E 33 04 1E 06 34 41 1E C6 69 88 28 F4 
42 1E BC 55 EA FB 5D 88 E8 80 3C E4 83 81 0F 90 5F F6 E9 40 07 20 16 B1 42 06 22 16 02 88 00 65 
60 FA 77 AC FC 00 F4 F4 3B DF E8 DB 72 F5 FE 13 32 4C 6B 85 88 C1 76 55 FE 90 7A 1F 02 84 AB E3 
70 20 29 40 3B EF 21 E2 F0 04 70 0B F0 A6 BA D7 D9 88 68 75 02 2E 40 84 A4 2C 86 A8 3E 7F AD 8E 
DB 20 82 FC 55 90 FA 2B 01 8F BA 8F A6 01 BE F7 20 43 5F 90 BF EB DF 2D DF 4D 51 DF 03 E4 69 E1 
D1 84 8C E1 E0 D8 E3 B5 7D 88 CD 36 33 6B 77 F6 1F 2A 71 89 B5 40 57 E4 81 31 7E A5 5B 21 56 50 
47 E4 3F FF 63 C0 0B 88 A5 32 40 D5 89 45 1E 7C AF AA 7F 16 19 AA 8C 00 FE 80 58 3F 27 90 A1 CC 
09 44 2C 40 AC 97 E1 41 FA E2 7F FE 71 75 3E 80 4B BD 1B BF F8 A7 10 61 30 FA D0 5F BD 9F 04 AE 
42 04 B5 09 62 59 F8 73 14 D8 84 38 8E BB 23 43 A8 1E C8 30 6F 02 F0 3D F0 11 BE 43 1B 37 22 A2 
06 2D D5 FB 59 E0 2D 44 B0 50 D7 D9 1D E4 FE 02 DD 87 3F 76 20 46 DD 87 F1 77 35 D8 85 29 3C DA 
E1 A3 09 1D FB 92 53 9E B3 D9 6C 45 59 BB B3 9F A8 E4 25 CE 21 A6 FC D7 C8 90 E4 97 88 45 F2 1C 
32 1C 8A 45 7C 30 FD 11 2B 25 46 9D D7 06 F8 13 70 29 22 18 EF AB BA 2E 44 10 9E 45 2C 8E 68 60 
16 F0 57 C4 B1 FB 1C BE 43 16 90 87 7A 9C 3A DF 6D 39 3F 82 E0 56 C7 79 64 B8 F5 27 64 98 F3 BA 
3A 77 16 22 20 43 11 CB E9 D6 20 E7 CF 40 7C 37 FF 42 44 20 1A 79 96 8B 80 5F 21 43 AE 18 4B FD 
22 F5 F7 F8 0D 32 DC 1C A4 CA E7 20 96 C8 15 EA BC 2F 30 C5 B2 B2 BC A0 EE E9 09 D5 CF 80 54 B5 
11 8D A6 52 A4 A5 A4 5C 05 DC 67 0B 77 5C 96 97 97 77 A6 0A 97 5A 8F FC CA 0F 44 04 E5 75 E0 43 
F5 DD 57 C0 68 E4 21 34 C4 6D 13 30 19 F1 ED 0C 06 9E 44 2C A4 EF 90 5F E9 BE 88 63 77 21 70 18 
19 D6 1C 05 7E 8E 0C 35 DE 41 04 6A AF 7A 6D 40 A6 B4 FF 89 38 79 FD CF 3F 86 38 80 8F 22 22 71 
4A F5 E1 73 20 05 F1 0D BD A2 EE E1 BF 88 15 34 0C 19 16 BE 8C C5 4A B0 90 8D F8 67 67 23 82 92 
0B EC 41 7C 3E 39 88 83 37 5F D5 3B 84 F8 B8 16 20 E2 79 1C 11 84 5D AA FC 2B 60 24 E2 C3 B9 47 
F5 D9 4A 11 32 2C 3D A9 EE 77 9F 2A 2F 00 D6 F9 D5 BD 13 78 09 B1 0A 67 00 8B 2C 75 57 A1 D1 84 
92 D4 D4 D4 2E 69 CE 94 A3 69 4E E7 E0 10 34 6F A7 76 A7 C0 1B 13 3B 08 EC FB 29 81 B6 78 34 B5 
4A 8F 84 1E B1 6E 47 E1 22 6C FC 2D 6B F7 EE B9 21 EA 46 A0 5F 6B 4D D5 39 8F 58 6E EE 50 77 44 
A3 F1 21 2D 25 E5 A3 74 67 EA FB A1 EE 87 26 B4 E8 59 2D 4D AD 91 EE 74 DE E7 F5 D2 35 BF E8 FC 
45 A1 EE 8B 26 B4 68 E1 D1 D4 0A E9 4E E7 45 5E 6C 0F DB 3C EE C1 B9 B9 B9 F9 35 D0 84 B1 66 E6 
7C 0D 5C 3B 18 4D 10 E7 AB AB AC 8A 65 D0 8C 92 33 CC 27 08 3E 6D AD D1 68 CA 22 35 35 B5 4D 9A 
33 65 5F 9A D3 39 AE 86 9A 08 43 42 15 26 A9 E3 67 31 83 11 73 90 99 A1 0E 40 6F 64 56 C9 F8 EE 
8F FE 17 AA 00 B1 C0 4E 64 4A DE 9F 55 96 36 0E 21 A1 12 A5 91 8B CC 68 2D B4 BC 62 AB D0 37 8D 
A6 71 33 1C 1C 1D 93 53 96 A6 39 53 9F AA C1 66 1E 45 66 54 26 05 F8 EE 41 64 BA 1A 64 5D CC 9F 
AA A9 CD 37 09 2E 3C 06 36 64 8D D1 15 EA B8 99 E5 BB 28 F5 02 11 9E 16 D5 D4 AF 7A 81 5E 40 A8 
A9 51 AA 61 91 60 59 0C 40 42 22 FE 2F C0 77 DD 90 60 C6 87 D5 71 1F 24 E8 F3 35 64 E1 A0 BF AB 
61 20 25 D3 37 3C 43 49 C6 01 A7 91 00 CF D2 98 8C AC 97 31 C2 08 BE C7 1C 12 FE 56 F5 A1 51 A2 
7D 3C 9A 1A 23 2D 25 E5 2A AF 97 F1 B6 F0 B0 FE D4 CC 14 6B 0C F0 3C 70 35 81 53 43 DC 8F AC 3A 
2E 50 C7 4D 80 03 C8 EA E6 7B 90 B0 8A 07 2D F5 D7 02 69 65 B4 D9 1E 59 28 77 39 B2 BA 38 18 51 
88 E0 95 77 AD D2 F7 98 8B 05 DF 40 56 49 37 58 B4 F0 68 6A 84 D4 D4 D4 2E 78 BC D3 C1 7B 65 66 
66 E6 91 1A 6A E6 29 24 D0 72 04 12 B7 94 00 2C 46 56 EC C6 A9 F2 29 96 FA BF B1 7C BE 1F 89 73 
B2 0A 4F 2F 64 C9 BF 95 2F FD CA 5E 43 52 4F 5C 89 A4 B1 18 86 F8 70 FC 57 FC 5E 81 F8 7A 0E FA 
95 47 22 0E F0 48 4C 41 04 59 C1 9C 17 F0 2E 1B 20 5A 78 34 D5 4E 8F 84 1E B1 05 9E B3 9F 62 E3 
B1 AC 9C DD 2B 6B B0 A9 15 88 85 D2 11 49 53 01 E6 CA D9 91 48 54 B8 75 C6 69 0E 92 C6 E2 08 92 
EB C6 9A FE 01 C4 67 F3 1B BF B2 D3 7E C7 F3 91 D0 8A 8E 88 03 B8 3D 62 49 F9 73 29 12 FB E4 4F 
22 E2 E0 4E 44 67 E2 D3 68 AA 8F 10 2D 12 FC 0B BE CE E5 C7 90 9C 30 56 EE 41 66 8F EE 43 56 2E 
0F AF 62 9B EF 61 3A 97 2F 41 E2 B5 0C 96 22 16 94 95 4C 24 C9 D7 CB 48 DC D3 BD AA BC D1 39 97 
35 9A 6A 25 DD E9 BC 2F CD 99 B2 B1 7D FB F6 E5 C9 07 53 9D B4 47 2C 11 83 24 02 3F CC DD 90 61 
50 9B 6A 68 33 15 D3 C2 8A 47 72 E1 18 F4 A4 E4 88 22 53 D5 19 8D 58 5C 46 1F 7A 05 A8 AB D1 68 
CA 43 9A D3 39 38 CD 99 72 28 3D 29 A9 2C 07 6D 63 25 93 AA E7 2F D6 68 34 06 B5 B0 48 B0 21 30 
04 BD 84 45 A3 A9 1E 86 D7 CE 22 41 4D 03 C2 56 76 95 86 41 D7 B4 8E 3F E1 F1 D6 C9 21 80 07 BC 
11 91 E1 27 42 DD 8F CA 52 54 E8 8A F6 42 58 44 84 C3 7F 06 A8 D6 F1 78 DD FF DE B6 23 6B 4A D9 
35 35 A1 A4 D1 38 B4 1C 76 7B 8B 41 09 51 B6 8E B1 75 6B 88 5D E4 F5 F2 AF 5D C7 6D 73 E6 3C 58 
6F 66 35 96 2E DD C2 C5 43 BB 63 0F B3 B3 66 CD 0E 66 4C FF 9A E7 5F 98 48 5C 5C 74 48 EF 61 F1 
E2 8D CC 9E BD 38 31 94 7D D0 94 8F 46 23 3C 00 D1 0E 3B F1 91 75 2B F7 59 91 5B 02 90 93 92 5A 
95 51 B3 6E 70 2E BF 90 57 5F FD 9C 45 0B 7F E0 8E DF 8E 65 DA 1B 19 BC F4 E2 44 7A F4 F0 4F 45 
5C FB B4 68 A9 E3 2A EB 0B DA D1 A5 A9 10 EB 7F C8 C4 E5 F2 B0 65 EB 1E EE BC F3 4D 46 8C B8 80 
5E BD 52 43 DD 2D 4D 3D A3 51 59 3C 9A AA F3 ED D2 AD C5 9F 3D 1E 2F 73 FF B3 9A C2 42 17 8F 3C 
7C 2D 4D A2 23 4A 39 53 A3 31 D1 16 8F A6 DC 78 BD 5E BE 5D BE AD 44 F9 E1 43 27 C9 3B 1E 72 BF 
B2 A6 1E A1 2D 1E 4D B9 D9 BA 6D 2F 47 0E 9B 93 6F 4D 9B 36 E1 FE FB C7 71 C5 15 FD B1 D9 1A CD 
04 A9 A6 1A D0 C2 A3 29 37 F3 E7 9B 1B 33 F4 EA 95 CA 93 4F DE 44 62 62 CB 52 CE D0 68 02 A3 85 
47 53 2E CE 9F 2F E2 AB 2F BF C7 6E B7 31 69 D2 65 4C 9A 34 1A BB 5D 5B 39 9A CA A1 85 47 53 2E 
16 2F DA 88 C7 E3 E5 85 E7 27 72 F1 B0 1E A1 EE 8E A6 9E A3 85 47 53 26 5E AF 97 85 8B 7E 60 F6 
AC 7B 48 49 AD 8E A0 6E 4D 63 C7 01 5C 83 99 3E E0 04 F0 03 F0 53 29 E7 74 46 52 00 AC 2D 67 1B 
37 03 46 6E 96 26 C0 B9 8A 77 53 13 4A 76 EF 39 C2 43 0F 5D 43 BB 76 CD CB AE AC D1 94 03 3B B2 
99 7D 27 24 83 5B 6F 64 A3 F5 EB 4A 39 67 30 70 55 05 DA B8 58 BD FF 9A 92 D9 DD 6A 94 F4 F4 F4 
84 DA 6C AF A1 92 E2 6C AD 45 47 53 AD 18 43 AD B7 30 AD 9C B5 48 F6 FB 8F 90 D4 8E BF 04 C2 81 
CF 28 99 3F B6 39 92 7B B6 19 92 59 6D 33 90 AC 8E 2F 02 96 20 A9 22 A3 81 51 48 C2 EF 3E EA BC 
6F D4 35 52 90 64 4A 65 ED 3D 54 61 BC 45 AE B5 69 CE 94 6D 5E BC 33 F0 7A B5 27 54 A3 A9 23 F8 
2F 20 B4 01 17 22 A9 18 A3 90 34 91 71 48 52 EA 6F 90 AC 69 06 91 48 7A C7 28 24 D1 F5 17 C8 A6 
69 17 AB CF A9 48 46 B8 37 FD DA 38 0B CC C6 DC B0 EC 71 24 7B 5C 4D 60 07 C6 DA B0 7D 72 AE C8 
1D BF 31 EF 1C 59 A7 CF 53 E8 D1 1B 34 6A 34 A1 C4 B0 78 3E 45 32 DF C7 01 DB 90 3D 7F 46 22 9B 
A4 BD AC EA 74 40 86 4B 46 82 6C 1B 70 BD 3A EE A3 DE 3B AA EF BE 05 1E B1 B4 93 0F 6C 42 12 6F 
FF 84 58 4F E3 80 4F 80 9F 01 B7 83 A4 CD F4 60 AF C6 E8 62 AF 75 7C 60 DB 7F B6 88 FD 67 4F 62 
B3 41 BB 26 E1 24 C5 84 D3 A6 49 38 AD A3 1C C4 45 D4 AD E0 51 8D A6 21 63 08 CF 78 4A 3A 94 47 
E1 3B B4 3A 80 6C 21 62 08 4F 24 F0 3A 70 06 C9 F6 EF C2 B4 A0 0E 94 D1 EE 4C 64 BF 23 37 30 57 
BD E3 B1 D9 8E DB F1 56 5B DE 0A AF 37 F0 5E 4E E1 36 1B 51 61 36 9A 38 EC 44 85 D9 89 74 34 FC 
C8 91 53 FB 8F B2 6A FA 7C BC 5E D3 DA 73 0E EA 4E B7 CB 07 F9 D4 5B 3B 33 83 BC DD FE 23 EA E0 
0C BF FF 3A A2 9A 9A E9 95 BF 79 FE 43 CE 9F 29 7B FE 60 C8 1D 57 D1 B4 8D F6 1B 35 56 4A 9B 4E 
DF 00 4C 55 75 5C 88 10 65 60 8A CB 48 44 84 AE 43 7C 38 13 31 F3 C9 06 1A CB 14 21 BE 22 80 F5 
40 4B 64 57 80 E2 DD 14 77 E5 E4 CC AC CC 4D 04 23 CD 99 32 05 99 81 03 1B 9E 94 D8 08 FB C0 56 
31 24 46 3B 1A D5 12 7F 8F DB C3 AA 19 0B 38 96 ED FB 7B 90 D0 A9 43 89 BA A7 0E E6 91 97 53 7E 
E1 F1 BA 3D 3E C7 C7 F7 1E A6 E0 E4 D9 32 CF 73 15 16 95 BB 0D 4D C3 C3 8E EC F1 13 C8 32 D8 08 
7C 8C 6C 4A B6 02 B1 6C FE 85 0C C9 0A 54 59 27 64 D8 F4 2E B2 13 62 4B A0 10 DF 29 F3 93 EA 7D 
1D B2 03 E3 F5 EA F8 7D 44 A8 76 54 DB DD 94 E4 1C 5E 66 DB ED B6 4B 9A 84 3B 4E 74 8F 8F A2 43 
4C 78 A3 12 1D 80 1F BF 58 CD B1 5D B9 D5 7E 5D BB C3 4E 58 84 5E 0A A6 A9 38 0E 24 01 75 30 9E 
45 B6 52 75 20 16 0B C0 07 96 EF FB 02 11 88 D8 58 F9 B7 E5 73 37 F5 BE 02 99 F1 32 68 0A BC 5D 
C1 FE 56 88 98 82 73 FD 36 1D 3A 74 16 A0 67 A7 F4 9A 6C AA CE 72 62 DF 61 36 7F B6 1C 80 88 D8 
28 0A CF 14 94 5A 7F E0 AD 63 70 9D 0F 6C 8D EC DF 90 C9 E6 B9 CB 8A 8F 93 07 76 27 22 3A 2A E8 
B5 FA 5C 3B 9C B6 3D 02 E7 EA 89 6B 5B 6F 12 2E 6A 6A 80 F2 FC 5C 79 31 45 27 10 FE A2 53 1E E6 
23 8E EC D1 95 38 B7 DC 18 A2 D3 58 F1 B8 3D AC 9E BE 00 8F CB 8D 23 32 82 DE 57 0F 67 DD EC 2F 
4B 3D 27 AE 5D F0 A0 CF 75 EF 7F E5 73 DC 6D CC C0 52 AF 15 DB BA 39 2D 52 DA 96 BF C3 9A 46 43 
A8 EC E4 6B D1 2B 98 6B 9C 2D F3 96 17 FB 6B 2E BC 7E 24 4D 5B C7 57 FA 5A 47 76 EE E5 58 A6 39 
5C 6B DF B3 23 CD 93 4B 0F 9F D8 B7 7E 27 87 B6 E5 50 74 BE 88 C8 98 28 5A A4 B4 23 A9 5F 67 1C 
51 3A 61 58 63 27 54 C2 A3 45 A7 86 C9 CB 39 C8 B6 05 AB 00 11 89 4E C3 FB 70 70 5B 4E A5 AF B7 
ED 8B 35 3E C7 5D C7 0E 0A 52 D3 24 67 D5 D6 12 65 DF FD 2B 92 FE 37 8D 22 75 C8 05 95 EE 8B A6 
FE D3 F0 E7 91 1B 21 6E 97 8B 55 D3 E7 E3 71 79 88 88 8E 62 D0 C4 B1 50 05 87 FA A9 DC 63 EC DF 
98 59 7C DC C2 D9 86 B6 DD 53 2A 75 AD A2 FC F3 AC 9A BE 80 3D EB B6 57 BA 3F 9A FA 8F 03 78 1A 
73 CF E9 5C 64 D5 F1 BA A0 67 94 8F 74 64 BA FD AD 2A 5E 47 53 09 36 CF 5D CE C9 7D 47 00 E8 77 
D3 28 9A 34 6F 5A C6 19 A5 F3 63 C6 6A B0 AC FF E9 36 F6 A2 A0 75 63 5A 36 C3 39 B0 1B 6D 7B A4 
10 9B 10 8F CD 6E 27 2F E7 20 9B FF B3 8C D3 87 8F 4B 25 AF 97 F5 1F 2E 21 A9 7F 97 46 37 C3 A8 
11 1C C0 0D C0 A3 C0 31 64 75 F2 5C 60 00 22 42 95 A5 2D 70 29 5A 78 6A 9D 53 07 8E F1 E3 17 AB 
01 E8 D0 B7 33 A9 43 7A 56 E9 7A 05 27 CE 90 B3 CA CC B3 1C DB 2A 9E A4 FE 5D 82 D6 BF EC F1 5B 
4A 94 C5 B5 6B 49 AB F4 44 16 3C F2 36 6E 97 0B 80 FC 63 27 39 B9 FF 08 F1 1D 5A 57 A9 7F 9A FA 
89 E1 E3 59 06 EC 57 9F AF 46 2C 96 5C 60 10 30 01 99 FA 5E 84 AC 38 1E 08 38 D5 77 2D 81 D7 80 
EF 90 45 84 7F 00 12 81 2D B5 D3 7D 8D 3F 05 A7 CE E2 55 B1 68 07 B7 E6 F0 F1 D4 97 8A BF F3 B8 
7C 97 6B 65 7E B3 81 EC 95 5B 68 96 98 C0 A8 47 6F 0E 78 BD ED 8B BE 2B 16 0B 80 AE 63 06 60 0F 
AB F8 08 3D 36 21 9E 66 1D 5A F9 2C 4E CC 3F 76 5A 0B 4F 23 C5 10 9E 47 81 D3 88 68 14 02 2B 91 
15 BF 33 91 95 C9 A7 91 55 CB 2B 91 45 83 4F 22 61 16 89 C8 BA 9E 4E C0 0B 48 88 C5 23 C0 34 64 
91 A1 26 84 B8 CE 17 CA 72 CF 20 B8 5D 2E DC 2E 17 AE 73 81 2B B9 0A 0A C9 5C F2 43 F1 71 64 6C 
13 3A 5E DC AB 72 9D F1 7A 29 38 E5 BB BA 21 2C 32 3C 48 65 4D 43 C7 F8 E9 DA 84 AC 3C 5E 8B 2C 
F8 1B 85 24 05 BB 18 49 5B F1 2B 24 0A DD C8 6F F3 25 12 52 B1 00 59 8F 03 E2 D3 79 16 B1 94 9E 
AF F9 AE 6B 6A 9A CC A5 1B 28 CC 37 7F 3F 3A 8D EC 87 23 32 F8 54 F8 96 79 2B 58 F7 FE 57 A6 2F 
C7 C0 EB 65 DB 82 D5 E4 E7 99 5B E0 D8 1D 76 5A 94 31 1D AF 69 B8 18 16 CF 7C CC A1 D6 39 E0 46 
24 4A 7D 21 62 F5 2C 05 2E C1 14 2A EB 4F 97 61 BF 37 03 8C C0 1D 6D ED 84 88 D6 5D 92 B9 71 D6 
23 01 BF 3B B8 35 9B 25 CF 7D 58 7C DC 65 54 7F FA DD 34 2A 60 5D 8F CB C3 F6 AF CC 39 86 B0 70 
07 9D 7F DE AF D4 B6 5D 85 45 FC B4 68 3D 99 8B 7F A0 B9 B3 0D CD 12 13 00 2F C7 B2 0F 70 2A F7 
98 4F DD B4 8B 7B 13 1E 5D B7 F6 B1 D7 D4 1E 86 F0 24 23 71 53 F1 C8 D0 EA 33 A0 1F B0 15 F8 1B 
32 94 EA 83 58 3D C1 F8 1A B8 0D 19 66 FD AA 86 FA AB A9 25 76 AF D9 46 7E DE A9 E2 E3 D4 A1 17 
10 15 17 5D CA 19 26 5E AF 97 BC 9C 83 41 83 4D DB 76 4F A1 EF 0D 97 56 4B 3F 35 F5 13 07 12 43 
F5 17 75 7C 0C 11 9D D7 91 18 AC 2B 10 6B 28 1B 11 20 07 92 F2 22 C6 72 0D 23 78 E7 6E E0 25 C4 
39 BD 18 49 0E A6 A9 43 84 45 84 13 9B 60 AE 5E 8E 8C 0D 2E 24 7B BF DF E1 53 D7 3F 7D 46 20 3A 
8F EC 47 54 5C 0C B9 1B B3 38 9A B5 1F 57 81 19 4D 63 77 D8 69 9E D2 96 F4 4B 2E A4 E3 D0 0B F4 
34 7A 23 C7 41 70 EB A4 00 49 75 11 88 25 96 CF 46 7E E6 E3 C0 AD D5 D3 2D 4D 4D 90 D0 A9 03 57 
3E 77 47 D9 15 81 61 77 5D 5D E1 EB 47 B7 68 4A D7 D1 03 E8 3A 7A 00 20 CE ED 82 53 F9 D8 ED 36 
22 9B C5 10 E6 D0 91 EC 1A 41 FF 4F D0 D4 18 8E C8 08 62 13 74 5C 96 A6 24 3A 64 42 A3 D1 D4 3A 
5A 78 34 1A 4D AD A3 85 47 A3 D1 D4 3A 86 F0 3C 8E 24 72 37 B8 1B 49 7B 5A 5D BC 87 19 88 5A 11 
1E C7 CC 60 A8 D1 68 1A 08 76 24 2E AB 0B B2 60 D0 28 9B 84 AC D9 29 7B 0E B5 7C 74 C3 4C F4 5E 
1A 0F F8 1D 4F 43 56 43 6B 34 9A 06 84 1D F8 1D F0 A1 A5 EC E7 88 08 BD 8B 65 07 08 24 3E EB 71 
64 93 BF 15 80 11 F6 3C 0C 99 5E 5F 8A AC E3 31 04 E6 4F 48 A2 F8 39 C8 AA 66 90 45 8A AF 22 EB 
7C 32 00 FF 6C 50 93 FD 8E 8F 20 69 57 7B 57 F0 BE 34 1A 4D 1D C6 0E 5C 0E AC B6 94 4D 44 76 FA 
9C 87 C4 6C 19 49 78 53 91 28 F5 E1 C0 3B C0 7D C8 42 C2 77 90 F5 3B 97 20 56 D2 EF D4 E7 21 C0 
50 E0 8F 48 BA 0D D4 39 A7 90 94 19 77 23 43 30 80 07 81 67 90 E1 D8 33 C8 62 45 83 35 C0 65 55 
BE 53 4D E5 F0 7A 29 3C 5B E0 F3 B2 EE CD A5 D1 54 06 07 D0 1A 38 AA 8E 5B 02 FF 03 EC 45 2C 99 
33 48 5A 0C 23 E8 73 91 7A DF 0A FC 02 E8 0A EC 04 F6 A8 F2 39 88 B8 38 90 84 62 6E 20 0B D9 47 
0B 44 90 22 81 FF 53 C7 69 AA FD 2D C8 96 C6 05 48 B0 AA 95 3D 48 B0 AA 26 04 1C C9 DC CF C2 A7 
DF F3 29 1B 3A 75 1C C9 03 BA 86 A8 47 9A 86 80 03 DF 5D 22 6E 46 B6 15 36 B6 22 D8 0E 3C 86 A4 
BC 00 73 B7 09 E3 27 EF 1C 62 05 19 C4 21 89 18 3C 7E E5 4D D4 7B 01 32 D4 5A A1 8E 3B 23 2B 9E 
33 D4 F1 D3 F8 6E 8D 03 10 86 0E 3A 0D 19 D9 CB 37 97 28 DB B5 7C 93 16 1E 4D 95 70 20 5B 17 A7 
20 F1 58 B7 01 B7 20 29 2F 0C EE 46 86 5C 81 D8 8E C4 74 4D 42 AC 9A 3F 20 C3 A4 4D 88 78 2D 41 
C4 C5 F0 07 BD 0F 3C A4 AE F9 33 64 58 37 C0 AF 2D 7F 3A A3 13 8B 85 04 77 91 3B 60 6E E4 83 5B 
B2 29 38 71 86 A8 F8 D8 10 F4 4A D3 10 B0 23 D3 E6 63 90 A1 CE 0C 7C 45 07 E0 1E C4 C2 F9 08 19 
36 81 0C C5 DE 43 2C 9B D1 C8 10 ED 56 44 78 E6 01 39 48 0C D7 D5 88 C5 72 0B 92 4C EC 63 E0 29 
E0 D7 88 3F 67 0C BE DB 1D 67 50 92 E1 48 A0 AA A6 96 D9 B7 7E 67 71 3E 9E A8 F8 58 9A 3B 65 8F 
2C 8F DB 43 F6 EA 92 3B 48 68 34 E5 C5 01 4C 47 86 57 6F 00 FF 08 50 67 69 80 B2 5C E0 53 F5 F9 
24 F0 F7 00 75 36 02 F7 06 28 FF 5A BD CA 43 3F 44 08 75 A4 7B 08 C8 5E B6 A9 F8 73 CA C0 6E 34 
69 DE 94 E3 BB 25 D5 C5 AE 65 9B E9 36 A6 BA 56 5B 68 1A 1B 76 C4 81 FC 32 D0 23 C4 7D 09 44 7F 
C4 8A D2 D4 32 E7 4E 9C E1 C0 B6 EC E2 63 E7 CF BA E3 1C D4 AD 38 9D C5 C9 FD 47 C8 DB 7D 28 54 
DD D3 D4 73 8C 95 CB 19 D4 4D 3F CA 9B C8 F4 BB A6 96 C9 5E B1 B9 38 69 7C 6C 42 3C 2D 53 DB 11 
DD 22 8E 56 9D 3A 98 75 96 6F 0A 76 BA 46 53 2A 3A 56 4B 13 90 6C CB 2E A0 CE 9F 75 2F DE 10 30 
65 A0 19 59 93 B3 6A 2B 1E 97 9B B3 67 0B F0 78 F4 DA 1E 4D F9 D1 F9 78 34 25 38 96 7D A0 78 43 
40 80 E3 BB 0F B1 76 96 F8 FD 0B CF 98 2B 1B CE 9F 39 47 EE A6 2C 12 7A 76 E4 AD B7 BE 24 7B D7 
21 BA 75 4F A2 4B D7 44 3A A5 B7 A7 55 AB B8 12 D7 D6 68 40 0B 8F 26 00 BB FC D6 EE E4 6E CA 0A 
52 53 EA 76 E8 DB 99 29 53 2E 67 F1 E2 8D 3C F1 C4 1C 0A 54 CA D3 98 98 28 DA B4 6D 4E 9B D6 CD 
68 9D D0 8C A6 71 D1 0C 1B D6 83 BE 7D D3 6A B4 FF 9A BA 8F 16 1E 8D 0F 6E 97 8B 3D 6B CC 9D 43 
1D 91 E1 D8 1D 61 3E 75 BC 1E 2F 45 6A 2F AE DC 4D 59 14 9C CE 27 AA 69 34 97 5E DA 9B A4 E4 04 
EE BD E7 6D 0E 1D 3A C1 D9 B3 05 EC CA 3A C0 AE AC 03 00 84 85 D9 19 3F 7E 70 ED DD 8C A6 CE A2 
85 47 E3 C3 FE 0D 99 9C 3F 73 4E 0E 6C 36 C6 3E 3D 89 D8 56 F1 3E 75 5C 05 85 7C 72 E7 2B B8 8B 
5C 78 5C 6E 76 AF DE 46 97 51 FD 01 E8 DC A9 3D EF BC 73 37 53 A7 4E 23 27 C7 77 15 C4 88 11 BD 
48 4E AE 4C 76 14 4D 43 43 3B 97 35 3E 58 43 24 5A A5 25 96 10 1D 00 47 54 04 89 BD D3 2D E7 F8 
CE 6E B5 69 13 CF 5B 6F DF 49 A7 F4 F6 3E E5 AB 56 ED E0 F9 E7 3F E5 E8 91 93 D5 DC 6B 4D 7D 43 
5B 3C 1A 1F D2 86 F5 26 75 88 64 2B 89 6B D7 22 68 BD DE D7 0E 27 79 90 99 A3 CD E3 F6 F8 EC A9 
DE A2 79 2C D3 DE F8 2D 53 A6 BC 46 66 E6 01 2E B9 A4 27 F7 DD 77 15 1F 7C B0 94 6B AE 7D 86 61 
97 F4 E4 F6 49 97 91 94 A4 2D A0 C6 88 16 1E 8D 0F 1D FA 76 2E 57 BD A6 6D 9A D3 B4 4D F3 52 EB 
C4 C7 C7 F0 FA B4 DF 32 79 D2 3F B9 F5 96 4B 49 4C 6C C9 03 0F 8C 67 C2 6D A3 F8 E4 E3 15 4C 98 
F0 32 83 87 74 63 C2 2D 97 92 DA B1 6D 75 74 BF 32 5C 80 C4 1B 02 B8 90 6C 08 C7 83 57 2F C6 86 
6F B8 4F 69 F4 42 E2 17 0D E2 91 AC 0C 3B FD EA 75 54 6D 07 6A BF 13 B0 0F 09 CC AE 48 DB 95 21 
09 B8 10 C8 03 56 62 EE 10 5C 1E FC EF 35 20 7A A8 A5 A9 51 5A 34 8F 65 FA 8C BB B8 A0 57 4A 71 
59 CB 16 4D 99 3C 79 0C 9F 7C FC 08 1D 12 5B 72 FB E4 57 B9 F7 DE B7 D9 B2 79 77 28 BA F8 05 70 
17 92 84 EE 2E 60 2D 92 43 AA 34 9E A4 62 C9 E9 FC 63 10 A3 80 6F 31 05 0F E4 59 5C 08 04 DB 65 
F1 1F 48 C0 74 3A F0 62 05 DA AE 28 4F 01 FF 41 B2 8F 4E 41 72 75 05 37 7D 4B 12 28 DE B2 04 5A 
78 34 35 4E 7C 7C 4C C0 F2 66 F1 31 4C 9E 3C 86 CF E7 3D CE C0 81 5D 78 E8 F7 33 99 38 F1 1F 2C 
FB B6 D6 03 50 1F 00 7E 83 64 4B 18 8E E4 94 32 E8 80 24 A2 EB A3 8E 5B AA 3A DD 31 B3 6D 5E 08 
8C C4 77 8B EF 66 48 10 74 9B 00 ED 1D 44 B2 73 8E B5 94 8D 40 F2 5C ED 47 2C A2 51 04 0E 63 1A 
AA DA 4E 52 C7 ED 91 40 ED BE 7E F5 FA 23 79 AC 5A A8 3A 20 96 D2 20 24 D7 56 A0 54 C4 63 90 0C 
A4 83 91 74 38 37 03 DF 20 41 DD 20 7A 31 44 9D 6F 15 CD 04 E4 6F D4 12 5F DA AB F2 F6 7E E5 5A 
78 34 A1 A7 49 74 04 37 DC 30 8C CF E6 FE 91 F1 E3 2E E2 95 57 E6 71 E3 8D CF B3 60 FE 3A DC EE 
8A 58 F9 55 26 0A 49 70 B7 4B 1D 5F 8D 64 E3 EC 89 E4 A4 7A 0C 68 87 64 56 18 84 24 B5 7B 0B C9 
E0 30 0C 09 A8 6E 06 24 22 C2 32 10 D9 0E 3C D0 98 74 06 F2 60 1B DC 0A BC 8D 58 34 CB D5 F5 FF 
8A 64 E4 B4 72 01 22 66 9D 55 5F E7 A8 B2 BF 22 D6 0A 48 E2 BE C7 10 41 5A 8E A4 30 B6 21 96 CC 
AF 91 AC A3 8B F0 15 0F 80 F1 48 16 0A 6B 8E AE 87 91 58 CE 30 C4 9A B9 11 49 16 B8 14 B1 CE BA 
AB CF FD 91 6C A4 C6 DE D4 63 91 E0 F3 DE EA 9A 56 91 D5 3E 1E 4D DD 21 3C 3C 8C 2B 7E 31 80 31 
97 F7 63 F1 E2 8D CC 9A B9 88 59 EF 2E E1 BA 5F 0E 25 BE 1C B9 7F B6 6D DD 8B AB C8 DD 2E 3D 39 
F5 DA 60 75 5C 76 EF C2 9C 9C 9C 13 7E C5 EB 90 07 26 09 C9 19 65 EC DF 7C 0C 79 D0 4E 02 87 80 
1B 90 64 75 59 C0 2C 55 BF 1F 62 25 80 3C 9C 13 90 1F F4 59 C8 46 05 B1 88 85 E3 4F 06 F0 0A 62 
DD B8 11 A1 99 00 BC 86 88 C8 1C 75 BD ED C8 83 6F F0 19 62 41 2C 46 AC 9F 9B 90 0C A2 39 C0 54 
44 0C C7 21 C2 E4 56 AF 30 C4 4A 8B C4 0C BA 7E 06 11 1A 6B BE F5 56 40 B0 F1 EE 18 C4 F7 34 55 
1D BF AC DA 4E 57 D7 7A 17 68 8B 99 6D F4 29 E0 76 44 C4 BF 42 44 F5 0B E3 62 5A 78 34 75 8E B0 
30 3B A3 47 5F C8 A8 51 7D 58 B9 F2 47 32 32 D6 E3 72 B9 CA 3C 2F F7 40 1E 85 45 AE F6 5E BB 37 
A8 F0 44 7A BD DF 01 FE C2 33 00 D9 58 E0 0E C4 0A 31 84 22 02 49 FF 72 1A 38 80 3C C0 56 52 90 
87 F5 4D 4B 59 06 62 E9 2C 51 C7 67 90 34 32 FE B8 81 0F 80 6B 10 E7 ED 47 88 73 DB 89 E9 74 76 
23 0F 6E 72 90 DB 71 A8 F3 F2 11 A7 78 18 22 86 87 D4 B9 00 99 C8 2E 32 4E C4 79 6D ED EB 79 BF 
EB ED C1 1C C2 19 24 23 F9 D6 93 F1 75 86 EF 54 D7 EC 04 2C 50 65 07 91 BF 15 EA BB 87 2D F5 7D 
96 C3 6B E1 D1 D4 59 6C 36 1B 43 86 74 67 C8 90 EE 65 57 06 E6 7D BE 86 97 5E FC EC FB 0D 5B 7E 
FC 65 25 9B 9C 86 F8 5A FE 86 E4 92 7A 01 B8 1E F1 BD DC 88 64 DA 04 11 0A 3B 62 F9 9C 54 75 3C 
EA 3D 17 F1 75 F4 42 D2 F8 36 23 80 8F 43 F1 0E A6 10 18 3B AC FC 84 0C 4F BE 43 84 AF 2B 62 CD 
18 B8 31 5D 24 CF 22 0E F1 D5 88 95 F3 10 32 F3 D5 56 B5 7B 12 11 C1 93 AA AF 7B 01 E3 6F 73 BB 
DF 75 41 84 F0 1D 60 26 66 56 88 3F AB 7A 2B 91 21 9A C1 85 C8 70 32 52 DD EB B7 88 3F CC 48 79 
9C 85 58 6E 1B 90 DC EA 57 59 1B D2 C2 A3 D1 F8 F2 3B 24 45 CC 87 88 7F E4 6F C8 83 D7 0A 73 53 
CA ED 48 EE F0 6B 91 E1 C3 22 24 75 70 7F 64 48 B2 01 99 A1 6A 83 88 CE B9 20 6D ED 42 04 CB AD 
CE 07 11 93 B9 88 B3 B8 37 22 4C D6 25 E0 BB 11 A7 F1 54 D5 BF 3F AB FE B4 42 1C C9 05 C0 23 88 
10 EC 53 E5 19 C0 32 C4 A2 99 8F 0C 99 3A 63 6E BA 60 B0 06 F1 3D AD 47 C4 CC 10 BD 67 10 BF CF 
04 C4 02 CC 47 C4 ED 2E 64 A8 98 81 E9 F0 36 EE F5 41 C4 3F F6 2D 32 CC 7B D2 DA 90 16 1E 4D 63 
A7 27 BE 39 9F 0E 23 43 0B 0F 32 F4 EA 82 3C 4C 7B 90 87 0C E0 F7 C8 43 76 58 7D 6E 83 CC EC EC 
C0 DC 10 61 30 B2 91 65 36 25 87 68 56 AE F2 3B DE 8B E4 23 EF 84 F8 98 8C 6C 6B D7 AA 7E B8 91 
D9 AE 70 D5 7E 67 64 C8 B4 DB D2 3F 07 E2 7B 0A 43 F6 C2 33 AE 71 1B 62 95 C4 21 62 15 C8 73 FF 
22 E2 8F 49 45 7C 47 D6 61 E2 8D C8 10 2A 4A DD 2B AA 4F 03 55 3F 32 31 1D D6 4B 81 8B 10 1F D0 
E3 F8 AD 4D D2 C2 A3 69 EC 04 8A DF 38 6B F9 BC C3 F2 D9 F0 0D 79 F0 75 C2 1E C2 7C B8 0D DC 94 
2F B9 5E 20 6B A8 08 73 67 5F 83 33 96 CF D6 87 D8 EA 77 31 FA 37 56 BD 0E 23 43 C7 D1 96 3A FB 
CA D1 A7 D3 04 5F 04 18 C8 F9 5C 88 79 AF D6 1D 61 F2 83 5D 47 0B 8F 46 D3 F0 B8 09 19 26 35 45 
FC 3E 45 A5 57 AF 7D B4 F0 68 34 0D 93 92 FB 12 D5 21 6C 65 57 69 18 74 ED D8 F1 B0 C7 E3 4D A8 
8B 37 EC C6 4B 44 44 78 61 D9 35 35 A5 E1 F1 78 ED 0E BB FD F3 2D 3B 77 8E 0F 75 5F 34 A5 D3 68 
2C 1E 97 DD DE 17 3B 75 32 17 A7 CD 66 F3 9E 77 7B 8E 85 BA 1F 0D 01 97 C7 53 99 5D 67 6D C8 F4 
F9 BF 11 E7 6E 55 F8 05 B2 53 AE E1 87 49 40 A6 B0 0F 20 8B FF 62 90 55 CA FE 5B 49 8D 40 FC 38 
EB AA D8 BE 46 A3 A9 27 8C 40 D6 CF 3C 57 C5 EB 5C 8F 38 5A 8D 64 45 D1 C8 FE 72 B7 21 B3 45 AF 
AB F2 2D C8 3A 18 2B 1B 90 59 30 8D 46 D3 48 78 0F 99 D6 CE 06 9A 04 F8 7E 24 12 16 61 BC 86 06 
A8 F3 30 B2 2E 66 23 A6 F0 5C 8F C4 72 81 58 55 3B 91 29 EF 7B 91 78 2A 83 3E C8 3A 9B 46 43 A3 
19 6A 69 34 41 88 47 22 AE 27 00 57 22 C3 A2 D9 7E 75 AE C6 F7 59 39 8E 2C DE B3 32 0D 59 0F 64 
15 90 AE 98 4E 5E 2F B2 18 CF 89 08 DD 3A 44 AC DC C8 D0 6B 7A 95 EE A2 9E A1 85 47 D3 D8 B9 01 
59 5D 9B 8C C4 57 4D A5 A4 F0 F8 EF 66 1B 68 E1 5D A0 8D 27 C3 90 B5 2C 06 E7 90 29 EE A3 88 F0 
8C 04 FE 8B AC B9 79 B4 82 FD AE D7 68 E1 D1 34 76 6E 43 16 D5 19 E9 27 52 91 70 85 F5 96 3A 0B 
F0 4D 21 71 08 B8 A2 1C D7 3E 88 6F 8E 9A 96 88 E8 80 58 38 37 23 7E A0 85 F8 0A 94 46 A3 69 C0 
F4 46 7C 32 56 7E 8F E9 97 A9 0C CB 30 7D 3C 5D 91 19 AE 30 24 47 4F 16 66 F8 84 5D B5 FD 29 25 
1D CD 0D 1E 9D 08 4C D3 98 B9 1C DF 34 11 20 C3 AC 41 04 76 32 97 87 5C CC 95 C2 DB 81 79 88 18 
FD 07 89 40 37 D2 55 78 10 5F 4F 24 F0 43 25 DB AA B7 FC 3F 62 E8 C5 02 48 60 2D 69 00 00 00 00 
49 45 4E 44 AE 42 60 82 
EndData
$EndBitmap
$Comp
L Device:LED LEDpwr?
U 1 1 5E98A9FB
P 8550 1800
AR Path="/5E98A9FB" Ref="LEDpwr?"  Part="1" 
AR Path="/5DE1594D/5E98A9FB" Ref="LEDpwr1"  Part="1" 
F 0 "LEDpwr1" V 8550 2050 50  0000 C CNN
F 1 "LED Red" V 8450 2050 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 8550 1800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2045843.pdf?_ga=2.248537031.1391520159.1585828864-167263916.1529948031" H 8550 1800 50  0001 C CNN
F 4 "KP-1608SURCK" H 8550 1800 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/kingbright/kp-1608surck/led-red-80mcd-630nm-smd/dp/2449786" H 8550 1800 50  0001 C CNN "Seller"
	1    8550 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R Rled?
U 1 1 5E98AA09
P 8550 2250
AR Path="/5E98AA09" Ref="Rled?"  Part="1" 
AR Path="/5DE1594D/5E98AA09" Ref="Rled1"  Part="1" 
F 0 "Rled1" H 8750 2300 50  0000 C CNN
F 1 "300R" H 8750 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2864159.pdf?_ga=2.208960598.599385452.1575057425-167263916.1529948031" H 8550 2250 50  0001 C CNN
F 4 "MC0100W06031300R" V 8550 2250 50  0001 C CNN "Article Number"
F 5 "https://se.farnell.com/multicomp/mc0100w06031300r/motst-tjockfilm-300r-1-0-063w/dp/2845860" V 8550 2250 50  0001 C CNN "Seller"
	1    8550 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5V?
U 1 1 5E994EC0
P 9050 2150
AR Path="/5E994EC0" Ref="J5V?"  Part="1" 
AR Path="/5DE1594D/5E994EC0" Ref="J5V1"  Part="1" 
F 0 "J5V1" H 8650 2050 50  0000 L CNN
F 1 "Conn_02 DNP" H 8300 2150 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9050 2150 50  0001 C CNN
F 3 "~" H 9050 2150 50  0001 C CNN
F 4 "" H 9050 2150 50  0001 C CNN "Article Number"
F 5 "" H 9050 2150 50  0001 C CNN "Seller"
	1    9050 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2700 8550 2400
Wire Wire Line
	8550 2100 8550 1950
Wire Wire Line
	8550 1650 8550 1500
Wire Wire Line
	8550 2700 9250 2700
Wire Wire Line
	9250 2700 9250 2150
Wire Wire Line
	9250 2050 9250 1500
Connection ~ 9250 1500
Wire Wire Line
	9250 1500 8550 1500
$Comp
L Jumper:SolderJumper_2_Open Receiver_Disable?
U 1 1 5EA93E4A
P 3300 6200
AR Path="/5EA93E4A" Ref="Receiver_Disable?"  Part="1" 
AR Path="/60A21BCB/5EA93E4A" Ref="Receiver_Disable?"  Part="1" 
AR Path="/5DE1594D/5EA93E4A" Ref="Link_Vin_To_5V1"  Part="1" 
F 0 "Link_Vin_To_5V1" H 3300 6050 50  0000 C CNN
F 1 "Link Vin to 5V" H 3750 6300 50  0001 C CNN
F 2 "ConnTest:JUMPER-SOLDER-SMD" H 3300 6200 50  0001 C CNN
F 3 "~" H 3300 6200 50  0001 C CNN
	1    3300 6200
	1    0    0    -1  
$EndComp
Wire Notes Line
	1400 1000 6950 1000
Wire Notes Line
	6950 1000 6950 4700
Wire Notes Line
	6950 4700 1400 4700
Wire Notes Line
	1400 4700 1400 1000
Text Notes 1400 950  0    118  ~ 0
Use 5V Buck (Option 1)
Text Notes 1450 1200 0    50   ~ 0
The buck option is used when Vin > 5.5V and needs to be lowered to 5.0V. The 5V is used for feeding the micro controller.\nExample: When using 12V on Vin to feed a 12V LED strip. 
Wire Notes Line
	7600 1000 10250 1000
Wire Notes Line
	10250 1000 10250 3250
Wire Notes Line
	10250 3250 7600 3250
Wire Notes Line
	7600 3250 7600 1000
Text Notes 7600 950  0    118  ~ 0
5V Output
Wire Wire Line
	6450 2000 5500 2000
$Comp
L power:GND #PWR0106
U 1 1 5EAA4C9E
P 1900 3200
F 0 "#PWR0106" H 1900 2950 50  0001 C CNN
F 1 "GND" H 1905 3027 50  0000 C CNN
F 2 "" H 1900 3200 50  0001 C CNN
F 3 "" H 1900 3200 50  0001 C CNN
	1    1900 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5EAA5406
P 7950 2800
F 0 "#PWR0118" H 7950 2550 50  0001 C CNN
F 1 "GND" H 7955 2627 50  0000 C CNN
F 2 "" H 7950 2800 50  0001 C CNN
F 3 "" H 7950 2800 50  0001 C CNN
	1    7950 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2800 7950 2700
Wire Wire Line
	7950 2700 8550 2700
Connection ~ 8550 2700
Wire Notes Line
	1400 5250 5400 5250
Wire Notes Line
	5400 5250 5400 7350
Wire Notes Line
	5400 7350 1400 7350
Wire Notes Line
	1400 7350 1400 5250
Text Notes 1400 5200 0    118  ~ 0
Use direct 5V (Option 2)
Wire Wire Line
	2450 6200 3150 6200
Wire Wire Line
	3450 6200 4250 6200
Text Notes 7650 1150 0    50   ~ 0
5V Output feeds the micro controllers on this PCB.
Text Notes 1450 5450 0    50   ~ 0
The direct option is pnly used when Vin is 5V and we don't need to lower the voltage.\nA typical use case is when using addressable LED strip like WS2812.
Text HLabel 2450 6200 0    50   Input ~ 0
BuckVin
Text HLabel 6450 2000 2    50   Input ~ 0
Buck5VOut
Text HLabel 4250 6200 2    50   Input ~ 0
Buck5VOut
$EndSCHEMATC
