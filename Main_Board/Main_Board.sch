EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L Connector:USB_B_Micro J1
U 1 1 5F884CF6
P 1150 2100
AR Path="/5F884CF6" Ref="J1"  Part="1" 
AR Path="/5F591C5D/5F884CF6" Ref="J?"  Part="1" 
F 0 "J1" H 1207 2567 50  0000 C CNN
F 1 "USB_B_Micro" H 1207 2476 50  0000 C CNN
F 2 "" H 1300 2050 50  0001 C CNN
F 3 "~" H 1300 2050 50  0001 C CNN
	1    1150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2500 1050 2550
Wire Wire Line
	1050 2550 1150 2550
Wire Wire Line
	1150 2550 1150 2500
NoConn ~ 1450 2300
Connection ~ 1150 2550
Wire Wire Line
	2400 1900 2450 1900
$Comp
L Device:D_TVS D1
U 1 1 5F884D02
P 1600 2400
AR Path="/5F884D02" Ref="D1"  Part="1" 
AR Path="/5F591C5D/5F884D02" Ref="D?"  Part="1" 
F 0 "D1" V 1554 2479 50  0000 L CNN
F 1 "D_TVS" V 1645 2479 50  0000 L CNN
F 2 "" H 1600 2400 50  0001 C CNN
F 3 "~" H 1600 2400 50  0001 C CNN
	1    1600 2400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D2
U 1 1 5F884D08
P 2000 2400
AR Path="/5F884D08" Ref="D2"  Part="1" 
AR Path="/5F591C5D/5F884D08" Ref="D?"  Part="1" 
F 0 "D2" V 1954 2479 50  0000 L CNN
F 1 "D_TVS" V 2045 2479 50  0000 L CNN
F 2 "" H 2000 2400 50  0001 C CNN
F 3 "~" H 2000 2400 50  0001 C CNN
	1    2000 2400
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D3
U 1 1 5F884D0E
P 2400 2400
AR Path="/5F884D0E" Ref="D3"  Part="1" 
AR Path="/5F591C5D/5F884D0E" Ref="D?"  Part="1" 
F 0 "D3" V 2354 2479 50  0000 L CNN
F 1 "D_TVS" V 2445 2479 50  0000 L CNN
F 2 "" H 2400 2400 50  0001 C CNN
F 3 "~" H 2400 2400 50  0001 C CNN
	1    2400 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 2550 1600 2600
Wire Wire Line
	1600 2600 2000 2600
Wire Wire Line
	2400 2600 2400 2550
Wire Wire Line
	2000 2550 2000 2600
Connection ~ 2000 2600
Wire Wire Line
	2000 2600 2400 2600
Wire Wire Line
	2400 1900 2400 2250
Wire Wire Line
	2000 2250 2000 2100
Wire Wire Line
	2000 2100 1450 2100
Wire Wire Line
	1450 2200 1600 2200
Wire Wire Line
	1600 2200 1600 2250
Wire Wire Line
	1150 2550 1150 2600
Wire Wire Line
	1600 2600 1150 2600
Connection ~ 1600 2600
Connection ~ 1150 2600
Connection ~ 2400 1900
Wire Wire Line
	2000 2100 2450 2100
Connection ~ 2000 2100
Wire Wire Line
	1600 2200 2450 2200
Connection ~ 1600 2200
Text Label 2450 2100 0    50   ~ 0
D+
Text Label 2450 2200 0    50   ~ 0
D-
Wire Wire Line
	1150 2600 1150 2700
Wire Wire Line
	1750 4650 2150 4650
Connection ~ 1750 4650
Wire Wire Line
	1750 4450 1750 4650
Wire Wire Line
	2150 4650 2150 4600
Wire Wire Line
	1350 4650 1750 4650
Wire Wire Line
	1350 4600 1350 4650
Wire Wire Line
	1350 4150 1350 4050
Connection ~ 1350 4150
Wire Wire Line
	1450 4150 1350 4150
Wire Wire Line
	1350 4050 1450 4050
Wire Wire Line
	1350 4400 1350 4150
$Comp
L Regulator_Linear:TLV75533PDBV U1
U 1 1 5F884D3D
P 1750 4150
AR Path="/5F884D3D" Ref="U1"  Part="1" 
AR Path="/5F591C5D/5F884D3D" Ref="U?"  Part="1" 
F 0 "U1" H 1750 4492 50  0000 C CNN
F 1 "TLV75533PDBV" H 1750 4401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1750 4475 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv755p.pdf" H 1750 4200 50  0001 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4050 2050 4050
Wire Wire Line
	2150 4400 2150 4050
