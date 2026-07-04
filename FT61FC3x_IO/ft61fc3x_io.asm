//Deviec:FT61FC3X
//-----------------------Variable---------------------------------
		_SYS.Standby_Work_State		EQU		38H
		_SYS.HT_Value		EQU		39H
		_SYS.LB_Value		EQU		3AH
		_SYS.RC_Value		EQU		3BH
		_SYS.Relay_Release		EQU		3CH
		_SYS.KEY_Value		EQU		3DH
		_SYS.Vadc_Value		EQU		3EH
		_SYS.Cadc_Value		EQU		3FH
		_SYS.READY_Value		EQU		40H
		_SYS.STANDBY_Value		EQU		41H
		_SYS.Vbattery_Adc		EQU		42H
		_SYS.Cbattery_Adc		EQU		44H
		_SYS.Long_Time_Change		EQU		46H
		_SYS.Delay_2s_Flag		EQU		47H
		_SYS.Cadc_Ready_Flag		EQU		48H
		_SYS		EQU		38H
		_PB3		EQU		06H
		_PC0		EQU		07H
		_PC1		EQU		07H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_TaskCompany.Run		EQU		20H
		_TaskCompany.Timer		EQU		21H
		_TaskCompany.IvtTime		EQU		23H
		_TaskCompany.TaskHook		EQU		25H
		_TaskCompany		EQU		20H
