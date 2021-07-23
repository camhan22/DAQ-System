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
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 60FB0CEE
P 5600 3350
F 0 "A?" H 5600 3950 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5600 4050 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5600 3350 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
Wire Notes Line
	3750 5850 3750 7250
Wire Notes Line
	3750 7250 5300 7250
Wire Notes Line
	5300 7250 5300 5850
Wire Notes Line
	5300 5850 3750 5850
Text Notes 4250 5950 0    50   ~ 0
SD Card Shield
Wire Notes Line
	8600 1050 8600 1450
Wire Notes Line
	8600 1450 8950 1450
Wire Notes Line
	8950 1450 8950 1050
Wire Notes Line
	8950 1050 8600 1050
Text Notes 8600 1150 0    50   ~ 0
MAX6675
Text Notes 8650 1050 0    50   ~ 0
Temp0
Wire Notes Line
	8600 1900 8600 2300
Wire Notes Line
	8600 2300 8950 2300
Wire Notes Line
	8950 2300 8950 1900
Wire Notes Line
	8950 1900 8600 1900
Text Notes 8600 2000 0    50   ~ 0
MAX6675
Text Notes 8650 1900 0    50   ~ 0
Temp1
Text GLabel 8350 1150 0    39   Input ~ 0
SCK
Text GLabel 8350 1250 0    39   Input ~ 0
MISO
Text GLabel 8350 1350 0    39   Input ~ 0
CS0
$Comp
L power:+5V #PWR?
U 1 1 60FBE811
P 5800 2250
F 0 "#PWR?" H 5800 2100 50  0001 C CNN
F 1 "+5V" H 5815 2423 50  0000 C CNN
F 2 "" H 5800 2250 50  0001 C CNN
F 3 "" H 5800 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60FBF1E8
P 8350 1050
F 0 "#PWR?" H 8350 900 50  0001 C CNN
F 1 "+5V" H 8365 1223 50  0000 C CNN
F 2 "" H 8350 1050 50  0001 C CNN
F 3 "" H 8350 1050 50  0001 C CNN
	1    8350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FBFACF
P 5600 4550
F 0 "#PWR?" H 5600 4300 50  0001 C CNN
F 1 "GND" H 5605 4377 50  0000 C CNN
F 2 "" H 5600 4550 50  0001 C CNN
F 3 "" H 5600 4550 50  0001 C CNN
	1    5600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4450 5500 4500
Wire Wire Line
	5500 4500 5600 4500
Wire Wire Line
	5600 4500 5600 4550
Wire Wire Line
	5700 4450 5700 4500
Wire Wire Line
	5700 4500 5600 4500
Connection ~ 5600 4500
Wire Wire Line
	5600 4450 5600 4500
$Comp
L power:GND #PWR?
U 1 1 60FC0A5E
P 8350 1450
F 0 "#PWR?" H 8350 1200 50  0001 C CNN
F 1 "GND" H 8355 1277 50  0000 C CNN
F 2 "" H 8350 1450 50  0001 C CNN
F 3 "" H 8350 1450 50  0001 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Text GLabel 8350 2000 0    39   Input ~ 0
SCK
Text GLabel 8350 2100 0    39   Input ~ 0
MISO
Text GLabel 8350 2200 0    39   Input ~ 0
CS1
$Comp
L power:+5V #PWR?
U 1 1 60FC3B8D
P 8350 1900
F 0 "#PWR?" H 8350 1750 50  0001 C CNN
F 1 "+5V" H 8365 2073 50  0000 C CNN
F 2 "" H 8350 1900 50  0001 C CNN
F 3 "" H 8350 1900 50  0001 C CNN
	1    8350 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FC3B93
P 8350 2300
F 0 "#PWR?" H 8350 2050 50  0001 C CNN
F 1 "GND" H 8355 2127 50  0000 C CNN
F 2 "" H 8350 2300 50  0001 C CNN
F 3 "" H 8350 2300 50  0001 C CNN
	1    8350 2300
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 2750 8600 3150
Wire Notes Line
	8600 3150 8950 3150
Wire Notes Line
	8950 3150 8950 2750
