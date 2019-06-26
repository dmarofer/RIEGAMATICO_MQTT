EESchema Schematic File Version 4
EELAYER 26 0
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
L ESP32-DEVKITC-32D:ESP32-DEVKITC-32D U1
U 1 1 5D1381D0
P 5300 3300
F 0 "U1" H 5300 4450 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 5300 4350 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D" H 5300 3300 50  0001 L BNN
F 3 "Espressif Systems" H 5300 3300 50  0001 L BNN
F 4 "None" H 5300 3300 50  0001 L BNN "Campo4"
F 5 "Unavailable" H 5300 3300 50  0001 L BNN "Campo5"
F 6 "Eval Board For Esp-Wroom-32" H 5300 3300 50  0001 L BNN "Campo6"
F 7 "ESP32-DEVKITC-32D" H 5300 3300 50  0001 L BNN "Campo7"
F 8 "None" H 5300 3300 50  0001 L BNN "Campo8"
	1    5300 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D1383EB
P 2400 1100
F 0 "#PWR?" H 2400 950 50  0001 C CNN
F 1 "+5V" H 2415 1273 50  0000 C CNN
F 2 "" H 2400 1100 50  0001 C CNN
F 3 "" H 2400 1100 50  0001 C CNN
	1    2400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 4500 4200
Wire Wire Line
	2400 1100 2400 4200
$Comp
L power:GND #PWR?
U 1 1 5D138560
P 2550 5900
F 0 "#PWR?" H 2550 5650 50  0001 C CNN
F 1 "GND" H 2555 5727 50  0000 C CNN
F 2 "" H 2550 5900 50  0001 C CNN
F 3 "" H 2550 5900 50  0001 C CNN
	1    2550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3700 4500 3700
$Comp
L power:GND #PWR?
U 1 1 5D138937
P 9500 5900
F 0 "#PWR?" H 9500 5650 50  0001 C CNN
F 1 "GND" H 9505 5727 50  0000 C CNN
F 2 "" H 9500 5900 50  0001 C CNN
F 3 "" H 9500 5900 50  0001 C CNN
	1    9500 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5D138991
P 2800 1100
F 0 "#PWR?" H 2800 950 50  0001 C CNN
F 1 "+3V3" H 2815 1273 50  0000 C CNN
F 2 "" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1100 2800 2400
Wire Wire Line
	2800 2400 4500 2400
Wire Wire Line
	9700 750  9700 900 
Wire Wire Line
	9700 900  9850 900 
Wire Wire Line
	9850 1000 7350 1000
Wire Wire Line
	7350 1000 7350 2600
Wire Wire Line
	7350 2600 6100 2600
Wire Wire Line
	6100 2900 7500 2900
Wire Wire Line
	7500 2900 7500 1100
Wire Wire Line
	7500 1100 9850 1100
Text Label 9700 1000 0    50   ~ 0
SCL
Text Label 9700 1100 0    50   ~ 0
SDA
$Comp
L power:+5V #PWR?
U 1 1 5D138DDF
P 9700 750
F 0 "#PWR?" H 9700 600 50  0001 C CNN
F 1 "+5V" H 9715 923 50  0000 C CNN
F 2 "" H 9700 750 50  0001 C CNN
F 3 "" H 9700 750 50  0001 C CNN
	1    9700 750 
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5D138E83
P 10050 1000
F 0 "J1" H 10129 992 50  0000 L CNN
F 1 "LCD I2C" H 10129 901 50  0000 L CNN
F 2 "" H 10050 1000 50  0001 C CNN
F 3 "~" H 10050 1000 50  0001 C CNN
	1    10050 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J2
U 1 1 5D138F29
P 10050 1900
F 0 "J2" H 10129 1942 50  0000 L CNN
F 1 "CONTROL CARGA" H 10129 1851 50  0000 L CNN
F 2 "" H 10050 1900 50  0001 C CNN
F 3 "~" H 10050 1900 50  0001 C CNN
	1    10050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1700 9350 1700
Wire Wire Line
	9350 1700 9350 900 
Wire Wire Line
	9350 900  9700 900 
