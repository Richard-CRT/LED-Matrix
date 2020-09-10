EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title "ESP32 Programming Circuit"
Date "2020-09-10"
Rev "v1.0"
Comp "Richard Carter"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8300 2400 8350 2400
Wire Wire Line
	8300 2000 8300 2400
Wire Wire Line
	8350 2000 8300 2000
Connection ~ 8600 2400
Wire Wire Line
	8550 2400 8600 2400
Wire Wire Line
	8600 2000 8600 2400
Wire Wire Line
	8550 2000 8600 2000
$Comp
L Device:C_Small C?
U 1 1 5F5D6074
P 8450 2400
AR Path="/5F5D6074" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5D6074" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5D6074" Ref="C12"  Part="1" 
F 0 "C12" V 8679 2400 50  0000 C CNN
F 1 "4.7uF" V 8588 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 2400 50  0001 C CNN
F 3 "~" H 8450 2400 50  0001 C CNN
	1    8450 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F5D607A
P 8450 2000
AR Path="/5F5D607A" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5D607A" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5D607A" Ref="C11"  Part="1" 
F 0 "C11" H 8542 2046 50  0000 L CNN
F 1 "0.1uF" H 8542 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8450 2000 50  0001 C CNN
F 3 "~" H 8450 2000 50  0001 C CNN
	1    8450 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 2400 8200 2400
Connection ~ 8300 2400
Wire Wire Line
	8400 2700 8400 2750
Wire Wire Line
	8200 2400 8200 2750
Wire Wire Line
	8200 4550 8200 4600
Wire Wire Line
	8200 4600 8400 4600
Wire Wire Line
	8400 4600 8400 4550
Connection ~ 8200 4600
Wire Wire Line
	7500 4600 8200 4600
$Comp
L Device:C_Small C?
U 1 1 5F5D6093
P 7500 3800
AR Path="/5F5D6093" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5D6093" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5D6093" Ref="C10"  Part="1" 
F 0 "C10" H 7592 3846 50  0000 L CNN
F 1 "0.1uF" H 7592 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 3800 50  0001 C CNN
F 3 "~" H 7500 3800 50  0001 C CNN
	1    7500 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	7500 3650 7500 3700
Wire Wire Line
	7500 3650 7600 3650
Wire Wire Line
	7500 3900 7500 4600
Text Label 6700 3450 2    50   ~ 0
D+
Text Label 6700 3350 2    50   ~ 0
D-
$Comp
L Device:C_Small C?
U 1 1 5F5D60AB
P 6750 3600
AR Path="/5F5D60AB" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5D60AB" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5D60AB" Ref="C8"  Part="1" 
F 0 "C8" H 6842 3646 50  0000 L CNN
F 1 "47pF" H 6842 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6750 3600 50  0001 C CNN
F 3 "~" H 6750 3600 50  0001 C CNN
	1    6750 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F5D60B1
P 6850 3800
AR Path="/5F5D60B1" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5D60B1" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5D60B1" Ref="C9"  Part="1" 
F 0 "C9" H 6942 3846 50  0000 L CNN
F 1 "47pF" H 6942 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6850 3800 50  0001 C CNN
F 3 "~" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6750 3350
Wire Wire Line
	6700 3450 6850 3450
Wire Wire Line
	6750 3500 6750 3350
Wire Wire Line
	6850 3700 6850 3450
Wire Wire Line
	6750 4600 6850 4600
Connection ~ 7500 4600
Connection ~ 6850 4600
Wire Wire Line
	6850 4600 7500 4600
Wire Wire Line
	6750 3700 6750 4600
Wire Wire Line
	6850 3900 6850 4600
NoConn ~ 7600 3050
Text Label 9100 3150 0    50   ~ 0
TXD0
Text Label 9100 3050 0    50   ~ 0
RXD0
Text Label 9100 3250 0    50   ~ 0
~RTS
NoConn ~ 9000 3350
NoConn ~ 9000 3550
NoConn ~ 9000 3650
NoConn ~ 9000 3750
$Comp
L Interface_USB:FT231XS U?
U 1 1 5F5D60CE
P 8300 3650
AR Path="/5F5D60CE" Ref="U?"  Part="1" 
AR Path="/5F591C5D/5F5D60CE" Ref="U?"  Part="1" 
AR Path="/5F889015/5F5D60CE" Ref="U4"  Part="1" 
F 0 "U4" H 8300 4731 50  0000 C CNN
F 1 "FT231XS" H 8300 4640 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 9300 2850 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 8300 3650 50  0001 C CNN
	1    8300 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F5D60D4
