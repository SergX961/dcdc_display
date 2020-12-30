EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "DISPLAY"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:Earth #PWR?
U 1 1 6016227A
P 1250 3150
F 0 "#PWR?" H 1250 2900 50  0001 C CNN
F 1 "Earth" H 1250 3000 50  0001 C CNN
F 2 "" H 1250 3150 50  0001 C CNN
F 3 "~" H 1250 3150 50  0001 C CNN
	1    1250 3150
	1    0    0    -1  
$EndComp
$Comp
L 2020-12-28_10-48-59:STLM75DS2F CR2
U 1 1 60161E05
P 3250 2500
F 0 "CR2" H 4150 2887 60  0000 C CNN
F 1 "STLM75DS2F" H 4150 2781 60  0000 C CNN
F 2 "TSSOP8_STM" H 4150 2740 60  0001 C CNN
F 3 "" H 3250 2500 60  0000 C CNN
	1    3250 2500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 2700 1250 2700
Wire Wire Line
	1250 2700 1250 2800
Wire Wire Line
	1450 2600 1250 2600
Wire Wire Line
	1250 2600 1250 2700
Connection ~ 1250 2700
Wire Wire Line
	1450 2800 1250 2800
Connection ~ 1250 2800
Wire Wire Line
	1250 2800 1250 3100
$Comp
L pspice:CAP C16
U 1 1 60164E78
P 800 2750
F 0 "C16" H 978 2796 50  0000 L CNN
F 1 "100nF" H 978 2705 50  0000 L CNN
F 2 "" H 800 2750 50  0001 C CNN
F 3 "~" H 800 2750 50  0001 C CNN
	1    800  2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3000 800  3100
Wire Wire Line
	800  3100 1250 3100
Connection ~ 1250 3100
Wire Wire Line
	1250 3100 1250 3150
Wire Wire Line
	1450 2500 800  2500
$Comp
L power:VDD #PWR?
U 1 1 601676D0
P 800 2400
F 0 "#PWR?" H 800 2250 50  0001 C CNN
F 1 "VDD" H 815 2573 50  0000 C CNN
F 2 "" H 800 2400 50  0001 C CNN
F 3 "" H 800 2400 50  0001 C CNN
	1    800  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2400 800  2500
Connection ~ 800  2500
$Comp
L power:Earth #PWR?
U 1 1 601688DD
P 3350 3000
F 0 "#PWR?" H 3350 2750 50  0001 C CNN
F 1 "Earth" H 3350 2850 50  0001 C CNN
F 2 "" H 3350 3000 50  0001 C CNN
F 3 "~" H 3350 3000 50  0001 C CNN
	1    3350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2800 3350 2800
Wire Wire Line
	3350 2800 3350 3000
$Comp
L Transistor_FET:IRLML6401 Q1
U 1 1 601691FA
P 2150 4900
F 0 "Q1" H 2355 4946 50  0000 L CNN
F 1 "IRLML6401" H 2355 4855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 4825 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6401pbf.pdf?fileId=5546d462533600a401535668b96d2634" H 2150 4900 50  0001 L CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6016A79A
P 1600 4850
F 0 "R3" H 1670 4896 50  0000 L CNN
F 1 "10K" H 1670 4805 50  0000 L CNN
F 2 "" V 1530 4850 50  0001 C CNN
F 3 "~" H 1600 4850 50  0001 C CNN
	1    1600 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5000 1600 5300
Wire Wire Line
	1600 5300 2250 5300
Wire Wire Line
	2250 5300 2250 5100
Wire Wire Line
	1600 4700 1600 4350
Wire Wire Line
	1600 4350 1950 4350
Wire Wire Line
	1950 4350 1950 4900
$Comp
L Device:R R4
U 1 1 6016B61A
P 2250 4500
F 0 "R4" H 2320 4546 50  0000 L CNN
F 1 "10K" H 2320 4455 50  0000 L CNN
F 2 "" V 2180 4500 50  0001 C CNN
F 3 "~" H 2250 4500 50  0001 C CNN
	1    2250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4650 2250 4700
Wire Wire Line
	2250 4350 1950 4350