Connection ~ 9700 900 
Wire Wire Line
	9850 2100 9500 2100
Wire Wire Line
	9500 2100 9500 1200
Wire Wire Line
	9500 1200 9850 1200
Wire Wire Line
	9500 2100 9500 2550
Connection ~ 9500 2100
Wire Wire Line
	9850 1800 4300 1800
Wire Wire Line
	4300 1800 4300 2800
Wire Wire Line
	4300 2800 4500 2800
Wire Wire Line
	9850 1900 4200 1900
Wire Wire Line
	4200 1900 4200 2900
Wire Wire Line
	4200 2900 4500 2900
Wire Wire Line
	4500 3000 4100 3000
Wire Wire Line
	4100 3000 4100 2000
Wire Wire Line
	4100 2000 9850 2000
Text Label 9550 1800 0    50   ~ 0
BATTADC
Text Label 9550 1900 0    50   ~ 0
PSADC
Text Label 9550 2000 0    50   ~ 0
CHRELAY
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5D13A10B
P 10050 2750
F 0 "J3" H 10130 2742 50  0000 L CNN
F 1 "BATERIA 12V" H 10130 2651 50  0000 L CNN
F 2 "" H 10050 2750 50  0001 C CNN
F 3 "~" H 10050 2750 50  0001 C CNN
	1    10050 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5D13A2AA
P 10050 2450
F 0 "J5" H 10129 2442 50  0000 L CNN
F 1 "BOMBA" H 10129 2351 50  0000 L CNN
F 2 "" H 10050 2450 50  0001 C CNN
F 3 "~" H 10050 2450 50  0001 C CNN
	1    10050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2550 9500 2550
Connection ~ 9500 2550
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 5D13ADCA
P 8450 2750
F 0 "Q1" H 8655 2796 50  0000 L CNN
F 1 "FET" H 8655 2705 50  0000 L CNN
F 2 "" H 8650 2850 50  0001 C CNN
F 3 "~" H 8450 2750 50  0001 C CNN
	1    8450 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2850 9500 2850
Connection ~ 9500 2850
Wire Wire Line
	9500 2850 9500 3200
Wire Wire Line
	8550 2550 8550 2450
Wire Wire Line
	8550 2450 9850 2450
Wire Wire Line
	8250 2750 8150 2750
Wire Wire Line
	8150 2750 8150 2100
Wire Wire Line
	8150 2100 4000 2100
Wire Wire Line
	4000 2100 4000 3100
Wire Wire Line
	4000 3100 4500 3100
Text Label 7700 2100 0    50   ~ 0
PWM_BOMBA
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5D140450
P 10050 3100
F 0 "J6" H 10129 3092 50  0000 L CNN
F 1 "SENS NIVEL" H 10129 3001 50  0000 L CNN
F 2 "" H 10050 3100 50  0001 C CNN
F 3 "~" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 5D1404ED
P 10050 3500
F 0 "J7" H 10129 3542 50  0000 L CNN
F 1 "SENS CAUDAL" H 10129 3451 50  0000 L CNN
F 2 "" H 10050 3500 50  0001 C CNN
F 3 "~" H 10050 3500 50  0001 C CNN
	1    10050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3200 9500 3200
Connection ~ 9500 3200
Wire Wire Line
	9500 3200 9500 3600
Wire Wire Line
	9500 2550 9500 2850
Wire Wire Line
	8550 2950 8550 3000
Wire Wire Line
	8550 3000 8850 3000
Wire Wire Line
	8850 3000 8850 2750
Wire Wire Line
	8850 2750 9850 2750
Wire Wire Line
	4500 3400 4300 3400
Wire Wire Line
	4300 3400 4300 4500
Wire Wire Line
	4300 4500 8150 4500
Wire Wire Line
	8150 4500 8150 3100
Wire Wire Line
	8150 3100 9850 3100
Wire Wire Line
	8250 3500 9850 3500
$Comp
L power:+3V3 #PWR?
U 1 1 5D1527A7
P 9050 750
F 0 "#PWR?" H 9050 600 50  0001 C CNN
F 1 "+3V3" H 9065 923 50  0000 C CNN
F 2 "" H 9050 750 50  0001 C CNN
F 3 "" H 9050 750 50  0001 C CNN
	1    9050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3400 9050 3400
