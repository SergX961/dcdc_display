EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "MCU"
Date "2020-12-28"
Rev ""
Comp ""
Comment1 ""
Comment2 "Benedito"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F4:STM32F401RCTx U1
U 1 1 5FE86339
P 5550 4350
F 0 "U1" H 5500 6231 50  0000 C CNN
F 1 "STM32F401RCTx" H 5500 6140 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4950 2650 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00086815.pdf" H 5550 4350 50  0001 C CNN
	1    5550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5FE88F7C
P 3900 5800
F 0 "Y1" V 3854 5931 50  0000 L CNN
F 1 "32.768KHz" V 3945 5931 50  0000 L CNN
F 2 "" H 3900 5800 50  0001 C CNN
F 3 "~" H 3900 5800 50  0001 C CNN
	1    3900 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5650 3900 5500
Wire Wire Line
	3900 5500 4500 5500
Wire Wire Line
	4500 5500 4500 5850
Wire Wire Line
	4500 5850 4850 5850
Wire Wire Line
	3900 5950 3900 6150
Wire Wire Line
	3900 6150 4500 6150
Wire Wire Line
	4500 6150 4500 5950
Wire Wire Line
	4500 5950 4850 5950
$Comp
L Device:C C1
U 1 1 5FE8C89F
P 3650 5500
F 0 "C1" V 3398 5500 50  0000 C CNN
F 1 "12pF" V 3489 5500 50  0000 C CNN
F 2 "" H 3688 5350 50  0001 C CNN
F 3 "~" H 3650 5500 50  0001 C CNN
	1    3650 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5FE8D1E5
P 3650 6150
F 0 "C2" V 3398 6150 50  0000 C CNN
F 1 "12pF" V 3489 6150 50  0000 C CNN
F 2 "" H 3688 6000 50  0001 C CNN
F 3 "~" H 3650 6150 50  0001 C CNN
	1    3650 6150
	0    1    1    0   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5FE8D829
P 3300 6350
F 0 "#PWR?" H 3300 6100 50  0001 C CNN
F 1 "Earth" H 3300 6200 50  0001 C CNN
F 2 "" H 3300 6350 50  0001 C CNN
F 3 "~" H 3300 6350 50  0001 C CNN
	1    3300 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5500 3900 5500
Connection ~ 3900 5500
Wire Wire Line
	3800 6150 3900 6150
Connection ~ 3900 6150
Wire Wire Line
	3300 6150 3300 5500
Wire Wire Line
	3300 5500 3500 5500
Wire Wire Line
	3300 6150 3500 6150
Wire Wire Line
	3300 6350 3300 6150
Connection ~ 3300 6150
Wire Wire Line
	5350 6150 5350 6350
Wire Wire Line
	5350 6350 5450 6350
Wire Wire Line
	5750 6350 5750 6150
Wire Wire Line
	5450 6150 5450 6350
Connection ~ 5450 6350
Wire Wire Line
	5450 6350 5550 6350
Wire Wire Line
	5550 6150 5550 6350
Connection ~ 5550 6350
Wire Wire Line
	5550 6350 5650 6350
Wire Wire Line
	5650 6150 5650 6350
Connection ~ 5650 6350
Wire Wire Line
	5650 6350 5750 6350
$Comp
L power:Earth #PWR?
U 1 1 5FE90FEB
P 5550 6550
F 0 "#PWR?" H 5550 6300 50  0001 C CNN
F 1 "Earth" H 5550 6400 50  0001 C CNN
F 2 "" H 5550 6550 50  0001 C CNN
F 3 "~" H 5550 6550 50  0001 C CNN
	1    5550 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6550 5550 6350
$Comp
L Device:R R1
U 1 1 5FE91C19
P 1750 2700
F 0 "R1" V 1543 2700 50  0000 C CNN
F 1 "10K" V 1634 2700 50  0000 C CNN
F 2 "" V 1680 2700 50  0001 C CNN
F 3 "~" H 1750 2700 50  0001 C CNN
	1    1750 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FE92234
P 4500 3050
F 0 "R2" V 4293 3050 50  0000 C CNN
F 1 "10K" V 4384 3050 50  0000 C CNN
F 2 "" V 4430 3050 50  0001 C CNN
F 3 "~" H 4500 3050 50  0001 C CNN
	1    4500 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C11