Wire Notes Line
	8950 2750 8600 2750
Text Notes 8600 2850 0    50   ~ 0
MAX6675
Text Notes 8650 2750 0    50   ~ 0
Temp2
Text GLabel 8350 2850 0    39   Input ~ 0
SCK
Text GLabel 8350 2950 0    39   Input ~ 0
MISO
Text GLabel 8350 3050 0    39   Input ~ 0
CS2
$Comp
L power:+5V #PWR?
U 1 1 60FC56C5
P 8350 2750
F 0 "#PWR?" H 8350 2600 50  0001 C CNN
F 1 "+5V" H 8365 2923 50  0000 C CNN
F 2 "" H 8350 2750 50  0001 C CNN
F 3 "" H 8350 2750 50  0001 C CNN
	1    8350 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FC56CB
P 8350 3150
F 0 "#PWR?" H 8350 2900 50  0001 C CNN
F 1 "GND" H 8355 2977 50  0000 C CNN
F 2 "" H 8350 3150 50  0001 C CNN
F 3 "" H 8350 3150 50  0001 C CNN
	1    8350 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 3600 8600 4000
Wire Notes Line
	8600 4000 8950 4000
Wire Notes Line
	8950 4000 8950 3600
Wire Notes Line
	8950 3600 8600 3600
Text Notes 8600 3700 0    50   ~ 0
MAX6675
Text Notes 8650 3600 0    50   ~ 0
Temp3
Text GLabel 8350 3700 0    39   Input ~ 0
SCK
Text GLabel 8350 3800 0    39   Input ~ 0
MISO
Text GLabel 8350 3900 0    39   Input ~ 0
CS3
$Comp
L power:+5V #PWR?
U 1 1 60FC61E2
P 8350 3600
F 0 "#PWR?" H 8350 3450 50  0001 C CNN
F 1 "+5V" H 8365 3773 50  0000 C CNN
F 2 "" H 8350 3600 50  0001 C CNN
F 3 "" H 8350 3600 50  0001 C CNN
	1    8350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FC61E8
P 8350 4000
F 0 "#PWR?" H 8350 3750 50  0001 C CNN
F 1 "GND" H 8355 3827 50  0000 C CNN
F 2 "" H 8350 4000 50  0001 C CNN
F 3 "" H 8350 4000 50  0001 C CNN
	1    8350 4000
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 4450 8600 4850
Wire Notes Line
	8600 4850 8950 4850
Wire Notes Line
	8950 4850 8950 4450
Wire Notes Line
	8950 4450 8600 4450
Text Notes 8600 4550 0    50   ~ 0
MAX6675
Text Notes 8650 4450 0    50   ~ 0
Temp4
Text GLabel 8350 4550 0    39   Input ~ 0
SCK
Text GLabel 8350 4650 0    39   Input ~ 0
MISO
Text GLabel 8350 4750 0    39   Input ~ 0
CS4
$Comp
L power:+5V #PWR?
U 1 1 60FC6F4B
P 8350 4450
F 0 "#PWR?" H 8350 4300 50  0001 C CNN
F 1 "+5V" H 8365 4623 50  0000 C CNN
F 2 "" H 8350 4450 50  0001 C CNN
F 3 "" H 8350 4450 50  0001 C CNN
	1    8350 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FC6F51
P 8350 4850
F 0 "#PWR?" H 8350 4600 50  0001 C CNN
F 1 "GND" H 8355 4677 50  0000 C CNN
F 2 "" H 8350 4850 50  0001 C CNN
F 3 "" H 8350 4850 50  0001 C CNN
	1    8350 4850
	1    0    0    -1  
$EndComp
Wire Notes Line
	8600 5300 8600 5700
Wire Notes Line
	8600 5700 8950 5700
Wire Notes Line
	8950 5700 8950 5300
Wire Notes Line
	8950 5300 8600 5300