P 9650 4400
AR Path="/5F5D60D4" Ref="D?"  Part="1" 
AR Path="/5F591C5D/5F5D60D4" Ref="D?"  Part="1" 
AR Path="/5F889015/5F5D60D4" Ref="D6"  Part="1" 
F 0 "D6" H 9650 4635 50  0000 C CNN
F 1 "TX_LED" H 9650 4544 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9650 4400 50  0001 C CNN
F 3 "~" V 9650 4400 50  0001 C CNN
	1    9650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4400 9500 4400
$Comp
L Device:R_Small R?
U 1 1 5F5D60DB
P 9400 4400
AR Path="/5F5D60DB" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5D60DB" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5D60DB" Ref="R8"  Part="1" 
F 0 "R8" H 9459 4446 50  0000 L CNN
F 1 "CUR_LIMIT_220R" H 9459 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9400 4400 50  0001 C CNN
F 3 "~" H 9400 4400 50  0001 C CNN
	1    9400 4400
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D?
U 1 1 5F5D60E1
P 9650 4050
AR Path="/5F5D60E1" Ref="D?"  Part="1" 
AR Path="/5F591C5D/5F5D60E1" Ref="D?"  Part="1" 
AR Path="/5F889015/5F5D60E1" Ref="D5"  Part="1" 
F 0 "D5" H 9650 4285 50  0000 C CNN
F 1 "RX_LED" H 9650 4194 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9650 4050 50  0001 C CNN
F 3 "~" V 9650 4050 50  0001 C CNN
	1    9650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 4050 9500 4050
$Comp
L Device:R_Small R?
U 1 1 5F5D60E8
P 9400 4050
AR Path="/5F5D60E8" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5D60E8" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5D60E8" Ref="R7"  Part="1" 
F 0 "R7" H 9459 4096 50  0000 L CNN
F 1 "CUR_LIMIT_220R" H 9459 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9400 4050 50  0001 C CNN
F 3 "~" H 9400 4050 50  0001 C CNN
	1    9400 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 4050 9850 4050
Wire Wire Line
	9750 4400 9850 4400
Wire Wire Line
	9850 4400 9850 4050
Connection ~ 9850 4050
Wire Wire Line
	9300 4050 9000 4050
Wire Wire Line
	9000 4150 9200 4150
Wire Wire Line
	9200 4150 9200 4400
Wire Wire Line
	9200 4400 9300 4400
NoConn ~ 9000 3950
NoConn ~ 9000 4250
Wire Wire Line
	9000 3450 9100 3450
Text Label 9100 3450 0    50   ~ 0
~DTR
Wire Wire Line
	9000 3250 9100 3250
Wire Wire Line
	9000 3150 9100 3150
Wire Wire Line
	9000 3050 9100 3050
Wire Wire Line
	3100 5600 3100 5550
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5F5F2511
P 3100 4150
AR Path="/5F5F2511" Ref="U?"  Part="1" 
AR Path="/5F591C5D/5F5F2511" Ref="U?"  Part="1" 
AR Path="/5F889015/5F5F2511" Ref="U3"  Part="1" 
F 0 "U3" H 3100 5731 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 3100 5640 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3100 2650 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2800 4200 50  0001 C CNN
	1    3100 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5F5F251D
P 3550 2600
AR Path="/5F5F251D" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5F251D" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5F251D" Ref="C4"  Part="1" 
F 0 "C4" H 3638 2646 50  0000 L CNN
F 1 "22uF" H 3638 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F5F2523
P 3900 2600
AR Path="/5F5F2523" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5F2523" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5F2523" Ref="C5"  Part="1" 
F 0 "C5" H 3992 2646 50  0000 L CNN
F 1 "0.1uF" H 3992 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3900 2600 50  0001 C CNN
F 3 "~" H 3900 2600 50  0001 C CNN
	1    3900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2500 3550 2450
Wire Wire Line
	3900 2450 3900 2500
Wire Wire Line
	3550 2700 3550 2750
Wire Wire Line
	3900 2750 3900 2700
Wire Wire Line
	3550 2450 3900 2450
Wire Wire Line
	3550 2750 3900 2750
Wire Wire Line
	3550 2450 3100 2450
Connection ~ 3550 2450
Wire Wire Line
	3100 2450 3100 2750
Wire Wire Line
	3950 2750 3900 2750
