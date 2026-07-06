//Deviec:FT61FC3X
//-----------------------Variable---------------------------------
		_SYS.Standby_Work_State		EQU		20H
		_SYS.HT_Value		EQU		21H
		_SYS.LB_Value		EQU		22H
		_SYS.RC_Value		EQU		23H
		_SYS.Relay_Release		EQU		24H
		_SYS.KEY_Value		EQU		25H
		_SYS.Vadc_Value		EQU		26H
		_SYS.Cadc_Value		EQU		27H
		_SYS.READY_Value		EQU		28H
		_SYS.STANDBY_Value		EQU		29H
		_SYS.Vbattery_Adc		EQU		2AH
		_SYS.Cbattery_Adc		EQU		2CH
		_SYS.Long_Time_Change		EQU		2EH
		_SYS.Delay_2s_Flag		EQU		2FH
		_SYS.Cadc_Ready_Flag		EQU		30H
		_SYS		EQU		20H
		_KEY_Press		EQU		79H
		_PB3		EQU		06H
		_PC0		EQU		07H
		_PC1		EQU		07H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_TaskCompany.Run		EQU		39H
		_TaskCompany.Timer		EQU		3AH
		_TaskCompany.IvtTime		EQU		3CH
		_TaskCompany.TaskHook		EQU		3EH
		_TaskCompany		EQU		39H
