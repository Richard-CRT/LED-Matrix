EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2550 2700 2550 2650
Text Label 3150 1850 0    50   ~ 0
RESET
Wire Wire Line
	1950 2650 1950 2600
Wire Wire Line
	2050 2050 2000 2050
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5FA62242
P 1050 2050
AR Path="/5FA62242" Ref="RV?"  Part="1" 
AR Path="/5FA245CD/5FA62242" Ref="RV3"  Part="1" 
AR Path="/5FA32A05/5FA62242" Ref="RV?"  Part="1" 
AR Path="/5FA51921/5FA62242" Ref="RV?"  Part="1" 
AR Path="/5FAD2BE2/5FA62242" Ref="RV?"  Part="1" 
AR Path="/5FAF419F/5FA62242" Ref="RV?"  Part="1" 
AR Path="/5FAFFB20/5FA62242" Ref="RV1"  Part="1" 
F 0 "RV1" H 981 2096 50  0000 R CNN
F 1 "47k_POT_TRIM" H 981 2005 50  0000 R CNN
F 2 "" H 1050 2050 50  0001 C CNN
F 3 "~" H 1050 2050 50  0001 C CNN
	1    1050 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2500 1400 2550
$Comp
L Device:R_POT_TRIM RV?
U 1 1 5FA62243
P 1400 2350
AR Path="/5FA62243" Ref="RV?"  Part="1" 
AR Path="/5FA245CD/5FA62243" Ref="RV4"  Part="1" 
AR Path="/5FA32A05/5FA62243" Ref="RV?"  Part="1" 
AR Path="/5FA51921/5FA62243" Ref="RV?"  Part="1" 
AR Path="/5FAD2BE2/5FA62243" Ref="RV?"  Part="1" 
AR Path="/5FAF419F/5FA62243" Ref="RV?"  Part="1" 
AR Path="/5FAFFB20/5FA62243" Ref="RV2"  Part="1" 
F 0 "RV2" H 1331 2396 50  0000 R CNN
F 1 "47k_POT_TRIM" H 1331 2305 50  0000 R CNN
F 2 "" H 1400 2350 50  0001 C CNN
F 3 "~" H 1400 2350 50  0001 C CNN
	1    1400 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 2250 1050 2200
Text Label 1400 2550 3    50   ~ 0
+3.3V
Text Label 1350 700  0    50   ~ 0
GND
Wire Wire Line
	1250 600  1350 600 
Wire Wire Line
	1350 700  1250 700 
Wire Wire Line
	1350 800  1250 800 
Wire Wire Line
	1350 900  1250 900 
Wire Wire Line
	1350 1000 1250 1000
Wire Wire Line
	1350 1100 1250 1100
Text Label 2550 2700 3    50   ~ 0
GND
Text Label 3150 1750 0    50   ~ 0
STROBE
$Comp
L Device:C_Small C?
U 1 1 5FA537B5
P 1950 2500
AR Path="/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA537B5" Ref="C18"  Part="1" 
AR Path="/5FA32A05/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA537B5" Ref="C14"  Part="1" 
F 0 "C14" H 2042 2546 50  0000 L CNN
F 1 "33pF" H 2042 2455 50  0000 L CNN
F 2 "" H 1950 2500 50  0001 C CNN
F 3 "~" H 1950 2500 50  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FA537B6
P 1750 2350
AR Path="/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FA245CD/5FA537B6" Ref="R10"  Part="1" 
AR Path="/5FA32A05/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FA51921/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAF419F/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAFFB20/5FA537B6" Ref="R9"  Part="1" 
F 0 "R9" H 1809 2396 50  0000 L CNN
F 1 "180k" H 1809 2305 50  0000 L CNN
F 2 "" H 1750 2350 50  0001 C CNN
F 3 "~" H 1750 2350 50  0001 C CNN
	1    1750 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FA537B7
P 1900 2050
AR Path="/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA537B7" Ref="C17"  Part="1" 
AR Path="/5FA32A05/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA537B7" Ref="C13"  Part="1" 
F 0 "C13" H 1992 2096 50  0000 L CNN
F 1 "0.01uF" H 1992 2005 50  0000 L CNN
F 2 "" H 1900 2050 50  0001 C CNN
F 3 "~" H 1900 2050 50  0001 C CNN
	1    1900 2050
	0    -1   -1   0   