U 1 1 5FE927E0
P 2800 2900
F 0 "C11" H 2685 2854 50  0000 R CNN
F 1 "100nF" H 2685 2945 50  0000 R CNN
F 2 "" H 2838 2750 50  0001 C CNN
F 3 "~" H 2800 2900 50  0001 C CNN
	1    2800 2900
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE9363F
P 1450 2450
F 0 "#PWR?" H 1450 2300 50  0001 C CNN
F 1 "+3.3V" H 1465 2623 50  0000 C CNN
F 2 "" H 1450 2450 50  0001 C CNN
F 3 "" H 1450 2450 50  0001 C CNN
	1    1450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3050 4650 3050
Wire Wire Line
	4850 2850 4650 2850
$Comp
L power:Earth #PWR?
U 1 1 5FE9A2F7
P 2800 3200
F 0 "#PWR?" H 2800 2950 50  0001 C CNN
F 1 "Earth" H 2800 3050 50  0001 C CNN
F 2 "" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3050 2800 3200
Connection ~ 2800 3050
Wire Wire Line
	2800 2700 2800 2750
Wire Wire Line
	4650 2850 4650 2700
Connection ~ 2800 2700
Wire Wire Line
	1450 2450 1450 2700
Wire Wire Line
	1450 2700 1600 2700
$Comp
L Switch:SW_Push SW1
U 1 1 5FEA9663
P 2300 2950
F 0 "SW1" V 2346 2902 50  0000 R CNN
F 1 "RESET" V 2255 2902 50  0000 R CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "~" H 2300 3150 50  0001 C CNN
	1    2300 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 2700 2300 2750
Wire Wire Line
	2300 2700 2800 2700
$Comp
L power:Earth #PWR?
U 1 1 5FEAC79E
P 2300 3350
F 0 "#PWR?" H 2300 3100 50  0001 C CNN
F 1 "Earth" H 2300 3200 50  0001 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3150 2300 3350
Wire Wire Line
	1900 2700 2300 2700
Connection ~ 2300 2700
$Comp
L pspice:INDUCTOR L1
U 1 1 5FEAFF87
P 1450 3300
F 0 "L1" V 1496 3256 50  0000 R CNN
F 1 "470" V 1405 3256 50  0000 R CNN
F 2 "" H 1450 3300 50  0001 C CNN
F 3 "~" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 3050 1450 2700
Connection ~ 1450 2700
$Comp
L power:Earth #PWR?
U 1 1 5FEB2B60
P 1450 4450
F 0 "#PWR?" H 1450 4200 50  0001 C CNN
F 1 "Earth" H 1450 4300 50  0001 C CNN
F 2 "" H 1450 4450 50  0001 C CNN
F 3 "~" H 1450 4450 50  0001 C CNN
	1    1450 4450
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C4
U 1 1 5FEB3671
P 1800 4050
F 0 "C4" H 1978 4096 50  0000 L CNN
F 1 "4.7uF" H 1978 4005 50  0000 L CNN
F 2 "" H 1800 4050 50  0001 C CNN
F 3 "~" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3800 1450 3800
Wire Wire Line
	1800 4300 1450 4300
Wire Wire Line
	1450 4450 1450 4300
Connection ~ 1450 4300
Wire Wire Line
	1450 4300 1200 4300
Wire Wire Line
	1450 3550 1450 3800
$Comp
L pspice:CAP C3
U 1 1 5FEC347F
P 1200 4050
F 0 "C3" H 1378 4096 50  0000 L CNN
F 1 "100nF" H 1378 4005 50  0000 L CNN
F 2 "" H 1200 4050 50  0001 C CNN
F 3 "~" H 1200 4050 50  0001 C CNN
	1    1200 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3800 1450 3800
Connection ~ 1450 3800
Text GLabel 4600 2350 0    50   Input ~ 0
VDD
Text GLabel 1150 2700 0    50   Input ~ 0
VDD
Wire Wire Line
	1150 2700 1450 2700
Text GLabel 4650 3350 0    50   Input ~ 0
VDDA
Wire Wire Line
	4850 3350 4650 3350
Text GLabel 950  3800 0    50   Input ~ 0
VDDA
Wire Wire Line
	950  3800 1200 3800