Wire Wire Line
	1200 3850 1200 4050
Wire Wire Line
	1200 4050 1350 4050
Connection ~ 1350 4050
$Comp
L power:Earth #PWR02
U 1 1 5F884D4E
P 1350 4700
AR Path="/5F884D4E" Ref="#PWR02"  Part="1" 
AR Path="/5F591C5D/5F884D4E" Ref="#PWR?"  Part="1" 
F 0 "#PWR02" H 1350 4450 50  0001 C CNN
F 1 "Earth" H 1350 4550 50  0001 C CNN
F 2 "" H 1350 4700 50  0001 C CNN
F 3 "~" H 1350 4700 50  0001 C CNN
	1    1350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4700 1350 4650
Connection ~ 1350 4650
$Comp
L Device:LED_Small D4
U 1 1 5F884D56
P 2450 4250
AR Path="/5F884D56" Ref="D4"  Part="1" 
AR Path="/5F591C5D/5F884D56" Ref="D?"  Part="1" 
F 0 "D4" H 2450 4485 50  0000 C CNN
F 1 "3V3_LED" H 2450 4394 50  0000 C CNN
F 2 "" V 2450 4250 50  0001 C CNN
F 3 "~" V 2450 4250 50  0001 C CNN
	1    2450 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5F884D5C
P 2450 4500
AR Path="/5F884D5C" Ref="R1"  Part="1" 
AR Path="/5F591C5D/5F884D5C" Ref="R?"  Part="1" 
F 0 "R1" H 2509 4546 50  0000 L CNN
F 1 "CUR_LIMIT" H 2509 4455 50  0000 L CNN
F 2 "" H 2450 4500 50  0001 C CNN
F 3 "~" H 2450 4500 50  0001 C CNN
	1    2450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4050 2450 4050
Wire Wire Line
	2450 4050 2450 4150
Connection ~ 2150 4050
Wire Wire Line
	2450 4600 2450 4650
Wire Wire Line
	2450 4650 2150 4650
Connection ~ 2150 4650
Wire Wire Line
	2450 4350 2450 4400
Wire Wire Line
	2450 4050 2500 4050
Connection ~ 2450 4050
$Comp
L Switch:SW_SPDT SW1
U 1 1 5F884D6B
P 1200 3650
AR Path="/5F884D6B" Ref="SW1"  Part="1" 
AR Path="/5F591C5D/5F884D6B" Ref="SW?"  Part="1" 
F 0 "SW1" V 1246 3462 50  0000 R CNN
F 1 "SW_SPDT" V 1155 3462 50  0000 R CNN
F 2 "" H 1200 3650 50  0001 C CNN
F 3 "~" H 1200 3650 50  0001 C CNN
	1    1200 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 3400 1100 3450
Wire Wire Line
	1300 3400 1300 3450
Text Label 2450 1900 0    50   ~ 0
+USB_5V
Text Label 1300 3400 1    50   ~ 0
+USB_5V
Text Label 1100 3400 1    50   ~ 0
+POW_5V
$Comp
L power:Earth #PWR01
U 1 1 5F884D76
P 1150 2700
AR Path="/5F884D76" Ref="#PWR01"  Part="1" 
AR Path="/5F591C5D/5F884D76" Ref="#PWR?"  Part="1" 
F 0 "#PWR01" H 1150 2450 50  0001 C CNN
F 1 "Earth" H 1150 2550 50  0001 C CNN
F 2 "" H 1150 2700 50  0001 C CNN
F 3 "~" H 1150 2700 50  0001 C CNN
	1    1150 2700
	1    0    0    -1  