Connection ~ 3900 2750
$Comp
L Device:C_Small C?
U 1 1 5F5F2548
P 1950 3100
AR Path="/5F5F2548" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5F2548" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5F2548" Ref="C3"  Part="1" 
F 0 "C3" H 2042 3146 50  0000 L CNN
F 1 "0.1uF" H 2042 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1950 3100 50  0001 C CNN
F 3 "~" H 1950 3100 50  0001 C CNN
	1    1950 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F5F254F
P 4950 2200
AR Path="/5F5F254F" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5F254F" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5F254F" Ref="C6"  Part="1" 
F 0 "C6" H 5042 2246 50  0000 L CNN
F 1 "0.1uF" H 5042 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4950 2200 50  0001 C CNN
F 3 "~" H 4950 2200 50  0001 C CNN
	1    4950 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2900 1950 2950
Connection ~ 1950 2950
Wire Wire Line
	1950 2950 1950 3000
Text Label 2450 2950 2    50   ~ 0
EN
Wire Wire Line
	1950 2950 2500 2950
Text Label 4950 1850 2    50   ~ 0
EN
$Comp
L Switch:SW_Push SW?
U 1 1 5F5F2568
P 5300 2200
AR Path="/5F5F2568" Ref="SW?"  Part="1" 
AR Path="/5F591C5D/5F5F2568" Ref="SW?"  Part="1" 
AR Path="/5F889015/5F5F2568" Ref="SW2"  Part="1" 
F 0 "SW2" V 5254 2348 50  0000 L CNN
F 1 "EN" V 5345 2348 50  0000 L CNN
F 2 "SamacSys:SKTHAHE010" H 5300 2400 50  0001 C CNN
F 3 "~" H 5300 2400 50  0001 C CNN
	1    5300 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2450 5300 2450
Wire Wire Line
	5300 2450 5300 2400
Connection ~ 4950 2450
Wire Wire Line
	4950 2300 4950 2450
Wire Wire Line
	5300 2000 5300 1950
Wire Wire Line
	5300 1950 4950 1950
Wire Wire Line
	4950 1950 4950 2100
Wire Wire Line
	4950 1850 4950 1950
$Comp
L Device:C_Small C?
U 1 1 5F5F2577
P 5750 2200
AR Path="/5F5F2577" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5F5F2577" Ref="C?"  Part="1" 
AR Path="/5F889015/5F5F2577" Ref="C7"  Part="1" 
F 0 "C7" H 5842 2246 50  0000 L CNN
F 1 "0.1uF" H 5842 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5750 2200 50  0001 C CNN
F 3 "~" H 5750 2200 50  0001 C CNN
	1    5750 2200
	1    0    0    -1  
$EndComp
Text Label 3800 2950 0    50   ~ 0
IO0
Wire Wire Line
	5750 2450 6100 2450
Wire Wire Line
	6100 2450 6100 2400
Connection ~ 5750 2450
Wire Wire Line
	5750 2300 5750 2450
Wire Wire Line
	6100 2000 6100 1950
Wire Wire Line
	6100 1950 5750 1950
Wire Wire Line
	5750 1950 5750 2100
Wire Wire Line
	5750 1850 5750 1950
Text Label 5750 1850 0    50   ~ 0
IO0
$Comp
L Switch:SW_Push SW?
U 1 1 5F5F258F
P 6100 2200
AR Path="/5F5F258F" Ref="SW?"  Part="1" 
AR Path="/5F591C5D/5F5F258F" Ref="SW?"  Part="1" 
AR Path="/5F889015/5F5F258F" Ref="SW3"  Part="1" 
F 0 "SW3" V 6054 2348 50  0000 L CNN
F 1 "BOOT" V 6145 2348 50  0000 L CNN
F 2 "SamacSys:SKTHAHE010" H 6100 2400 50  0001 C CNN
F 3 "~" H 6100 2400 50  0001 C CNN
	1    6100 2200
	0    1    1    0   
$EndComp
Text Label 3800 3050 0    50   ~ 0
TXD0
Text Label 3800 3250 0    50   ~ 0
RXD0
$Comp
L Transistor_BJT:MBT3904DW1 Q?
U 1 1 5F5F2599
P 5500 3400
AR Path="/5F5F2599" Ref="Q?"  Part="1" 
AR Path="/5F591C5D/5F5F2599" Ref="Q?"  Part="1" 
AR Path="/5F889015/5F5F2599" Ref="Q1"  Part="1" 
F 0 "Q1" H 5691 3446 50  0000 L CNN
F 1 "MBT3904DW1" H 5691 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5700 3500 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 5500 3400 50  0001 C CNN
	1    5500 3400
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MBT3904DW1 Q?
U 2 1 5F5F259F
P 5500 3950
AR Path="/5F5F259F" Ref="Q?"  Part="2" 
AR Path="/5F591C5D/5F5F259F" Ref="Q?"  Part="2" 
AR Path="/5F889015/5F5F259F" Ref="Q1"  Part="2" 
F 0 "Q1" H 5691 3904 50  0000 L CNN
F 1 "MBT3904DW1" H 5691 3995 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5700 4050 50  0001 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MBT3904DW1T1-D.PDF" H 5500 3950 50  0001 C CNN
	2    5500 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F5F25A5
