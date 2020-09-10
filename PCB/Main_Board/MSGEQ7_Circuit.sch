EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "MSGEQ7 Circuit"
Date "2020-09-10"
Rev "v1.0"
Comp "Richard Carter"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1200 900  0    50   ~ 0
GND
Wire Wire Line
	1100 800  1200 800 
Wire Wire Line
	1200 900  1100 900 
Wire Wire Line
	1200 1000 1100 1000
Wire Wire Line
	1200 1100 1100 1100
Wire Wire Line
	1200 1200 1100 1200
Wire Wire Line
	1200 1300 1100 1300
Text Label 3250 2750 3    50   ~ 0
GND
Text Label 1200 800  0    50   ~ 0
+3.3V
Text Label 1200 1300 0    50   ~ 0
OUT
Text Label 1200 1200 0    50   ~ 0
AUDIO
Text Label 1200 1100 0    50   ~ 0
RESET
Text HLabel 1100 1000 0    50   Input ~ 0
STROBE
Text HLabel 1100 900  0    50   Input ~ 0
GND
Text HLabel 1100 800  0    50   Input ~ 0
+3.3V
Text HLabel 1100 1100 0    50   Input ~ 0
RESET
Text HLabel 1100 1300 0    50   Output ~ 0
OUT
Text Label 1200 1000 0    50   ~ 0
STROBE
Text HLabel 1100 1200 0    50   Input ~ 0
AUDIO
Wire Wire Line
	1950 2650 1950 2600
Wire Wire Line
	2350 2400 2250 2400
$Comp
L Device:C_Small C?
U 1 1 5FA6223E
P 3800 2550
AR Path="/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA6223E" Ref="C20"  Part="1" 
AR Path="/5FA32A05/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA6223E" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA6223E" Ref="C16"  Part="1" 
F 0 "C20" H 3892 2596 50  0000 L CNN
F 1 "0.1uF" H 3892 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3800 2550 50  0001 C CNN
F 3 "~" H 3800 2550 50  0001 C CNN
	1    3800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2650 3800 2700
Wire Wire Line
	2650 2400 2750 2400
Connection ~ 2650 2400
Wire Wire Line
	2650 2450 2650 2400
Wire Wire Line
	2550 2400 2650 2400
Wire Wire Line
	2650 2700 3250 2700
Connection ~ 3250 2700
Wire Wire Line
	3250 2600 3250 2700
Wire Wire Line
	3800 2700 3250 2700
Wire Wire Line
	3800 2400 3800 2450
Wire Wire Line
	3750 2400 3800 2400
Wire Wire Line
	3750 2200 3850 2200
Wire Wire Line
	3850 1900 3750 1900
Wire Wire Line
	3750 1800 3850 1800
Wire Wire Line
	3600 1550 3700 1550
$Comp
L Audio:MSGEQ7 U?
U 1 1 5FA6223C
P 3250 2100
AR Path="/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FA245CD/5FA6223C" Ref="U6"  Part="1" 
AR Path="/5FA32A05/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FA51921/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAD2BE2/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAF419F/5FA6223C" Ref="U?"  Part="1" 
AR Path="/5FAFFB20/5FA6223C" Ref="U5"  Part="1" 
F 0 "U6" H 3250 2781 50  0000 C CNN
F 1 "MSGEQ7" H 3250 2690 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3250 2100 50  0001 C CNN
F 3 "http://mix-sig.com/images/datasheets/MSGEQ7.pdf" H 3250 2100 50  0001 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
Text Label 3700 1550 0    50   ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 5FA30A38
P 3500 1550
AR Path="/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA30A38" Ref="C19"  Part="1" 
AR Path="/5FA32A05/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA30A38" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA30A38" Ref="C15"  Part="1" 
F 0 "C19" H 3592 1596 50  0000 L CNN
F 1 "0.1uF" H 3592 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3500 1550 50  0001 C CNN
F 3 "~" H 3500 1550 50  0001 C CNN
	1    3500 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 1550 3050 1550
Connection ~ 3250 1550
Wire Wire Line
	3250 1600 3250 1550
Wire Wire Line
	3400 1550 3250 1550
Text Label 3050 1550 2    50   ~ 0
+3.3V
Text Label 3850 2200 0    50   ~ 0
OUT
$Comp
L Device:C_Small C?
U 1 1 5FA537B7
P 2600 2100
AR Path="/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA537B7" Ref="C17"  Part="1" 
AR Path="/5FA32A05/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA537B7" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA537B7" Ref="C13"  Part="1" 
F 0 "C17" H 2692 2146 50  0000 L CNN
F 1 "10nF" H 2692 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2600 2100 50  0001 C CNN
F 3 "~" H 2600 2100 50  0001 C CNN
	1    2600 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5FA537B6