Text Notes 8600 5400 0    50   ~ 0
MAX6675
Text Notes 8650 5300 0    50   ~ 0
Temp5
Text GLabel 8350 5400 0    39   Input ~ 0
SCK
Text GLabel 8350 5500 0    39   Input ~ 0
MISO
Text GLabel 8350 5600 0    39   Input ~ 0
CS5
$Comp
L power:+5V #PWR?
U 1 1 60FC77D1
P 8350 5300
F 0 "#PWR?" H 8350 5150 50  0001 C CNN
F 1 "+5V" H 8365 5473 50  0000 C CNN
F 2 "" H 8350 5300 50  0001 C CNN
F 3 "" H 8350 5300 50  0001 C CNN
	1    8350 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60FC77D7
P 8350 5700
F 0 "#PWR?" H 8350 5450 50  0001 C CNN
F 1 "GND" H 8355 5527 50  0000 C CNN
F 2 "" H 8350 5700 50  0001 C CNN
F 3 "" H 8350 5700 50  0001 C CNN
	1    8350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5300 8350 5350
Wire Wire Line
	8350 5350 8600 5350
Wire Wire Line
	8350 5700 8350 5650
Wire Wire Line
	8350 5650 8600 5650
Wire Wire Line
	8350 5600 8600 5600
Wire Wire Line
	8350 5500 8600 5500
Wire Wire Line
	8350 5400 8600 5400
Wire Wire Line
	8350 4850 8350 4800
Wire Wire Line
	8350 4800 8600 4800
Wire Wire Line
	8350 4750 8600 4750
Wire Wire Line
	8350 4650 8600 4650
Wire Wire Line
	8350 4550 8600 4550
Wire Wire Line
	8350 4450 8350 4500
Wire Wire Line
	8350 4500 8600 4500
Wire Wire Line
	8350 4000 8350 3950
Wire Wire Line
	8350 3950 8600 3950
Wire Wire Line
	8350 3900 8600 3900
Wire Wire Line
	8350 3800 8600 3800
Wire Wire Line
	8350 3700 8600 3700
Wire Wire Line
	8350 3600 8350 3650
Wire Wire Line
	8350 3650 8600 3650
Wire Wire Line
	8350 3150 8350 3100
Wire Wire Line
	8350 3100 8600 3100
Wire Wire Line
	8350 3050 8600 3050
Wire Wire Line
	8350 2950 8600 2950
Wire Wire Line
	8350 2850 8600 2850
Wire Wire Line
	8350 2750 8350 2800
Wire Wire Line
	8350 2800 8600 2800
Wire Wire Line
	8350 2300 8350 2250
Wire Wire Line
	8350 2250 8600 2250
Wire Wire Line
	8350 2200 8600 2200
Wire Wire Line
	8350 2100 8600 2100
Wire Wire Line
	8350 2000 8600 2000
Wire Wire Line
	8350 1900 8350 1950
Wire Wire Line
	8350 1950 8600 1950
Wire Wire Line
	8350 1450 8350 1400
Wire Wire Line
	8350 1400 8600 1400
Wire Wire Line
	8350 1350 8600 1350
Wire Wire Line
	8350 1250 8600 1250
Wire Wire Line
	8350 1150 8600 1150
Wire Wire Line
	8350 1050 8350 1100
Wire Wire Line
	8350 1100 8600 1100
Text GLabel 5000 3250 0    39   Input ~ 0
CS0
Text GLabel 5000 3350 0    39   Input ~ 0
CS1
Text GLabel 5000 3450 0    39   Input ~ 0
CS2
Text GLabel 5000 3550 0    39   Input ~ 0
CS3
Text GLabel 5000 3650 0    39   Input ~ 0
CS4
Text GLabel 5000 3750 0    39   Input ~ 0
CS5
Text GLabel 3350 6550 0    39   Input ~ 0
SD_CS
Text GLabel 5000 3150 0    39   Input ~ 0
SD_CS
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 60FD8CD4
P 3950 2950
F 0 "SW?" H 3950 3217 50  0000 C CNN
F 1 "SW_DIP_x01" H 3950 3126 50  0000 C CNN
F 2 "" H 3950 2950 50  0001 C CNN
F 3 "~" H 3950 2950 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2250 5800 2350
$Comp
L power:GND #PWR?
U 1 1 60FDE286
P 3600 3000
F 0 "#PWR?" H 3600 2750 50  0001 C CNN
F 1 "GND" H 3605 2827 50  0000 C CNN
F 2 "" H 3600 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0001 C CNN
	1    3600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2950 3600 2950
