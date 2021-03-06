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
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 60FB0CEE
P 5600 3350
F 0 "A1" H 5600 3950 50  0000 C CNN
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
	10650 1050 10650 1450
Wire Notes Line
	10650 1450 11000 1450
Wire Notes Line
	11000 1450 11000 1050
Wire Notes Line
	11000 1050 10650 1050
Text Notes 10650 1150 0    50   ~ 0
MAX6675
Text Notes 10700 1050 0    50   ~ 0
Temp0
Wire Notes Line
	10650 1900 10650 2300
Wire Notes Line
	10650 2300 11000 2300
Wire Notes Line
	11000 2300 11000 1900
Wire Notes Line
	11000 1900 10650 1900
Text Notes 10650 2000 0    50   ~ 0
MAX6675
Text Notes 10700 1900 0    50   ~ 0
Temp1
Text GLabel 10400 1150 0    39   Input ~ 0
SCK
Text GLabel 10400 1250 0    39   Input ~ 0
MISO
Text GLabel 10400 1350 0    39   Input ~ 0
CS0
$Comp
L power:+5V #PWR04
U 1 1 60FBE811
P 5800 2250
F 0 "#PWR04" H 5800 2100 50  0001 C CNN
F 1 "+5V" H 5815 2423 50  0000 C CNN
F 2 "" H 5800 2250 50  0001 C CNN
F 3 "" H 5800 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 60FBF1E8
P 10400 1050
F 0 "#PWR05" H 10400 900 50  0001 C CNN
F 1 "+5V" H 10415 1223 50  0000 C CNN
F 2 "" H 10400 1050 50  0001 C CNN
F 3 "" H 10400 1050 50  0001 C CNN
	1    10400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60FBFACF
P 5600 4550
F 0 "#PWR03" H 5600 4300 50  0001 C CNN
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
L power:GND #PWR06
U 1 1 60FC0A5E
P 10400 1450
F 0 "#PWR06" H 10400 1200 50  0001 C CNN
F 1 "GND" H 10405 1277 50  0000 C CNN
F 2 "" H 10400 1450 50  0001 C CNN
F 3 "" H 10400 1450 50  0001 C CNN
	1    10400 1450
	1    0    0    -1  
$EndComp
Text GLabel 10400 2000 0    39   Input ~ 0
SCK
Text GLabel 10400 2100 0    39   Input ~ 0
MISO
Text GLabel 10400 2200 0    39   Input ~ 0
CS1
$Comp
L power:+5V #PWR07
U 1 1 60FC3B8D
P 10400 1900
F 0 "#PWR07" H 10400 1750 50  0001 C CNN
F 1 "+5V" H 10415 2073 50  0000 C CNN
F 2 "" H 10400 1900 50  0001 C CNN
F 3 "" H 10400 1900 50  0001 C CNN
	1    10400 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60FC3B93
P 10400 2300
F 0 "#PWR08" H 10400 2050 50  0001 C CNN
F 1 "GND" H 10405 2127 50  0000 C CNN
F 2 "" H 10400 2300 50  0001 C CNN
F 3 "" H 10400 2300 50  0001 C CNN
	1    10400 2300
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 2750 10650 3150
Wire Notes Line
	10650 3150 11000 3150
Wire Notes Line
	11000 3150 11000 2750
Wire Notes Line
	11000 2750 10650 2750
Text Notes 10650 2850 0    50   ~ 0
MAX6675
Text Notes 10700 2750 0    50   ~ 0
Temp2
Text GLabel 10400 2850 0    39   Input ~ 0
SCK
Text GLabel 10400 2950 0    39   Input ~ 0
MISO
Text GLabel 10400 3050 0    39   Input ~ 0
CS2
$Comp
L power:+5V #PWR09
U 1 1 60FC56C5
P 10400 2750
F 0 "#PWR09" H 10400 2600 50  0001 C CNN
F 1 "+5V" H 10415 2923 50  0000 C CNN
F 2 "" H 10400 2750 50  0001 C CNN
F 3 "" H 10400 2750 50  0001 C CNN
	1    10400 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60FC56CB