Connection ~ 1200 3800
$Comp
L Connector:Conn_01x03_Male J1-to_keyboard
U 1 1 5FED1E21
P 7000 2850
F 0 "J1-to_keyboard" H 6950 3100 50  0000 R CNN
F 1 "Conn_01x03_Male" H 6950 3000 50  0000 R CNN
F 2 "" H 7000 2850 50  0001 C CNN
F 3 "~" H 7000 2850 50  0001 C CNN
	1    7000 2850
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FED7CF5
P 6650 2700
F 0 "#PWR?" H 6650 2550 50  0001 C CNN
F 1 "+3.3V" H 6665 2873 50  0000 C CNN
F 2 "" H 6650 2700 50  0001 C CNN
F 3 "" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 5FED9769
P 6700 3100
F 0 "#PWR?" H 6700 2850 50  0001 C CNN
F 1 "Earth" H 6700 2950 50  0001 C CNN
F 2 "" H 6700 3100 50  0001 C CNN
F 3 "~" H 6700 3100 50  0001 C CNN
	1    6700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2950 6700 3100
Wire Wire Line
	6700 2950 6800 2950
Text Notes 7050 2850 0    50   ~ 0
ADC
$Comp
L pspice:CAP C5
U 1 1 5FEE3498
P 3500 3650
F 0 "C5" H 3678 3696 50  0000 L CNN
F 1 "4.7uF" H 3678 3605 50  0000 L CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "~" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3400 3500 3250
$Comp
L power:Earth #PWR?
U 1 1 5FEE52F4
P 3500 4000
F 0 "#PWR?" H 3500 3750 50  0001 C CNN
F 1 "Earth" H 3500 3850 50  0001 C CNN
F 2 "" H 3500 4000 50  0001 C CNN
F 3 "~" H 3500 4000 50  0001 C CNN
	1    3500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4000 3500 3900
$Comp
L Device:Crystal Y2
U 1 1 5FEE7E10
P 4400 4000
F 0 "Y2" V 4446 3869 50  0000 R CNN
F 1 "12MHz" V 4355 3869 50  0000 R CNN
F 2 "" H 4400 4000 50  0001 C CNN
F 3 "~" H 4400 4000 50  0001 C CNN
	1    4400 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 3850 4400 3800
Wire Wire Line
	4700 3800 4700 3950
Wire Wire Line
	4700 3950 4850 3950
Wire Wire Line
	4400 4150 4400 4200
Wire Wire Line
	4400 4200 4700 4200
Wire Wire Line
	4700 4200 4700 4050
Wire Wire Line
	4700 4050 4850 4050
$Comp
L pspice:CAP C10
U 1 1 5FEF2523
P 5950 1800
F 0 "C10" H 6128 1846 50  0000 L CNN
F 1 "100nF" H 6128 1755 50  0000 L CNN
F 2 "" H 5950 1800 50  0001 C CNN
F 3 "~" H 5950 1800 50  0001 C CNN
	1    5950 1800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C13
U 1 1 5FEF3A93
P 6550 1800
F 0 "C13" H 6728 1846 50  0000 L CNN
F 1 "100nF" H 6728 1755 50  0000 L CNN
F 2 "" H 6550 1800 50  0001 C CNN
F 3 "~" H 6550 1800 50  0001 C CNN
	1    6550 1800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C8
U 1 1 5FEF4529
P 5350 1800
F 0 "C8" H 5528 1846 50  0000 L CNN
F 1 "100nF" H 5528 1755 50  0000 L CNN
F 2 "" H 5350 1800 50  0001 C CNN
F 3 "~" H 5350 1800 50  0001 C CNN
	1    5350 1800
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C6
U 1 1 5FEF5A9C
P 4700 1800
F 0 "C6" H 4878 1846 50  0000 L CNN
F 1 "100nF" H 4878 1755 50  0000 L CNN
F 2 "" H 4700 1800 50  0001 C CNN
F 3 "~" H 4700 1800 50  0001 C CNN
	1    4700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2700 6650 2750
Wire Wire Line
	6650 2750 6800 2750
Wire Wire Line
	6150 2850 6800 2850
Wire Wire Line
	6550 1550 6550 1400
Wire Wire Line
	6550 1400 5950 1400
Wire Wire Line
	4700 1400 4700 1550
Wire Wire Line
	5350 1550 5350 1400
Connection ~ 5350 1400
Wire Wire Line
	5350 1400 4700 1400
Wire Wire Line
	5950 1550 5950 1400
Connection ~ 5950 1400
Wire Wire Line
	5350 1400 5950 1400