$EndComp
Text Label 1050 2250 3    50   ~ 0
AUDIO
Text Label 3150 2150 0    50   ~ 0
OUT
Wire Wire Line
	1800 2050 1200 2050
Text Label 1350 600  0    50   ~ 0
+3.3V
Text Label 1350 1100 0    50   ~ 0
OUT
Text Label 1350 1000 0    50   ~ 0
AUDIO
Text Label 1350 900  0    50   ~ 0
RESET
Text HLabel 1250 800  0    50   Input ~ 0
STROBE
Text HLabel 1250 700  0    50   Input ~ 0
GND
Text HLabel 1250 600  0    50   Input ~ 0
+3.3V
Text HLabel 1250 900  0    50   Input ~ 0
RESET
Text HLabel 1250 1100 0    50   Output ~ 0
OUT
Text Label 2350 1500 2    50   ~ 0
+3.3V
Wire Wire Line
	2700 1500 2550 1500
Wire Wire Line
	2550 1550 2550 1500
Connection ~ 2550 1500
Wire Wire Line
	2550 1500 2350 1500
$Comp
L Device:C_Small C?
U 1 1 5FA30A38
P 2800 1500
AR Path="/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA30A38" Ref="C19"  Part="1" 
AR Path="/5FA32A05/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA30A38" Ref="C15"  Part="1" 
F 0 "C15" H 2892 1546 50  0000 L CNN
F 1 "0.1uF" H 2892 1455 50  0000 L CNN
F 2 "" H 2800 1500 50  0001 C CNN
F 3 "~" H 2800 1500 50  0001 C CNN
	1    2800 1500
	0    -1   -1   0   
$EndComp
Text Label 3000 1500 0    50   ~ 0
GND
$Comp
L Audio:MSGEQ7 U?
U 1 1 5FA6223C
P 2550 2050
AR Path="/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FA245CD/5FA6223C" Ref="U6"  Part="1" 
AR Path="/5FA32A05/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FA51921/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAD2BE2/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAF419F/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAFFB20/5FA6223C" Ref="U5"  Part="1" 
F 0 "U5" H 2550 2731 50  0000 C CNN
F 1 "MSGEQ7" H 2550 2640 50  0000 C CNN
F 2 "" H 2550 2050 50  0001 C CNN
F 3 "http://mix-sig.com/images/datasheets/MSGEQ7.pdf" H 2550 2050 50  0001 C CNN
	1    2550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1500 3000 1500
Wire Wire Line
	3050 1750 3150 1750
Wire Wire Line
	3150 1850 3050 1850
Wire Wire Line
	3050 2150 3150 2150
Wire Wire Line
	3050 2350 3100 2350
Wire Wire Line
	3100 2350 3100 2400
Wire Wire Line
	3100 2650 2550 2650
Wire Wire Line
	2550 2550 2550 2650
Connection ~ 2550 2650
Wire Wire Line
	1950 2650 2550 2650
Wire Wire Line
	1850 2350 1950 2350
Wire Wire Line
	1950 2400 1950 2350
Connection ~ 1950 2350
Wire Wire Line
	1950 2350 2050 2350
Wire Wire Line
	3100 2600 3100 2650
$Comp
L Device:C_Small C?
U 1 1 5FA6223E
P 3100 2500
AR Path="/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA6223E" Ref="C20"  Part="1" 
AR Path="/5FA32A05/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA6223E" Ref="C16"  Part="1" 
F 0 "C16" H 3192 2546 50  0000 L CNN
F 1 "0.1uF" H 3192 2455 50  0000 L CNN
F 2 "" H 3100 2500 50  0001 C CNN
F 3 "~" H 3100 2500 50  0001 C CNN
	1    3100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2350 1550 2350
Text Label 1350 800  0    50   ~ 0
STROBE
Text HLabel 1250 1000 0    50   Input ~ 0
AUDIO
NoConn ~ 900  2050
NoConn ~ 1250 2350
$EndSCHEMATC