P 10400 3150
F 0 "#PWR010" H 10400 2900 50  0001 C CNN
F 1 "GND" H 10405 2977 50  0000 C CNN
F 2 "" H 10400 3150 50  0001 C CNN
F 3 "" H 10400 3150 50  0001 C CNN
	1    10400 3150
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 3600 10650 4000
Wire Notes Line
	10650 4000 11000 4000
Wire Notes Line
	11000 4000 11000 3600
Wire Notes Line
	11000 3600 10650 3600
Text Notes 10650 3700 0    50   ~ 0
MAX6675
Text Notes 10700 3600 0    50   ~ 0
Temp3
Text GLabel 10400 3700 0    39   Input ~ 0
SCK
Text GLabel 10400 3800 0    39   Input ~ 0
MISO
Text GLabel 10400 3900 0    39   Input ~ 0
CS3
$Comp
L power:+5V #PWR011
U 1 1 60FC61E2
P 10400 3600
F 0 "#PWR011" H 10400 3450 50  0001 C CNN
F 1 "+5V" H 10415 3773 50  0000 C CNN
F 2 "" H 10400 3600 50  0001 C CNN
F 3 "" H 10400 3600 50  0001 C CNN
	1    10400 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60FC61E8
P 10400 4000
F 0 "#PWR012" H 10400 3750 50  0001 C CNN
F 1 "GND" H 10405 3827 50  0000 C CNN
F 2 "" H 10400 4000 50  0001 C CNN
F 3 "" H 10400 4000 50  0001 C CNN
	1    10400 4000
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 4450 10650 4850
Wire Notes Line
	10650 4850 11000 4850
Wire Notes Line
	11000 4850 11000 4450
Wire Notes Line
	11000 4450 10650 4450
Text Notes 10650 4550 0    50   ~ 0
MAX6675
Text Notes 10700 4450 0    50   ~ 0
Temp4
Text GLabel 10400 4550 0    39   Input ~ 0
SCK
Text GLabel 10400 4650 0    39   Input ~ 0
MISO
Text GLabel 10400 4750 0    39   Input ~ 0
CS4
$Comp
L power:+5V #PWR013
U 1 1 60FC6F4B
P 10400 4450
F 0 "#PWR013" H 10400 4300 50  0001 C CNN
F 1 "+5V" H 10415 4623 50  0000 C CNN
F 2 "" H 10400 4450 50  0001 C CNN
F 3 "" H 10400 4450 50  0001 C CNN
	1    10400 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60FC6F51
P 10400 4850
F 0 "#PWR014" H 10400 4600 50  0001 C CNN
F 1 "GND" H 10405 4677 50  0000 C CNN
F 2 "" H 10400 4850 50  0001 C CNN
F 3 "" H 10400 4850 50  0001 C CNN
	1    10400 4850
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 5300 10650 5700
Wire Notes Line
	10650 5700 11000 5700
Wire Notes Line
	11000 5700 11000 5300
Wire Notes Line
	11000 5300 10650 5300
Text Notes 10650 5400 0    50   ~ 0
MAX6675
Text Notes 10700 5300 0    50   ~ 0
Temp5
Text GLabel 10400 5400 0    39   Input ~ 0
SCK
Text GLabel 10400 5500 0    39   Input ~ 0
MISO
Text GLabel 10400 5600 0    39   Input ~ 0
CS5
$Comp
L power:+5V #PWR015
U 1 1 60FC77D1
P 10400 5300
F 0 "#PWR015" H 10400 5150 50  0001 C CNN
F 1 "+5V" H 10415 5473 50  0000 C CNN
F 2 "" H 10400 5300 50  0001 C CNN
F 3 "" H 10400 5300 50  0001 C CNN
	1    10400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 60FC77D7