$EndComp
Text Label 2500 4050 0    50   ~ 0
+3.3V
$Sheet
S 3450 1200 1000 2700
U 5F889015
F0 "ESP32_Circuit" 50
F1 "ESP32_Circuit.sch" 50
F2 "+3.3V" I L 3450 1400 50 
F3 "+USB_5V" I L 3450 1300 50 
F4 "GND" I L 3450 1500 50 
F5 "USB_D-" I L 3450 1800 50 
F6 "USB_D+" I L 3450 1700 50 
F7 "IO35" B R 4450 3600 50 
F8 "IO33" B R 4450 3400 50 
F9 "IO34" B R 4450 3500 50 
F10 "IO32" B R 4450 3300 50 
F11 "IO27" B R 4450 3200 50 
F12 "IO26" B R 4450 3100 50 
F13 "IO25" B R 4450 3000 50 
F14 "IO23" B R 4450 2900 50 
F15 "IO22" B R 4450 2800 50 
F16 "IO21" B R 4450 2700 50 
F17 "IO19" B R 4450 2600 50 
F18 "IO18" B R 4450 2500 50 
F19 "IO17" B R 4450 2400 50 
F20 "IO16" B R 4450 2300 50 
F21 "IO15" B R 4450 2200 50 
F22 "IO14" B R 4450 2100 50 
F23 "IO13" B R 4450 2000 50 
F24 "IO12" B R 4450 1900 50 
F25 "IO5" B R 4450 1800 50 
F26 "IO4" B R 4450 1700 50 
F27 "IO2" B R 4450 1500 50 
F28 "IO3_RXD0" B R 4450 1600 50 
F29 "IO1_TXD0" B R 4450 1400 50 
F30 "IO0" B R 4450 1300 50 
F31 "SENSOR_VP" B R 4450 3700 50 
F32 "SENSOR_VN" B R 4450 3800 50 
$EndSheet
Text Label 3350 1300 2    50   ~ 0
+USB_5V
Text Label 3350 1400 2    50   ~ 0
+3.3V
$Comp
L power:Earth #PWR04
U 1 1 5F89FE5C
P 3350 1500
AR Path="/5F89FE5C" Ref="#PWR04"  Part="1" 
AR Path="/5F591C5D/5F89FE5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR04" H 3350 1250 50  0001 C CNN
F 1 "Earth" H 3350 1350 50  0001 C CNN
F 2 "" H 3350 1500 50  0001 C CNN
F 3 "~" H 3350 1500 50  0001 C CNN
	1    3350 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1500 3450 1500
Wire Wire Line
	3350 1400 3450 1400
Wire Wire Line
	3450 1300 3350 1300
Text Label 3350 1700 2    50   ~ 0
D+
Text Label 3350 1800 2    50   ~ 0
D-
Wire Wire Line
	3450 1700 3350 1700
Wire Wire Line
	3450 1800 3350 1800
Wire Wire Line
	4450 1900 4550 1900
NoConn ~ 4550 1900
Wire Wire Line
	4450 2000 4550 2000
NoConn ~ 4550 2000
Wire Wire Line
	4450 2100 4550 2100
NoConn ~ 4550 2100
Wire Wire Line
	4450 2200 4550 2200
NoConn ~ 4550 2200
Wire Wire Line
	4450 2300 4550 2300
NoConn ~ 4550 2300
Wire Wire Line
	4450 2400 4550 2400
NoConn ~ 4550 2400
Wire Wire Line
	4450 2500 4550 2500
NoConn ~ 4550 2500
Wire Wire Line
	4450 2600 4550 2600
NoConn ~ 4550 2600
Wire Wire Line
	4450 2700 4550 2700
NoConn ~ 4550 2700
Wire Wire Line
	4450 2800 4550 2800
NoConn ~ 4550 2800
Wire Wire Line
	4450 2900 4550 2900
NoConn ~ 4550 2900
Wire Wire Line
	4450 3000 4550 3000
NoConn ~ 4550 3000
Wire Wire Line
	4450 3100 4550 3100
NoConn ~ 4550 3100
Wire Wire Line
	4450 3200 4550 3200
NoConn ~ 4550 3200
Wire Wire Line
	4450 3500 4550 3500
NoConn ~ 4550 3500
Wire Wire Line
	4450 3600 4550 3600
NoConn ~ 4550 3600
Wire Wire Line
	4450 3700 4550 3700
NoConn ~ 4550 3700
Wire Wire Line
	4450 3800 4550 3800
NoConn ~ 4550 3800
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5F8C939F
P 1250 1300
F 0 "J2" H 1168 1517 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1168 1426 50  0000 C CNN
F 2 "" H 1250 1300 50  0001 C CNN
F 3 "~" H 1250 1300 50  0001 C CNN
	1    1250 1300
	-1   0    0    -1  