Connection ~ 1950 4350
$Comp
L power:+3.3V #PWR?
U 1 1 6016CD4F
P 1200 4050
F 0 "#PWR?" H 1200 3900 50  0001 C CNN
F 1 "+3.3V" H 1215 4223 50  0000 C CNN
F 2 "" H 1200 4050 50  0001 C CNN
F 3 "" H 1200 4050 50  0001 C CNN
	1    1200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5300 1600 5300
Connection ~ 1600 5300
Wire Wire Line
	1200 4050 1200 5300
$Comp
L power:VDD #PWR?
U 1 1 6016FD24
P 1950 4050
F 0 "#PWR?" H 1950 3900 50  0001 C CNN
F 1 "VDD" H 1965 4223 50  0000 C CNN
F 2 "" H 1950 4050 50  0001 C CNN
F 3 "" H 1950 4050 50  0001 C CNN
	1    1950 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 4050 1950 4350
Text GLabel 1600 4150 1    50   Input Italic 0
PWR_EN
Wire Wire Line
	1600 4150 1600 4350
Connection ~ 1600 4350
$Comp
L 2020-12-28_11-11-14:SI1304BDL-T1-E3 Q2
U 1 1 60171BCC
P 7100 2050
F 0 "Q2" H 7530 2103 60  0000 L CNN
F 1 "SI1304BDL-T1-E3" H 6450 2300 60  0000 L CNN
F 2 "SC-70_SI1_VIS" H 7550 1790 60  0001 C CNN
F 3 "" H 7100 2050 60  0000 C CNN
	1    7100 2050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x24_Female Display_GDEW0213M21
U 1 1 6017519F
P 9500 3050
F 0 "Display_GDEW0213M21" H 9900 3100 50  0000 L CNN
F 1 "Conn_01x24_Female" H 9950 3000 50  0000 L CNN
F 2 "" H 9500 3050 50  0001 C CNN
F 3 "~" H 9500 3050 50  0001 C CNN
	1    9500 3050
	1    0    0    -1  
$EndComp
Text Label 9600 1950 0    50   Italic 0
NC
Text Label 9600 2050 0    50   Italic 0
GDR
Text Label 9600 2150 0    50   Italic 0
RESE
Text Label 9600 2250 0    50   Italic 0
VGL
Text Label 9600 2350 0    50   Italic 0
VGH
Text Label 9600 2450 0    50   Italic 0
TSCL
Text Label 9600 2550 0    50   Italic 0
TSDA
Text Label 9600 2650 0    50   Italic 0
BS
Text Label 9600 2750 0    50   Italic 0
BUSY
Text Label 9600 2850 0    50   Italic 0
RES
Text Label 9600 2950 0    50   Italic 0
D\C
Text Label 9600 3050 0    50   Italic 0
CS
Text Label 9600 3150 0    50   Italic 0
SCLK
Text Label 9600 3250 0    50   Italic 0
SDI
Text Label 9600 3350 0    50   Italic 0
VDDIO
Text Label 9600 3450 0    50   Italic 0
VCI
Text Label 9600 3550 0    50   Italic 0
VSS
Text Label 9600 3650 0    50   Italic 0
VDD
Text Label 9600 3750 0    50   Italic 0
VPP
Text Label 9600 3850 0    50   Italic 0
VSH
Text Label 9600 3950 0    50   Italic 0
PREVGH
Text Label 9600 4050 0    50   Italic 0
VSL
Text Label 9600 4150 0    50   Italic 0
PREVGL
Text Label 9600 4250 0    50   Italic 0
VCOM
$Comp
L pspice:CAP C22
U 1 1 6017C5EC
P 4700 5150
F 0 "C22" H 4878 5196 50  0000 L CNN
F 1 "1uF" H 4878 5105 50  0000 L CNN
F 2 "" H 4700 5150 50  0001 C CNN
F 3 "~" H 4700 5150 50  0001 C CNN
	1    4700 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C23
U 1 1 6017D32B
P 5400 5150
F 0 "C23" H 5578 5196 50  0000 L CNN
F 1 "1uF" H 5578 5105 50  0000 L CNN
F 2 "" H 5400 5150 50  0001 C CNN
F 3 "~" H 5400 5150 50  0001 C CNN
	1    5400 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C20
