//Deviec:FT61FC3X
//-----------------------Variable---------------------------------
		_SYS.Standby_Work_State		EQU		20H
		_SYS.LB_Value		EQU		21H
		_SYS.INT_Value		EQU		22H
		_SYS.Relay_Release		EQU		23H
		_SYS.KEY_Value		EQU		24H
		_SYS.Vadc_Value		EQU		25H
		_SYS.Cadc_Value		EQU		26H
		_SYS.READY_Value		EQU		27H
		_SYS.STANDBY_Value		EQU		28H
		_SYS.Vbattery_Adc		EQU		29H
		_SYS.Cbattery_Adc		EQU		2BH
		_SYS.Long_Time_Change		EQU		2DH
		_SYS.Delay_2s_Flag		EQU		2EH
		_SYS.Cadc_Ready_Flag		EQU		2FH
		_SYS		EQU		20H
		_KEY_Press		EQU		79H
		_PA1		EQU		05H
		_PB3		EQU		06H
		_PB5		EQU		06H
		_PC1		EQU		07H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_ADON		EQU		113H
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
//		Timer0_Task@Long_Ready_Time		EQU		34H
//		Key_Detect@press_cnt		EQU		37H
//		Key_Detect@long_cnt		EQU		30H
//		Key_Detect@long_trig		EQU		36H
//		READY_Task@state		EQU		38H
//		READY_Task@counter		EQU		32H
//		Ready_Control@num		EQU		51H
//		Ready_Control@num		EQU		51H
//		Ready_Control@num		EQU		51H
//		Get_Vbattery_Stand_State@adc_value		EQU		51H
//		Get_Vbattery_Stand_State@current_state		EQU		35H
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
		LJUMP 	226H 			//000C 	3A26
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
		LDWI 	4H 			//002A 	2A04
		CLRR 	4BH 			//002B 	014B
		STR 	4CH 			//002C 	01CC
		LDWI 	F4H 			//002D 	2AF4
		CLRR 	4DH 			//002E 	014D
		STR 	4EH 			//002F 	01CE
		LDWI 	1H 			//0030 	2A01
		STR 	4FH 			//0031 	01CF
		LDWI 	1H 			//0032 	2A01
		STR 	50H 			//0033 	01D0
		LDWI 	20H 			//0034 	2A20
		BCR 	STATUS,7 		//0035 	1383
		STR 	FSR 			//0036 	0184
		LDWI 	39H 			//0037 	2A39
		BCR 	PCLATH,3 		//0038 	118A
		LCALL 	332H 			//0039 	3332
		CLRR 	79H 			//003A 	0179
		CLRR 	STATUS 			//003B 	0103
		BCR 	PCLATH,3 		//003C 	118A
		LJUMP 	33AH 			//003D 	3B3A
		STR 	7FH 			//003E 	01FF
		LDWI 	0H 			//003F 	2A00
		STR 	PCLATH 			//0040 	018A
		LDR 	7FH,0 			//0041 	087F
		ADDWR 	PCL,1 			//0042 	0B82
		LJUMP 	43H 			//0043 	3843
		BCR 	PCLATH,3 		//0044 	118A
		LJUMP 	323H 			//0045 	3B23
		BCR 	PCLATH,3 		//0046 	118A
		LJUMP 	4CH 			//0047 	384C
		BCR 	PCLATH,3 		//0048 	118A
		LJUMP 	29FH 			//0049 	3A9F
		BCR 	PCLATH,3 		//004A 	118A
		LJUMP 	341H 			//004B 	3B41

		//;Task.c: 20: ADC_Task();
		LCALL 	53H 			//004C 	3053
		BCR 	PCLATH,3 		//004D 	118A

		//;Task.c: 21: Int_Task();
		LCALL 	1CCH 			//004E 	31CC
		BCR 	PCLATH,3 		//004F 	118A

		//;Task.c: 22: READY_Task();
		LCALL 	EAH 			//0050 	30EA
		BCR 	PCLATH,3 		//0051 	118A

		//;Task.c: 23: LB_ST_Task();
		LJUMP 	1DCH 			//0052 	39DC

		//;ADC.c: 236: Get_Vbattery_Data();
		LCALL 	69H 			//0053 	3069
		BCR 	PCLATH,3 		//0054 	118A

		//;ADC.c: 239: Relay_Release_Detect();
		LCALL 	A3H 			//0055 	30A3
		BCR 	PCLATH,3 		//0056 	118A

		//;ADC.c: 242: if(SYS.Standby_Work_State == 0)
		LDR 	20H,0 			//0057 	0820
		BTSS 	STATUS,2 		//0058 	1D03
		RET		 					//0059 	0004

		//;ADC.c: 243: {
		//;ADC.c: 244: SYS.Vadc_Value = Get_Vbattery_Stand_State(SYS.Vbattery_Adc);
		LDR 	2AH,0 			//005A 	082A
		STR 	52H 			//005B 	01D2
		LDR 	29H,0 			//005C 	0829
		STR 	51H 			//005D 	01D1
		LCALL 	70H 			//005E 	3070
		BCR 	PCLATH,3 		//005F 	118A
		STR 	25H 			//0060 	01A5

		//;ADC.c: 246: if(SYS.Vadc_Value == 0)
		LDR 	25H,0 			//0061 	0825
		BTSS 	STATUS,2 		//0062 	1D03
		LJUMP 	66H 			//0063 	3866

		//;ADC.c: 247: {
		//;ADC.c: 248: SYS.LB_Value = 0;
		CLRR 	21H 			//0064 	0121

		//;ADC.c: 249: }
		RET		 					//0065 	0004

		//;ADC.c: 250: else
		//;ADC.c: 251: {
		//;ADC.c: 252: SYS.LB_Value = 1;
		CLRR 	21H 			//0066 	0121
		INCR	21H,1 			//0067 	09A1
		RET		 					//0068 	0004

		//;ADC.c: 116: SYS.Vbattery_Adc = GET_ADC_DATA(0);
		LDWI 	0H 			//0069 	2A00
		LCALL 	14AH 			//006A 	314A
		LDR 	54H,0 			//006B 	0854
		STR 	2AH 			//006C 	01AA
		LDR 	53H,0 			//006D 	0853
		STR 	29H 			//006E 	01A9
		RET		 					//006F 	0004

		//;ADC.c: 138: static Battery_State current_state = STATE_NORMAL;
		//;ADC.c: 140: switch(current_state)
		LJUMP 	96H 			//0070 	3896

		//;ADC.c: 143: if(adc_value<1861)
		LDWI 	7H 			//0071 	2A07
		SUBWR 	52H,0 			//0072 	0C52
		LDWI 	45H 			//0073 	2A45
		BTSC 	STATUS,2 		//0074 	1503
		SUBWR 	51H,0 			//0075 	0C51
		BTSC 	STATUS,0 		//0076 	1403
		LJUMP 	7BH 			//0077 	387B

		//;ADC.c: 144: {
		//;ADC.c: 145: current_state = STATE_UNDER_VOLTAGE;
		CLRR 	35H 			//0078 	0135
		INCR	35H,1 			//0079 	09B5

		//;ADC.c: 146: }
		LJUMP 	A1H 			//007A 	38A1

		//;ADC.c: 147: else if(adc_value>2438)
		LDWI 	9H 			//007B 	2A09
		SUBWR 	52H,0 			//007C 	0C52
		LDWI 	87H 			//007D 	2A87
		BTSC 	STATUS,2 		//007E 	1503
		SUBWR 	51H,0 			//007F 	0C51
		BTSS 	STATUS,0 		//0080 	1C03
		LJUMP 	A1H 			//0081 	38A1

		//;ADC.c: 148: {
		//;ADC.c: 149: current_state = STATE_OVER_VOLTAGE;
		LDWI 	2H 			//0082 	2A02
		STR 	35H 			//0083 	01B5
		LJUMP 	A1H 			//0084 	38A1

		//;ADC.c: 155: if (adc_value >= 1961)
		LDWI 	7H 			//0085 	2A07
		SUBWR 	52H,0 			//0086 	0C52
		LDWI 	A9H 			//0087 	2AA9
		BTSC 	STATUS,2 		//0088 	1503
		SUBWR 	51H,0 			//0089 	0C51
		BTSS 	STATUS,0 		//008A 	1C03
		LJUMP 	A1H 			//008B 	38A1

		//;ADC.c: 156: {
		//;ADC.c: 157: current_state = STATE_NORMAL;
		CLRR 	35H 			//008C 	0135
		LJUMP 	A1H 			//008D 	38A1

		//;ADC.c: 164: if (adc_value <= 2338)
		LDWI 	9H 			//008E 	2A09
		SUBWR 	52H,0 			//008F 	0C52
		LDWI 	23H 			//0090 	2A23
		BTSC 	STATUS,2 		//0091 	1503
		SUBWR 	51H,0 			//0092 	0C51
		BTSS 	STATUS,0 		//0093 	1C03
		LJUMP 	8CH 			//0094 	388C
		LJUMP 	A1H 			//0095 	38A1
		LDR 	35H,0 			//0096 	0835
		XORWI 	0H 			//0097 	2600
		BTSC 	STATUS,2 		//0098 	1503
		LJUMP 	71H 			//0099 	3871
		XORWI 	1H 			//009A 	2601
		BTSC 	STATUS,2 		//009B 	1503
		LJUMP 	85H 			//009C 	3885
		XORWI 	3H 			//009D 	2603
		BTSC 	STATUS,2 		//009E 	1503
		LJUMP 	8EH 			//009F 	388E
		LJUMP 	A1H 			//00A0 	38A1

		//;ADC.c: 171: return current_state;
		LDR 	35H,0 			//00A1 	0835
		RET		 					//00A2 	0004

		//;ADC.c: 214: if(SYS.Cbattery_Adc<900)
		LDWI 	3H 			//00A3 	2A03
		SUBWR 	2CH,0 			//00A4 	0C2C
		LDWI 	84H 			//00A5 	2A84
		BTSC 	STATUS,2 		//00A6 	1503
		SUBWR 	2BH,0 			//00A7 	0C2B

		//;ADC.c: 215: {
		//;ADC.c: 216: SYS.Relay_Release = 1;
		CLRR 	23H 			//00A8 	0123
		BTSC 	STATUS,0 		//00A9 	1403
		RET		 					//00AA 	0004
		INCR	23H,1 			//00AB 	09A3

		//;ADC.c: 217: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//00AC 	012D

		//;ADC.c: 218: }
		RET		 					//00AD 	0004

		//;ADC.c: 219: else
		//;ADC.c: 220: {
		//;ADC.c: 221: SYS.Relay_Release = 0;
		LDWI 	14H 			//00AE 	2A14
		LCALL 	C1H 			//00AF 	30C1
		BCR 	PCLATH,3 		//00B0 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	181H 			//00B1 	3181
		BCR 	PCLATH,3 		//00B2 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	1B2H 			//00B3 	31B2
		BCR 	PCLATH,3 		//00B4 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	1C4H 			//00B5 	31C4
		BCR 	PCLATH,3 		//00B6 	118A

		//;App.c: 18: ADC_INITIAL();
		LCALL 	D3H 			//00B7 	30D3
		BCR 	PCLATH,3 		//00B8 	118A

		//;App.c: 19: Ready_Init();
		LCALL 	1A6H 			//00B9 	31A6
		BCR 	PCLATH,3 		//00BA 	118A

		//;App.c: 20: Int_Initial();
		LCALL 	17CH 			//00BB 	317C
		BCR 	PCLATH,3 		//00BC 	118A

		//;App.c: 21: BUZZTT_Init();
		LCALL 	1CDH 			//00BD 	31CD

		//;App.c: 23: T0IE = 1;
		BSR 	INTCON,5 		//00BE 	1A8B

		//;App.c: 25: GIE = 1;
		BSR 	INTCON,7 		//00BF 	1B8B
		RET		 					//00C0 	0004
		BCR 	STATUS,6 		//00C1 	1303
		STR 	53H 			//00C2 	01D3

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	54H 			//00C3 	0154
		LDR 	53H,0 			//00C4 	0853
		SUBWR 	54H,0 			//00C5 	0C54
		BTSC 	STATUS,0 		//00C6 	1403
		RET		 					//00C7 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	55H 			//00C8 	0155

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00C9 	2AC5
		LCALL 	170H 			//00CA 	3170
		BCR 	PCLATH,3 		//00CB 	118A
		LDWI 	5H 			//00CC 	2A05
		INCR	55H,1 			//00CD 	09D5
		SUBWR 	55H,0 			//00CE 	0C55
		BTSS 	STATUS,0 		//00CF 	1C03
		LJUMP 	C9H 			//00D0 	38C9
		INCR	54H,1 			//00D1 	09D4
		LJUMP 	C4H 			//00D2 	38C4

		//;ADC.c: 55: TRISA |= 0B00000001;
		BSR 	STATUS,5 		//00D3 	1A83
		BSR 	5H,0 			//00D4 	1805

		//;ADC.c: 57: TRISB |= 0B00000001;
		BSR 	6H,0 			//00D5 	1806

		//;ADC.c: 59: ANSEL0 = 0B01000001;
		LDWI 	41H 			//00D6 	2A41
		BCR 	STATUS,5 		//00D7 	1283
		BSR 	STATUS,6 		//00D8 	1B03
		STR 	1EH 			//00D9 	019E

		//;ADC.c: 61: ADCON1 = 0B11100101;
		LDWI 	E5H 			//00DA 	2AE5
		STR 	14H 			//00DB 	0194

		//;ADC.c: 63: ADCON0 = 0B00000000;
		CLRR 	13H 			//00DC 	0113

		//;ADC.c: 65: DelayUs(450);
		LDWI 	C2H 			//00DD 	2AC2
		LCALL 	170H 			//00DE 	3170
		BCR 	PCLATH,3 		//00DF 	118A

		//;ADC.c: 67: ADCON2 = 0B11000000;
		LDWI 	C0H 			//00E0 	2AC0
		BSR 	STATUS,6 		//00E1 	1B03
		STR 	15H 			//00E2 	0195

		//;ADC.c: 69: ADCON3 = 0B00000000;
		BSR 	STATUS,5 		//00E3 	1A83
		CLRR 	6H 			//00E4 	0106

		//;ADC.c: 73: ADCMPH = 0B00000000;
		CLRR 	7H 			//00E5 	0107

		//;ADC.c: 75: ADON=1;
		BCR 	STATUS,5 		//00E6 	1283
		BSR 	13H,0 			//00E7 	1813

		//;ADC.c: 77: DelayMs(1);
		LDWI 	1H 			//00E8 	2A01
		LJUMP 	C1H 			//00E9 	38C1

		//;READY.c: 53: static TaskState_t state = ST_PRE_ON;
		//;READY.c: 54: static uint16_t counter = 0;
		//;READY.c: 56: if (!SYS.Standby_Work_State) {
		LDR 	20H,0 			//00EA 	0820
		BTSS 	STATUS,2 		//00EB 	1D03
		LJUMP 	F2H 			//00EC 	38F2
		LDWI 	0H 			//00ED 	2A00

		//;READY.c: 57: state = ST_PRE_ON;
		CLRR 	38H 			//00EE 	0138

		//;READY.c: 58: counter = 0;
		CLRR 	32H 			//00EF 	0132
		CLRR 	33H 			//00F0 	0133

		//;READY.c: 59: Ready_Control(0);
		LJUMP 	13FH 			//00F1 	393F

		//;READY.c: 61: }
		//;READY.c: 63: counter++;
		INCR	32H,1 			//00F2 	09B2
		BTSC 	STATUS,2 		//00F3 	1503
		INCR	33H,1 			//00F4 	09B3

		//;READY.c: 65: switch (state) {
		LJUMP 	130H 			//00F5 	3930

		//;READY.c: 67: Ready_Control(1);
		LDWI 	1H 			//00F6 	2A01
		LCALL 	13FH 			//00F7 	313F
		BCR 	PCLATH,3 		//00F8 	118A

		//;READY.c: 68: if (counter >= 600) {
		LDWI 	2H 			//00F9 	2A02
		SUBWR 	33H,0 			//00FA 	0C33
		LDWI 	58H 			//00FB 	2A58
		BTSC 	STATUS,2 		//00FC 	1503
		SUBWR 	32H,0 			//00FD 	0C32
		BTSS 	STATUS,0 		//00FE 	1C03
		RET		 					//00FF 	0004

		//;READY.c: 69: counter = 0;
		CLRR 	32H 			//0100 	0132
		CLRR 	33H 			//0101 	0133

		//;READY.c: 70: state = ST_OFF;
		CLRR 	38H 			//0102 	0138
		INCR	38H,1 			//0103 	09B8
		RET		 					//0104 	0004

		//;READY.c: 75: Ready_Control(0);
		LDWI 	0H 			//0105 	2A00
		LCALL 	13FH 			//0106 	313F
		BCR 	PCLATH,3 		//0107 	118A

		//;READY.c: 76: if (counter >= 200) {
		LDWI 	0H 			//0108 	2A00
		SUBWR 	33H,0 			//0109 	0C33
		LDWI 	C8H 			//010A 	2AC8
		BTSC 	STATUS,2 		//010B 	1503
		SUBWR 	32H,0 			//010C 	0C32
		BTSS 	STATUS,0 		//010D 	1C03
		RET		 					//010E 	0004
		LDWI 	2H 			//010F 	2A02

		//;READY.c: 77: counter = 0;
		//;READY.c: 78: state = ST_FINAL_ON;
		LJUMP 	222H 			//0110 	3A22

		//;READY.c: 83: Ready_Control(1);
		LDWI 	1H 			//0111 	2A01
		LCALL 	13FH 			//0112 	313F
		BCR 	PCLATH,3 		//0113 	118A

		//;READY.c: 84: if (counter >= 400) {
		LDWI 	1H 			//0114 	2A01
		SUBWR 	33H,0 			//0115 	0C33
		LDWI 	90H 			//0116 	2A90
		BTSC 	STATUS,2 		//0117 	1503
		SUBWR 	32H,0 			//0118 	0C32
		BTSS 	STATUS,0 		//0119 	1C03
		RET		 					//011A 	0004
		LDWI 	3H 			//011B 	2A03

		//;READY.c: 85: counter = 0;
		//;READY.c: 86: state = ST_DETECT;
		LJUMP 	222H 			//011C 	3A22

		//;READY.c: 92: SYS.Vbattery_Adc = GET_ADC_DATA(0);
		LDWI 	0H 			//011D 	2A00
		LCALL 	14AH 			//011E 	314A
		BCR 	PCLATH,3 		//011F 	118A
		LDR 	54H,0 			//0120 	0854
		STR 	2AH 			//0121 	01AA
		LDR 	53H,0 			//0122 	0853
		STR 	29H 			//0123 	01A9

		//;READY.c: 93: SYS.Vadc_Value = Get_Vbattery_Stand_State(SYS.Vbattery_Adc);
		LDR 	2AH,0 			//0124 	082A
		STR 	52H 			//0125 	01D2
		LDR 	29H,0 			//0126 	0829
		STR 	51H 			//0127 	01D1
		LCALL 	70H 			//0128 	3070
		STR 	25H 			//0129 	01A5
		LDWI 	90H 			//012A 	2A90

		//;READY.c: 94: state = ST_PRE_ON;
		CLRR 	38H 			//012B 	0138

		//;READY.c: 95: counter = 400;
		STR 	32H 			//012C 	01B2
		LDWI 	1H 			//012D 	2A01
		STR 	33H 			//012E 	01B3

		//;READY.c: 96: break;
		RET		 					//012F 	0004
		LDR 	38H,0 			//0130 	0838
		XORWI 	0H 			//0131 	2600
		BTSC 	STATUS,2 		//0132 	1503
		LJUMP 	F6H 			//0133 	38F6
		XORWI 	1H 			//0134 	2601
		BTSC 	STATUS,2 		//0135 	1503
		LJUMP 	105H 			//0136 	3905
		XORWI 	3H 			//0137 	2603
		BTSC 	STATUS,2 		//0138 	1503
		LJUMP 	111H 			//0139 	3911
		XORWI 	1H 			//013A 	2601
		BTSC 	STATUS,2 		//013B 	1503
		LJUMP 	11DH 			//013C 	391D
		LJUMP 	13EH 			//013D 	393E
		RET		 					//013E 	0004
		STR 	51H 			//013F 	01D1

		//;READY.c: 40: PB3 = (num == 1) ? 1 : 0;
		DECRSZ 	51H,0 		//0140 	0E51
		LJUMP 	146H 			//0141 	3946
		BCR 	STATUS,5 		//0142 	1283
		BCR 	STATUS,6 		//0143 	1303
		BSR 	6H,3 			//0144 	1986
		RET		 					//0145 	0004
		BCR 	STATUS,5 		//0146 	1283
		BCR 	STATUS,6 		//0147 	1303
		BCR 	6H,3 			//0148 	1186
		RET		 					//0149 	0004
		STR 	56H 			//014A 	01D6

		//;ADC.c: 88: unsigned char ADCON0Buff;
		//;ADC.c: 89: ADCON0Buff = ADCON0&0B00000111;
		BSR 	STATUS,6 		//014B 	1B03
		LDR 	13H,0 			//014C 	0813
		BCR 	STATUS,6 		//014D 	1303
		STR 	57H 			//014E 	01D7
		LDWI 	7H 			//014F 	2A07
		ANDWR 	57H,1 			//0150 	02D7

		//;ADC.c: 90: adcChannel<<=3;
		RLR 	56H,1 			//0151 	05D6
		RLR 	56H,1 			//0152 	05D6
		RLR 	56H,0 			//0153 	0556
		ANDWI 	F8H 			//0154 	24F8
		STR 	56H 			//0155 	01D6

		//;ADC.c: 91: ADCON0Buff |= adcChannel;
		IORWR 	57H,1 			//0156 	03D7

		//;ADC.c: 92: ADCON0 = ADCON0Buff;
		LDR 	57H,0 			//0157 	0857
		BSR 	STATUS,6 		//0158 	1B03
		STR 	13H 			//0159 	0193

		//;ADC.c: 93: DelayUs(10);
		LDWI 	AH 			//015A 	2A0A
		LCALL 	170H 			//015B 	3170
		BCR 	PCLATH,3 		//015C 	118A

		//;ADC.c: 98: ADCON0 = ADCON0|0x02;
		BSR 	STATUS,6 		//015D 	1B03
		LDR 	13H,0 			//015E 	0813
		IORWI 	2H 			//015F 	2502
		STR 	13H 			//0160 	0193

		//;ADC.c: 100: __nop();
		NOP		 					//0161 	0000

		//;ADC.c: 101: __nop();
		NOP		 					//0162 	0000

		//;ADC.c: 102: while(ADCON0&0x02);
		BCR 	STATUS,5 		//0163 	1283
		BSR 	STATUS,6 		//0164 	1B03
		BTSC 	13H,1 			//0165 	1493
		LJUMP 	163H 			//0166 	3963

		//;ADC.c: 106: return(unsigned int)(ADRESH<<8|ADRESL);
		LDR 	12H,0 			//0167 	0812
		BCR 	STATUS,6 		//0168 	1303
		STR 	54H 			//0169 	01D4
		CLRR 	53H 			//016A 	0153
		BSR 	STATUS,6 		//016B 	1B03
		LDR 	11H,0 			//016C 	0811
		BCR 	STATUS,6 		//016D 	1303
		IORWR 	53H,1 			//016E 	03D3
		RET		 					//016F 	0004
		BCR 	STATUS,6 		//0170 	1303
		STR 	51H 			//0171 	01D1

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	52H 			//0172 	0152
		LDR 	51H,0 			//0173 	0851
		SUBWR 	52H,0 			//0174 	0C52
		BTSC 	STATUS,0 		//0175 	1403
		RET		 					//0176 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//0177 	0000
		BCR 	STATUS,5 		//0178 	1283
		BCR 	STATUS,6 		//0179 	1303
		INCR	52H,1 			//017A 	09D2
		LJUMP 	173H 			//017B 	3973

		//;INT.c: 18: TRISA |= 0B00010010;
		LDWI 	12H 			//017C 	2A12
		BSR 	STATUS,5 		//017D 	1A83
		BCR 	STATUS,6 		//017E 	1303
		IORWR 	5H,1 			//017F 	0385
		RET		 					//0180 	0004

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//0181 	2A71
		BSR 	STATUS,5 		//0182 	1A83
		STR 	FH 			//0183 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//0184 	2A01
		STR 	1H 			//0185 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//0186 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0187 	1283
		CLRR 	5H 			//0188 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//0189 	2A13
		BSR 	STATUS,5 		//018A 	1A83
		STR 	5H 			//018B 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//018C 	1283
		CLRR 	6H 			//018D 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//018E 	2A29
		BSR 	STATUS,5 		//018F 	1A83
		STR 	6H 			//0190 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//0191 	1283
		CLRR 	7H 			//0192 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//0193 	2A03
		BSR 	STATUS,5 		//0194 	1A83
		STR 	7H 			//0195 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0196 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0197 	1283
		BSR 	STATUS,6 		//0198 	1B03
		CLRR 	DH 			//0199 	010D

		//;Power.c: 29: WPUC = 0B00000010;
		LDWI 	2H 			//019A 	2A02
		BSR 	STATUS,5 		//019B 	1A83
		BCR 	STATUS,6 		//019C 	1303
		STR 	13H 			//019D 	0193

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//019E 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//019F 	1283
		BSR 	STATUS,6 		//01A0 	1B03
		CLRR 	EH 			//01A1 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//01A2 	1A83
		BCR 	STATUS,6 		//01A3 	1303
		CLRR 	DH 			//01A4 	010D
		RET		 					//01A5 	0004

		//;READY.c: 19: PORTC = 0B00000000;
		CLRR 	7H 			//01A6 	0107

		//;READY.c: 20: TRISC &= ~0B00000001;
		BSR 	STATUS,5 		//01A7 	1A83
		BCR 	7H,0 			//01A8 	1007

		//;READY.c: 22: PORTB = 0B00000000;
		BCR 	STATUS,5 		//01A9 	1283
		CLRR 	6H 			//01AA 	0106

		//;READY.c: 23: TRISB &= ~0B00001000;
		BSR 	STATUS,5 		//01AB 	1A83
		BCR 	6H,3 			//01AC 	1186

		//;READY.c: 26: WPUC |= 0B00000001;
		BSR 	13H,0 			//01AD 	1813

		//;READY.c: 28: WPUB |= 0B00001000;
		BCR 	STATUS,5 		//01AE 	1283
		BSR 	STATUS,6 		//01AF 	1B03
		BSR 	DH,3 			//01B0 	198D
		RET		 					//01B1 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//01B2 	1283
		CLRR 	20H 			//01B3 	0120

		//;Power.c: 46: SYS.LB_Value = 0;
		CLRR 	21H 			//01B4 	0121

		//;Power.c: 48: SYS.INT_Value = 0;
		CLRR 	22H 			//01B5 	0122

		//;Power.c: 50: SYS.Relay_Release = 0;
		CLRR 	23H 			//01B6 	0123

		//;Power.c: 52: SYS.KEY_Value = 0;
		CLRR 	24H 			//01B7 	0124

		//;Power.c: 54: SYS.Vadc_Value = 0;
		CLRR 	25H 			//01B8 	0125

		//;Power.c: 56: SYS.Cadc_Value = 0;
		CLRR 	26H 			//01B9 	0126

		//;Power.c: 58: SYS.READY_Value = 0;
		CLRR 	27H 			//01BA 	0127

		//;Power.c: 60: SYS.STANDBY_Value = 0;
		CLRR 	28H 			//01BB 	0128

		//;Power.c: 62: SYS.Vbattery_Adc = 0;
		CLRR 	29H 			//01BC 	0129
		CLRR 	2AH 			//01BD 	012A

		//;Power.c: 64: SYS.Cbattery_Adc = 0;
		CLRR 	2BH 			//01BE 	012B
		CLRR 	2CH 			//01BF 	012C

		//;Power.c: 66: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//01C0 	012D

		//;Power.c: 68: SYS.Delay_2s_Flag = 0;
		CLRR 	2EH 			//01C1 	012E

		//;Power.c: 70: SYS.Cadc_Ready_Flag = 0;
		CLRR 	2FH 			//01C2 	012F
		RET		 					//01C3 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//01C4 	2A04
		BSR 	STATUS,5 		//01C5 	1A83
		STR 	1H 			//01C6 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//01C7 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//01C8 	2A06
		BCR 	STATUS,5 		//01C9 	1283
		STR 	1H 			//01CA 	0181
		RET		 					//01CB 	0004

		//;INT.c: 43: Read_Int();
		LJUMP 	1D4H 			//01CC 	39D4

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//01CD 	1283
		CLRR 	7H 			//01CE 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//01CF 	1A83
		BCR 	7H,1 			//01D0 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//01D1 	1283
		BSR 	7H,1 			//01D2 	1887
		RET		 					//01D3 	0004

		//;INT.c: 33: SYS.INT_Value = (PA1 == 1) ? 0 : 1;
		BCR 	STATUS,0 		//01D4 	1003
		BTSS 	5H,1 			//01D5 	1C85
		BSR 	STATUS,0 		//01D6 	1803
		LDWI 	0H 			//01D7 	2A00
		BTSC 	STATUS,0 		//01D8 	1403
		LDWI 	1H 			//01D9 	2A01
		STR 	22H 			//01DA 	01A2
		RET		 					//01DB 	0004

		//;LB.C: 113: STNADBY_Open();
		LCALL 	1EBH 			//01DC 	31EB
		BCR 	PCLATH,3 		//01DD 	118A

		//;LB.C: 114: LB_Open();
		LCALL 	1E3H 			//01DE 	31E3
		BCR 	PCLATH,3 		//01DF 	118A

		//;LB.C: 115: LB_STANDBY_Close();
		LCALL 	1F3H 			//01E0 	31F3
		BCR 	PCLATH,3 		//01E1 	118A

		//;LB.C: 116: Work_State_Change();
		LJUMP 	1F9H 			//01E2 	39F9

		//;LB.C: 43: if(SYS.LB_Value)
		LDR 	21H,0 			//01E3 	0821
		BTSC 	STATUS,2 		//01E4 	1503
		RET		 					//01E5 	0004

		//;LB.C: 44: {
		//;LB.C: 45: TRISB &= ~0B00100000;
		BSR 	STATUS,5 		//01E6 	1A83
		BCR 	6H,5 			//01E7 	1286

		//;LB.C: 46: PB5 = 0;
		BCR 	STATUS,5 		//01E8 	1283
		BCR 	6H,5 			//01E9 	1286
		RET		 					//01EA 	0004

		//;LB.C: 29: if(SYS.STANDBY_Value)
		LDR 	28H,0 			//01EB 	0828
		BTSC 	STATUS,2 		//01EC 	1503
		RET		 					//01ED 	0004

		//;LB.C: 30: {
		//;LB.C: 31: TRISB &= ~0B00100000;
		BSR 	STATUS,5 		//01EE 	1A83
		BCR 	6H,5 			//01EF 	1286

		//;LB.C: 32: PB5 = 1;
		BCR 	STATUS,5 		//01F0 	1283
		BSR 	6H,5 			//01F1 	1A86
		RET		 					//01F2 	0004

		//;LB.C: 57: if(SYS.Standby_Work_State)
		LDR 	20H,0 			//01F3 	0820
		BTSC 	STATUS,2 		//01F4 	1503
		RET		 					//01F5 	0004

		//;LB.C: 58: {
		//;LB.C: 59: TRISB |= 0B00100000;
		BSR 	STATUS,5 		//01F6 	1A83
		BSR 	6H,5 			//01F7 	1A86
		RET		 					//01F8 	0004

		//;LB.C: 81: if(!SYS.Standby_Work_State)
		BCR 	STATUS,5 		//01F9 	1283
		LDR 	20H,0 			//01FA 	0820
		BTSS 	STATUS,2 		//01FB 	1D03
		LJUMP 	214H 			//01FC 	3A14

		//;LB.C: 82: {
		//;LB.C: 83: if(!SYS.INT_Value && !SYS.LB_Value)
		LDR 	22H,0 			//01FD 	0822
		BTSS 	STATUS,2 		//01FE 	1D03
		LJUMP 	205H 			//01FF 	3A05
		LDR 	21H,0 			//0200 	0821
		BTSS 	STATUS,2 		//0201 	1D03
		LJUMP 	205H 			//0202 	3A05

		//;LB.C: 84: {
		//;LB.C: 85: SYS.STANDBY_Value = 1;
		CLRR 	28H 			//0203 	0128
		INCR	28H,1 			//0204 	09A8

		//;LB.C: 86: }
		//;LB.C: 88: if(SYS.STANDBY_Value && (!SYS.Relay_Release || SYS.KEY_Value))
		LDR 	28H,0 			//0205 	0828
		BTSC 	STATUS,2 		//0206 	1503
		RET		 					//0207 	0004
		LDR 	23H,0 			//0208 	0823
		BTSC 	STATUS,2 		//0209 	1503
		LJUMP 	20EH 			//020A 	3A0E
		LDR 	24H,0 			//020B 	0824
		BTSC 	STATUS,2 		//020C 	1503
		RET		 					//020D 	0004

		//;LB.C: 89: {
		//;LB.C: 90: SYS.Standby_Work_State = 1;
		CLRR 	20H 			//020E 	0120
		INCR	20H,1 			//020F 	09A0

		//;LB.C: 91: SYS.READY_Value = 1;
		CLRR 	27H 			//0210 	0127
		INCR	27H,1 			//0211 	09A7

		//;LB.C: 92: SYS.STANDBY_Value = 0;
		CLRR 	28H 			//0212 	0128
		RET		 					//0213 	0004

		//;LB.C: 96: else
		//;LB.C: 97: {
		//;LB.C: 98: SYS.STANDBY_Value = 0;
		CLRR 	28H 			//0214 	0128

		//;LB.C: 101: if(SYS.INT_Value || SYS.LB_Value || SYS.Relay_Release || SYS.Long_Time_Chang
		//+                          e)
		LDR 	22H,0 			//0215 	0822
		BTSS 	STATUS,2 		//0216 	1D03
		LJUMP 	220H 			//0217 	3A20
		LDR 	21H,0 			//0218 	0821
		BTSS 	STATUS,2 		//0219 	1D03
		LJUMP 	220H 			//021A 	3A20
		LDR 	23H,0 			//021B 	0823
		BTSC 	STATUS,2 		//021C 	1503
		LDR 	2DH,0 			//021D 	082D
		BTSC 	STATUS,2 		//021E 	1503
		RET		 					//021F 	0004

		//;LB.C: 102: {
		//;LB.C: 103: SYS.Standby_Work_State = 0;
		CLRR 	20H 			//0220 	0120
		RET		 					//0221 	0004
		CLRR 	32H 			//0222 	0132
		CLRR 	33H 			//0223 	0133
		STR 	38H 			//0224 	01B8
		RET		 					//0225 	0004

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//0226 	168B
		BTSS 	INTCON,2 		//0227 	1D0B
		LJUMP 	288H 			//0228 	3A88

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//0229 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//022A 	2A06
		BCR 	STATUS,5 		//022B 	1283
		BCR 	STATUS,6 		//022C 	1303
		ADDWR 	1H,1 			//022D 	0B81

		//;Main.c: 32: uint8_t i;
		//;Main.c: 33: for(i = 0;i<TASK_MAX;i++)
		CLRR 	78H 			//022E 	0178

		//;Main.c: 34: {
		//;Main.c: 35: if(TaskCompany[i].Timer)
		LDWI 	6H 			//022F 	2A06
		STR 	70H 			//0230 	01F0
		LDR 	78H,0 			//0231 	0878
		LCALL 	291H 			//0232 	3291
		BCR 	PCLATH,3 		//0233 	118A
		ADDWI 	3AH 			//0234 	273A
		STR 	FSR 			//0235 	0184
		BCR 	STATUS,7 		//0236 	1383
		LDR 	INDF,0 			//0237 	0800
		STR 	73H 			//0238 	01F3
		INCR	FSR,1 			//0239 	0984
		LDR 	INDF,0 			//023A 	0800
		STR 	74H 			//023B 	01F4
		IORWR 	73H,0 			//023C 	0373
		BTSC 	STATUS,2 		//023D 	1503
		LJUMP 	283H 			//023E 	3A83

		//;Main.c: 36: {
		//;Main.c: 37: TaskCompany[i].Timer--;
		LDWI 	6H 			//023F 	2A06
		STR 	70H 			//0240 	01F0
		LDR 	78H,0 			//0241 	0878
		LCALL 	291H 			//0242 	3291
		BCR 	PCLATH,3 		//0243 	118A
		ADDWI 	3AH 			//0244 	273A
		STR 	FSR 			//0245 	0184
		LDWI 	1H 			//0246 	2A01
		BCR 	STATUS,7 		//0247 	1383
		SUBWR 	INDF,1 		//0248 	0C80
		INCRSZ 	FSR,1 		//0249 	0A84
		LDWI 	0H 			//024A 	2A00
		BTSS 	STATUS,0 		//024B 	1C03
		DECR 	INDF,1 			//024C 	0D80
		SUBWR 	INDF,1 		//024D 	0C80
		LDWI 	6H 			//024E 	2A06
		DECR 	FSR,1 			//024F 	0D84

		//;Main.c: 38: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//0250 	01F0
		LDR 	78H,0 			//0251 	0878
		LCALL 	291H 			//0252 	3291
		BCR 	PCLATH,3 		//0253 	118A
		ADDWI 	3AH 			//0254 	273A
		STR 	FSR 			//0255 	0184
		BCR 	STATUS,7 		//0256 	1383
		LDR 	INDF,0 			//0257 	0800
		STR 	73H 			//0258 	01F3
		INCR	FSR,1 			//0259 	0984
		LDR 	INDF,0 			//025A 	0800
		STR 	74H 			//025B 	01F4
		IORWR 	73H,0 			//025C 	0373
		BTSS 	STATUS,2 		//025D 	1D03
		LJUMP 	283H 			//025E 	3A83

		//;Main.c: 39: {
		//;Main.c: 40: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//025F 	2A06
		STR 	70H 			//0260 	01F0
		LDR 	78H,0 			//0261 	0878
		LCALL 	291H 			//0262 	3291
		BCR 	PCLATH,3 		//0263 	118A
		ADDWI 	3CH 			//0264 	273C
		STR 	FSR 			//0265 	0184
		BCR 	STATUS,7 		//0266 	1383
		LDR 	INDF,0 			//0267 	0800
		STR 	73H 			//0268 	01F3
		INCR	FSR,1 			//0269 	0984
		LDR 	INDF,0 			//026A 	0800
		STR 	74H 			//026B 	01F4
		LDWI 	6H 			//026C 	2A06
		STR 	70H 			//026D 	01F0
		LDR 	78H,0 			//026E 	0878
		LCALL 	291H 			//026F 	3291
		BCR 	PCLATH,3 		//0270 	118A
		ADDWI 	3AH 			//0271 	273A
		STR 	FSR 			//0272 	0184
		LDR 	73H,0 			//0273 	0873
		BCR 	STATUS,7 		//0274 	1383
		STR 	INDF 			//0275 	0180
		INCR	FSR,1 			//0276 	0984
		LDR 	74H,0 			//0277 	0874
		STR 	INDF 			//0278 	0180

		//;Main.c: 41: TaskCompany[i].Run = 1;
		LDWI 	6H 			//0279 	2A06
		STR 	70H 			//027A 	01F0
		LDR 	78H,0 			//027B 	0878
		LCALL 	291H 			//027C 	3291
		BCR 	PCLATH,3 		//027D 	118A
		ADDWI 	39H 			//027E 	2739
		STR 	FSR 			//027F 	0184
		BCR 	STATUS,7 		//0280 	1383
		CLRR 	INDF 			//0281 	0100
		INCR	INDF,1 			//0282 	0980
		LDWI 	4H 			//0283 	2A04
		INCR	78H,1 			//0284 	09F8
		SUBWR 	78H,0 			//0285 	0C78
		BTSS 	STATUS,0 		//0286 	1C03
		LJUMP 	22FH 			//0287 	3A2F
		LDR 	77H,0 			//0288 	0877
		STR 	PCLATH 			//0289 	018A
		LDR 	76H,0 			//028A 	0876
		STR 	FSR 			//028B 	0184
		SWAPR 	75H,0 			//028C 	0775
		STR 	STATUS 			//028D 	0183
		SWAPR 	7EH,1 			//028E 	07FE
		SWAPR 	7EH,0 			//028F 	077E
		RETI		 			//0290 	0009
		STR 	71H 			//0291 	01F1
		CLRR 	72H 			//0292 	0172
		LDR 	70H,0 			//0293 	0870
		BTSC 	71H,0 			//0294 	1471
		ADDWR 	72H,1 			//0295 	0BF2
		BCR 	STATUS,0 		//0296 	1003
		RLR 	70H,1 			//0297 	05F0
		BCR 	STATUS,0 		//0298 	1003
		RRR	71H,1 			//0299 	06F1
		LDR 	71H,0 			//029A 	0871
		BTSS 	STATUS,2 		//029B 	1D03
		LJUMP 	293H 			//029C 	3A93
		LDR 	72H,0 			//029D 	0872
		RET		 					//029E 	0004

		//;Task.c: 38: BUZZTT_Task();
		LJUMP 	2A1H 			//029F 	3AA1

		//;BUZZTT.c: 157: BUZZHH_Control();
		LJUMP 	2A1H 			//02A0 	3AA1

		//;BUZZTT.c: 62: if(SYS.LB_Value||SYS.INT_Value)
		LDR 	21H,0 			//02A1 	0821
		BTSC 	STATUS,2 		//02A2 	1503
		LDR 	22H,0 			//02A3 	0822
		BTSC 	STATUS,2 		//02A4 	1503
		LJUMP 	2A7H 			//02A5 	3AA7

		//;BUZZTT.c: 63: {
		//;BUZZTT.c: 64: Hummer_Task();
		LJUMP 	2ABH 			//02A6 	3AAB

		//;BUZZTT.c: 65: }
		//;BUZZTT.c: 66: else if(SYS.STANDBY_Value)
		LDR 	28H,0 			//02A7 	0828
		BTSC 	STATUS,2 		//02A8 	1503
		RET		 					//02A9 	0004

		//;BUZZTT.c: 67: {
		//;BUZZTT.c: 68: Key_Task();
		LJUMP 	2B4H 			//02AA 	3AB4

		//;BUZZTT.c: 145: Hummer_Init();
		LCALL 	2AFH 			//02AB 	32AF

		//;BUZZTT.c: 146: PC1 = 0;
		BCR 	STATUS,5 		//02AC 	1283
		BCR 	7H,1 			//02AD 	1087
		RET		 					//02AE 	0004

		//;BUZZTT.c: 49: PORTC = 0B00000000;
		CLRR 	7H 			//02AF 	0107

		//;BUZZTT.c: 50: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//02B0 	1A83
		BCR 	7H,1 			//02B1 	1087

		//;BUZZTT.c: 52: WPUC &= ~0B00000010;
		BCR 	13H,1 			//02B2 	1093
		RET		 					//02B3 	0004

		//;BUZZTT.c: 133: KEY_Init();
		LCALL 	2B7H 			//02B4 	32B7
		BCR 	PCLATH,3 		//02B5 	118A

		//;BUZZTT.c: 134: Key_Detect();
		LJUMP 	2BCH 			//02B6 	3ABC

		//;BUZZTT.c: 36: PORTC = 0B00000000;
		CLRR 	7H 			//02B7 	0107

		//;BUZZTT.c: 37: TRISC |= 0B00000010;
		BSR 	STATUS,5 		//02B8 	1A83
		BSR 	7H,1 			//02B9 	1887

		//;BUZZTT.c: 39: WPUC |= 0B00000010;
		BSR 	13H,1 			//02BA 	1893
		RET		 					//02BB 	0004

		//;BUZZTT.c: 81: static uint8_t press_cnt = 0;
		//;BUZZTT.c: 82: static uint16_t long_cnt = 0;
		//;BUZZTT.c: 83: static uint8_t long_trig = 0;
		//;BUZZTT.c: 85: if(PC1 == 0)
		BCR 	STATUS,5 		//02BC 	1283
		BTSC 	7H,1 			//02BD 	1487
		LJUMP 	2EAH 			//02BE 	3AEA

		//;BUZZTT.c: 86: {
		//;BUZZTT.c: 88: if(press_cnt <4)
		LDWI 	4H 			//02BF 	2A04
		SUBWR 	37H,0 			//02C0 	0C37
		BTSC 	STATUS,0 		//02C1 	1403
		LJUMP 	2C5H 			//02C2 	3AC5

		//;BUZZTT.c: 89: {
		//;BUZZTT.c: 90: press_cnt ++;
		INCR	37H,1 			//02C3 	09B7

		//;BUZZTT.c: 91: }
		LJUMP 	2C7H 			//02C4 	3AC7

		//;BUZZTT.c: 92: else
		//;BUZZTT.c: 93: {
		//;BUZZTT.c: 94: KEY_Press = 1;
		CLRR 	79H 			//02C5 	0179
		INCR	79H,1 			//02C6 	09F9

		//;BUZZTT.c: 95: }
		//;BUZZTT.c: 98: if(KEY_Press && long_trig == 0 && long_cnt<300)
		LDR 	79H,0 			//02C7 	0879
		BTSC 	STATUS,2 		//02C8 	1503
		LJUMP 	2D7H 			//02C9 	3AD7
		LDR 	36H,0 			//02CA 	0836
		BTSS 	STATUS,2 		//02CB 	1D03
		LJUMP 	2D7H 			//02CC 	3AD7
		LDWI 	1H 			//02CD 	2A01
		SUBWR 	31H,0 			//02CE 	0C31
		LDWI 	2CH 			//02CF 	2A2C
		BTSC 	STATUS,2 		//02D0 	1503
		SUBWR 	30H,0 			//02D1 	0C30
		BTSC 	STATUS,0 		//02D2 	1403
		LJUMP 	2D7H 			//02D3 	3AD7

		//;BUZZTT.c: 99: {
		//;BUZZTT.c: 100: long_cnt++;
		INCR	30H,1 			//02D4 	09B0
		BTSC 	STATUS,2 		//02D5 	1503
		INCR	31H,1 			//02D6 	09B1

		//;BUZZTT.c: 101: }
		//;BUZZTT.c: 105: if(KEY_Press && long_cnt >= 300 && long_trig == 0)
		LDR 	79H,0 			//02D7 	0879
		BTSC 	STATUS,2 		//02D8 	1503
		RET		 					//02D9 	0004
		LDWI 	1H 			//02DA 	2A01
		SUBWR 	31H,0 			//02DB 	0C31
		LDWI 	2CH 			//02DC 	2A2C
		BTSC 	STATUS,2 		//02DD 	1503
		SUBWR 	30H,0 			//02DE 	0C30
		BTSS 	STATUS,0 		//02DF 	1C03
		RET		 					//02E0 	0004
		LDR 	36H,0 			//02E1 	0836
		BTSS 	STATUS,2 		//02E2 	1D03
		RET		 					//02E3 	0004

		//;BUZZTT.c: 106: {
		//;BUZZTT.c: 108: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//02E4 	012D

		//;BUZZTT.c: 109: SYS.KEY_Value = 1;
		CLRR 	24H 			//02E5 	0124
		INCR	24H,1 			//02E6 	09A4

		//;BUZZTT.c: 111: long_trig = 1;
		CLRR 	36H 			//02E7 	0136
		INCR	36H,1 			//02E8 	09B6
		RET		 					//02E9 	0004

		//;BUZZTT.c: 115: else
		//;BUZZTT.c: 116: {
		//;BUZZTT.c: 118: press_cnt = 0;
		CLRR 	37H 			//02EA 	0137

		//;BUZZTT.c: 119: KEY_Press = 0;
		CLRR 	79H 			//02EB 	0179

		//;BUZZTT.c: 120: long_cnt = 0;
		CLRR 	30H 			//02EC 	0130
		CLRR 	31H 			//02ED 	0131

		//;BUZZTT.c: 121: long_trig = 0;
		CLRR 	36H 			//02EE 	0136
		RET		 					//02EF 	0004

		//;Task.c: 71: unsigned char i;
		//;Task.c: 72: for(i = 0;i<TASK_MAX;i++)
		CLRR 	58H 			//02F0 	0158

		//;Task.c: 73: {
		//;Task.c: 74: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//02F1 	2A06
		STR 	51H 			//02F2 	01D1
		LDR 	58H,0 			//02F3 	0858
		LCALL 	315H 			//02F4 	3315
		BCR 	PCLATH,3 		//02F5 	118A
		ADDWI 	39H 			//02F6 	2739
		STR 	FSR 			//02F7 	0184
		BCR 	STATUS,7 		//02F8 	1383
		DECRSZ 	INDF,0 		//02F9 	0E00
		LJUMP 	30FH 			//02FA 	3B0F

		//;Task.c: 75: {
		//;Task.c: 76: TaskCompany[i].Run = 0;
		LDWI 	6H 			//02FB 	2A06
		STR 	51H 			//02FC 	01D1
		LDR 	58H,0 			//02FD 	0858
		LCALL 	315H 			//02FE 	3315
		BCR 	PCLATH,3 		//02FF 	118A
		ADDWI 	39H 			//0300 	2739
		STR 	FSR 			//0301 	0184
		LDWI 	6H 			//0302 	2A06
		BCR 	STATUS,7 		//0303 	1383
		CLRR 	INDF 			//0304 	0100

		//;Task.c: 77: TaskCompany[i].TaskHook();
		STR 	51H 			//0305 	01D1
		LDR 	58H,0 			//0306 	0858
		LCALL 	315H 			//0307 	3315
		ADDWI 	3EH 			//0308 	273E
		STR 	FSR 			//0309 	0184
		BCR 	STATUS,7 		//030A 	1383
		LDR 	INDF,0 			//030B 	0800
		BCR 	PCLATH,3 		//030C 	118A
		LCALL 	3EH 			//030D 	303E
		BCR 	PCLATH,3 		//030E 	118A
		LDWI 	4H 			//030F 	2A04
		INCR	58H,1 			//0310 	09D8
		SUBWR 	58H,0 			//0311 	0C58
		BTSC 	STATUS,0 		//0312 	1403
		RET		 					//0313 	0004
		LJUMP 	2F1H 			//0314 	3AF1
		STR 	53H 			//0315 	01D3
		CLRR 	52H 			//0316 	0152
		LDR 	51H,0 			//0317 	0851
		BTSC 	53H,0 			//0318 	1453
		ADDWR 	52H,1 			//0319 	0BD2
		BCR 	STATUS,0 		//031A 	1003
		RLR 	51H,1 			//031B 	05D1
		BCR 	STATUS,0 		//031C 	1003
		RRR	53H,1 			//031D 	06D3
		LDR 	53H,0 			//031E 	0853
		BTSS 	STATUS,2 		//031F 	1D03
		LJUMP 	317H 			//0320 	3B17
		LDR 	52H,0 			//0321 	0852
		RET		 					//0322 	0004

		//;Task.c: 59: Timer0_Task();
		LJUMP 	324H 			//0323 	3B24

		//;Timer.c: 22: static uint8_t Long_Ready_Time = 0;
		//;Timer.c: 23: static uint8_t Short_Ready_Time = 0;
		//;Timer.c: 24: static uint8_t Ready_Delay_Time = 0;
		//;Timer.c: 26: if(SYS.Standby_Work_State == 1)
		DECRSZ 	20H,0 		//0324 	0E20
		LJUMP 	32FH 			//0325 	3B2F
		LDWI 	50H 			//0326 	2A50

		//;Timer.c: 27: {
		//;Timer.c: 28: Long_Ready_Time++;
		INCR	34H,1 			//0327 	09B4

		//;Timer.c: 30: if(Long_Ready_Time>=80)
		SUBWR 	34H,0 			//0328 	0C34
		BTSS 	STATUS,0 		//0329 	1C03
		RET		 					//032A 	0004

		//;Timer.c: 31: {
		//;Timer.c: 32: Long_Ready_Time = 0;
		CLRR 	34H 			//032B 	0134

		//;Timer.c: 33: SYS.Long_Time_Change = 1;
		CLRR 	2DH 			//032C 	012D
		INCR	2DH,1 			//032D 	09AD
		RET		 					//032E 	0004

		//;Timer.c: 37: else
		//;Timer.c: 38: {
		//;Timer.c: 39: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//032F 	012D

		//;Timer.c: 40: Long_Ready_Time = 0;
		CLRR 	34H 			//0330 	0134
		RET		 					//0331 	0004
		CLRWDT	 			//0332 	0001
		CLRR 	INDF 			//0333 	0100
		INCR	FSR,1 			//0334 	0984
		XORWR 	FSR,0 			//0335 	0404
		BTSC 	STATUS,2 		//0336 	1503
		RETW 	0H 			//0337 	2100
		XORWR 	FSR,0 			//0338 	0404
		LJUMP 	333H 			//0339 	3B33

		//;Main.c: 55: Initial();
		BCR 	PCLATH,3 		//033A 	118A
		LCALL 	AEH 			//033B 	30AE
		BCR 	PCLATH,3 		//033C 	118A

		//;Main.c: 57: {
		//;Main.c: 58: Task_Process();
		BCR 	PCLATH,3 		//033D 	118A
		LCALL 	2F0H 			//033E 	32F0
		BCR 	PCLATH,3 		//033F 	118A
		LJUMP 	33DH 			//0340 	3B3D
		RET		 					//0341 	0004
			END