$EndComp
Text Label 1550 1300 0    50   ~ 0
+POW_5V
$Comp
L power:Earth #PWR03
U 1 1 5F8CFFE2
P 1850 1400
AR Path="/5F8CFFE2" Ref="#PWR03"  Part="1" 
AR Path="/5F591C5D/5F8CFFE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR03" H 1850 1150 50  0001 C CNN
F 1 "Earth" H 1850 1250 50  0001 C CNN
F 2 "" H 1850 1400 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1400 1850 1400
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F8D5DBF
P 1500 1100
F 0 "#FLG02" H 1500 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 1273 50  0000 C CNN
F 2 "" H 1500 1100 50  0001 C CNN
F 3 "~" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1100 1500 1300
Wire Wire Line
	1500 1300 1450 1300
Wire Wire Line
	1550 1300 1500 1300
Connection ~ 1500 1300
Wire Wire Line
	1450 1900 2400 1900
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F8EB554
P 1150 4050
F 0 "#FLG01" H 1150 4125 50  0001 C CNN
F 1 "PWR_FLAG" H 1150 4223 50  0000 C CNN
F 2 "" H 1150 4050 50  0001 C CNN
F 3 "~" H 1150 4050 50  0001 C CNN
	1    1150 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 4050 1200 4050
Connection ~ 1200 4050
$Comp
L Device:C_Small C1
U 1 1 5F96B41D
P 1350 4500
AR Path="/5F96B41D" Ref="C1"  Part="1" 
AR Path="/5F591C5D/5F96B41D" Ref="C?"  Part="1" 
AR Path="/5F889015/5F96B41D" Ref="C?"  Part="1" 
F 0 "C1" H 1442 4546 50  0000 L CNN
F 1 "10uF" H 1442 4455 50  0000 L CNN
F 2 "" H 1350 4500 50  0001 C CNN
F 3 "~" H 1350 4500 50  0001 C CNN
	1    1350 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F9710DE
P 2150 4500
AR Path="/5F9710DE" Ref="C2"  Part="1" 
AR Path="/5F591C5D/5F9710DE" Ref="C?"  Part="1" 
AR Path="/5F889015/5F9710DE" Ref="C?"  Part="1" 
F 0 "C2" H 2242 4546 50  0000 L CNN
F 1 "10uF" H 2242 4455 50  0000 L CNN
F 2 "" H 2150 4500 50  0001 C CNN
F 3 "~" H 2150 4500 50  0001 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
Text Label 6300 1150 1    50   ~ 0
+3.3V
Wire Wire Line
	6450 2200 6300 2200
Wire Wire Line
	6300 2200 6300 1350
Connection ~ 6300 1350
Wire Wire Line
	6300 1350 6450 1350
$Comp
L power:Earth #PWR05
U 1 1 5FA6FAB6
P 6350 2800
AR Path="/5FA6FAB6" Ref="#PWR05"  Part="1" 
AR Path="/5F591C5D/5FA6FAB6" Ref="#PWR?"  Part="1" 
F 0 "#PWR05" H 6350 2550 50  0001 C CNN
F 1 "Earth" H 6350 2650 50  0001 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "~" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1450 6350 1450
Wire Wire Line
	6350 1450 6350 2300
Connection ~ 6350 2300
Wire Wire Line
	6350 2300 6450 2300
Wire Wire Line
	6300 1150 6300 1350
Wire Wire Line
	6350 2800 6350 2300
Wire Wire Line
	6450 1550 6250 1550
Wire Wire Line
	6250 1550 6250 2400
Wire Wire Line
	6250 2400 6450 2400
Wire Wire Line
	6450 1650 6200 1650
Wire Wire Line
	6200 1650 6200 2500
Wire Wire Line
	6200 2500 6450 2500
Text Label 7500 1350 0    50   ~ 0
MSGEQ7_L_OUT
Text Label 7500 2200 0    50   ~ 0
MSGEQ7_R_OUT
Wire Wire Line
	7400 1350 7500 1350
Wire Wire Line
	7500 2200 7400 2200
$Sheet
S 6450 2100 950  600 
U 5FAFFB20
F0 "MSGEQ7_Circuit_R" 50
F1 "MSGEQ7_Circuit.sch" 50
F2 "+3.3V" I L 6450 2200 50 
F3 "GND" I L 6450 2300 50 
F4 "STROBE" I L 6450 2400 50 
F5 "RESET" I L 6450 2500 50 
F6 "OUT" O R 7400 2200 50 
F7 "AUDIO" I L 6450 2600 50 
$EndSheet
$Sheet
S 6450 1250 950  600 
U 5FA245CD
F0 "MSGEQ7_Circuit_L" 50
F1 "MSGEQ7_Circuit.sch" 50
F2 "+3.3V" I L 6450 1350 50 
F3 "GND" I L 6450 1450 50 
F4 "STROBE" I L 6450 1550 50 
F5 "RESET" I L 6450 1650 50 
F6 "OUT" O R 7400 1350 50 
F7 "AUDIO" I L 6450 1750 50 
$EndSheet
Wire Wire Line
	6450 1750 6100 1750