U 1 1 6017D8F1
P 5950 5150
F 0 "C20" H 6128 5196 50  0000 L CNN
F 1 "1uF" H 6128 5105 50  0000 L CNN
F 2 "" H 5950 5150 50  0001 C CNN
F 3 "~" H 5950 5150 50  0001 C CNN
	1    5950 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C24
U 1 1 6017DEDA
P 6500 5150
F 0 "C24" H 6678 5196 50  0000 L CNN
F 1 "1uF" H 6678 5105 50  0000 L CNN
F 2 "" H 6500 5150 50  0001 C CNN
F 3 "~" H 6500 5150 50  0001 C CNN
	1    6500 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C25
U 1 1 6017E649
P 7000 5150
F 0 "C25" H 7178 5196 50  0000 L CNN
F 1 "1uF" H 7178 5105 50  0000 L CNN
F 2 "" H 7000 5150 50  0001 C CNN
F 3 "~" H 7000 5150 50  0001 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C26
U 1 1 6017EE08
P 7500 5150
F 0 "C26" H 7678 5196 50  0000 L CNN
F 1 "1uF" H 7678 5105 50  0000 L CNN
F 2 "" H 7500 5150 50  0001 C CNN
F 3 "~" H 7500 5150 50  0001 C CNN
	1    7500 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C27
U 1 1 6017FA86
P 8050 5150
F 0 "C27" H 8228 5196 50  0000 L CNN
F 1 "1uF" H 8228 5105 50  0000 L CNN
F 2 "" H 8050 5150 50  0001 C CNN
F 3 "~" H 8050 5150 50  0001 C CNN
	1    8050 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C18
U 1 1 60180801
P 8600 5150
F 0 "C18" H 8778 5196 50  0000 L CNN
F 1 "2.2uF" H 8778 5105 50  0000 L CNN
F 2 "" H 8600 5150 50  0001 C CNN
F 3 "~" H 8600 5150 50  0001 C CNN
	1    8600 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C21
U 1 1 60180EE4
P 4150 5150
F 0 "C21" H 4328 5196 50  0000 L CNN
F 1 "1uF" H 4328 5105 50  0000 L CNN
F 2 "" H 4150 5150 50  0001 C CNN
F 3 "~" H 4150 5150 50  0001 C CNN
	1    4150 5150
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C19
U 1 1 6018189A
P 9100 5150
F 0 "C19" H 9278 5196 50  0000 L CNN
F 1 "1uF" H 9278 5105 50  0000 L CNN
F 2 "" H 9100 5150 50  0001 C CNN
F 3 "~" H 9100 5150 50  0001 C CNN
	1    9100 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2050 9300 2050
$Comp
L Device:R R7
U 1 1 6018B89C
P 6800 2850
F 0 "R7" H 6870 2896 50  0000 L CNN
F 1 "6.8" H 6870 2805 50  0000 L CNN
F 2 "" V 6730 2850 50  0001 C CNN
F 3 "~" H 6800 2850 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 6018C61A
P 6800 3250
F 0 "#PWR?" H 6800 3000 50  0001 C CNN
F 1 "Earth" H 6800 3100 50  0001 C CNN
F 2 "" H 6800 3250 50  0001 C CNN
F 3 "~" H 6800 3250 50  0001 C CNN
	1    6800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 2700 6800 2450
Wire Wire Line
	9300 2150 7750 2150
Wire Wire Line
	7750 2150 7750 2450
Wire Wire Line
	7750 2450 6800 2450
Connection ~ 6800 2450
Wire Wire Line
	6800 2450 6800 2350
$Comp
L pspice:INDUCTOR L3
U 1 1 6018FB46
P 5300 1650
F 0 "L3" H 5300 1865 50  0000 C CNN
F 1 "22uH" H 5300 1774 50  0000 C CNN
F 2 "" H 5300 1650 50  0001 C CNN
F 3 "~" H 5300 1650 50  0001 C CNN
	1    5300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1650 6800 1750
$Comp
L power:VDD #PWR?
U 1 1 60191C68
P 4800 1300
F 0 "#PWR?" H 4800 1150 50  0001 C CNN
F 1 "VDD" H 4815 1473 50  0000 C CNN
F 2 "" H 4800 1300 50  0001 C CNN
F 3 "" H 4800 1300 50  0001 C CNN
	1    4800 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1300 4800 1650
Wire Wire Line
	4800 1650 5050 1650