P 10400 5700
F 0 "#PWR016" H 10400 5450 50  0001 C CNN
F 1 "GND" H 10405 5527 50  0000 C CNN
F 2 "" H 10400 5700 50  0001 C CNN
F 3 "" H 10400 5700 50  0001 C CNN
	1    10400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 5300 10400 5350
Wire Wire Line
	10400 5350 10650 5350
Wire Wire Line
	10400 5700 10400 5650
Wire Wire Line
	10400 5650 10650 5650
Wire Wire Line
	10400 5600 10650 5600
Wire Wire Line
	10400 5500 10650 5500
Wire Wire Line
	10400 5400 10650 5400
Wire Wire Line
	10400 4850 10400 4800
Wire Wire Line
	10400 4800 10650 4800
Wire Wire Line
	10400 4750 10650 4750
Wire Wire Line
	10400 4650 10650 4650
Wire Wire Line
	10400 4550 10650 4550
Wire Wire Line
	10400 4450 10400 4500
Wire Wire Line
	10400 4500 10650 4500
Wire Wire Line
	10400 4000 10400 3950
Wire Wire Line
	10400 3950 10650 3950
Wire Wire Line
	10400 3900 10650 3900
Wire Wire Line
	10400 3800 10650 3800
Wire Wire Line
	10400 3700 10650 3700
Wire Wire Line
	10400 3600 10400 3650
Wire Wire Line
	10400 3650 10650 3650
Wire Wire Line
	10400 3150 10400 3100
Wire Wire Line
	10400 3100 10650 3100
Wire Wire Line
	10400 3050 10650 3050
Wire Wire Line
	10400 2950 10650 2950
Wire Wire Line
	10400 2850 10650 2850
Wire Wire Line
	10400 2750 10400 2800
Wire Wire Line
	10400 2800 10650 2800
Wire Wire Line
	10400 2300 10400 2250
Wire Wire Line
	10400 2250 10650 2250
Wire Wire Line
	10400 2200 10650 2200
Wire Wire Line
	10400 2100 10650 2100
Wire Wire Line
	10400 2000 10650 2000
Wire Wire Line
	10400 1900 10400 1950
Wire Wire Line
	10400 1950 10650 1950
Wire Wire Line
	10400 1450 10400 1400
Wire Wire Line
	10400 1400 10650 1400
Wire Wire Line
	10400 1350 10650 1350
Wire Wire Line
	10400 1250 10650 1250
Wire Wire Line
	10400 1150 10650 1150
Wire Wire Line
	10400 1050 10400 1100
Wire Wire Line
	10400 1100 10650 1100
Text GLabel 5000 3150 0    39   Input ~ 0
CS0
Text GLabel 5000 3250 0    39   Input ~ 0
CS1
Text GLabel 5000 3350 0    39   Input ~ 0
CS2
Text GLabel 5000 3450 0    39   Input ~ 0
CS3
Text GLabel 5000 3550 0    39   Input ~ 0
CS4
Text GLabel 5000 3650 0    39   Input ~ 0
CS5
Text GLabel 3550 6450 0    39   Input ~ 0
SD_CS
Text GLabel 5000 3750 0    39   Input ~ 0
SD_CS
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 60FD8CD4
P 3950 2950
F 0 "SW1" H 3950 3217 50  0000 C CNN
F 1 "Start/Stop Logging" H 3950 3126 50  0000 C CNN
F 2 "" H 3950 2950 50  0001 C CNN
F 3 "~" H 3950 2950 50  0001 C CNN
	1    3950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2250 5800 2350
$Comp
L power:GND #PWR01
U 1 1 60FDE286
P 3600 3000
F 0 "#PWR01" H 3600 2750 50  0001 C CNN
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
L Device:LED D1
U 1 1 60FE3A02
P 4050 3450
F 0 "D1" V 4089 3332 50  0000 R CNN
F 1 "RED" V 3998 3332 50  0000 R CNN
F 2 "" H 4050 3450 50  0001 C CNN
F 3 "~" H 4050 3450 50  0001 C CNN
	1    4050 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 60FE4E59