P 5850 3400
AR Path="/5F5F25A5" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5F25A5" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5F25A5" Ref="R3"  Part="1" 
F 0 "R3" H 5909 3446 50  0000 L CNN
F 1 "10k" H 5909 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5850 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F5F25AB
P 5850 3950
AR Path="/5F5F25AB" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5F25AB" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5F25AB" Ref="R4"  Part="1" 
F 0 "R4" H 5909 3996 50  0000 L CNN
F 1 "10k" H 5909 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5850 3950 50  0001 C CNN
F 3 "~" H 5850 3950 50  0001 C CNN
	1    5850 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5400 3750 5400 3700
Wire Wire Line
	5400 3700 6000 3700
Wire Wire Line
	6000 3700 6000 3400
Wire Wire Line
	6000 3400 5950 3400
Wire Wire Line
	5750 3400 5700 3400
Wire Wire Line
	5700 3950 5750 3950
Wire Wire Line
	5400 3600 5400 3650
Wire Wire Line
	5400 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3950
Wire Wire Line
	6050 3950 5950 3950
Text Label 6100 3950 0    50   ~ 0
~RTS
Text Label 6100 3400 0    50   ~ 0
~DTR
Text Label 5400 3100 2    50   ~ 0
EN
Text Label 5400 4250 2    50   ~ 0
IO0
Wire Wire Line
	6100 3950 6050 3950
Connection ~ 6050 3950
Wire Wire Line
	6100 3400 6000 3400
Connection ~ 6000 3400
Wire Wire Line
	5400 4150 5400 4250
Wire Wire Line
	5400 3100 5400 3200
Connection ~ 4950 1950
Connection ~ 5750 1950
NoConn ~ 2500 4350
NoConn ~ 2500 4450
NoConn ~ 2500 4550
NoConn ~ 2500 4650
NoConn ~ 2500 4250
NoConn ~ 2500 4150
Text Notes 6300 4600 2    50   ~ 0
~DTR~ ~RTS~ EN IO0\n1    1    1   1\n0    0    1   1\n1    0    0   1\n0    1    1   0
Wire Wire Line
	3100 2400 3100 2450
Connection ~ 3100 2450
Wire Wire Line
	1950 3200 1950 3300
Wire Wire Line
	4950 2450 4950 2550
Wire Wire Line
	5750 2450 5750 2550
Wire Wire Line
	8200 4600 8200 4700
Wire Wire Line
	9850 4050 9950 4050
Wire Wire Line
	8400 2700 8600 2700
Wire Wire Line
	8200 2300 8200 2400
Connection ~ 8200 2400
Wire Wire Line
	8600 2400 8700 2400
Text HLabel 2000 1650 0    50   Input ~ 0
+5V
Text HLabel 2000 1850 0    50   Input ~ 0
GND
Text Label 2100 1650 0    50   ~ 0
+5V
Text Label 2100 1850 0    50   ~ 0
GND
Wire Wire Line
	2000 1650 2100 1650
Wire Wire Line
	2000 1850 2100 1850
Text HLabel 2000 1750 0    50   Input ~ 0
+3.3V
Text Label 2100 1750 0    50   ~ 0
+3.3V
Wire Wire Line
	2000 1750 2100 1750
Text Label 1950 2650 1    50   ~ 0
+3.3V
Wire Wire Line
	1950 2650 1950 2700
$Comp
L Device:R_Small R?
U 1 1 5F5F2542
P 1950 2800
AR Path="/5F5F2542" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5F2542" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5F2542" Ref="R2"  Part="1" 
F 0 "R2" H 1891 2754 50  0000 R CNN
F 1 "10k" H 1891 2845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1950 2800 50  0001 C CNN
F 3 "~" H 1950 2800 50  0001 C CNN
	1    1950 2800
	1    0    0    -1  