$Comp
L pspice:CAP C17
U 1 1 60192B1D
P 4800 2150
F 0 "C17" H 4978 2196 50  0000 L CNN
F 1 "100nF" H 4978 2105 50  0000 L CNN
F 2 "" H 4800 2150 50  0001 C CNN
F 3 "~" H 4800 2150 50  0001 C CNN
	1    4800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1900 4800 1650
Connection ~ 4800 1650
$Comp
L power:Earth #PWR?
U 1 1 60194D3A
P 4800 2600
F 0 "#PWR?" H 4800 2350 50  0001 C CNN
F 1 "Earth" H 4800 2450 50  0001 C CNN
F 2 "" H 4800 2600 50  0001 C CNN
F 3 "~" H 4800 2600 50  0001 C CNN
	1    4800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2600 4800 2400
Wire Wire Line
	3250 2600 3700 2600
Wire Wire Line
	4400 2600 4400 3450
Wire Wire Line
	4400 3450 8100 3450
Wire Wire Line
	8100 3450 8100 2450
Wire Wire Line
	8100 2450 9300 2450
Wire Wire Line
	3250 2500 4050 2500
Wire Wire Line
	4300 2500 4300 3550
Wire Wire Line
	4300 3550 8250 3550
Wire Wire Line
	8250 3550 8250 2550
Wire Wire Line
	8250 2550 9300 2550
$Comp
L Device:R R5
U 1 1 60197C0E
P 3700 2050
F 0 "R5" H 3770 2096 50  0000 L CNN
F 1 "2.2K" H 3770 2005 50  0000 L CNN
F 2 "" V 3630 2050 50  0001 C CNN
F 3 "~" H 3700 2050 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60198480
P 4050 2050
F 0 "R6" H 4120 2096 50  0000 L CNN
F 1 "2.2K" H 4120 2005 50  0000 L CNN
F 2 "" V 3980 2050 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2200 3700 2600
Connection ~ 3700 2600
Wire Wire Line
	3700 2600 4400 2600
Connection ~ 4050 2500
Wire Wire Line
	4050 2500 4300 2500
$Comp
L power:VDD #PWR?
U 1 1 6019B148
P 3900 1650
F 0 "#PWR?" H 3900 1500 50  0001 C CNN
F 1 "VDD" H 3915 1823 50  0000 C CNN
F 2 "" H 3900 1650 50  0001 C CNN
F 3 "" H 3900 1650 50  0001 C CNN
	1    3900 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1900 3700 1800
Wire Wire Line
	3700 1800 3900 1800
Wire Wire Line
	4050 1800 4050 1900
Wire Wire Line
	3900 1650 3900 1800
Connection ~ 3900 1800
Wire Wire Line
	3900 1800 4050 1800
Wire Wire Line
	4050 2200 4050 2500
$Comp
L Diode:BAT54S D1
U 1 1 6019EE86
P 6100 2500
F 0 "D1" H 6100 2633 50  0000 C CNN
F 1 "BAT54S" H 6100 2724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6175 2625 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 5980 2500 50  0001 C CNN
	1    6100 2500
	1    0    0    1   
$EndComp
Wire Wire Line
	6400 2500 6500 2500
Wire Wire Line
	5800 4150 5800 2500
Wire Wire Line
	6800 3000 6800 3250
$Comp
L power:Earth #PWR?
U 1 1 601A8348
P 6500 3250
F 0 "#PWR?" H 6500 3000 50  0001 C CNN
F 1 "Earth" H 6500 3100 50  0001 C CNN
F 2 "" H 6500 3250 50  0001 C CNN
F 3 "~" H 6500 3250 50  0001 C CNN
	1    6500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2500 6500 3250
$Comp
L power:Earth #PWR?
U 1 1 601AF6A0
P 6500 5850
F 0 "#PWR?" H 6500 5600 50  0001 C CNN
F 1 "Earth" H 6500 5700 50  0001 C CNN
F 2 "" H 6500 5850 50  0001 C CNN
F 3 "~" H 6500 5850 50  0001 C CNN
	1    6500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5400 9100 5650
Wire Wire Line
	4150 5650 4150 5400
Wire Wire Line
	4700 5400 4700 5650
Connection ~ 4700 5650
Wire Wire Line
	4700 5650 4150 5650