P 4400 3100
F 0 "R1" V 4300 3100 50  0000 C CNN
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
L power:GND #PWR02
U 1 1 60FE9B43
P 4050 3700
F 0 "#PWR02" H 4050 3450 50  0001 C CNN
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
MISO
Wire Wire Line
	5000 3950 5100 3950
Wire Wire Line
	5000 4050 5100 4050
Text GLabel 7950 5400 0    39   Input ~ 0
AI0
Text GLabel 7950 5500 0    39   Input ~ 0
AI1
Text GLabel 7950 5600 0    39   Input ~ 0
AI2
Text GLabel 7950 5700 0    39   Input ~ 0
AI3
$Comp
L power:GND #PWR017
U 1 1 60FFE8F5
P 7950 6050
F 0 "#PWR017" H 7950 5800 50  0001 C CNN
F 1 "GND" H 7955 5877 50  0000 C CNN
F 2 "" H 7950 6050 50  0001 C CNN
F 3 "" H 7950 6050 50  0001 C CNN
	1    7950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5400 8000 5400
Wire Wire Line
	7950 5500 8000 5500
Wire Wire Line
	7950 5600 8000 5600
Wire Wire Line
	7950 5700 8000 5700
Wire Wire Line
	7950 6050 7950 6000
Wire Wire Line
	7950 6000 8100 6000
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
Power is supplied by 5V USB connection
Text GLabel 5000 3850 0    39   Input ~ 0
MOSI
Wire Wire Line
	5000 3850 5100 3850
Text GLabel 3550 6750 0    39   Input ~ 0
SCK
Text GLabel 3550 6650 0    39   Input ~ 0
MISO
Text GLabel 3550 6550 0    39   Input ~ 0
MOSI
Wire Wire Line
	3550 6450 3750 6450
Wire Wire Line
	3550 6550 3750 6550
Wire Wire Line
	3550 6650 3750 6650
Wire Wire Line
	3550 6750 3750 6750
Text GLabel 6250 3750 2    39   Input ~ 0
AI4
Text GLabel 6250 3850 2    39   Input ~ 0
AI5
Wire Wire Line
	6100 3750 6250 3750
Wire Wire Line
	6100 3850 6250 3850
Text GLabel 7950 5800 0    39   Input ~ 0
AI4
Text GLabel 7950 5900 0    39   Input ~ 0
AI5
Wire Wire Line
	7950 5800 8000 5800
Wire Wire Line
	7950 5900 8000 5900
$Comp
L Connector:Screw_Terminal_01x07 J1
U 1 1 60FCB03D
P 8300 5700
F 0 "J1" H 8380 5742 50  0000 L CNN
F 1 "Analog Inputs" H 8380 5651 50  0000 L CNN
F 2 "" H 8300 5700 50  0001 C CNN
F 3 "~" H 8300 5700 50  0001 C CNN
	1    8300 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60FECB16
P 6650 5250
F 0 "R2" V 6550 5350 50  0000 C CNN
F 1 "10k" V 6550 5200 50  0000 C CNN
F 2 "" V 6580 5250 50  0001 C CNN
F 3 "~" H 6650 5250 50  0001 C CNN
	1    6650 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 60FECF33
P 7150 4900
F 0 "#PWR018" H 7150 4650 50  0001 C CNN
F 1 "GND" H 7155 4727 50  0000 C CNN
F 2 "" H 7150 4900 50  0001 C CNN
F 3 "" H 7150 4900 50  0001 C CNN
	1    7150 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 5100 6650 5000
Wire Wire Line
	6650 5000 6850 5000
Wire Wire Line
	7150 5000 7150 4900
Wire Wire Line
	7650 5100 7650 5000