P 2450 2400
AR Path="/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5F591C5D/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FA245CD/5FA537B6" Ref="R10"  Part="1" 
AR Path="/5FA32A05/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FA51921/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAF419F/5FA537B6" Ref="R?"  Part="1" 
AR Path="/5FAFFB20/5FA537B6" Ref="R9"  Part="1" 
F 0 "R10" H 2509 2446 50  0000 L CNN
F 1 "180k" H 2509 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2450 2400 50  0001 C CNN
F 3 "~" H 2450 2400 50  0001 C CNN
	1    2450 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FA537B5
P 2650 2550
AR Path="/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5F591C5D/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5F889015/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FA245CD/5FA537B5" Ref="C18"  Part="1" 
AR Path="/5FA32A05/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FA51921/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAD2BE2/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAF419F/5FA537B5" Ref="C?"  Part="1" 
AR Path="/5FAFFB20/5FA537B5" Ref="C14"  Part="1" 
F 0 "C18" H 2742 2596 50  0000 L CNN
F 1 "33pF" H 2742 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2650 2550 50  0001 C CNN
F 3 "~" H 2650 2550 50  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
Text Label 3850 1800 0    50   ~ 0
STROBE
Text Label 1950 2650 3    50   ~ 0
+3.3V
Wire Wire Line
	2750 2100 2700 2100
Wire Wire Line
	2650 2700 2650 2650
Text Label 3850 1900 0    50   ~ 0
RESET
Wire Wire Line
	3250 2750 3250 2700
$Comp
L SamacSys:TC42X-2-503E VR4
U 1 1 5F57BA41
P 1950 2400
AR Path="/5FA245CD/5F57BA41" Ref="VR4"  Part="1" 
AR Path="/5FAFFB20/5F57BA41" Ref="VR2"  Part="1" 
F 0 "VR4" V 1683 2400 50  0000 C CNN
F 1 "TC42X-2-503E" V 1774 2400 50  0000 C CNN
F 2 "SamacSys:TC42X2503E" H 2900 2500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TC42X-2-503E.pdf" H 2900 2400 50  0001 L CNN
F 4 "Res Cermet Trimmer 50K Ohm 25% 0.1W(1/10W) 1(Elec)/1(Mech)Turns (2.2 X 2.8 X 0.8mm) Footprint SMD T/R" H 2900 2300 50  0001 L CNN "Description"
F 5 "0.9" H 2900 2200 50  0001 L CNN "Height"
F 6 "652-TC42X-2-503E" H 2900 2100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=652-TC42X-2-503E" H 2900 2000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2900 1900 50  0001 L CNN "Manufacturer_Name"
F 9 "TC42X-2-503E" H 2900 1800 50  0001 L CNN "Manufacturer_Part_Number"
	1    1950 2400
	0    -1   1    0   
$EndComp
$Comp
L SamacSys:TC42X-2-503E VR3
U 1 1 5F5A2DFD
P 1350 2100
AR Path="/5FA245CD/5F5A2DFD" Ref="VR3"  Part="1" 
AR Path="/5FAFFB20/5F5A2DFD" Ref="VR1"  Part="1" 
F 0 "VR3" V 1083 2100 50  0000 C CNN
F 1 "TC42X-2-503E" V 1174 2100 50  0000 C CNN
F 2 "SamacSys:TC42X2503E" H 2300 2200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TC42X-2-503E.pdf" H 2300 2100 50  0001 L CNN
F 4 "Res Cermet Trimmer 50K Ohm 25% 0.1W(1/10W) 1(Elec)/1(Mech)Turns (2.2 X 2.8 X 0.8mm) Footprint SMD T/R" H 2300 2000 50  0001 L CNN "Description"
F 5 "0.9" H 2300 1900 50  0001 L CNN "Height"
F 6 "652-TC42X-2-503E" H 2300 1800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=652-TC42X-2-503E" H 2300 1700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2300 1600 50  0001 L CNN "Manufacturer_Name"
F 9 "TC42X-2-503E" H 2300 1500 50  0001 L CNN "Manufacturer_Part_Number"
	1    1350 2100
	0    -1   1    0   
$EndComp
Wire Wire Line
	1650 2100 2500 2100
Text Label 1350 2350 3    50   ~ 0
AUDIO
Wire Wire Line
	1350 2350 1350 2300
NoConn ~ 1650 2400
NoConn ~ 1050 2100
$EndSCHEMATC