//		Task_Process@i		EQU		54H
//		___bmul@multiplier		EQU		4FH
//		___bmul@product		EQU		4EH
//		___bmul@multiplier		EQU		4FH
//		___bmul@multiplicand		EQU		4DH
//		___bmul@multiplier		EQU		4FH
//		READY_Task@state		EQU		4CH
//		READY_Task@counter		EQU		49H
//		Ready_Control@num		EQU		4DH
//		Ready_Control@num		EQU		4DH
//		Ready_Control@num		EQU		4DH
//		Get_Cbattery_Stand_State@adc_value		EQU		4DH
//		Get_Cbattery_Stand_State@current_state		EQU		4BH
//		GET_ADC_DATA@adcChannel		EQU		52H
//		GET_ADC_DATA@ADCON0Buff		EQU		53H
//		GET_ADC_DATA@adcChannel		EQU		52H
//		GET_ADC_DATA@adcChannel		EQU		52H
//		DelayMs@Time		EQU		4FH
//		DelayMs@b		EQU		51H
//		DelayMs@a		EQU		50H
//		DelayMs@Time		EQU		4FH
//		DelayMs@Time		EQU		4FH
//		DelayUs@Time		EQU		4DH
//		DelayUs@a		EQU		4EH
//		DelayUs@Time		EQU		4DH
//		DelayUs@Time		EQU		4DH
//		Task_Count@i		EQU		75H
//		i1___bmul@multiplier		EQU		71H
//		i1___bmul@product		EQU		72H
//		i1___bmul@multiplier		EQU		71H
//		i1___bmul@multiplicand		EQU		70H
//		i1___bmul@multiplier		EQU		71H
//-----------------------Variable END---------------------------------

		BCR 	PCLATH,3 		//0000 	118A
		LJUMP 	0DH 			//0001 	380D
		ORG		0004H
		STR 	7EH 			//0004 	01FE
		SWAPR 	STATUS,0 		//0005 	0703
		STR 	76H 			//0006 	01F6
		LDR 	FSR,0 			//0007 	0804
		STR 	77H 			//0008 	01F7
		LDR 	PCLATH,0 		//0009 	080A
		STR 	78H 			//000A 	01F8
		BCR 	PCLATH,3 		//000B 	118A
		LJUMP 	179H 			//000C 	3979
		BCR 	PCLATH,3 		//000D 	118A
		LJUMP 	0FH 			//000E 	380F
		LDWI 	1H 			//000F 	2A01
		CLRR 	20H 			//0010 	0120
		STR 	21H 			//0011 	01A1
		LDWI 	5H 			//0012 	2A05
		CLRR 	22H 			//0013 	0122
		STR 	23H 			//0014 	01A3
		LDWI 	3H 			//0015 	2A03
		CLRR 	24H 			//0016 	0124
		STR 	25H 			//0017 	01A5
		LDWI 	2H 			//0018 	2A02
		CLRR 	26H 			//0019 	0126
		STR 	27H 			//001A 	01A7
		LDWI 	AH 			//001B 	2A0A
		CLRR 	28H 			//001C 	0128
		STR 	29H 			//001D 	01A9
		LDWI 	5H 			//001E 	2A05
		CLRR 	2AH 			//001F 	012A
		STR 	2BH 			//0020 	01AB
		LDWI 	3H 			//0021 	2A03
		CLRR 	2CH 			//0022 	012C
		STR 	2DH 			//0023 	01AD
		LDWI 	14H 			//0024 	2A14
		CLRR 	2EH 			//0025 	012E
		STR 	2FH 			//0026 	01AF
		LDWI 	7H 			//0027 	2A07
		CLRR 	30H 			//0028 	0130
		STR 	31H 			//0029 	01B1
		LDWI 	A0H 			//002A 	2AA0
		CLRR 	32H 			//002B 	0132
		STR 	33H 			//002C 	01B3
		LDWI 	FH 			//002D 	2A0F
		STR 	34H 			//002E 	01B4
		LDWI 	A0H 			//002F 	2AA0
		STR 	35H 			//0030 	01B5
		LDWI 	FH 			//0031 	2A0F
		STR 	36H 			//0032 	01B6
		LDWI 	1H 			//0033 	2A01
		STR 	37H 			//0034 	01B7
		LDWI 	38H 			//0035 	2A38
		BCR 	STATUS,7 		//0036 	1383
		STR 	FSR 			//0037 	0184
		LDWI 	4DH 			//0038 	2A4D
		BCR 	PCLATH,3 		//0039 	118A
		LCALL 	227H 			//003A 	3227
		CLRR 	STATUS 			//003B 	0103
		BCR 	PCLATH,3 		//003C 	118A
		LJUMP 	22FH 			//003D 	3A2F
		STR 	7FH 			//003E 	01FF
		LDWI 	0H 			//003F 	2A00
		STR 	PCLATH 			//0040 	018A
		LDR 	7FH,0 			//0041 	087F
		ADDWR 	PCL,1 			//0042 	0B82
		LJUMP 	43H 			//0043 	3843
		BCR 	PCLATH,3 		//0044 	118A
		LJUMP 	238H 			//0045 	3A38
		BCR 	PCLATH,3 		//0046 	118A
		LJUMP 	4CH 			//0047 	384C
		BCR 	PCLATH,3 		//0048 	118A
		LJUMP 	237H 			//0049 	3A37
		BCR 	PCLATH,3 		//004A 	118A
		LJUMP 	236H 			//004B 	3A36

		//;Task.c: 25: READY_Task();
		LJUMP 	4DH 			//004C 	384D

		//;READY.c: 54: static TaskState_t state = ST_PRE_ON;
		//;READY.c: 55: static uint16_t counter = 0;
		//;READY.c: 57: if (!SYS.Standby_Work_State) {
		LDR 	38H,0 			//004D 	0838
		BTSS 	STATUS,2 		//004E 	1D03
		LJUMP 	55H 			//004F 	3855
		LDWI 	0H 			//0050 	2A00

		//;READY.c: 58: state = ST_PRE_ON;
		CLRR 	4CH 			//0051 	014C

		//;READY.c: 59: counter = 0;
		CLRR 	49H 			//0052 	0149
		CLRR 	4AH 			//0053 	014A

		//;READY.c: 60: Ready_Control(0);
		LJUMP 	A3H 			//0054 	38A3

		//;READY.c: 62: }
		//;READY.c: 64: counter++;
		INCR	49H,1 			//0055 	09C9
		BTSC 	STATUS,2 		//0056 	1503
		INCR	4AH,1 			//0057 	09CA

		//;READY.c: 66: switch (state) {
		LJUMP 	94H 			//0058 	3894

		//;READY.c: 68: Ready_Control(1);
		LDWI 	1H 			//0059 	2A01
		LCALL 	A3H 			//005A 	30A3
		BCR 	PCLATH,3 		//005B 	118A

		//;READY.c: 69: if (counter >= 600) {
		LDWI 	2H 			//005C 	2A02
		SUBWR 	4AH,0 			//005D 	0C4A
		LDWI 	58H 			//005E 	2A58
		BTSC 	STATUS,2 		//005F 	1503
		SUBWR 	49H,0 			//0060 	0C49
		BTSS 	STATUS,0 		//0061 	1C03
		RET		 					//0062 	0004

		//;READY.c: 70: counter = 0;
		CLRR 	49H 			//0063 	0149
		CLRR 	4AH 			//0064 	014A

		//;READY.c: 71: state = ST_OFF;
		CLRR 	4CH 			//0065 	014C
		INCR	4CH,1 			//0066 	09CC
		RET		 					//0067 	0004

		//;READY.c: 76: Ready_Control(0);
		LDWI 	0H 			//0068 	2A00
		LCALL 	A3H 			//0069 	30A3
		BCR 	PCLATH,3 		//006A 	118A

		//;READY.c: 77: if (counter >= 2) {
		LDWI 	0H 			//006B 	2A00
		SUBWR 	4AH,0 			//006C 	0C4A
		LDWI 	2H 			//006D 	2A02
		BTSC 	STATUS,2 		//006E 	1503
		SUBWR 	49H,0 			//006F 	0C49
		BTSS 	STATUS,0 		//0070 	1C03
		RET		 					//0071 	0004
		LDWI 	2H 			//0072 	2A02

		//;READY.c: 78: counter = 0;
		CLRR 	49H 			//0073 	0149
		CLRR 	4AH 			//0074 	014A

		//;READY.c: 79: state = ST_FINAL_ON;
		STR 	4CH 			//0075 	01CC
		RET		 					//0076 	0004

		//;READY.c: 84: Ready_Control(1);
		LDWI 	1H 			//0077 	2A01
		LCALL 	A3H 			//0078 	30A3
		BCR 	PCLATH,3 		//0079 	118A

		//;READY.c: 85: if (counter >= 400) {
		LDWI 	1H 			//007A 	2A01
		SUBWR 	4AH,0 			//007B 	0C4A
		LDWI 	90H 			//007C 	2A90
		BTSC 	STATUS,2 		//007D 	1503
		SUBWR 	49H,0 			//007E 	0C49
		BTSS 	STATUS,0 		//007F 	1C03
		RET		 					//0080 	0004
		LDWI 	3H 			//0081 	2A03

		//;READY.c: 86: counter = 0;
		CLRR 	49H 			//0082 	0149
		CLRR 	4AH 			//0083 	014A

		//;READY.c: 87: state = ST_DETECT;
		STR 	4CH 			//0084 	01CC
		RET		 					//0085 	0004

		//;READY.c: 93: Get_Cbattery_Data();
		LCALL 	B7H 			//0086 	30B7
		BCR 	PCLATH,3 		//0087 	118A

		//;READY.c: 94: SYS.Cadc_Value = Get_Cbattery_Stand_State(SYS.Cbattery_Adc);
		LDR 	45H,0 			//0088 	0845
		STR 	4EH 			//0089 	01CE
		LDR 	44H,0 			//008A 	0844
		STR 	4DH 			//008B 	01CD
		LCALL 	15BH 			//008C 	315B
		STR 	3FH 			//008D 	01BF
		LDWI 	90H 			//008E 	2A90

		//;READY.c: 95: state = ST_PRE_ON;
		CLRR 	4CH 			//008F 	014C

		//;READY.c: 96: counter = 400;
		STR 	49H 			//0090 	01C9
		LDWI 	1H 			//0091 	2A01
		STR 	4AH 			//0092 	01CA

		//;READY.c: 97: break;
		RET		 					//0093 	0004
		LDR 	4CH,0 			//0094 	084C
		XORWI 	0H 			//0095 	2600
		BTSC 	STATUS,2 		//0096 	1503
		LJUMP 	59H 			//0097 	3859
		XORWI 	1H 			//0098 	2601
		BTSC 	STATUS,2 		//0099 	1503
		LJUMP 	68H 			//009A 	3868
		XORWI 	3H 			//009B 	2603
		BTSC 	STATUS,2 		//009C 	1503
		LJUMP 	77H 			//009D 	3877
		XORWI 	1H 			//009E 	2601
		BTSC 	STATUS,2 		//009F 	1503
		LJUMP 	86H 			//00A0 	3886
		LJUMP 	A2H 			//00A1 	38A2
		RET		 					//00A2 	0004
		STR 	4DH 			//00A3 	01CD

		//;READY.c: 40: PC0 = (num == 1) ? 1 : 0;
		DECRSZ 	4DH,0 		//00A4 	0E4D
		LJUMP 	AAH 			//00A5 	38AA
		BCR 	STATUS,5 		//00A6 	1283
		BCR 	STATUS,6 		//00A7 	1303
		BSR 	7H,0 			//00A8 	1807
		LJUMP 	ADH 			//00A9 	38AD
		BCR 	STATUS,5 		//00AA 	1283
		BCR 	STATUS,6 		//00AB 	1303
		BCR 	7H,0 			//00AC 	1007

		//;READY.c: 41: PB3 = (num == 1) ? 1 : 0;
		DECRSZ 	4DH,0 		//00AD 	0E4D
		LJUMP 	B3H 			//00AE 	38B3
		BCR 	STATUS,5 		//00AF 	1283
		BCR 	STATUS,6 		//00B0 	1303
		BSR 	6H,3 			//00B1 	1986
		RET		 					//00B2 	0004
		BCR 	STATUS,5 		//00B3 	1283
		BCR 	STATUS,6 		//00B4 	1303
		BCR 	6H,3 			//00B5 	1186
		RET		 					//00B6 	0004

		//;ADC.c: 125: SYS.Cbattery_Adc = GET_ADC_DATA(1);
		LDWI 	1H 			//00B7 	2A01
		LCALL 	122H 			//00B8 	3122
		LDR 	50H,0 			//00B9 	0850
		STR 	45H 			//00BA 	01C5
		LDR 	4FH,0 			//00BB 	084F
		STR 	44H 			//00BC 	01C4
		RET		 					//00BD 	0004

		//;App.c: 13: DelayMs(20);
		LDWI 	14H 			//00BE 	2A14
		LCALL 	CDH 			//00BF 	30CD
		BCR 	PCLATH,3 		//00C0 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	DEH 			//00C1 	30DE
		BCR 	PCLATH,3 		//00C2 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	10EH 			//00C3 	310E
		BCR 	PCLATH,3 		//00C4 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	11AH 			//00C5 	311A
		BCR 	PCLATH,3 		//00C6 	118A

		//;App.c: 19: Ready_Init();
		LCALL 	102H 			//00C7 	3102
		BCR 	PCLATH,3 		//00C8 	118A

		//;App.c: 23: BUZZTT_Init();
		LCALL 	154H 			//00C9 	3154

		//;App.c: 30: T0IE = 1;
		BSR 	INTCON,5 		//00CA 	1A8B

		//;App.c: 32: GIE = 1;
		BSR 	INTCON,7 		//00CB 	1B8B
		RET		 					//00CC 	0004
		STR 	4FH 			//00CD 	01CF

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	50H 			//00CE 	0150
		LDR 	4FH,0 			//00CF 	084F
		SUBWR 	50H,0 			//00D0 	0C50
		BTSC 	STATUS,0 		//00D1 	1403
		RET		 					//00D2 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	51H 			//00D3 	0151

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00D4 	2AC5
		LCALL 	148H 			//00D5 	3148
		BCR 	PCLATH,3 		//00D6 	118A
		LDWI 	5H 			//00D7 	2A05
		INCR	51H,1 			//00D8 	09D1
		SUBWR 	51H,0 			//00D9 	0C51
		BTSS 	STATUS,0 		//00DA 	1C03
		LJUMP 	D4H 			//00DB 	38D4
		INCR	50H,1 			//00DC 	09D0
		LJUMP 	CFH 			//00DD 	38CF

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//00DE 	2A71
		BSR 	STATUS,5 		//00DF 	1A83
		STR 	FH 			//00E0 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//00E1 	2A01
		STR 	1H 			//00E2 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//00E3 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//00E4 	1283
		CLRR 	5H 			//00E5 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//00E6 	2A13
		BSR 	STATUS,5 		//00E7 	1A83
		STR 	5H 			//00E8 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//00E9 	1283
		CLRR 	6H 			//00EA 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//00EB 	2A29
		BSR 	STATUS,5 		//00EC 	1A83
		STR 	6H 			//00ED 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//00EE 	1283
		CLRR 	7H 			//00EF 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//00F0 	2A03
		BSR 	STATUS,5 		//00F1 	1A83
		STR 	7H 			//00F2 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//00F3 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//00F4 	1283
		BSR 	STATUS,6 		//00F5 	1B03
		CLRR 	DH 			//00F6 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//00F7 	1A83
		BCR 	STATUS,6 		//00F8 	1303
		CLRR 	13H 			//00F9 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//00FA 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//00FB 	1283
		BSR 	STATUS,6 		//00FC 	1B03
		CLRR 	EH 			//00FD 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//00FE 	1A83
		BCR 	STATUS,6 		//00FF 	1303
		CLRR 	DH 			//0100 	010D
		RET		 					//0101 	0004

		//;READY.c: 19: PORTC = 0B00000000;
		CLRR 	7H 			//0102 	0107

		//;READY.c: 20: TRISC &= ~0B00000001;
		BSR 	STATUS,5 		//0103 	1A83
		BCR 	7H,0 			//0104 	1007

		//;READY.c: 22: PORTB = 0B00000000;
		BCR 	STATUS,5 		//0105 	1283
		CLRR 	6H 			//0106 	0106

		//;READY.c: 23: TRISB &= ~0B00001000;
		BSR 	STATUS,5 		//0107 	1A83
		BCR 	6H,3 			//0108 	1186

		//;READY.c: 26: WPUC |= 0B00000001;
		BSR 	13H,0 			//0109 	1813

		//;READY.c: 28: WPUB |= 0B00001000;
		BCR 	STATUS,5 		//010A 	1283
		BSR 	STATUS,6 		//010B 	1B03
		BSR 	DH,3 			//010C 	198D
		RET		 					//010D 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//010E 	1283
		CLRR 	38H 			//010F 	0138

		//;Power.c: 46: SYS.HT_Value = 0;
		CLRR 	39H 			//0110 	0139

		//;Power.c: 48: SYS.LB_Value = 0;
		CLRR 	3AH 			//0111 	013A

		//;Power.c: 50: SYS.Relay_Release = 0;
		CLRR 	3CH 			//0112 	013C

		//;Power.c: 52: SYS.RC_Value = 0;
		CLRR 	3BH 			//0113 	013B

		//;Power.c: 54: SYS.KEY_Value = 0;
		CLRR 	3DH 			//0114 	013D

		//;Power.c: 56: SYS.Vadc_Value = 0;
		CLRR 	3EH 			//0115 	013E

		//;Power.c: 58: SYS.Cadc_Value = 0;
		CLRR 	3FH 			//0116 	013F

		//;Power.c: 62: SYS.READY_Value = 0;
		CLRR 	40H 			//0117 	0140

		//;Power.c: 64: SYS.STANDBY_Value = 0;
		CLRR 	41H 			//0118 	0141
		RET		 					//0119 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//011A 	2A04
		BSR 	STATUS,5 		//011B 	1A83
		STR 	1H 			//011C 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//011D 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//011E 	2A06
		BCR 	STATUS,5 		//011F 	1283
		STR 	1H 			//0120 	0181
		RET		 					//0121 	0004
		STR 	52H 			//0122 	01D2

		//;ADC.c: 87: unsigned char ADCON0Buff;
		//;ADC.c: 88: ADCON0Buff = ADCON0&0B00000111;
		BSR 	STATUS,6 		//0123 	1B03
		LDR 	13H,0 			//0124 	0813
		BCR 	STATUS,6 		//0125 	1303
		STR 	53H 			//0126 	01D3
		LDWI 	7H 			//0127 	2A07
		ANDWR 	53H,1 			//0128 	02D3

		//;ADC.c: 89: adcChannel<<=3;
		RLR 	52H,1 			//0129 	05D2
		RLR 	52H,1 			//012A 	05D2
		RLR 	52H,0 			//012B 	0552
		ANDWI 	F8H 			//012C 	24F8
		STR 	52H 			//012D 	01D2

		//;ADC.c: 90: ADCON0Buff |= adcChannel;
		IORWR 	53H,1 			//012E 	03D3

		//;ADC.c: 91: ADCON0 = ADCON0Buff;
		LDR 	53H,0 			//012F 	0853
		BSR 	STATUS,6 		//0130 	1B03
		STR 	13H 			//0131 	0193

		//;ADC.c: 92: DelayUs(10);
		LDWI 	AH 			//0132 	2A0A
		LCALL 	148H 			//0133 	3148
		BCR 	PCLATH,3 		//0134 	118A

		//;ADC.c: 97: ADCON0 = ADCON0|0x02;
		BSR 	STATUS,6 		//0135 	1B03
		LDR 	13H,0 			//0136 	0813
		IORWI 	2H 			//0137 	2502
		STR 	13H 			//0138 	0193

		//;ADC.c: 99: __nop();
		NOP		 					//0139 	0000

		//;ADC.c: 100: __nop();
		NOP		 					//013A 	0000

		//;ADC.c: 101: while(ADCON0&0x02);
		BCR 	STATUS,5 		//013B 	1283
		BSR 	STATUS,6 		//013C 	1B03
		BTSC 	13H,1 			//013D 	1493
		LJUMP 	13BH 			//013E 	393B

		//;ADC.c: 105: return(unsigned int)(ADRESH<<8|ADRESL);
		LDR 	12H,0 			//013F 	0812
		BCR 	STATUS,6 		//0140 	1303
		STR 	50H 			//0141 	01D0
		CLRR 	4FH 			//0142 	014F
		BSR 	STATUS,6 		//0143 	1B03
		LDR 	11H,0 			//0144 	0811
		BCR 	STATUS,6 		//0145 	1303
		IORWR 	4FH,1 			//0146 	03CF
		RET		 					//0147 	0004
		BCR 	STATUS,6 		//0148 	1303
		STR 	4DH 			//0149 	01CD

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	4EH 			//014A 	014E
		LDR 	4DH,0 			//014B 	084D
		SUBWR 	4EH,0 			//014C 	0C4E
		BTSC 	STATUS,0 		//014D 	1403
		RET		 					//014E 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//014F 	0000
		BCR 	STATUS,5 		//0150 	1283
		BCR 	STATUS,6 		//0151 	1303
		INCR	4EH,1 			//0152 	09CE
		LJUMP 	14BH 			//0153 	394B

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,6 		//0154 	1303
		CLRR 	7H 			//0155 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0156 	1A83
		BCR 	7H,1 			//0157 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//0158 	1283
		BSR 	7H,1 			//0159 	1887
		RET		 					//015A 	0004

		//;ADC.c: 191: static Battery_State current_state = STATE_NORMAL;
		//;ADC.c: 193: switch(current_state)
		LJUMP 	16FH 			//015B 	396F

		//;ADC.c: 196: if(adc_value<1111)
		LDWI 	4H 			//015C 	2A04
		SUBWR 	4EH,0 			//015D 	0C4E
		LDWI 	57H 			//015E 	2A57
		BTSC 	STATUS,2 		//015F 	1503
		SUBWR 	4DH,0 			//0160 	0C4D
		BTSC 	STATUS,0 		//0161 	1403
		LJUMP 	177H 			//0162 	3977

		//;ADC.c: 197: {
		//;ADC.c: 198: current_state = STATE_UNDER_VOLTAGE;
		CLRR 	4BH 			//0163 	014B
		INCR	4BH,1 			//0164 	09CB
		LJUMP 	177H 			//0165 	3977

		//;ADC.c: 204: if (adc_value >= 1111)
		LDWI 	4H 			//0166 	2A04
		SUBWR 	4EH,0 			//0167 	0C4E
		LDWI 	57H 			//0168 	2A57
		BTSC 	STATUS,2 		//0169 	1503
		SUBWR 	4DH,0 			//016A 	0C4D
		BTSS 	STATUS,0 		//016B 	1C03
		LJUMP 	177H 			//016C 	3977

		//;ADC.c: 205: {
		//;ADC.c: 206: current_state = STATE_NORMAL;
		CLRR 	4BH 			//016D 	014B
		LJUMP 	177H 			//016E 	3977
		LDR 	4BH,0 			//016F 	084B
		XORWI 	0H 			//0170 	2600
		BTSC 	STATUS,2 		//0171 	1503
		LJUMP 	15CH 			//0172 	395C
		XORWI 	1H 			//0173 	2601
		BTSC 	STATUS,2 		//0174 	1503
		LJUMP 	166H 			//0175 	3966
		LJUMP 	177H 			//0176 	3977

		//;ADC.c: 211: return current_state;
		LDR 	4BH,0 			//0177 	084B
		RET		 					//0178 	0004

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//0179 	168B
		BTSS 	INTCON,2 		//017A 	1D0B
		LJUMP 	182H 			//017B 	3982

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//017C 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//017D 	2A06
		BCR 	STATUS,5 		//017E 	1283
		BCR 	STATUS,6 		//017F 	1303
		ADDWR 	1H,1 			//0180 	0B81

		//;Main.c: 31: Task_Count();
		LCALL 	18BH 			//0181 	318B
		LDR 	78H,0 			//0182 	0878
		STR 	PCLATH 			//0183 	018A
		LDR 	77H,0 			//0184 	0877
		STR 	FSR 			//0185 	0184
		SWAPR 	76H,0 			//0186 	0776
		STR 	STATUS 			//0187 	0183
		SWAPR 	7EH,1 			//0188 	07FE
		SWAPR 	7EH,0 			//0189 	077E
		RETI		 			//018A 	0009

		//;Task.c: 94: uint8_t i;
		//;Task.c: 95: for(i = 0;i<TASK_MAX;i++)
		CLRR 	75H 			//018B 	0175

		//;Task.c: 96: {
		//;Task.c: 97: if(TaskCompany[i].Timer)
		LDWI 	6H 			//018C 	2A06
		STR 	70H 			//018D 	01F0
		LDR 	75H,0 			//018E 	0875
		LCALL 	1E6H 			//018F 	31E6
		BCR 	PCLATH,3 		//0190 	118A
		ADDWI 	21H 			//0191 	2721
		STR 	FSR 			//0192 	0184
		BCR 	STATUS,7 		//0193 	1383
		LDR 	INDF,0 			//0194 	0800
		STR 	73H 			//0195 	01F3
		INCR	FSR,1 			//0196 	0984
		LDR 	INDF,0 			//0197 	0800
		STR 	74H 			//0198 	01F4
		IORWR 	73H,0 			//0199 	0373
		BTSC 	STATUS,2 		//019A 	1503
		LJUMP 	1E0H 			//019B 	39E0

		//;Task.c: 98: {
		//;Task.c: 99: TaskCompany[i].Timer--;
		LDWI 	6H 			//019C 	2A06
		STR 	70H 			//019D 	01F0
		LDR 	75H,0 			//019E 	0875
		LCALL 	1E6H 			//019F 	31E6
		BCR 	PCLATH,3 		//01A0 	118A
		ADDWI 	21H 			//01A1 	2721
		STR 	FSR 			//01A2 	0184
		LDWI 	1H 			//01A3 	2A01
		BCR 	STATUS,7 		//01A4 	1383
		SUBWR 	INDF,1 		//01A5 	0C80
		INCRSZ 	FSR,1 		//01A6 	0A84
		LDWI 	0H 			//01A7 	2A00
		BTSS 	STATUS,0 		//01A8 	1C03
		DECR 	INDF,1 			//01A9 	0D80
		SUBWR 	INDF,1 		//01AA 	0C80
		LDWI 	6H 			//01AB 	2A06
		DECR 	FSR,1 			//01AC 	0D84

		//;Task.c: 100: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//01AD 	01F0
		LDR 	75H,0 			//01AE 	0875
		LCALL 	1E6H 			//01AF 	31E6
		BCR 	PCLATH,3 		//01B0 	118A
		ADDWI 	21H 			//01B1 	2721
		STR 	FSR 			//01B2 	0184
		BCR 	STATUS,7 		//01B3 	1383
		LDR 	INDF,0 			//01B4 	0800
		STR 	73H 			//01B5 	01F3
		INCR	FSR,1 			//01B6 	0984
		LDR 	INDF,0 			//01B7 	0800
		STR 	74H 			//01B8 	01F4
		IORWR 	73H,0 			//01B9 	0373
		BTSS 	STATUS,2 		//01BA 	1D03
		LJUMP 	1E0H 			//01BB 	39E0

		//;Task.c: 101: {
		//;Task.c: 102: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//01BC 	2A06
		STR 	70H 			//01BD 	01F0
		LDR 	75H,0 			//01BE 	0875
		LCALL 	1E6H 			//01BF 	31E6
		BCR 	PCLATH,3 		//01C0 	118A
		ADDWI 	23H 			//01C1 	2723
		STR 	FSR 			//01C2 	0184
		BCR 	STATUS,7 		//01C3 	1383
		LDR 	INDF,0 			//01C4 	0800
		STR 	73H 			//01C5 	01F3
		INCR	FSR,1 			//01C6 	0984
		LDR 	INDF,0 			//01C7 	0800
		STR 	74H 			//01C8 	01F4
		LDWI 	6H 			//01C9 	2A06
		STR 	70H 			//01CA 	01F0
		LDR 	75H,0 			//01CB 	0875
		LCALL 	1E6H 			//01CC 	31E6
		BCR 	PCLATH,3 		//01CD 	118A
		ADDWI 	21H 			//01CE 	2721
		STR 	FSR 			//01CF 	0184
		LDR 	73H,0 			//01D0 	0873
		BCR 	STATUS,7 		//01D1 	1383
		STR 	INDF 			//01D2 	0180
		INCR	FSR,1 			//01D3 	0984
		LDR 	74H,0 			//01D4 	0874
		STR 	INDF 			//01D5 	0180

		//;Task.c: 103: TaskCompany[i].Run = 1;
		LDWI 	6H 			//01D6 	2A06
		STR 	70H 			//01D7 	01F0
		LDR 	75H,0 			//01D8 	0875
		LCALL 	1E6H 			//01D9 	31E6
		BCR 	PCLATH,3 		//01DA 	118A
		ADDWI 	20H 			//01DB 	2720
		STR 	FSR 			//01DC 	0184
		BCR 	STATUS,7 		//01DD 	1383
		CLRR 	INDF 			//01DE 	0100
		INCR	INDF,1 			//01DF 	0980
		LDWI 	4H 			//01E0 	2A04
		INCR	75H,1 			//01E1 	09F5
		SUBWR 	75H,0 			//01E2 	0C75
		BTSC 	STATUS,0 		//01E3 	1403
		RET		 					//01E4 	0004
		LJUMP 	18CH 			//01E5 	398C
		STR 	71H 			//01E6 	01F1
		CLRR 	72H 			//01E7 	0172
		LDR 	70H,0 			//01E8 	0870
		BTSC 	71H,0 			//01E9 	1471
		ADDWR 	72H,1 			//01EA 	0BF2
		BCR 	STATUS,0 		//01EB 	1003
		RLR 	70H,1 			//01EC 	05F0
		BCR 	STATUS,0 		//01ED 	1003
		RRR	71H,1 			//01EE 	06F1
		LDR 	71H,0 			//01EF 	0871
		BTSS 	STATUS,2 		//01F0 	1D03
		LJUMP 	1E8H 			//01F1 	39E8
		LDR 	72H,0 			//01F2 	0872
		RET		 					//01F3 	0004

		//;Task.c: 77: unsigned char i;
		//;Task.c: 78: for(i = 0;i<TASK_MAX;i++)
		CLRR 	54H 			//01F4 	0154

		//;Task.c: 79: {
		//;Task.c: 80: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//01F5 	2A06
		STR 	4DH 			//01F6 	01CD
		LDR 	54H,0 			//01F7 	0854
		LCALL 	219H 			//01F8 	3219
		BCR 	PCLATH,3 		//01F9 	118A
		ADDWI 	20H 			//01FA 	2720
		STR 	FSR 			//01FB 	0184
		BCR 	STATUS,7 		//01FC 	1383
		DECRSZ 	INDF,0 		//01FD 	0E00
		LJUMP 	213H 			//01FE 	3A13

		//;Task.c: 81: {
		//;Task.c: 82: TaskCompany[i].Run = 0;
		LDWI 	6H 			//01FF 	2A06
		STR 	4DH 			//0200 	01CD
		LDR 	54H,0 			//0201 	0854
		LCALL 	219H 			//0202 	3219
		BCR 	PCLATH,3 		//0203 	118A
		ADDWI 	20H 			//0204 	2720
		STR 	FSR 			//0205 	0184
		LDWI 	6H 			//0206 	2A06
		BCR 	STATUS,7 		//0207 	1383
		CLRR 	INDF 			//0208 	0100

		//;Task.c: 83: TaskCompany[i].TaskHook();
		STR 	4DH 			//0209 	01CD
		LDR 	54H,0 			//020A 	0854
		LCALL 	219H 			//020B 	3219
		ADDWI 	25H 			//020C 	2725
		STR 	FSR 			//020D 	0184
		BCR 	STATUS,7 		//020E 	1383
		LDR 	INDF,0 			//020F 	0800
		BCR 	PCLATH,3 		//0210 	118A
		LCALL 	3EH 			//0211 	303E
		BCR 	PCLATH,3 		//0212 	118A
		LDWI 	4H 			//0213 	2A04
		INCR	54H,1 			//0214 	09D4
		SUBWR 	54H,0 			//0215 	0C54
		BTSC 	STATUS,0 		//0216 	1403
		RET		 					//0217 	0004
		LJUMP 	1F5H 			//0218 	39F5
		STR 	4FH 			//0219 	01CF
		CLRR 	4EH 			//021A 	014E
		LDR 	4DH,0 			//021B 	084D
		BTSC 	4FH,0 			//021C 	144F
		ADDWR 	4EH,1 			//021D 	0BCE
		BCR 	STATUS,0 		//021E 	1003
		RLR 	4DH,1 			//021F 	05CD
		BCR 	STATUS,0 		//0220 	1003
		RRR	4FH,1 			//0221 	06CF
		LDR 	4FH,0 			//0222 	084F
		BTSS 	STATUS,2 		//0223 	1D03
		LJUMP 	21BH 			//0224 	3A1B
		LDR 	4EH,0 			//0225 	084E
		RET		 					//0226 	0004
		CLRWDT	 			//0227 	0001
		CLRR 	INDF 			//0228 	0100
		INCR	FSR,1 			//0229 	0984
		XORWR 	FSR,0 			//022A 	0404
		BTSC 	STATUS,2 		//022B 	1503
		RETW 	0H 			//022C 	2100
		XORWR 	FSR,0 			//022D 	0404
		LJUMP 	228H 			//022E 	3A28

		//;Main.c: 42: Initial();
		BCR 	PCLATH,3 		//022F 	118A
		LCALL 	BEH 			//0230 	30BE
		BCR 	PCLATH,3 		//0231 	118A

		//;Main.c: 44: {
		//;Main.c: 45: Task_Process();
		BCR 	PCLATH,3 		//0232 	118A
		LCALL 	1F4H 			//0233 	31F4
		BCR 	PCLATH,3 		//0234 	118A
		LJUMP 	232H 			//0235 	3A32
		RET		 					//0236 	0004
		RET		 					//0237 	0004
		RET		 					//0238 	0004
			END