Wire Wire Line
	9050 3400 9050 750 
Wire Wire Line
	9850 3600 9500 3600
Connection ~ 9500 3600
Wire Wire Line
	9500 3600 9500 4000
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5D15675D
P 10050 3900
F 0 "J8" H 10129 3942 50  0000 L CNN
F 1 "SENS AMBIENTE" H 10129 3851 50  0000 L CNN
F 2 "" H 10050 3900 50  0001 C CNN
F 3 "~" H 10050 3900 50  0001 C CNN
	1    10050 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 5D1567A3
P 10050 4300
F 0 "J9" H 10130 4342 50  0000 L CNN
F 1 "SENS HUMEDAD TIERRA" H 10130 4251 50  0000 L CNN
F 2 "" H 10050 4300 50  0001 C CNN
F 3 "~" H 10050 4300 50  0001 C CNN
	1    10050 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 5D156875
P 10050 4700
F 0 "J10" H 10129 4742 50  0000 L CNN
F 1 "SENS TEMP TIERRA" H 10129 4651 50  0000 L CNN
F 2 "" H 10050 4700 50  0001 C CNN
F 3 "~" H 10050 4700 50  0001 C CNN
	1    10050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3700 2550 5900
Wire Wire Line
	9050 3400 9050 3800
Wire Wire Line
	9050 3800 9850 3800
Connection ~ 9050 3400
Wire Wire Line
	9050 3800 9050 4200
Wire Wire Line
	9050 4200 9850 4200
Connection ~ 9050 3800
Wire Wire Line
	9050 4200 9050 4600
Wire Wire Line
	9050 4600 9850 4600
Connection ~ 9050 4200
Wire Wire Line
	9850 4000 9500 4000
Connection ~ 9500 4000
Wire Wire Line
	9500 4000 9500 4400
Wire Wire Line
	9850 4400 9500 4400
Connection ~ 9500 4400
Wire Wire Line
	9500 4400 9500 4800
Wire Wire Line
	9850 4800 9500 4800
Connection ~ 9500 4800
Wire Wire Line
	9500 4800 9500 5900
Wire Wire Line
	9850 3900 8350 3900
Wire Wire Line
	8350 3900 8350 4700
Wire Wire Line
	8350 4700 4100 4700
Wire Wire Line
	4100 4700 4100 3600
Wire Wire Line
	4100 3600 4500 3600
Wire Wire Line
	9850 4300 8450 4300
Wire Wire Line
	8450 4300 8450 4800
Wire Wire Line
	8450 4800 4000 4800
Wire Wire Line
	4000 4800 4000 3800
Wire Wire Line
	4000 3800 4500 3800
Wire Wire Line
	9850 4700 8600 4700
Wire Wire Line
	8600 4700 8600 4200
Wire Wire Line
	8600 4200 6450 4200
Text Label 4350 1800 0    50   ~ 0
BATTADC
Text Label 4350 1900 0    50   ~ 0
PSADC
Text Label 4350 2000 0    50   ~ 0
CHRELAY
Text Label 4350 2100 0    50   ~ 0
PWM_BOMBA
Text Label 6150 2600 0    50   ~ 0
SCL
Text Label 6150 2900 0    50   ~ 0
SDA
Text Label 4350 4500 0    50   ~ 0
SENS_NIVEL
Text Label 6650 4100 0    50   ~ 0
SENS_CAUDAL
Text Label 4350 4700 0    50   ~ 0
SENS_AMBIENTE
Text Label 4350 4800 0    50   ~ 0
SENS_HUNEDAD_TIERRA
Text Label 6650 4200 0    50   ~ 0
SENS_TEMP_TIERRA
Wire Wire Line
	8250 3500 8250 4100
Wire Wire Line
	8250 4100 6550 4100
Wire Wire Line
	6550 3100 6100 3100
Wire Wire Line
	6550 3100 6550 4100
Wire Wire Line
	6450 3200 6100 3200
Wire Wire Line
	6450 3200 6450 4200
$EndSCHEMATC