Wire Wire Line
	5400 5400 5400 5650
Connection ~ 5400 5650
Wire Wire Line
	5400 5650 4700 5650
Wire Wire Line
	5950 5400 5950 5650
Connection ~ 5950 5650
Wire Wire Line
	5950 5650 5400 5650
Wire Wire Line
	6500 5400 6500 5650
Connection ~ 6500 5650
Wire Wire Line
	6500 5650 5950 5650
Wire Wire Line
	7000 5400 7000 5650
Connection ~ 7000 5650
Wire Wire Line
	7000 5650 6500 5650
Wire Wire Line
	7500 5400 7500 5650
Wire Wire Line
	7000 5650 7500 5650
Connection ~ 7500 5650
Wire Wire Line
	7500 5650 8050 5650
Wire Wire Line
	8050 5400 8050 5650
Connection ~ 8050 5650
Wire Wire Line
	8050 5650 8600 5650
Wire Wire Line
	8600 5400 8600 5650
Connection ~ 8600 5650
Wire Wire Line
	8600 5650 9100 5650
Wire Wire Line
	6500 5850 6500 5650
Wire Wire Line
	5550 1650 5850 1650
$Comp
L Diode:MBR0530 D2
U 1 1 601CB8FC
P 5600 2300
F 0 "D2" V 5646 2220 50  0000 R CNN
F 1 "MBR0530" V 5555 2220 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 5600 2125 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 5600 2300 50  0001 C CNN
	1    5600 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2150 5600 1950
Wire Wire Line
	5600 1950 5850 1950
Wire Wire Line
	5850 1950 5850 1650
Connection ~ 5850 1650
Wire Wire Line
	5600 2450 5600 3950
Wire Wire Line
	5600 3950 9300 3950
Wire Wire Line
	5600 3950 5600 4250
Connection ~ 5600 3950
Wire Wire Line
	5850 1650 6100 1650
$Comp
L pspice:CAP C21
U 1 1 601D89FC
P 6100 1950
F 0 "C21" H 6278 1996 50  0000 L CNN
F 1 "1uF" H 6278 1905 50  0000 L CNN
F 2 "" H 6100 1950 50  0001 C CNN
F 3 "~" H 6100 1950 50  0001 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1700 6100 1650
Connection ~ 6100 1650
Wire Wire Line
	6100 1650 6800 1650
Wire Wire Line
	6100 2200 6100 2300
Wire Wire Line
	9300 2750 8300 2750
Wire Wire Line
	8300 2750 8300 3600
Wire Wire Line
	8300 3600 3600 3600
Wire Wire Line
	9300 2850 8350 2850
Wire Wire Line
	8350 2850 8350 3700
Wire Wire Line
	9300 2950 8450 2950
Wire Wire Line
	8450 2950 8450 3800
Wire Wire Line
	8450 3800 3600 3800
Wire Wire Line
	9300 3050 8550 3050
Wire Wire Line
	8550 3050 8550 3900
Wire Wire Line
	8550 3900 5100 3900
Wire Wire Line
	9300 3150 8650 3150
Wire Wire Line
	8650 3150 8650 4000
Wire Wire Line
	8650 4000 3600 4000
Wire Wire Line
	9300 3250 8750 3250
Wire Wire Line
	8750 3250 8750 4100
Wire Wire Line
	8750 4100 3600 4100
Text GLabel 3600 3600 0    50   Input Italic 0
BUSY
Text GLabel 3600 3700 0    50   Input Italic 0
RESET
Text GLabel 3600 3800 0    50   Input Italic 0
D\C
Text GLabel 3600 3900 0    50   Input Italic 0
CS
Text GLabel 3600 4000 0    50   Input Italic 0
SCK
Text GLabel 3600 4100 0    50   Input Italic 0
MOSI
$Comp
L Device:R R8
U 1 1 601F4DA4
P 5100 3050
F 0 "R8" H 5170 3096 50  0000 L CNN
F 1 "10K" H 5170 3005 50  0000 L CNN
F 2 "" V 5030 3050 50  0001 C CNN
F 3 "~" H 5100 3050 50  0001 C CNN
	1    5100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3200 5100 3900
Connection ~ 5100 3900
Wire Wire Line
	5100 3900 3600 3900