$Comp
L pspice:CAP C9
U 1 1 5FF84758
P 7150 1800
F 0 "C9" H 7328 1846 50  0000 L CNN
F 1 "4.7uF" H 7328 1755 50  0000 L CNN
F 2 "" H 7150 1800 50  0001 C CNN
F 3 "~" H 7150 1800 50  0001 C CNN
	1    7150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1400 7150 1550
Wire Wire Line
	6550 1400 7150 1400
Connection ~ 6550 1400
Wire Wire Line
	4700 2050 4700 2350
Wire Wire Line
	4700 2350 5350 2350
Wire Wire Line
	7150 2350 7150 2050
Wire Wire Line
	6550 2050 6550 2350
Connection ~ 6550 2350
Wire Wire Line
	6550 2350 7150 2350
Wire Wire Line
	5950 2050 5950 2350
Connection ~ 5950 2350
Wire Wire Line
	5950 2350 6550 2350
Wire Wire Line
	5350 2050 5350 2350
Connection ~ 5350 2350
Wire Wire Line
	5350 2350 5450 2350
Wire Wire Line
	5450 2650 5450 2350
Connection ~ 5450 2350
Wire Wire Line
	5550 2650 5550 2350
Wire Wire Line
	5450 2350 5550 2350
Connection ~ 5550 2350
Wire Wire Line
	5550 2350 5650 2350
Wire Wire Line
	5650 2650 5650 2350
Connection ~ 5650 2350
Wire Wire Line
	5650 2350 5750 2350
Wire Wire Line
	5750 2650 5750 2350
Connection ~ 5750 2350
Wire Wire Line
	5750 2350 5950 2350
$Comp
L power:Earth #PWR?
U 1 1 5FFD60A5
P 5950 1100
F 0 "#PWR?" H 5950 850 50  0001 C CNN
F 1 "Earth" H 5950 950 50  0001 C CNN
F 2 "" H 5950 1100 50  0001 C CNN
F 3 "~" H 5950 1100 50  0001 C CNN
	1    5950 1100
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 1100 5950 1400
Wire Wire Line
	4600 2350 4700 2350
Connection ~ 4700 2350
Wire Wire Line
	3500 3250 4850 3250
Wire Wire Line
	2800 3050 4350 3050
Wire Wire Line
	2800 2700 4650 2700
$Comp
L Device:C C7
U 1 1 60016F31
P 4150 3800
F 0 "C7" V 3898 3800 50  0000 C CNN
F 1 "12pF" V 3989 3800 50  0000 C CNN
F 2 "" H 4188 3650 50  0001 C CNN
F 3 "~" H 4150 3800 50  0001 C CNN
	1    4150 3800
	0    1    1    0   
$EndComp
$Comp
L Device:C C14
U 1 1 60017ADC
P 4150 4200
F 0 "C14" V 3898 4200 50  0000 C CNN
F 1 "12pF" V 3989 4200 50  0000 C CNN
F 2 "" H 4188 4050 50  0001 C CNN
F 3 "~" H 4150 4200 50  0001 C CNN
	1    4150 4200
	0    1    1    0   
$EndComp
Connection ~ 4400 3800
Wire Wire Line
	4400 3800 4700 3800
Connection ~ 4400 4200
Wire Wire Line
	4000 3800 3950 3800
Wire Wire Line
	3950 3800 3950 4200
Wire Wire Line
	3950 4200 4000 4200
Wire Wire Line
	4300 3800 4400 3800
Wire Wire Line
	4300 4200 4400 4200
$Comp
L power:Earth #PWR?
U 1 1 60028106
P 3950 4400
F 0 "#PWR?" H 3950 4150 50  0001 C CNN
F 1 "Earth" H 3950 4250 50  0001 C CNN
F 2 "" H 3950 4400 50  0001 C CNN
F 3 "~" H 3950 4400 50  0001 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4400 3950 4200
Connection ~ 3950 4200
$Comp
L 2020-12-28_09-03-17:USB6B1RL CR1
U 1 1 600953E0
P 8900 3850
F 0 "CR1" H 9700 4237 60  0000 C CNN
F 1 "USB6B1RL" H 9700 4131 60  0000 C CNN
F 2 "SO-8_STM" H 9700 4090 60  0001 C CNN
F 3 "" H 8900 3850 60  0000 C CNN
	1    8900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 600973D9
P 10600 3550
F 0 "#PWR?" H 10600 3400 50  0001 C CNN
F 1 "VDD" H 10615 3723 50  0000 C CNN
F 2 "" H 10600 3550 50  0001 C CNN
F 3 "" H 10600 3550 50  0001 C CNN
	1    10600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 3550 10600 3850