Wire Wire Line
	3600 2950 3600 3000
Wire Wire Line
	4250 2950 5100 2950
$Comp
L Device:LED D?
U 1 1 60FE3A02
P 4050 3450
F 0 "D?" V 4089 3332 50  0000 R CNN
F 1 "LED" V 3998 3332 50  0000 R CNN
F 2 "" H 4050 3450 50  0001 C CNN
F 3 "~" H 4050 3450 50  0001 C CNN
	1    4050 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60FE4E59
P 4400 3100
F 0 "R?" V 4300 3100 50  0000 C CNN
F 1 "220" V 4500 3100 50  0000 C CNN
F 2 "" V 4330 3100 50  0001 C CNN
F 3 "~" H 4400 3100 50  0001 C CNN
	1    4400 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3100 4600 3100
Wire Wire Line
	4600 3100 4600 3050
Wire Wire Line
	4600 3050 5100 3050
Wire Wire Line
	4250 3100 4050 3100
Wire Wire Line
	4050 3100 4050 3300
$Comp
L power:GND #PWR?
U 1 1 60FE9B43
P 4050 3700
F 0 "#PWR?" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4055 3527 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3600 4050 3700
Wire Wire Line
	5000 3150 5100 3150
Wire Wire Line
	5000 3250 5100 3250
Wire Wire Line
	5000 3350 5100 3350
Wire Wire Line
	5000 3450 5100 3450
Wire Wire Line
	5000 3550 5100 3550
Wire Wire Line
	5000 3650 5100 3650
Wire Wire Line
	5000 3750 5100 3750
Text GLabel 5000 4050 0    39   Input ~ 0
SCK
Text GLabel 5000 3950 0    39   Input ~ 0
MOSI
Wire Wire Line
	5000 3950 5100 3950
Wire Wire Line
	5000 4050 5100 4050
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 60FFB233
P 10550 6000
F 0 "J?" H 10630 6042 50  0000 L CNN
F 1 "Analog Inputs" H 10630 5951 50  0000 L CNN
F 2 "" H 10550 6000 50  0001 C CNN
F 3 "~" H 10550 6000 50  0001 C CNN
	1    10550 6000
	1    0    0    -1  
$EndComp
Text GLabel 10200 5800 0    39   Input ~ 0
AI0
Text GLabel 10200 5900 0    39   Input ~ 0
AI1
Text GLabel 10200 6000 0    39   Input ~ 0
AI2
Text GLabel 10200 6100 0    39   Input ~ 0
AI3
$Comp
L power:GND #PWR?
U 1 1 60FFE8F5
P 10200 6250
F 0 "#PWR?" H 10200 6000 50  0001 C CNN
F 1 "GND" H 10205 6077 50  0000 C CNN
F 2 "" H 10200 6250 50  0001 C CNN
F 3 "" H 10200 6250 50  0001 C CNN
	1    10200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 5800 10350 5800
Wire Wire Line
	10200 5900 10350 5900
Wire Wire Line
	10200 6000 10350 6000
Wire Wire Line
	10200 6100 10350 6100
Wire Wire Line
	10200 6250 10200 6200
Wire Wire Line
	10200 6200 10350 6200
Text GLabel 6250 3350 2    39   Input ~ 0
AI0
Text GLabel 6250 3450 2    39   Input ~ 0
AI1
Text GLabel 6250 3550 2    39   Input ~ 0
AI2
Text GLabel 6250 3650 2    39   Input ~ 0
AI3
Wire Wire Line
	6100 3350 6250 3350
Wire Wire Line
	6100 3450 6250 3450
Wire Wire Line
	6100 3550 6250 3550
Wire Wire Line
	6100 3650 6250 3650
Text Notes 500  600  0    39   ~ 0
Power is supplied by 12V barrel jack on Arduino board
$EndSCHEMATC