//		Task_Process@i		EQU		58H
//		___bmul@multiplier		EQU		53H
//		___bmul@product		EQU		52H
//		___bmul@multiplier		EQU		53H
//		___bmul@multiplicand		EQU		51H
//		___bmul@multiplier		EQU		53H
//		Key_Detect@press_cnt		EQU		37H
//		Key_Detect@long_cnt		EQU		31H
//		Key_Detect@long_trig		EQU		36H
//		READY_Task@state		EQU		38H
//		READY_Task@counter		EQU		33H
//		Ready_Control@num		EQU		51H
//		Ready_Control@num		EQU		51H
//		Ready_Control@num		EQU		51H
//		Get_Cbattery_Stand_State@adc_value		EQU		51H
//		Get_Cbattery_Stand_State@current_state		EQU		35H
//		GET_ADC_DATA@adcChannel		EQU		56H
//		GET_ADC_DATA@ADCON0Buff		EQU		57H
//		GET_ADC_DATA@adcChannel		EQU		56H
//		GET_ADC_DATA@adcChannel		EQU		56H
//		DelayMs@Time		EQU		53H
//		DelayMs@b		EQU		55H
//		DelayMs@a		EQU		54H
//		DelayMs@Time		EQU		53H
//		DelayMs@Time		EQU		53H
//		DelayUs@Time		EQU		51H
//		DelayUs@a		EQU		52H
//		DelayUs@Time		EQU		51H
//		DelayUs@Time		EQU		51H
//		ISR@i		EQU		78H
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
		STR 	75H 			//0006 	01F5
		LDR 	FSR,0 			//0007 	0804
		STR 	76H 			//0008 	01F6
		LDR 	PCLATH,0 		//0009 	080A
		STR 	77H 			//000A 	01F7
		BCR 	PCLATH,3 		//000B 	118A
		LJUMP 	176H 			//000C 	3976
		BCR 	PCLATH,3 		//000D 	118A
		LJUMP 	0FH 			//000E 	380F
		LDWI 	1H 			//000F 	2A01
		CLRR 	39H 			//0010 	0139
		STR 	3AH 			//0011 	01BA
		LDWI 	5H 			//0012 	2A05
		CLRR 	3BH 			//0013 	013B
		STR 	3CH 			//0014 	01BC
		LDWI 	3H 			//0015 	2A03
		CLRR 	3DH 			//0016 	013D
		STR 	3EH 			//0017 	01BE
		LDWI 	2H 			//0018 	2A02
		CLRR 	3FH 			//0019 	013F
		STR 	40H 			//001A 	01C0
		LDWI 	AH 			//001B 	2A0A
		CLRR 	41H 			//001C 	0141
		STR 	42H 			//001D 	01C2
		LDWI 	5H 			//001E 	2A05
		CLRR 	43H 			//001F 	0143
		STR 	44H 			//0020 	01C4
		LDWI 	3H 			//0021 	2A03
		CLRR 	45H 			//0022 	0145
		STR 	46H 			//0023 	01C6
		LDWI 	14H 			//0024 	2A14
		CLRR 	47H 			//0025 	0147
		STR 	48H 			//0026 	01C8
		LDWI 	7H 			//0027 	2A07
		CLRR 	49H 			//0028 	0149
		STR 	4AH 			//0029 	01CA
		LDWI 	A0H 			//002A 	2AA0
		CLRR 	4BH 			//002B 	014B
		STR 	4CH 			//002C 	01CC
		LDWI 	FH 			//002D 	2A0F
		STR 	4DH 			//002E 	01CD
		LDWI 	A0H 			//002F 	2AA0
		STR 	4EH 			//0030 	01CE
		LDWI 	FH 			//0031 	2A0F
		STR 	4FH 			//0032 	01CF
		LDWI 	1H 			//0033 	2A01
		STR 	50H 			//0034 	01D0
		LDWI 	20H 			//0035 	2A20
		BCR 	STATUS,7 		//0036 	1383
		STR 	FSR 			//0037 	0184
		LDWI 	39H 			//0038 	2A39
		BCR 	PCLATH,3 		//0039 	118A
		LCALL 	273H 			//003A 	3273
		CLRR 	79H 			//003B 	0179
		CLRR 	STATUS 			//003C 	0103
		BCR 	PCLATH,3 		//003D 	118A
		LJUMP 	27BH 			//003E 	3A7B
		STR 	7FH 			//003F 	01FF
		LDWI 	0H 			//0040 	2A00
		STR 	PCLATH 			//0041 	018A
		LDR 	7FH,0 			//0042 	087F
		ADDWR 	PCL,1 			//0043 	0B82
		LJUMP 	44H 			//0044 	3844
		BCR 	PCLATH,3 		//0045 	118A
		LJUMP 	283H 			//0046 	3A83
		BCR 	PCLATH,3 		//0047 	118A
		LJUMP 	4DH 			//0048 	384D
		BCR 	PCLATH,3 		//0049 	118A
		LJUMP 	1EFH 			//004A 	39EF
		BCR 	PCLATH,3 		//004B 	118A
		LJUMP 	282H 			//004C 	3A82

		//;Task.c: 25: READY_Task();
		LJUMP 	B2H 			//004D 	38B2

		//;App.c: 13: DelayMs(20);
		LDWI 	14H 			//004E 	2A14
		LCALL 	5DH 			//004F 	305D
		BCR 	PCLATH,3 		//0050 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	6EH 			//0051 	306E
		BCR 	PCLATH,3 		//0052 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	9EH 			//0053 	309E
		BCR 	PCLATH,3 		//0054 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	AAH 			//0055 	30AA
		BCR 	PCLATH,3 		//0056 	118A

		//;App.c: 19: Ready_Init();
		LCALL 	92H 			//0057 	3092
		BCR 	PCLATH,3 		//0058 	118A

		//;App.c: 23: BUZZTT_Init();
		LCALL 	14DH 			//0059 	314D

		//;App.c: 30: T0IE = 1;
		BSR 	INTCON,5 		//005A 	1A8B

		//;App.c: 32: GIE = 1;
		BSR 	INTCON,7 		//005B 	1B8B
		RET		 					//005C 	0004
		STR 	53H 			//005D 	01D3

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	54H 			//005E 	0154
		LDR 	53H,0 			//005F 	0853
		SUBWR 	54H,0 			//0060 	0C54
		BTSC 	STATUS,0 		//0061 	1403
		RET		 					//0062 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	55H 			//0063 	0155

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//0064 	2AC5
		LCALL 	141H 			//0065 	3141
		BCR 	PCLATH,3 		//0066 	118A
		LDWI 	5H 			//0067 	2A05
		INCR	55H,1 			//0068 	09D5
		SUBWR 	55H,0 			//0069 	0C55
		BTSS 	STATUS,0 		//006A 	1C03
		LJUMP 	64H 			//006B 	3864
		INCR	54H,1 			//006C 	09D4
		LJUMP 	5FH 			//006D 	385F

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//006E 	2A71
		BSR 	STATUS,5 		//006F 	1A83
		STR 	FH 			//0070 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//0071 	2A01
		STR 	1H 			//0072 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//0073 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0074 	1283
		CLRR 	5H 			//0075 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//0076 	2A13
		BSR 	STATUS,5 		//0077 	1A83
		STR 	5H 			//0078 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//0079 	1283
		CLRR 	6H 			//007A 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//007B 	2A29
		BSR 	STATUS,5 		//007C 	1A83
		STR 	6H 			//007D 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//007E 	1283
		CLRR 	7H 			//007F 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//0080 	2A03
		BSR 	STATUS,5 		//0081 	1A83
		STR 	7H 			//0082 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0083 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0084 	1283
		BSR 	STATUS,6 		//0085 	1B03
		CLRR 	DH 			//0086 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//0087 	1A83
		BCR 	STATUS,6 		//0088 	1303
		CLRR 	13H 			//0089 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//008A 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//008B 	1283
		BSR 	STATUS,6 		//008C 	1B03
		CLRR 	EH 			//008D 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//008E 	1A83
		BCR 	STATUS,6 		//008F 	1303
		CLRR 	DH 			//0090 	010D
		RET		 					//0091 	0004

		//;READY.c: 19: PORTC = 0B00000000;
		CLRR 	7H 			//0092 	0107

		//;READY.c: 20: TRISC &= ~0B00000001;
		BSR 	STATUS,5 		//0093 	1A83
		BCR 	7H,0 			//0094 	1007

		//;READY.c: 22: PORTB = 0B00000000;
		BCR 	STATUS,5 		//0095 	1283
		CLRR 	6H 			//0096 	0106

		//;READY.c: 23: TRISB &= ~0B00001000;
		BSR 	STATUS,5 		//0097 	1A83
		BCR 	6H,3 			//0098 	1186

		//;READY.c: 26: WPUC |= 0B00000001;
		BSR 	13H,0 			//0099 	1813

		//;READY.c: 28: WPUB |= 0B00001000;
		BCR 	STATUS,5 		//009A 	1283
		BSR 	STATUS,6 		//009B 	1B03
		BSR 	DH,3 			//009C 	198D
		RET		 					//009D 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//009E 	1283
		CLRR 	20H 			//009F 	0120

		//;Power.c: 46: SYS.HT_Value = 0;
		CLRR 	21H 			//00A0 	0121

		//;Power.c: 48: SYS.LB_Value = 0;
		CLRR 	22H 			//00A1 	0122

		//;Power.c: 50: SYS.Relay_Release = 0;
		CLRR 	24H 			//00A2 	0124

		//;Power.c: 52: SYS.RC_Value = 0;
		CLRR 	23H 			//00A3 	0123

		//;Power.c: 54: SYS.KEY_Value = 0;
		CLRR 	25H 			//00A4 	0125

		//;Power.c: 56: SYS.Vadc_Value = 0;
		CLRR 	26H 			//00A5 	0126

		//;Power.c: 58: SYS.Cadc_Value = 0;
		CLRR 	27H 			//00A6 	0127

		//;Power.c: 62: SYS.READY_Value = 0;
		CLRR 	28H 			//00A7 	0128

		//;Power.c: 64: SYS.STANDBY_Value = 0;
		CLRR 	29H 			//00A8 	0129
		RET		 					//00A9 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//00AA 	2A04
		BSR 	STATUS,5 		//00AB 	1A83
		STR 	1H 			//00AC 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//00AD 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//00AE 	2A06
		BCR 	STATUS,5 		//00AF 	1283
		STR 	1H 			//00B0 	0181
		RET		 					//00B1 	0004

		//;READY.c: 54: static TaskState_t state = ST_PRE_ON;
		//;READY.c: 55: static uint16_t counter = 0;
		//;READY.c: 57: if (!SYS.Standby_Work_State) {
		LDR 	20H,0 			//00B2 	0820
		BTSS 	STATUS,2 		//00B3 	1D03
		LJUMP 	BAH 			//00B4 	38BA
		LDWI 	0H 			//00B5 	2A00

		//;READY.c: 58: state = ST_PRE_ON;
		CLRR 	38H 			//00B6 	0138

		//;READY.c: 59: counter = 0;
		CLRR 	33H 			//00B7 	0133
		CLRR 	34H 			//00B8 	0134

		//;READY.c: 60: Ready_Control(0);
		LJUMP 	107H 			//00B9 	3907

		//;READY.c: 62: }
		//;READY.c: 64: counter++;
		INCR	33H,1 			//00BA 	09B3
		BTSC 	STATUS,2 		//00BB 	1503
		INCR	34H,1 			//00BC 	09B4

		//;READY.c: 66: switch (state) {
		LJUMP 	F8H 			//00BD 	38F8

		//;READY.c: 68: Ready_Control(1);
		LDWI 	1H 			//00BE 	2A01
		LCALL 	107H 			//00BF 	3107
		BCR 	PCLATH,3 		//00C0 	118A

		//;READY.c: 69: if (counter >= 600) {
		LDWI 	2H 			//00C1 	2A02
		SUBWR 	34H,0 			//00C2 	0C34
		LDWI 	58H 			//00C3 	2A58
		BTSC 	STATUS,2 		//00C4 	1503
		SUBWR 	33H,0 			//00C5 	0C33
		BTSS 	STATUS,0 		//00C6 	1C03
		RET		 					//00C7 	0004

		//;READY.c: 70: counter = 0;
		CLRR 	33H 			//00C8 	0133
		CLRR 	34H 			//00C9 	0134

		//;READY.c: 71: state = ST_OFF;
		CLRR 	38H 			//00CA 	0138
		INCR	38H,1 			//00CB 	09B8
		RET		 					//00CC 	0004

		//;READY.c: 76: Ready_Control(0);
		LDWI 	0H 			//00CD 	2A00
		LCALL 	107H 			//00CE 	3107
		BCR 	PCLATH,3 		//00CF 	118A

		//;READY.c: 77: if (counter >= 2) {
		LDWI 	0H 			//00D0 	2A00
		SUBWR 	34H,0 			//00D1 	0C34
		LDWI 	2H 			//00D2 	2A02
		BTSC 	STATUS,2 		//00D3 	1503
		SUBWR 	33H,0 			//00D4 	0C33
		BTSS 	STATUS,0 		//00D5 	1C03
		RET		 					//00D6 	0004
		LDWI 	2H 			//00D7 	2A02

		//;READY.c: 78: counter = 0;
		//;READY.c: 79: state = ST_FINAL_ON;
		LJUMP 	172H 			//00D8 	3972

		//;READY.c: 84: Ready_Control(1);
		LDWI 	1H 			//00D9 	2A01
		LCALL 	107H 			//00DA 	3107
		BCR 	PCLATH,3 		//00DB 	118A

		//;READY.c: 85: if (counter >= 400) {
		LDWI 	1H 			//00DC 	2A01
		SUBWR 	34H,0 			//00DD 	0C34
		LDWI 	90H 			//00DE 	2A90
		BTSC 	STATUS,2 		//00DF 	1503
		SUBWR 	33H,0 			//00E0 	0C33
		BTSS 	STATUS,0 		//00E1 	1C03
		RET		 					//00E2 	0004
		LDWI 	3H 			//00E3 	2A03

		//;READY.c: 86: counter = 0;
		//;READY.c: 87: state = ST_DETECT;
		LJUMP 	172H 			//00E4 	3972

		//;READY.c: 94: SYS.Vbattery_Adc = GET_ADC_DATA(0);
		LDWI 	0H 			//00E5 	2A00
		LCALL 	11BH 			//00E6 	311B
		BCR 	PCLATH,3 		//00E7 	118A
		LDR 	54H,0 			//00E8 	0854
		STR 	2BH 			//00E9 	01AB
		LDR 	53H,0 			//00EA 	0853
		STR 	2AH 			//00EB 	01AA

		//;READY.c: 95: SYS.Cadc_Value = Get_Cbattery_Stand_State(SYS.Cbattery_Adc);
		LDR 	2DH,0 			//00EC 	082D
		STR 	52H 			//00ED 	01D2
		LDR 	2CH,0 			//00EE 	082C
		STR 	51H 			//00EF 	01D1
		LCALL 	154H 			//00F0 	3154
		STR 	27H 			//00F1 	01A7
		LDWI 	90H 			//00F2 	2A90

		//;READY.c: 96: state = ST_PRE_ON;
		CLRR 	38H 			//00F3 	0138

		//;READY.c: 97: counter = 400;
		STR 	33H 			//00F4 	01B3
		LDWI 	1H 			//00F5 	2A01
		STR 	34H 			//00F6 	01B4

		//;READY.c: 98: break;
		RET		 					//00F7 	0004
		LDR 	38H,0 			//00F8 	0838
		XORWI 	0H 			//00F9 	2600
		BTSC 	STATUS,2 		//00FA 	1503
		LJUMP 	BEH 			//00FB 	38BE
		XORWI 	1H 			//00FC 	2601
		BTSC 	STATUS,2 		//00FD 	1503
		LJUMP 	CDH 			//00FE 	38CD
		XORWI 	3H 			//00FF 	2603
		BTSC 	STATUS,2 		//0100 	1503
		LJUMP 	D9H 			//0101 	38D9
		XORWI 	1H 			//0102 	2601
		BTSC 	STATUS,2 		//0103 	1503
		LJUMP 	E5H 			//0104 	38E5
		LJUMP 	106H 			//0105 	3906
		RET		 					//0106 	0004
		STR 	51H 			//0107 	01D1

		//;READY.c: 40: PC0 = (num == 1) ? 1 : 0;
		DECRSZ 	51H,0 		//0108 	0E51
		LJUMP 	10EH 			//0109 	390E
		BCR 	STATUS,5 		//010A 	1283
		BCR 	STATUS,6 		//010B 	1303
		BSR 	7H,0 			//010C 	1807
		LJUMP 	111H 			//010D 	3911
		BCR 	STATUS,5 		//010E 	1283
		BCR 	STATUS,6 		//010F 	1303
		BCR 	7H,0 			//0110 	1007

		//;READY.c: 41: PB3 = (num == 1) ? 1 : 0;
		DECRSZ 	51H,0 		//0111 	0E51
		LJUMP 	117H 			//0112 	3917
		BCR 	STATUS,5 		//0113 	1283
		BCR 	STATUS,6 		//0114 	1303
		BSR 	6H,3 			//0115 	1986
		RET		 					//0116 	0004
		BCR 	STATUS,5 		//0117 	1283
		BCR 	STATUS,6 		//0118 	1303
		BCR 	6H,3 			//0119 	1186
		RET		 					//011A 	0004
		STR 	56H 			//011B 	01D6

		//;ADC.c: 87: unsigned char ADCON0Buff;
		//;ADC.c: 88: ADCON0Buff = ADCON0&0B00000111;
		BSR 	STATUS,6 		//011C 	1B03
		LDR 	13H,0 			//011D 	0813
		BCR 	STATUS,6 		//011E 	1303
		STR 	57H 			//011F 	01D7
		LDWI 	7H 			//0120 	2A07
		ANDWR 	57H,1 			//0121 	02D7

		//;ADC.c: 89: adcChannel<<=3;
		RLR 	56H,1 			//0122 	05D6
		RLR 	56H,1 			//0123 	05D6
		RLR 	56H,0 			//0124 	0556
		ANDWI 	F8H 			//0125 	24F8
		STR 	56H 			//0126 	01D6

		//;ADC.c: 90: ADCON0Buff |= adcChannel;
		IORWR 	57H,1 			//0127 	03D7

		//;ADC.c: 91: ADCON0 = ADCON0Buff;
		LDR 	57H,0 			//0128 	0857
		BSR 	STATUS,6 		//0129 	1B03
		STR 	13H 			//012A 	0193

		//;ADC.c: 92: DelayUs(10);
		LDWI 	AH 			//012B 	2A0A
		LCALL 	141H 			//012C 	3141
		BCR 	PCLATH,3 		//012D 	118A

		//;ADC.c: 97: ADCON0 = ADCON0|0x02;
		BSR 	STATUS,6 		//012E 	1B03
		LDR 	13H,0 			//012F 	0813
		IORWI 	2H 			//0130 	2502
		STR 	13H 			//0131 	0193

		//;ADC.c: 99: __nop();
		NOP		 					//0132 	0000

		//;ADC.c: 100: __nop();
		NOP		 					//0133 	0000

		//;ADC.c: 101: while(ADCON0&0x02);
		BCR 	STATUS,5 		//0134 	1283
		BSR 	STATUS,6 		//0135 	1B03
		BTSC 	13H,1 			//0136 	1493
		LJUMP 	134H 			//0137 	3934

		//;ADC.c: 105: return(unsigned int)(ADRESH<<8|ADRESL);
		LDR 	12H,0 			//0138 	0812
		BCR 	STATUS,6 		//0139 	1303
		STR 	54H 			//013A 	01D4
		CLRR 	53H 			//013B 	0153
		BSR 	STATUS,6 		//013C 	1B03
		LDR 	11H,0 			//013D 	0811
		BCR 	STATUS,6 		//013E 	1303
		IORWR 	53H,1 			//013F 	03D3
		RET		 					//0140 	0004
		BCR 	STATUS,6 		//0141 	1303
		STR 	51H 			//0142 	01D1

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	52H 			//0143 	0152
		LDR 	51H,0 			//0144 	0851
		SUBWR 	52H,0 			//0145 	0C52
		BTSC 	STATUS,0 		//0146 	1403
		RET		 					//0147 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//0148 	0000
		BCR 	STATUS,5 		//0149 	1283
		BCR 	STATUS,6 		//014A 	1303
		INCR	52H,1 			//014B 	09D2
		LJUMP 	144H 			//014C 	3944

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,6 		//014D 	1303
		CLRR 	7H 			//014E 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//014F 	1A83
		BCR 	7H,1 			//0150 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//0151 	1283
		BSR 	7H,1 			//0152 	1887
		RET		 					//0153 	0004

		//;ADC.c: 191: static Battery_State current_state = STATE_NORMAL;
		//;ADC.c: 193: switch(current_state)
		LJUMP 	168H 			//0154 	3968

		//;ADC.c: 196: if(adc_value<1111)
		LDWI 	4H 			//0155 	2A04
		SUBWR 	52H,0 			//0156 	0C52
		LDWI 	57H 			//0157 	2A57
		BTSC 	STATUS,2 		//0158 	1503
		SUBWR 	51H,0 			//0159 	0C51
		BTSC 	STATUS,0 		//015A 	1403
		LJUMP 	170H 			//015B 	3970

		//;ADC.c: 197: {
		//;ADC.c: 198: current_state = STATE_UNDER_VOLTAGE;
		CLRR 	35H 			//015C 	0135
		INCR	35H,1 			//015D 	09B5
		LJUMP 	170H 			//015E 	3970

		//;ADC.c: 204: if (adc_value >= 1111)
		LDWI 	4H 			//015F 	2A04
		SUBWR 	52H,0 			//0160 	0C52
		LDWI 	57H 			//0161 	2A57
		BTSC 	STATUS,2 		//0162 	1503
		SUBWR 	51H,0 			//0163 	0C51
		BTSS 	STATUS,0 		//0164 	1C03
		LJUMP 	170H 			//0165 	3970

		//;ADC.c: 205: {
		//;ADC.c: 206: current_state = STATE_NORMAL;
		CLRR 	35H 			//0166 	0135
		LJUMP 	170H 			//0167 	3970
		LDR 	35H,0 			//0168 	0835
		XORWI 	0H 			//0169 	2600
		BTSC 	STATUS,2 		//016A 	1503
		LJUMP 	155H 			//016B 	3955
		XORWI 	1H 			//016C 	2601
		BTSC 	STATUS,2 		//016D 	1503
		LJUMP 	15FH 			//016E 	395F
		LJUMP 	170H 			//016F 	3970

		//;ADC.c: 211: return current_state;
		LDR 	35H,0 			//0170 	0835
		RET		 					//0171 	0004
		CLRR 	33H 			//0172 	0133
		CLRR 	34H 			//0173 	0134
		STR 	38H 			//0174 	01B8
		RET		 					//0175 	0004

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//0176 	168B
		BTSS 	INTCON,2 		//0177 	1D0B
		LJUMP 	1D8H 			//0178 	39D8

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//0179 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//017A 	2A06
		BCR 	STATUS,5 		//017B 	1283
		BCR 	STATUS,6 		//017C 	1303
		ADDWR 	1H,1 			//017D 	0B81

		//;Main.c: 33: uint8_t i;
		//;Main.c: 34: for(i = 0;i<TASK_MAX;i++)
		CLRR 	78H 			//017E 	0178

		//;Main.c: 35: {
		//;Main.c: 36: if(TaskCompany[i].Timer)
		LDWI 	6H 			//017F 	2A06
		STR 	70H 			//0180 	01F0
		LDR 	78H,0 			//0181 	0878
		LCALL 	1E1H 			//0182 	31E1
		BCR 	PCLATH,3 		//0183 	118A
		ADDWI 	3AH 			//0184 	273A
		STR 	FSR 			//0185 	0184
		BCR 	STATUS,7 		//0186 	1383
		LDR 	INDF,0 			//0187 	0800
		STR 	73H 			//0188 	01F3
		INCR	FSR,1 			//0189 	0984
		LDR 	INDF,0 			//018A 	0800
		STR 	74H 			//018B 	01F4
		IORWR 	73H,0 			//018C 	0373
		BTSC 	STATUS,2 		//018D 	1503
		LJUMP 	1D3H 			//018E 	39D3

		//;Main.c: 37: {
		//;Main.c: 38: TaskCompany[i].Timer--;
		LDWI 	6H 			//018F 	2A06
		STR 	70H 			//0190 	01F0
		LDR 	78H,0 			//0191 	0878
		LCALL 	1E1H 			//0192 	31E1
		BCR 	PCLATH,3 		//0193 	118A
		ADDWI 	3AH 			//0194 	273A
		STR 	FSR 			//0195 	0184
		LDWI 	1H 			//0196 	2A01
		BCR 	STATUS,7 		//0197 	1383
		SUBWR 	INDF,1 		//0198 	0C80
		INCRSZ 	FSR,1 		//0199 	0A84
		LDWI 	0H 			//019A 	2A00
		BTSS 	STATUS,0 		//019B 	1C03
		DECR 	INDF,1 			//019C 	0D80
		SUBWR 	INDF,1 		//019D 	0C80
		LDWI 	6H 			//019E 	2A06
		DECR 	FSR,1 			//019F 	0D84

		//;Main.c: 39: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//01A0 	01F0
		LDR 	78H,0 			//01A1 	0878
		LCALL 	1E1H 			//01A2 	31E1
		BCR 	PCLATH,3 		//01A3 	118A
		ADDWI 	3AH 			//01A4 	273A
		STR 	FSR 			//01A5 	0184
		BCR 	STATUS,7 		//01A6 	1383
		LDR 	INDF,0 			//01A7 	0800
		STR 	73H 			//01A8 	01F3
		INCR	FSR,1 			//01A9 	0984
		LDR 	INDF,0 			//01AA 	0800
		STR 	74H 			//01AB 	01F4
		IORWR 	73H,0 			//01AC 	0373
		BTSS 	STATUS,2 		//01AD 	1D03
		LJUMP 	1D3H 			//01AE 	39D3

		//;Main.c: 40: {
		//;Main.c: 41: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//01AF 	2A06
		STR 	70H 			//01B0 	01F0
		LDR 	78H,0 			//01B1 	0878
		LCALL 	1E1H 			//01B2 	31E1
		BCR 	PCLATH,3 		//01B3 	118A
		ADDWI 	3CH 			//01B4 	273C
		STR 	FSR 			//01B5 	0184
		BCR 	STATUS,7 		//01B6 	1383
		LDR 	INDF,0 			//01B7 	0800
		STR 	73H 			//01B8 	01F3
		INCR	FSR,1 			//01B9 	0984
		LDR 	INDF,0 			//01BA 	0800
		STR 	74H 			//01BB 	01F4
		LDWI 	6H 			//01BC 	2A06
		STR 	70H 			//01BD 	01F0
		LDR 	78H,0 			//01BE 	0878
		LCALL 	1E1H 			//01BF 	31E1
		BCR 	PCLATH,3 		//01C0 	118A
		ADDWI 	3AH 			//01C1 	273A
		STR 	FSR 			//01C2 	0184
		LDR 	73H,0 			//01C3 	0873
		BCR 	STATUS,7 		//01C4 	1383
		STR 	INDF 			//01C5 	0180
		INCR	FSR,1 			//01C6 	0984
		LDR 	74H,0 			//01C7 	0874
		STR 	INDF 			//01C8 	0180

		//;Main.c: 42: TaskCompany[i].Run = 1;
		LDWI 	6H 			//01C9 	2A06
		STR 	70H 			//01CA 	01F0
		LDR 	78H,0 			//01CB 	0878
		LCALL 	1E1H 			//01CC 	31E1
		BCR 	PCLATH,3 		//01CD 	118A
		ADDWI 	39H 			//01CE 	2739
		STR 	FSR 			//01CF 	0184
		BCR 	STATUS,7 		//01D0 	1383
		CLRR 	INDF 			//01D1 	0100
		INCR	INDF,1 			//01D2 	0980
		LDWI 	4H 			//01D3 	2A04
		INCR	78H,1 			//01D4 	09F8
		SUBWR 	78H,0 			//01D5 	0C78
		BTSS 	STATUS,0 		//01D6 	1C03
		LJUMP 	17FH 			//01D7 	397F
		LDR 	77H,0 			//01D8 	0877
		STR 	PCLATH 			//01D9 	018A
		LDR 	76H,0 			//01DA 	0876
		STR 	FSR 			//01DB 	0184
		SWAPR 	75H,0 			//01DC 	0775
		STR 	STATUS 			//01DD 	0183
		SWAPR 	7EH,1 			//01DE 	07FE
		SWAPR 	7EH,0 			//01DF 	077E
		RETI		 			//01E0 	0009
		STR 	71H 			//01E1 	01F1
		CLRR 	72H 			//01E2 	0172
		LDR 	70H,0 			//01E3 	0870
		BTSC 	71H,0 			//01E4 	1471
		ADDWR 	72H,1 			//01E5 	0BF2
		BCR 	STATUS,0 		//01E6 	1003
		RLR 	70H,1 			//01E7 	05F0
		BCR 	STATUS,0 		//01E8 	1003
		RRR	71H,1 			//01E9 	06F1
		LDR 	71H,0 			//01EA 	0871
		BTSS 	STATUS,2 		//01EB 	1D03
		LJUMP 	1E3H 			//01EC 	39E3
		LDR 	72H,0 			//01ED 	0872
		RET		 					//01EE 	0004

		//;Task.c: 43: BUZZTT_Task();
		LJUMP 	1F1H 			//01EF 	39F1

		//;BUZZTT.c: 157: BUZZHH_Control();
		LJUMP 	1F1H 			//01F0 	39F1

		//;BUZZTT.c: 62: if(SYS.HT_Value || SYS.LB_Value || SYS.RC_Value)
		LDR 	21H,0 			//01F1 	0821
		BTSS 	STATUS,2 		//01F2 	1D03
		LJUMP 	1F9H 			//01F3 	39F9
		LDR 	22H,0 			//01F4 	0822
		BTSC 	STATUS,2 		//01F5 	1503
		LDR 	23H,0 			//01F6 	0823
		BTSC 	STATUS,2 		//01F7 	1503
		LJUMP 	1FAH 			//01F8 	39FA

		//;BUZZTT.c: 63: {
		//;BUZZTT.c: 64: Hummer_Task();
		LJUMP 	1FBH 			//01F9 	39FB

		//;BUZZTT.c: 65: }
		//;BUZZTT.c: 66: else
		//;BUZZTT.c: 67: {
		//;BUZZTT.c: 68: Key_Task();
		LJUMP 	204H 			//01FA 	3A04

		//;BUZZTT.c: 145: Hummer_Init();
		LCALL 	1FFH 			//01FB 	31FF

		//;BUZZTT.c: 146: PC1 = 0;
		BCR 	STATUS,5 		//01FC 	1283
		BCR 	7H,1 			//01FD 	1087
		RET		 					//01FE 	0004

		//;BUZZTT.c: 49: PORTC = 0B00000000;
		CLRR 	7H 			//01FF 	0107

		//;BUZZTT.c: 50: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0200 	1A83
		BCR 	7H,1 			//0201 	1087

		//;BUZZTT.c: 52: WPUC &= ~0B00000010;
		BCR 	13H,1 			//0202 	1093
		RET		 					//0203 	0004

		//;BUZZTT.c: 133: KEY_Init();
		LCALL 	207H 			//0204 	3207
		BCR 	PCLATH,3 		//0205 	118A

		//;BUZZTT.c: 134: Key_Detect();
		LJUMP 	20CH 			//0206 	3A0C

		//;BUZZTT.c: 36: PORTC = 0B00000000;
		CLRR 	7H 			//0207 	0107

		//;BUZZTT.c: 37: TRISC |= 0B00000010;
		BSR 	STATUS,5 		//0208 	1A83
		BSR 	7H,1 			//0209 	1887

		//;BUZZTT.c: 39: WPUC |= 0B00000010;
		BSR 	13H,1 			//020A 	1893
		RET		 					//020B 	0004

		//;BUZZTT.c: 81: static uint8_t press_cnt = 0;
		//;BUZZTT.c: 82: static uint16_t long_cnt = 0;
		//;BUZZTT.c: 83: static uint8_t long_trig = 0;
		//;BUZZTT.c: 85: if(PC1 == 0)
		BCR 	STATUS,5 		//020C 	1283
		BTSC 	7H,1 			//020D 	1487
		LJUMP 	23AH 			//020E 	3A3A

		//;BUZZTT.c: 86: {
		//;BUZZTT.c: 88: if(press_cnt <4)
		LDWI 	4H 			//020F 	2A04
		SUBWR 	37H,0 			//0210 	0C37
		BTSC 	STATUS,0 		//0211 	1403
		LJUMP 	215H 			//0212 	3A15

		//;BUZZTT.c: 89: {
		//;BUZZTT.c: 90: press_cnt ++;
		INCR	37H,1 			//0213 	09B7

		//;BUZZTT.c: 91: }
		LJUMP 	217H 			//0214 	3A17

		//;BUZZTT.c: 92: else
		//;BUZZTT.c: 93: {
		//;BUZZTT.c: 94: KEY_Press = 1;
		CLRR 	79H 			//0215 	0179
		INCR	79H,1 			//0216 	09F9

		//;BUZZTT.c: 95: }
		//;BUZZTT.c: 98: if(KEY_Press && long_trig == 0 && long_cnt<300)
		LDR 	79H,0 			//0217 	0879
		BTSC 	STATUS,2 		//0218 	1503
		LJUMP 	227H 			//0219 	3A27
		LDR 	36H,0 			//021A 	0836
		BTSS 	STATUS,2 		//021B 	1D03
		LJUMP 	227H 			//021C 	3A27
		LDWI 	1H 			//021D 	2A01
		SUBWR 	32H,0 			//021E 	0C32
		LDWI 	2CH 			//021F 	2A2C
		BTSC 	STATUS,2 		//0220 	1503
		SUBWR 	31H,0 			//0221 	0C31
		BTSC 	STATUS,0 		//0222 	1403
		LJUMP 	227H 			//0223 	3A27

		//;BUZZTT.c: 99: {
		//;BUZZTT.c: 100: long_cnt++;
		INCR	31H,1 			//0224 	09B1
		BTSC 	STATUS,2 		//0225 	1503
		INCR	32H,1 			//0226 	09B2

		//;BUZZTT.c: 101: }
		//;BUZZTT.c: 105: if(KEY_Press && long_cnt >= 300 && long_trig == 0)
		LDR 	79H,0 			//0227 	0879
		BTSC 	STATUS,2 		//0228 	1503
		RET		 					//0229 	0004
		LDWI 	1H 			//022A 	2A01
		SUBWR 	32H,0 			//022B 	0C32
		LDWI 	2CH 			//022C 	2A2C
		BTSC 	STATUS,2 		//022D 	1503
		SUBWR 	31H,0 			//022E 	0C31
		BTSS 	STATUS,0 		//022F 	1C03
		RET		 					//0230 	0004
		LDR 	36H,0 			//0231 	0836
		BTSS 	STATUS,2 		//0232 	1D03
		RET		 					//0233 	0004

		//;BUZZTT.c: 106: {
		//;BUZZTT.c: 108: SYS.Long_Time_Change = 0;
		CLRR 	2EH 			//0234 	012E

		//;BUZZTT.c: 109: SYS.KEY_Value = 1;
		CLRR 	25H 			//0235 	0125
		INCR	25H,1 			//0236 	09A5

		//;BUZZTT.c: 111: long_trig = 1;
		CLRR 	36H 			//0237 	0136
		INCR	36H,1 			//0238 	09B6
		RET		 					//0239 	0004

		//;BUZZTT.c: 115: else
		//;BUZZTT.c: 116: {
		//;BUZZTT.c: 118: press_cnt = 0;
		CLRR 	37H 			//023A 	0137

		//;BUZZTT.c: 119: KEY_Press = 0;
		CLRR 	79H 			//023B 	0179

		//;BUZZTT.c: 120: long_cnt = 0;
		CLRR 	31H 			//023C 	0131
		CLRR 	32H 			//023D 	0132

		//;BUZZTT.c: 121: long_trig = 0;
		CLRR 	36H 			//023E 	0136
		RET		 					//023F 	0004

		//;Task.c: 77: unsigned char i;
		//;Task.c: 78: for(i = 0;i<TASK_MAX;i++)
		CLRR 	58H 			//0240 	0158

		//;Task.c: 79: {
		//;Task.c: 80: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//0241 	2A06
		STR 	51H 			//0242 	01D1
		LDR 	58H,0 			//0243 	0858
		LCALL 	265H 			//0244 	3265
		BCR 	PCLATH,3 		//0245 	118A
		ADDWI 	39H 			//0246 	2739
		STR 	FSR 			//0247 	0184
		BCR 	STATUS,7 		//0248 	1383
		DECRSZ 	INDF,0 		//0249 	0E00
		LJUMP 	25FH 			//024A 	3A5F

		//;Task.c: 81: {
		//;Task.c: 82: TaskCompany[i].Run = 0;
		LDWI 	6H 			//024B 	2A06
		STR 	51H 			//024C 	01D1
		LDR 	58H,0 			//024D 	0858
		LCALL 	265H 			//024E 	3265
		BCR 	PCLATH,3 		//024F 	118A
		ADDWI 	39H 			//0250 	2739
		STR 	FSR 			//0251 	0184
		LDWI 	6H 			//0252 	2A06
		BCR 	STATUS,7 		//0253 	1383
		CLRR 	INDF 			//0254 	0100

		//;Task.c: 83: TaskCompany[i].TaskHook();
		STR 	51H 			//0255 	01D1
		LDR 	58H,0 			//0256 	0858
		LCALL 	265H 			//0257 	3265
		ADDWI 	3EH 			//0258 	273E
		STR 	FSR 			//0259 	0184
		BCR 	STATUS,7 		//025A 	1383
		LDR 	INDF,0 			//025B 	0800
		BCR 	PCLATH,3 		//025C 	118A
		LCALL 	3FH 			//025D 	303F
		BCR 	PCLATH,3 		//025E 	118A
		LDWI 	4H 			//025F 	2A04
		INCR	58H,1 			//0260 	09D8
		SUBWR 	58H,0 			//0261 	0C58
		BTSC 	STATUS,0 		//0262 	1403
		RET		 					//0263 	0004
		LJUMP 	241H 			//0264 	3A41
		STR 	53H 			//0265 	01D3
		CLRR 	52H 			//0266 	0152
		LDR 	51H,0 			//0267 	0851
		BTSC 	53H,0 			//0268 	1453
		ADDWR 	52H,1 			//0269 	0BD2
		BCR 	STATUS,0 		//026A 	1003
		RLR 	51H,1 			//026B 	05D1
		BCR 	STATUS,0 		//026C 	1003
		RRR	53H,1 			//026D 	06D3
		LDR 	53H,0 			//026E 	0853
		BTSS 	STATUS,2 		//026F 	1D03
		LJUMP 	267H 			//0270 	3A67
		LDR 	52H,0 			//0271 	0852
		RET		 					//0272 	0004
		CLRWDT	 			//0273 	0001
		CLRR 	INDF 			//0274 	0100
		INCR	FSR,1 			//0275 	0984
		XORWR 	FSR,0 			//0276 	0404
		BTSC 	STATUS,2 		//0277 	1503
		RETW 	0H 			//0278 	2100
		XORWR 	FSR,0 			//0279 	0404
		LJUMP 	274H 			//027A 	3A74

		//;Main.c: 56: Initial();
		BCR 	PCLATH,3 		//027B 	118A
		LCALL 	4EH 			//027C 	304E
		BCR 	PCLATH,3 		//027D 	118A

		//;Main.c: 58: {
		//;Main.c: 59: Task_Process();
		BCR 	PCLATH,3 		//027E 	118A
		LCALL 	240H 			//027F 	3240
		BCR 	PCLATH,3 		//0280 	118A
		LJUMP 	27EH 			//0281 	3A7E
		RET		 					//0282 	0004
		RET		 					//0283 	0004
			END