Wire Wire Line
	6450 2600 6100 2600
Wire Wire Line
	6200 2500 6100 2500
Connection ~ 6200 2500
Wire Wire Line
	6250 2400 6100 2400
Connection ~ 6250 2400
Text Label 6100 1750 2    50   ~ 0
AUDIO_L
Text Label 6100 2600 2    50   ~ 0
AUDIO_R
Text Label 6100 2500 2    50   ~ 0
MSGEQ7_RESET
Text Label 6100 2400 2    50   ~ 0
MSGEQ7_STROBE
$Comp
L Connector:Screw_Terminal_01x01 J3
U 1 1 5FB21930
P 6450 3250
F 0 "J3" H 6530 3292 50  0000 L CNN
F 1 "Screw_Terminal_01x01" H 6530 3201 50  0000 L CNN
F 2 "" H 6450 3250 50  0001 C CNN
F 3 "~" H 6450 3250 50  0001 C CNN
	1    6450 3250
	1    0    0    -1  
$EndComp
Text Label 6150 3250 2    50   ~ 0
LED_OUT
Wire Wire Line
	6150 3250 6250 3250
Text Label 4650 3300 0    50   ~ 0
MSGEQ7_L_OUT
Text Label 4650 3400 0    50   ~ 0
MSGEQ7_R_OUT
Wire Wire Line
	4450 3300 4650 3300
Wire Wire Line
	4450 3400 4650 3400
Text Label 4650 1500 0    50   ~ 0
LED_OUT
Wire Wire Line
	4450 1500 4650 1500
Text Label 4650 1800 0    50   ~ 0
MSGEQ7_RESET
Text Label 4650 1700 0    50   ~ 0
MSGEQ7_STROBE
Wire Wire Line
	4450 1700 4650 1700
Wire Wire Line
	4450 1800 4650 1800
$Comp
L Connector:AudioJack3 J4
U 1 1 5FB5ADE2
P 6100 3800
F 0 "J4" H 6082 4125 50  0000 C CNN
F 1 "AudioJack3" H 6082 4034 50  0000 C CNN
F 2 "" H 6100 3800 50  0001 C CNN
F 3 "~" H 6100 3800 50  0001 C CNN
	1    6100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0101
U 1 1 5FB5D663
P 6400 4600
AR Path="/5FB5D663" Ref="#PWR0101"  Part="1" 
AR Path="/5F591C5D/5FB5D663" Ref="#PWR?"  Part="1" 
F 0 "#PWR0101" H 6400 4350 50  0001 C CNN
F 1 "Earth" H 6400 4450 50  0001 C CNN
F 2 "" H 6400 4600 50  0001 C CNN
F 3 "~" H 6400 4600 50  0001 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
Text Label 6600 3900 0    50   ~ 0
AUDIO_L
Text Label 6600 3800 0    50   ~ 0
AUDIO_R
Wire Wire Line
	6400 3700 6300 3700
$Comp
L Connector:AudioJack3 J5
U 1 1 5FB76A93
P 6100 4400
F 0 "J5" H 6082 4725 50  0000 C CNN
F 1 "AudioJack3" H 6082 4634 50  0000 C CNN
F 2 "" H 6100 4400 50  0001 C CNN
F 3 "~" H 6100 4400 50  0001 C CNN
	1    6100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3700 6400 4300
Wire Wire Line
	6300 4300 6400 4300
Connection ~ 6400 4300
Wire Wire Line
	6400 4300 6400 4600
Wire Wire Line
	6300 3800 6450 3800
Wire Wire Line
	6450 3800 6450 4400
Wire Wire Line
	6450 4400 6300 4400
Wire Wire Line
	6300 3900 6500 3900
Wire Wire Line
	6500 3900 6500 4500
Wire Wire Line
	6500 4500 6300 4500
Wire Wire Line
	6600 3800 6450 3800
Connection ~ 6450 3800
Wire Wire Line
	6500 3900 6600 3900
Connection ~ 6500 3900
$EndSCHEMATC