Wire Wire Line
	10600 3850 10500 3850
$Comp
L power:Earth #PWR?
U 1 1 6009A721
P 10600 4400
F 0 "#PWR?" H 10600 4150 50  0001 C CNN
F 1 "Earth" H 10600 4250 50  0001 C CNN
F 2 "" H 10600 4400 50  0001 C CNN
F 3 "~" H 10600 4400 50  0001 C CNN
	1    10600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4150 10600 4150
Wire Wire Line
	10600 4150 10600 4400
Text GLabel 10800 3950 2    50   Input ~ 0
USB_DM
Text GLabel 10800 4050 2    50   Input ~ 0
USB_DP
Wire Wire Line
	10800 3950 10500 3950
Wire Wire Line
	10500 4050 10800 4050
$Comp
L pspice:INDUCTOR L2
U 1 1 600A60ED
P 8350 3250
F 0 "L2" H 8350 3465 50  0000 C CNN
F 1 "30" H 8350 3374 50  0000 C CNN
F 2 "" H 8350 3250 50  0001 C CNN
F 3 "~" H 8350 3250 50  0001 C CNN
	1    8350 3250
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C15
U 1 1 600AD6E4
P 8050 3600
F 0 "C15" H 8228 3646 50  0000 L CNN
F 1 "100nF" H 8228 3555 50  0000 L CNN
F 2 "" H 8050 3600 50  0001 C CNN
F 3 "~" H 8050 3600 50  0001 C CNN
	1    8050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3250 8050 3250
Wire Wire Line
	8050 3250 8050 3350
Wire Wire Line
	8050 3850 8050 4150
Wire Wire Line
	8050 4150 8900 4150
Wire Wire Line
	8900 3850 8700 3850
Wire Wire Line
	8700 3850 8700 3250
Wire Wire Line
	8700 3250 8600 3250
$Comp
L Connector:Conn_01x04_Male J2-USB
U 1 1 600F6F0F
P 7100 3950
F 0 "J2-USB" H 7200 4350 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7250 4250 50  0000 C CNN
F 2 "" H 7100 3950 50  0001 C CNN
F 3 "~" H 7100 3950 50  0001 C CNN
	1    7100 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3250 8050 3250
Connection ~ 8050 3250
Wire Wire Line
	7300 3850 7700 3850
Wire Wire Line
	7700 3250 7700 3850
Wire Wire Line
	7300 4150 8050 4150
Connection ~ 8050 4150
Wire Wire Line
	7300 3950 8900 3950
Wire Wire Line
	7300 4050 8900 4050
Text Label 7300 3850 0    50   ~ 0
Vcc
Text Label 7300 3950 0    50   Italic 0
USB_D-
Text Label 7300 4050 0    50   Italic 0
USB_D+
Text Label 7300 4150 0    50   Italic 0
GND
Text GLabel 6400 3950 2    50   Input Italic 0
USB_DM
Text GLabel 6400 4050 2    50   Input Italic 0
USB_DP
Wire Wire Line
	6400 3950 6150 3950
Wire Wire Line
	6150 4050 6400 4050
Text GLabel 6300 3250 2    50   Input Italic 0
CS
Wire Wire Line
	6300 3250 6150 3250
Text GLabel 6300 3350 2    50   Input Italic 0
SCK
Text GLabel 6300 3550 2    50   Input Italic 0
MOSI
Wire Wire Line
	6150 3350 6300 3350
Wire Wire Line
	6300 3550 6150 3550
Text GLabel 4650 4850 0    50   Input Italic 0
RESET
Text GLabel 4650 5000 0    50   Input Italic 0
BUSY
Wire Wire Line
	4650 4850 4850 4850
Wire Wire Line
	4650 5000 4750 5000
Wire Wire Line
	4750 5000 4750 4950
Wire Wire Line
	4750 4950 4850 4950
Text GLabel 6350 4550 2    50   Input Italic 0
D\C
Text GLabel 6350 4650 2    50   Input Italic 0
PWR_EN
Wire Wire Line
	6350 4550 6150 4550
Wire Wire Line
	6150 4650 6350 4650
$Sheet
S 7550 5100 1600 1300
U 6015DECB
F0 "display" 50
F1 "display.sch" 50
$EndSheet
$EndSCHEMATC