$EndComp
Text Label 1950 3300 3    50   ~ 0
GND
Text Label 3100 2400 1    50   ~ 0
+3.3V
Text Label 3100 5600 3    50   ~ 0
GND
Text Label 5750 2550 3    50   ~ 0
GND
Text Label 4950 2550 3    50   ~ 0
GND
Text Label 9950 4050 0    50   ~ 0
+5V
Text Label 8200 2300 1    50   ~ 0
+5V
Text Label 8600 2700 0    50   ~ 0
+3.3V
Text Label 8200 4700 3    50   ~ 0
GND
Text Label 8700 2400 0    50   ~ 0
GND
Text HLabel 2000 1950 0    50   Input ~ 0
USB_D-
Text HLabel 2000 2050 0    50   Input ~ 0
USB_D+
Text Label 2100 1950 0    50   ~ 0
D-
Text Label 2100 2050 0    50   ~ 0
D+
Wire Wire Line
	2100 1950 2000 1950
Wire Wire Line
	2000 2050 2100 2050
Text HLabel 3700 5250 2    50   BiDi ~ 0
IO35
Text HLabel 3700 5050 2    50   BiDi ~ 0
IO33
Text HLabel 3700 5150 2    50   BiDi ~ 0
IO34
Text HLabel 3700 4950 2    50   BiDi ~ 0
IO32
Text HLabel 3700 4850 2    50   BiDi ~ 0
IO27
Text HLabel 3700 4750 2    50   BiDi ~ 0
IO26
Text HLabel 3700 4650 2    50   BiDi ~ 0
IO25
Text HLabel 3700 4550 2    50   BiDi ~ 0
IO23
Text HLabel 3700 4450 2    50   BiDi ~ 0
IO22
Text HLabel 3700 4350 2    50   BiDi ~ 0
IO21
Text HLabel 3700 4250 2    50   BiDi ~ 0
IO19
Text HLabel 3700 4150 2    50   BiDi ~ 0
IO18
Text HLabel 3700 4050 2    50   BiDi ~ 0
IO17
Text HLabel 3700 3950 2    50   BiDi ~ 0
IO16
Text HLabel 3700 3850 2    50   BiDi ~ 0
IO15
Text HLabel 3700 3750 2    50   BiDi ~ 0
IO14
Text HLabel 3700 3650 2    50   BiDi ~ 0
IO13
Text HLabel 3700 3550 2    50   BiDi ~ 0
IO12
Text HLabel 3700 3450 2    50   BiDi ~ 0
IO5
Text HLabel 3700 3350 2    50   BiDi ~ 0
IO4
Text HLabel 3700 3150 2    50   BiDi ~ 0
IO2
Text HLabel 4050 2950 2    50   BiDi ~ 0
IO0
Wire Wire Line
	3700 2950 4050 2950
Wire Wire Line
	3700 3050 4050 3050
Wire Wire Line
	3700 3250 4050 3250
Text HLabel 2500 3150 0    50   BiDi ~ 0
SENSOR_VP
Text HLabel 2500 3250 0    50   BiDi ~ 0
SENSOR_VN
Text Label 3950 2750 0    50   ~ 0
GND
Text HLabel 4050 3250 2    50   BiDi ~ 0
IO3_RXD0
Text HLabel 4050 3050 2    50   BiDi ~ 0
IO1_TXD0
$Comp
L Device:R_Small R?
U 1 1 5F5D60A4
P 7100 3450
AR Path="/5F5D60A4" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5D60A4" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5D60A4" Ref="R5"  Part="1" 
F 0 "R5" V 6904 3450 50  0000 C CNN
F 1 "27R" V 6995 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7100 3450 50  0001 C CNN
F 3 "~" H 7100 3450 50  0001 C CNN
	1    7100 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F5D609E
P 7300 3350
AR Path="/5F5D609E" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5F5D609E" Ref="R?"  Part="1" 
AR Path="/5F889015/5F5D609E" Ref="R6"  Part="1" 
F 0 "R6" V 7104 3350 50  0000 C CNN
F 1 "27R" V 7195 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7300 3350 50  0001 C CNN
F 3 "~" H 7300 3350 50  0001 C CNN
	1    7300 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3350 7200 3350
Connection ~ 6750 3350
Wire Wire Line
	7000 3450 6850 3450
Connection ~ 6850 3450
Wire Wire Line
	7400 3350 7600 3350
Wire Wire Line
	7200 3450 7600 3450
Wire Wire Line
	7500 3650 7500 2700
Wire Wire Line
	7500 2700 8400 2700
Connection ~ 7500 3650
Connection ~ 8400 2700
$EndSCHEMATC