Wire Wire Line
	7650 5000 7450 5000
Connection ~ 7150 5000
Wire Wire Line
	7250 5100 7250 5000
Connection ~ 7250 5000
Wire Wire Line
	7250 5000 7150 5000
Wire Wire Line
	7450 5100 7450 5000
Connection ~ 7450 5000
Wire Wire Line
	7450 5000 7250 5000
Wire Wire Line
	7050 5100 7050 5000
Connection ~ 7050 5000
Wire Wire Line
	7050 5000 7150 5000
Wire Wire Line
	6850 5100 6850 5000
Connection ~ 6850 5000
Wire Wire Line
	6850 5000 7050 5000
Wire Wire Line
	7650 5400 7650 5450
Wire Wire Line
	7650 5450 8000 5450
Wire Wire Line
	8000 5450 8000 5400
Connection ~ 8000 5400
Wire Wire Line
	8000 5400 8100 5400
Wire Wire Line
	7450 5400 7450 5550
Wire Wire Line
	7450 5550 8000 5550
Wire Wire Line
	8000 5550 8000 5500
Connection ~ 8000 5500
Wire Wire Line
	8000 5500 8100 5500
Wire Wire Line
	7250 5400 7250 5650
Wire Wire Line
	7250 5650 8000 5650
Wire Wire Line
	8000 5650 8000 5600
Connection ~ 8000 5600
Wire Wire Line
	8000 5600 8100 5600
Wire Wire Line
	7050 5400 7050 5750
Wire Wire Line
	7050 5750 8000 5750
Wire Wire Line
	8000 5750 8000 5700
Connection ~ 8000 5700
Wire Wire Line
	8000 5700 8100 5700
Wire Wire Line
	6850 5400 6850 5850
Wire Wire Line
	6850 5850 8000 5850
Wire Wire Line
	8000 5850 8000 5800
Connection ~ 8000 5800
Wire Wire Line
	8000 5800 8100 5800
Wire Wire Line
	6650 5400 6650 5950
Wire Wire Line
	6650 5950 8000 5950
Wire Wire Line
	8000 5950 8000 5900
Connection ~ 8000 5900
Wire Wire Line
	8000 5900 8100 5900
$Comp
L Device:R R3
U 1 1 6101F1CE
P 6850 5250
F 0 "R3" V 6750 5350 50  0000 C CNN
F 1 "10k" V 6750 5200 50  0000 C CNN
F 2 "" V 6780 5250 50  0001 C CNN
F 3 "~" H 6850 5250 50  0001 C CNN
	1    6850 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 6101F41C
P 7050 5250
F 0 "R4" V 6950 5350 50  0000 C CNN
F 1 "10k" V 6950 5200 50  0000 C CNN
F 2 "" V 6980 5250 50  0001 C CNN
F 3 "~" H 7050 5250 50  0001 C CNN
	1    7050 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 6101F6D5
P 7250 5250
F 0 "R5" V 7150 5350 50  0000 C CNN
F 1 "10k" V 7150 5200 50  0000 C CNN
F 2 "" V 7180 5250 50  0001 C CNN
F 3 "~" H 7250 5250 50  0001 C CNN
	1    7250 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 6101F8C0
P 7450 5250
F 0 "R6" V 7350 5350 50  0000 C CNN
F 1 "10k" V 7350 5200 50  0000 C CNN
F 2 "" V 7380 5250 50  0001 C CNN
F 3 "~" H 7450 5250 50  0001 C CNN
	1    7450 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 6101FB08
P 7650 5250
F 0 "R7" V 7550 5350 50  0000 C CNN
F 1 "10k" V 7550 5200 50  0000 C CNN
F 2 "" V 7580 5250 50  0001 C CNN
F 3 "~" H 7650 5250 50  0001 C CNN
	1    7650 5250
	-1   0    0    1   
$EndComp
$EndSCHEMATC