$Comp
L power:VDD #PWR?
U 1 1 601F8B8A
P 5100 2800
F 0 "#PWR?" H 5100 2650 50  0001 C CNN
F 1 "VDD" H 5115 2973 50  0000 C CNN
F 2 "" H 5100 2800 50  0001 C CNN
F 3 "" H 5100 2800 50  0001 C CNN
	1    5100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2800 5100 2900
$Comp
L Device:R R9
U 1 1 601FCCDD
P 3700 5150
F 0 "R9" H 3770 5196 50  0000 L CNN
F 1 "10K" H 3770 5105 50  0000 L CNN
F 2 "" V 3630 5150 50  0001 C CNN
F 3 "~" H 3700 5150 50  0001 C CNN
	1    3700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4250 9300 4250
Wire Wire Line
	5600 4250 5950 4250
Wire Wire Line
	3700 5300 3700 5650
Wire Wire Line
	3700 5650 4150 5650
Connection ~ 4150 5650
Wire Wire Line
	9300 2250 8000 2250
Wire Wire Line
	8000 2250 8000 3400
Wire Wire Line
	8000 3400 6950 3400
Wire Wire Line
	6950 3400 6950 4200
Wire Wire Line
	6950 4200 4150 4200
Wire Wire Line
	5800 4150 8600 4150
Wire Wire Line
	3600 3700 3700 3700
Wire Wire Line
	3700 3700 3700 5000
Connection ~ 3700 3700
Wire Wire Line
	3700 3700 8350 3700
Wire Wire Line
	4150 4200 4150 4900
Wire Wire Line
	5950 4250 5950 4900
Wire Wire Line
	8600 4150 8600 4900
Connection ~ 8600 4150
Wire Wire Line
	8600 4150 9300 4150
Wire Wire Line
	9100 4250 9100 4900
Wire Wire Line
	9300 2350 7900 2350
Wire Wire Line
	7900 2350 7900 4300
Wire Wire Line
	7900 4300 4700 4300
Wire Wire Line
	4700 4300 4700 4900
Wire Wire Line
	5400 4900 5400 4450
Wire Wire Line
	6500 4450 6500 4550
Wire Wire Line
	9300 3450 8800 3450
Wire Wire Line
	8800 3450 8800 4450
Wire Wire Line
	8800 4450 6500 4450
Connection ~ 6500 4450
Wire Wire Line
	9300 3350 8850 3350
Wire Wire Line
	8850 3350 8850 4550
Wire Wire Line
	8850 4550 6500 4550
Connection ~ 6500 4550
Wire Wire Line
	6500 4550 6500 4900
$Comp
L power:VDD #PWR?
U 1 1 6024D357
P 5400 2800
F 0 "#PWR?" H 5400 2650 50  0001 C CNN
F 1 "VDD" H 5415 2973 50  0000 C CNN
F 2 "" H 5400 2800 50  0001 C CNN
F 3 "" H 5400 2800 50  0001 C CNN
	1    5400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4450 6500 4450
Wire Wire Line
	5400 2800 5400 4450
Connection ~ 5400 4450
Wire Wire Line
	9300 3850 8700 3850
Wire Wire Line
	8700 3850 8700 4600
Wire Wire Line
	8700 4600 7000 4600
Wire Wire Line
	7000 4600 7000 4900
Wire Wire Line
	9300 4050 8900 4050
Wire Wire Line
	8900 4050 8900 4650
Wire Wire Line
	8900 4650 7500 4650
Wire Wire Line
	7500 4650 7500 4900
Wire Wire Line
	9300 3650 8950 3650
Wire Wire Line
	8950 3650 8950 4750
Wire Wire Line
	8950 4750 8050 4750
Wire Wire Line
	8050 4750 8050 4900
$Comp
L power:Earth #PWR?
U 1 1 6026FFCA
P 9200 4600
F 0 "#PWR?" H 9200 4350 50  0001 C CNN
F 1 "Earth" H 9200 4450 50  0001 C CNN
F 2 "" H 9200 4600 50  0001 C CNN
F 3 "~" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3550 9200 4600
Wire Wire Line
	9200 3550 9300 3550
Wire Wire Line
	9300 2650 9200 2650
Wire Wire Line
	9200 2650 9200 3550
Connection ~ 9200 3550
$EndSCHEMATC
