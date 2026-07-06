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
		_TaskCompany.Run		EQU		3AH
		_TaskCompany.Timer		EQU		3BH
		_TaskCompany.IvtTime		EQU		3DH
		_TaskCompany.TaskHook		EQU		3FH
		_TaskCompany		EQU		3AH
//		Task_Process@i		EQU		59H
//		___bmul@multiplier		EQU		54H
//		___bmul@product		EQU		53H
//		___bmul@multiplier		EQU		54H
//		___bmul@multiplicand		EQU		52H
//		___bmul@multiplier		EQU		54H
//		Timer0_Task@Long_Ready_Time		EQU		34H
//		Key_Detect@press_cnt		EQU		38H
//		Key_Detect@long_cnt		EQU		30H
//		Key_Detect@long_trig		EQU		37H
//		READY_Task@state		EQU		39H
//		READY_Task@counter		EQU		32H
//		Ready_Control@num		EQU		52H
//		Ready_Control@num		EQU		52H
//		Ready_Control@num		EQU		52H
//		Get_Cbattery_Stand_State@adc_value		EQU		52H
//		Get_Cbattery_Stand_State@current_state		EQU		35H
//		Get_Vbattery_Stand_State@adc_value		EQU		52H
//		Get_Vbattery_Stand_State@current_state		EQU		36H
//		GET_ADC_DATA@adcChannel		EQU		57H
//		GET_ADC_DATA@ADCON0Buff		EQU		58H
//		GET_ADC_DATA@adcChannel		EQU		57H
//		GET_ADC_DATA@adcChannel		EQU		57H
//		DelayMs@Time		EQU		54H
//		DelayMs@b		EQU		56H
//		DelayMs@a		EQU		55H
//		DelayMs@Time		EQU		54H
//		DelayMs@Time		EQU		54H
//		DelayUs@Time		EQU		52H
//		DelayUs@a		EQU		53H
//		DelayUs@Time		EQU		52H
//		DelayUs@Time		EQU		52H
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
		LJUMP 	20DH 			//000C 	3A0D
		BCR 	PCLATH,3 		//000D 	118A
		LJUMP 	0FH 			//000E 	380F
		LDWI 	1H 			//000F 	2A01
		CLRR 	3AH 			//0010 	013A
		STR 	3BH 			//0011 	01BB
		LDWI 	5H 			//0012 	2A05
		CLRR 	3CH 			//0013 	013C
		STR 	3DH 			//0014 	01BD
		LDWI 	3H 			//0015 	2A03
		CLRR 	3EH 			//0016 	013E
		STR 	3FH 			//0017 	01BF
		LDWI 	2H 			//0018 	2A02
		CLRR 	40H 			//0019 	0140
		STR 	41H 			//001A 	01C1
		LDWI 	AH 			//001B 	2A0A
		CLRR 	42H 			//001C 	0142
		STR 	43H 			//001D 	01C3
		LDWI 	5H 			//001E 	2A05
		CLRR 	44H 			//001F 	0144
		STR 	45H 			//0020 	01C5
		LDWI 	3H 			//0021 	2A03
		CLRR 	46H 			//0022 	0146
		STR 	47H 			//0023 	01C7
		LDWI 	14H 			//0024 	2A14
		CLRR 	48H 			//0025 	0148
		STR 	49H 			//0026 	01C9
		LDWI 	7H 			//0027 	2A07
		CLRR 	4AH 			//0028 	014A
		STR 	4BH 			//0029 	01CB
		LDWI 	A0H 			//002A 	2AA0
		CLRR 	4CH 			//002B 	014C
		STR 	4DH 			//002C 	01CD
		LDWI 	FH 			//002D 	2A0F
		STR 	4EH 			//002E 	01CE
		LDWI 	A0H 			//002F 	2AA0
		STR 	4FH 			//0030 	01CF
		LDWI 	FH 			//0031 	2A0F
		STR 	50H 			//0032 	01D0
		LDWI 	1H 			//0033 	2A01
		STR 	51H 			//0034 	01D1
		LDWI 	20H 			//0035 	2A20
		BCR 	STATUS,7 		//0036 	1383
		STR 	FSR 			//0037 	0184
		LDWI 	3AH 			//0038 	2A3A
		BCR 	PCLATH,3 		//0039 	118A
		LCALL 	314H 			//003A 	3314
		CLRR 	79H 			//003B 	0179
		CLRR 	STATUS 			//003C 	0103
		BCR 	PCLATH,3 		//003D 	118A
		LJUMP 	31CH 			//003E 	3B1C
		STR 	7FH 			//003F 	01FF
		LDWI 	0H 			//0040 	2A00
		STR 	PCLATH 			//0041 	018A
		LDR 	7FH,0 			//0042 	087F
		ADDWR 	PCL,1 			//0043 	0B82
		LJUMP 	44H 			//0044 	3844
		BCR 	PCLATH,3 		//0045 	118A
		LJUMP 	306H 			//0046 	3B06
		BCR 	PCLATH,3 		//0047 	118A
		LJUMP 	4DH 			//0048 	384D
		BCR 	PCLATH,3 		//0049 	118A
		LJUMP 	286H 			//004A 	3A86
		BCR 	PCLATH,3 		//004B 	118A
		LJUMP 	323H 			//004C 	3B23

		//;Task.c: 20: ADC_Task();
		LCALL 	54H 			//004D 	3054
		BCR 	PCLATH,3 		//004E 	118A

		//;Task.c: 21: Int_Task();
		LCALL 	1BDH 			//004F 	31BD
		BCR 	PCLATH,3 		//0050 	118A

		//;Task.c: 22: READY_Task();
		LCALL 	E4H 			//0051 	30E4
		BCR 	PCLATH,3 		//0052 	118A

		//;Task.c: 23: LB_ST_Task();
		LJUMP 	1CDH 			//0053 	39CD

		//;ADC.c: 236: Get_Vbattery_Data();
		LCALL 	6AH 			//0054 	306A
		BCR 	PCLATH,3 		//0055 	118A

		//;ADC.c: 239: Relay_Release_Detect();
		LCALL 	A4H 			//0056 	30A4
		BCR 	PCLATH,3 		//0057 	118A

		//;ADC.c: 242: if(SYS.Standby_Work_State == 0)
		LDR 	20H,0 			//0058 	0820
		BTSS 	STATUS,2 		//0059 	1D03
		RET		 					//005A 	0004

		//;ADC.c: 243: {
		//;ADC.c: 244: SYS.Vadc_Value = Get_Vbattery_Stand_State(SYS.Vbattery_Adc);
		LDR 	2AH,0 			//005B 	082A
		STR 	53H 			//005C 	01D3
		LDR 	29H,0 			//005D 	0829
		STR 	52H 			//005E 	01D2
		LCALL 	71H 			//005F 	3071
		BCR 	PCLATH,3 		//0060 	118A
		STR 	25H 			//0061 	01A5

		//;ADC.c: 246: if(SYS.Vadc_Value == 0)
		LDR 	25H,0 			//0062 	0825
		BTSS 	STATUS,2 		//0063 	1D03
		LJUMP 	67H 			//0064 	3867

		//;ADC.c: 247: {
		//;ADC.c: 248: SYS.LB_Value = 0;
		CLRR 	21H 			//0065 	0121

		//;ADC.c: 249: }
		RET		 					//0066 	0004

		//;ADC.c: 250: else
		//;ADC.c: 251: {
		//;ADC.c: 252: SYS.LB_Value = 1;
		CLRR 	21H 			//0067 	0121
		INCR	21H,1 			//0068 	09A1
		RET		 					//0069 	0004

		//;ADC.c: 116: SYS.Vbattery_Adc = GET_ADC_DATA(0);
		LDWI 	0H 			//006A 	2A00
		LCALL 	144H 			//006B 	3144
		LDR 	55H,0 			//006C 	0855
		STR 	2AH 			//006D 	01AA
		LDR 	54H,0 			//006E 	0854
		STR 	29H 			//006F 	01A9
		RET		 					//0070 	0004

		//;ADC.c: 138: static Battery_State current_state = STATE_NORMAL;
		//;ADC.c: 140: switch(current_state)
		LJUMP 	97H 			//0071 	3897

		//;ADC.c: 143: if(adc_value<1861)
		LDWI 	7H 			//0072 	2A07
		SUBWR 	53H,0 			//0073 	0C53
		LDWI 	45H 			//0074 	2A45
		BTSC 	STATUS,2 		//0075 	1503
		SUBWR 	52H,0 			//0076 	0C52
		BTSC 	STATUS,0 		//0077 	1403
		LJUMP 	7CH 			//0078 	387C

		//;ADC.c: 144: {
		//;ADC.c: 145: current_state = STATE_UNDER_VOLTAGE;
		CLRR 	36H 			//0079 	0136
		INCR	36H,1 			//007A 	09B6

		//;ADC.c: 146: }
		LJUMP 	A2H 			//007B 	38A2

		//;ADC.c: 147: else if(adc_value>2438)
		LDWI 	9H 			//007C 	2A09
		SUBWR 	53H,0 			//007D 	0C53
		LDWI 	87H 			//007E 	2A87
		BTSC 	STATUS,2 		//007F 	1503
		SUBWR 	52H,0 			//0080 	0C52
		BTSS 	STATUS,0 		//0081 	1C03
		LJUMP 	A2H 			//0082 	38A2

		//;ADC.c: 148: {
		//;ADC.c: 149: current_state = STATE_OVER_VOLTAGE;
		LDWI 	2H 			//0083 	2A02
		STR 	36H 			//0084 	01B6
		LJUMP 	A2H 			//0085 	38A2

		//;ADC.c: 155: if (adc_value >= 1961)
		LDWI 	7H 			//0086 	2A07
		SUBWR 	53H,0 			//0087 	0C53
		LDWI 	A9H 			//0088 	2AA9
		BTSC 	STATUS,2 		//0089 	1503
		SUBWR 	52H,0 			//008A 	0C52
		BTSS 	STATUS,0 		//008B 	1C03
		LJUMP 	A2H 			//008C 	38A2

		//;ADC.c: 156: {
		//;ADC.c: 157: current_state = STATE_NORMAL;
		CLRR 	36H 			//008D 	0136
		LJUMP 	A2H 			//008E 	38A2

		//;ADC.c: 164: if (adc_value <= 2338)
		LDWI 	9H 			//008F 	2A09
		SUBWR 	53H,0 			//0090 	0C53
		LDWI 	23H 			//0091 	2A23
		BTSC 	STATUS,2 		//0092 	1503
		SUBWR 	52H,0 			//0093 	0C52
		BTSS 	STATUS,0 		//0094 	1C03
		LJUMP 	8DH 			//0095 	388D
		LJUMP 	A2H 			//0096 	38A2
		LDR 	36H,0 			//0097 	0836
		XORWI 	0H 			//0098 	2600
		BTSC 	STATUS,2 		//0099 	1503
		LJUMP 	72H 			//009A 	3872
		XORWI 	1H 			//009B 	2601
		BTSC 	STATUS,2 		//009C 	1503
		LJUMP 	86H 			//009D 	3886
		XORWI 	3H 			//009E 	2603
		BTSC 	STATUS,2 		//009F 	1503
		LJUMP 	8FH 			//00A0 	388F
		LJUMP 	A2H 			//00A1 	38A2

		//;ADC.c: 171: return current_state;
		LDR 	36H,0 			//00A2 	0836
		RET		 					//00A3 	0004

		//;ADC.c: 215: {
		//;ADC.c: 216: SYS.Relay_Release = 1;
		CLRR 	23H 			//00A4 	0123
		INCR	23H,1 			//00A5 	09A3

		//;ADC.c: 217: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//00A6 	012D

		//;ADC.c: 218: }
		RET		 					//00A7 	0004

		//;App.c: 13: DelayMs(20);
		LDWI 	14H 			//00A8 	2A14
		LCALL 	BBH 			//00A9 	30BB
		BCR 	PCLATH,3 		//00AA 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	17BH 			//00AB 	317B
		BCR 	PCLATH,3 		//00AC 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	1ABH 			//00AD 	31AB
		BCR 	PCLATH,3 		//00AE 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	1B5H 			//00AF 	31B5
		BCR 	PCLATH,3 		//00B0 	118A

		//;App.c: 18: ADC_INITIAL();
		LCALL 	CDH 			//00B1 	30CD
		BCR 	PCLATH,3 		//00B2 	118A

		//;App.c: 19: Ready_Init();
		LCALL 	19FH 			//00B3 	319F
		BCR 	PCLATH,3 		//00B4 	118A

		//;App.c: 20: Int_Initial();
		LCALL 	176H 			//00B5 	3176
		BCR 	PCLATH,3 		//00B6 	118A

		//;App.c: 21: BUZZTT_Init();
		LCALL 	1BEH 			//00B7 	31BE

		//;App.c: 23: T0IE = 1;
		BSR 	INTCON,5 		//00B8 	1A8B

		//;App.c: 25: GIE = 1;
		BSR 	INTCON,7 		//00B9 	1B8B
		RET		 					//00BA 	0004
		BCR 	STATUS,6 		//00BB 	1303
		STR 	54H 			//00BC 	01D4

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	55H 			//00BD 	0155
		LDR 	54H,0 			//00BE 	0854
		SUBWR 	55H,0 			//00BF 	0C55
		BTSC 	STATUS,0 		//00C0 	1403
		RET		 					//00C1 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	56H 			//00C2 	0156

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00C3 	2AC5
		LCALL 	16AH 			//00C4 	316A
		BCR 	PCLATH,3 		//00C5 	118A
		LDWI 	5H 			//00C6 	2A05
		INCR	56H,1 			//00C7 	09D6
		SUBWR 	56H,0 			//00C8 	0C56
		BTSS 	STATUS,0 		//00C9 	1C03
		LJUMP 	C3H 			//00CA 	38C3
		INCR	55H,1 			//00CB 	09D5
		LJUMP 	BEH 			//00CC 	38BE

		//;ADC.c: 55: TRISA |= 0B00000001;
		BSR 	STATUS,5 		//00CD 	1A83
		BSR 	5H,0 			//00CE 	1805

		//;ADC.c: 57: TRISB |= 0B00000001;
		BSR 	6H,0 			//00CF 	1806

		//;ADC.c: 59: ANSEL0 = 0B01000001;
		LDWI 	41H 			//00D0 	2A41
		BCR 	STATUS,5 		//00D1 	1283
		BSR 	STATUS,6 		//00D2 	1B03
		STR 	1EH 			//00D3 	019E

		//;ADC.c: 61: ADCON1 = 0B11100101;
		LDWI 	E5H 			//00D4 	2AE5
		STR 	14H 			//00D5 	0194

		//;ADC.c: 63: ADCON0 = 0B00000000;
		CLRR 	13H 			//00D6 	0113

		//;ADC.c: 65: DelayUs(450);
		LDWI 	C2H 			//00D7 	2AC2
		LCALL 	16AH 			//00D8 	316A
		BCR 	PCLATH,3 		//00D9 	118A

		//;ADC.c: 67: ADCON2 = 0B11000000;
		LDWI 	C0H 			//00DA 	2AC0
		BSR 	STATUS,6 		//00DB 	1B03
		STR 	15H 			//00DC 	0195

		//;ADC.c: 69: ADCON3 = 0B00000000;
		BSR 	STATUS,5 		//00DD 	1A83
		CLRR 	6H 			//00DE 	0106

		//;ADC.c: 73: ADCMPH = 0B00000000;
		CLRR 	7H 			//00DF 	0107

		//;ADC.c: 75: ADON=1;
		BCR 	STATUS,5 		//00E0 	1283
		BSR 	13H,0 			//00E1 	1813

		//;ADC.c: 77: DelayMs(1);
		LDWI 	1H 			//00E2 	2A01
		LJUMP 	BBH 			//00E3 	38BB

		//;READY.c: 53: static TaskState_t state = ST_PRE_ON;
		//;READY.c: 54: static uint16_t counter = 0;
		//;READY.c: 56: if (!SYS.Standby_Work_State) {
		LDR 	20H,0 			//00E4 	0820
		BTSS 	STATUS,2 		//00E5 	1D03
		LJUMP 	ECH 			//00E6 	38EC
		LDWI 	0H 			//00E7 	2A00

		//;READY.c: 57: state = ST_PRE_ON;
		CLRR 	39H 			//00E8 	0139

		//;READY.c: 58: counter = 0;
		CLRR 	32H 			//00E9 	0132
		CLRR 	33H 			//00EA 	0133

		//;READY.c: 59: Ready_Control(0);
		LJUMP 	139H 			//00EB 	3939

		//;READY.c: 61: }
		//;READY.c: 63: counter++;
		INCR	32H,1 			//00EC 	09B2
		BTSC 	STATUS,2 		//00ED 	1503
		INCR	33H,1 			//00EE 	09B3

		//;READY.c: 65: switch (state) {
		LJUMP 	12AH 			//00EF 	392A

		//;READY.c: 67: Ready_Control(1);
		LDWI 	1H 			//00F0 	2A01
		LCALL 	139H 			//00F1 	3139
		BCR 	PCLATH,3 		//00F2 	118A

		//;READY.c: 68: if (counter >= 600) {
		LDWI 	2H 			//00F3 	2A02
		SUBWR 	33H,0 			//00F4 	0C33
		LDWI 	58H 			//00F5 	2A58
		BTSC 	STATUS,2 		//00F6 	1503
		SUBWR 	32H,0 			//00F7 	0C32
		BTSS 	STATUS,0 		//00F8 	1C03
		RET		 					//00F9 	0004

		//;READY.c: 69: counter = 0;
		CLRR 	32H 			//00FA 	0132
		CLRR 	33H 			//00FB 	0133

		//;READY.c: 70: state = ST_OFF;
		CLRR 	39H 			//00FC 	0139
		INCR	39H,1 			//00FD 	09B9
		RET		 					//00FE 	0004

		//;READY.c: 75: Ready_Control(0);
		LDWI 	0H 			//00FF 	2A00
		LCALL 	139H 			//0100 	3139
		BCR 	PCLATH,3 		//0101 	118A

		//;READY.c: 76: if (counter >= 2) {
		LDWI 	0H 			//0102 	2A00
		SUBWR 	33H,0 			//0103 	0C33
		LDWI 	2H 			//0104 	2A02
		BTSC 	STATUS,2 		//0105 	1503
		SUBWR 	32H,0 			//0106 	0C32
		BTSS 	STATUS,0 		//0107 	1C03
		RET		 					//0108 	0004
		LDWI 	2H 			//0109 	2A02

		//;READY.c: 77: counter = 0;
		//;READY.c: 78: state = ST_FINAL_ON;
		LJUMP 	209H 			//010A 	3A09

		//;READY.c: 83: Ready_Control(1);
		LDWI 	1H 			//010B 	2A01
		LCALL 	139H 			//010C 	3139
		BCR 	PCLATH,3 		//010D 	118A

		//;READY.c: 84: if (counter >= 400) {
		LDWI 	1H 			//010E 	2A01
		SUBWR 	33H,0 			//010F 	0C33
		LDWI 	90H 			//0110 	2A90
		BTSC 	STATUS,2 		//0111 	1503
		SUBWR 	32H,0 			//0112 	0C32
		BTSS 	STATUS,0 		//0113 	1C03
		RET		 					//0114 	0004
		LDWI 	3H 			//0115 	2A03

		//;READY.c: 85: counter = 0;
		//;READY.c: 86: state = ST_DETECT;
		LJUMP 	209H 			//0116 	3A09

		//;READY.c: 93: SYS.Vbattery_Adc = GET_ADC_DATA(0);
		LDWI 	0H 			//0117 	2A00
		LCALL 	144H 			//0118 	3144
		BCR 	PCLATH,3 		//0119 	118A
		LDR 	55H,0 			//011A 	0855
		STR 	2AH 			//011B 	01AA
		LDR 	54H,0 			//011C 	0854
		STR 	29H 			//011D 	01A9

		//;READY.c: 94: SYS.Cadc_Value = Get_Cbattery_Stand_State(SYS.Cbattery_Adc);
		LDR 	2CH,0 			//011E 	082C
		STR 	53H 			//011F 	01D3
		LDR 	2BH,0 			//0120 	082B
		STR 	52H 			//0121 	01D2
		LCALL 	1EBH 			//0122 	31EB
		STR 	26H 			//0123 	01A6
		LDWI 	90H 			//0124 	2A90

		//;READY.c: 95: state = ST_PRE_ON;
		CLRR 	39H 			//0125 	0139

		//;READY.c: 96: counter = 400;
		STR 	32H 			//0126 	01B2
		LDWI 	1H 			//0127 	2A01
		STR 	33H 			//0128 	01B3

		//;READY.c: 97: break;
		RET		 					//0129 	0004
		LDR 	39H,0 			//012A 	0839
		XORWI 	0H 			//012B 	2600
		BTSC 	STATUS,2 		//012C 	1503
		LJUMP 	F0H 			//012D 	38F0
		XORWI 	1H 			//012E 	2601
		BTSC 	STATUS,2 		//012F 	1503
		LJUMP 	FFH 			//0130 	38FF
		XORWI 	3H 			//0131 	2603
		BTSC 	STATUS,2 		//0132 	1503
		LJUMP 	10BH 			//0133 	390B
		XORWI 	1H 			//0134 	2601
		BTSC 	STATUS,2 		//0135 	1503
		LJUMP 	117H 			//0136 	3917
		LJUMP 	138H 			//0137 	3938
		RET		 					//0138 	0004
		STR 	52H 			//0139 	01D2

		//;READY.c: 40: PB3 = (num == 1) ? 1 : 0;
		DECRSZ 	52H,0 		//013A 	0E52
		LJUMP 	140H 			//013B 	3940
		BCR 	STATUS,5 		//013C 	1283
		BCR 	STATUS,6 		//013D 	1303
		BSR 	6H,3 			//013E 	1986
		RET		 					//013F 	0004
		BCR 	STATUS,5 		//0140 	1283
		BCR 	STATUS,6 		//0141 	1303
		BCR 	6H,3 			//0142 	1186
		RET		 					//0143 	0004
		STR 	57H 			//0144 	01D7

		//;ADC.c: 88: unsigned char ADCON0Buff;
		//;ADC.c: 89: ADCON0Buff = ADCON0&0B00000111;
		BSR 	STATUS,6 		//0145 	1B03
		LDR 	13H,0 			//0146 	0813
		BCR 	STATUS,6 		//0147 	1303
		STR 	58H 			//0148 	01D8
		LDWI 	7H 			//0149 	2A07
		ANDWR 	58H,1 			//014A 	02D8

		//;ADC.c: 90: adcChannel<<=3;
		RLR 	57H,1 			//014B 	05D7
		RLR 	57H,1 			//014C 	05D7
		RLR 	57H,0 			//014D 	0557
		ANDWI 	F8H 			//014E 	24F8
		STR 	57H 			//014F 	01D7

		//;ADC.c: 91: ADCON0Buff |= adcChannel;
		IORWR 	58H,1 			//0150 	03D8

		//;ADC.c: 92: ADCON0 = ADCON0Buff;
		LDR 	58H,0 			//0151 	0858
		BSR 	STATUS,6 		//0152 	1B03
		STR 	13H 			//0153 	0193

		//;ADC.c: 93: DelayUs(10);
		LDWI 	AH 			//0154 	2A0A
		LCALL 	16AH 			//0155 	316A
		BCR 	PCLATH,3 		//0156 	118A

		//;ADC.c: 98: ADCON0 = ADCON0|0x02;
		BSR 	STATUS,6 		//0157 	1B03
		LDR 	13H,0 			//0158 	0813
		IORWI 	2H 			//0159 	2502
		STR 	13H 			//015A 	0193

		//;ADC.c: 100: __nop();
		NOP		 					//015B 	0000

		//;ADC.c: 101: __nop();
		NOP		 					//015C 	0000

		//;ADC.c: 102: while(ADCON0&0x02);
		BCR 	STATUS,5 		//015D 	1283
		BSR 	STATUS,6 		//015E 	1B03
		BTSC 	13H,1 			//015F 	1493
		LJUMP 	15DH 			//0160 	395D

		//;ADC.c: 106: return(unsigned int)(ADRESH<<8|ADRESL);
		LDR 	12H,0 			//0161 	0812
		BCR 	STATUS,6 		//0162 	1303
		STR 	55H 			//0163 	01D5
		CLRR 	54H 			//0164 	0154
		BSR 	STATUS,6 		//0165 	1B03
		LDR 	11H,0 			//0166 	0811
		BCR 	STATUS,6 		//0167 	1303
		IORWR 	54H,1 			//0168 	03D4
		RET		 					//0169 	0004
		BCR 	STATUS,6 		//016A 	1303
		STR 	52H 			//016B 	01D2

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	53H 			//016C 	0153
		LDR 	52H,0 			//016D 	0852
		SUBWR 	53H,0 			//016E 	0C53
		BTSC 	STATUS,0 		//016F 	1403
		RET		 					//0170 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//0171 	0000
		BCR 	STATUS,5 		//0172 	1283
		BCR 	STATUS,6 		//0173 	1303
		INCR	53H,1 			//0174 	09D3
		LJUMP 	16DH 			//0175 	396D

		//;INT.c: 18: TRISA |= 0B00010010;
		LDWI 	12H 			//0176 	2A12
		BSR 	STATUS,5 		//0177 	1A83
		BCR 	STATUS,6 		//0178 	1303
		IORWR 	5H,1 			//0179 	0385
		RET		 					//017A 	0004

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//017B 	2A71
		BSR 	STATUS,5 		//017C 	1A83
		STR 	FH 			//017D 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//017E 	2A01
		STR 	1H 			//017F 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//0180 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//0181 	1283
		CLRR 	5H 			//0182 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//0183 	2A13
		BSR 	STATUS,5 		//0184 	1A83
		STR 	5H 			//0185 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//0186 	1283
		CLRR 	6H 			//0187 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//0188 	2A29
		BSR 	STATUS,5 		//0189 	1A83
		STR 	6H 			//018A 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//018B 	1283
		CLRR 	7H 			//018C 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//018D 	2A03
		BSR 	STATUS,5 		//018E 	1A83
		STR 	7H 			//018F 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0190 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0191 	1283
		BSR 	STATUS,6 		//0192 	1B03
		CLRR 	DH 			//0193 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//0194 	1A83
		BCR 	STATUS,6 		//0195 	1303
		CLRR 	13H 			//0196 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//0197 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//0198 	1283
		BSR 	STATUS,6 		//0199 	1B03
		CLRR 	EH 			//019A 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//019B 	1A83
		BCR 	STATUS,6 		//019C 	1303
		CLRR 	DH 			//019D 	010D
		RET		 					//019E 	0004

		//;READY.c: 19: PORTC = 0B00000000;
		CLRR 	7H 			//019F 	0107

		//;READY.c: 20: TRISC &= ~0B00000001;
		BSR 	STATUS,5 		//01A0 	1A83
		BCR 	7H,0 			//01A1 	1007

		//;READY.c: 22: PORTB = 0B00000000;
		BCR 	STATUS,5 		//01A2 	1283
		CLRR 	6H 			//01A3 	0106

		//;READY.c: 23: TRISB &= ~0B00001000;
		BSR 	STATUS,5 		//01A4 	1A83
		BCR 	6H,3 			//01A5 	1186

		//;READY.c: 26: WPUC |= 0B00000001;
		BSR 	13H,0 			//01A6 	1813

		//;READY.c: 28: WPUB |= 0B00001000;
		BCR 	STATUS,5 		//01A7 	1283
		BSR 	STATUS,6 		//01A8 	1B03
		BSR 	DH,3 			//01A9 	198D
		RET		 					//01AA 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//01AB 	1283
		CLRR 	20H 			//01AC 	0120

		//;Power.c: 47: SYS.LB_Value = 0;
		CLRR 	21H 			//01AD 	0121

		//;Power.c: 49: SYS.Relay_Release = 0;
		CLRR 	23H 			//01AE 	0123

		//;Power.c: 51: SYS.KEY_Value = 0;
		CLRR 	24H 			//01AF 	0124

		//;Power.c: 53: SYS.Vadc_Value = 0;
		CLRR 	25H 			//01B0 	0125

		//;Power.c: 55: SYS.Cadc_Value = 0;
		CLRR 	26H 			//01B1 	0126

		//;Power.c: 59: SYS.READY_Value = 0;
		CLRR 	27H 			//01B2 	0127

		//;Power.c: 61: SYS.STANDBY_Value = 0;
		CLRR 	28H 			//01B3 	0128
		RET		 					//01B4 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//01B5 	2A04
		BSR 	STATUS,5 		//01B6 	1A83
		STR 	1H 			//01B7 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//01B8 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//01B9 	2A06
		BCR 	STATUS,5 		//01BA 	1283
		STR 	1H 			//01BB 	0181
		RET		 					//01BC 	0004

		//;INT.c: 43: Read_Int();
		LJUMP 	1C5H 			//01BD 	39C5

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//01BE 	1283
		CLRR 	7H 			//01BF 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//01C0 	1A83
		BCR 	7H,1 			//01C1 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//01C2 	1283
		BSR 	7H,1 			//01C3 	1887
		RET		 					//01C4 	0004

		//;INT.c: 33: SYS.INT_Value = (PA1 == 1) ? 0 : 1;
		BCR 	STATUS,0 		//01C5 	1003
		BTSS 	5H,1 			//01C6 	1C85
		BSR 	STATUS,0 		//01C7 	1803
		LDWI 	0H 			//01C8 	2A00
		BTSC 	STATUS,0 		//01C9 	1403
		LDWI 	1H 			//01CA 	2A01
		STR 	22H 			//01CB 	01A2
		RET		 					//01CC 	0004

		//;LB.C: 44: STNADBY_Open();
		LCALL 	1D2H 			//01CD 	31D2
		BCR 	PCLATH,3 		//01CE 	118A

		//;LB.C: 45: LB_Open();
		LCALL 	1DAH 			//01CF 	31DA
		BCR 	PCLATH,3 		//01D0 	118A

		//;LB.C: 46: LB_STANDBY_Close();
		LJUMP 	1E2H 			//01D1 	39E2

		//;LB.C: 17: if(SYS.STANDBY_Value)
		LDR 	28H,0 			//01D2 	0828
		BTSC 	STATUS,2 		//01D3 	1503
		RET		 					//01D4 	0004

		//;LB.C: 18: {
		//;LB.C: 19: TRISB &= ~0B00100000;
		BSR 	STATUS,5 		//01D5 	1A83
		BCR 	6H,5 			//01D6 	1286

		//;LB.C: 20: PB5 = 1;
		BCR 	STATUS,5 		//01D7 	1283
		BSR 	6H,5 			//01D8 	1A86
		RET		 					//01D9 	0004

		//;LB.C: 26: if(SYS.LB_Value)
		LDR 	21H,0 			//01DA 	0821
		BTSC 	STATUS,2 		//01DB 	1503
		RET		 					//01DC 	0004

		//;LB.C: 27: {
		//;LB.C: 28: TRISB &= ~0B00100000;
		BSR 	STATUS,5 		//01DD 	1A83
		BCR 	6H,5 			//01DE 	1286

		//;LB.C: 29: PB5 = 0;
		BCR 	STATUS,5 		//01DF 	1283
		BCR 	6H,5 			//01E0 	1286
		RET		 					//01E1 	0004

		//;LB.C: 35: if(SYS.STANDBY_Value == 0 && SYS.LB_Value == 0)
		LDR 	28H,0 			//01E2 	0828
		BTSS 	STATUS,2 		//01E3 	1D03
		RET		 					//01E4 	0004
		LDR 	21H,0 			//01E5 	0821
		BTSS 	STATUS,2 		//01E6 	1D03
		RET		 					//01E7 	0004

		//;LB.C: 36: {
		//;LB.C: 37: TRISB |= 0B00100000;
		BSR 	STATUS,5 		//01E8 	1A83
		BSR 	6H,5 			//01E9 	1A86
		RET		 					//01EA 	0004

		//;ADC.c: 182: static Battery_State current_state = STATE_NORMAL;
		//;ADC.c: 184: switch(current_state)
		LJUMP 	1FFH 			//01EB 	39FF

		//;ADC.c: 187: if(adc_value<1111)
		LDWI 	4H 			//01EC 	2A04
		SUBWR 	53H,0 			//01ED 	0C53
		LDWI 	57H 			//01EE 	2A57
		BTSC 	STATUS,2 		//01EF 	1503
		SUBWR 	52H,0 			//01F0 	0C52
		BTSC 	STATUS,0 		//01F1 	1403
		LJUMP 	207H 			//01F2 	3A07

		//;ADC.c: 188: {
		//;ADC.c: 189: current_state = STATE_UNDER_VOLTAGE;
		CLRR 	35H 			//01F3 	0135
		INCR	35H,1 			//01F4 	09B5
		LJUMP 	207H 			//01F5 	3A07

		//;ADC.c: 195: if (adc_value >= 1111)
		LDWI 	4H 			//01F6 	2A04
		SUBWR 	53H,0 			//01F7 	0C53
		LDWI 	57H 			//01F8 	2A57
		BTSC 	STATUS,2 		//01F9 	1503
		SUBWR 	52H,0 			//01FA 	0C52
		BTSS 	STATUS,0 		//01FB 	1C03
		LJUMP 	207H 			//01FC 	3A07

		//;ADC.c: 196: {
		//;ADC.c: 197: current_state = STATE_NORMAL;
		CLRR 	35H 			//01FD 	0135
		LJUMP 	207H 			//01FE 	3A07
		LDR 	35H,0 			//01FF 	0835
		XORWI 	0H 			//0200 	2600
		BTSC 	STATUS,2 		//0201 	1503
		LJUMP 	1ECH 			//0202 	39EC
		XORWI 	1H 			//0203 	2601
		BTSC 	STATUS,2 		//0204 	1503
		LJUMP 	1F6H 			//0205 	39F6
		LJUMP 	207H 			//0206 	3A07

		//;ADC.c: 202: return current_state;
		LDR 	35H,0 			//0207 	0835
		RET		 					//0208 	0004
		CLRR 	32H 			//0209 	0132
		CLRR 	33H 			//020A 	0133
		STR 	39H 			//020B 	01B9
		RET		 					//020C 	0004

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//020D 	168B
		BTSS 	INTCON,2 		//020E 	1D0B
		LJUMP 	26FH 			//020F 	3A6F

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//0210 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//0211 	2A06
		BCR 	STATUS,5 		//0212 	1283
		BCR 	STATUS,6 		//0213 	1303
		ADDWR 	1H,1 			//0214 	0B81

		//;Main.c: 33: uint8_t i;
		//;Main.c: 34: for(i = 0;i<TASK_MAX;i++)
		CLRR 	78H 			//0215 	0178

		//;Main.c: 35: {
		//;Main.c: 36: if(TaskCompany[i].Timer)
		LDWI 	6H 			//0216 	2A06
		STR 	70H 			//0217 	01F0
		LDR 	78H,0 			//0218 	0878
		LCALL 	278H 			//0219 	3278
		BCR 	PCLATH,3 		//021A 	118A
		ADDWI 	3BH 			//021B 	273B
		STR 	FSR 			//021C 	0184
		BCR 	STATUS,7 		//021D 	1383
		LDR 	INDF,0 			//021E 	0800
		STR 	73H 			//021F 	01F3
		INCR	FSR,1 			//0220 	0984
		LDR 	INDF,0 			//0221 	0800
		STR 	74H 			//0222 	01F4
		IORWR 	73H,0 			//0223 	0373
		BTSC 	STATUS,2 		//0224 	1503
		LJUMP 	26AH 			//0225 	3A6A

		//;Main.c: 37: {
		//;Main.c: 38: TaskCompany[i].Timer--;
		LDWI 	6H 			//0226 	2A06
		STR 	70H 			//0227 	01F0
		LDR 	78H,0 			//0228 	0878
		LCALL 	278H 			//0229 	3278
		BCR 	PCLATH,3 		//022A 	118A
		ADDWI 	3BH 			//022B 	273B
		STR 	FSR 			//022C 	0184
		LDWI 	1H 			//022D 	2A01
		BCR 	STATUS,7 		//022E 	1383
		SUBWR 	INDF,1 		//022F 	0C80
		INCRSZ 	FSR,1 		//0230 	0A84
		LDWI 	0H 			//0231 	2A00
		BTSS 	STATUS,0 		//0232 	1C03
		DECR 	INDF,1 			//0233 	0D80
		SUBWR 	INDF,1 		//0234 	0C80
		LDWI 	6H 			//0235 	2A06
		DECR 	FSR,1 			//0236 	0D84

		//;Main.c: 39: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//0237 	01F0
		LDR 	78H,0 			//0238 	0878
		LCALL 	278H 			//0239 	3278
		BCR 	PCLATH,3 		//023A 	118A
		ADDWI 	3BH 			//023B 	273B
		STR 	FSR 			//023C 	0184
		BCR 	STATUS,7 		//023D 	1383
		LDR 	INDF,0 			//023E 	0800
		STR 	73H 			//023F 	01F3
		INCR	FSR,1 			//0240 	0984
		LDR 	INDF,0 			//0241 	0800
		STR 	74H 			//0242 	01F4
		IORWR 	73H,0 			//0243 	0373
		BTSS 	STATUS,2 		//0244 	1D03
		LJUMP 	26AH 			//0245 	3A6A

		//;Main.c: 40: {
		//;Main.c: 41: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//0246 	2A06
		STR 	70H 			//0247 	01F0
		LDR 	78H,0 			//0248 	0878
		LCALL 	278H 			//0249 	3278
		BCR 	PCLATH,3 		//024A 	118A
		ADDWI 	3DH 			//024B 	273D
		STR 	FSR 			//024C 	0184
		BCR 	STATUS,7 		//024D 	1383
		LDR 	INDF,0 			//024E 	0800
		STR 	73H 			//024F 	01F3
		INCR	FSR,1 			//0250 	0984
		LDR 	INDF,0 			//0251 	0800
		STR 	74H 			//0252 	01F4
		LDWI 	6H 			//0253 	2A06
		STR 	70H 			//0254 	01F0
		LDR 	78H,0 			//0255 	0878
		LCALL 	278H 			//0256 	3278
		BCR 	PCLATH,3 		//0257 	118A
		ADDWI 	3BH 			//0258 	273B
		STR 	FSR 			//0259 	0184
		LDR 	73H,0 			//025A 	0873
		BCR 	STATUS,7 		//025B 	1383
		STR 	INDF 			//025C 	0180
		INCR	FSR,1 			//025D 	0984
		LDR 	74H,0 			//025E 	0874
		STR 	INDF 			//025F 	0180

		//;Main.c: 42: TaskCompany[i].Run = 1;
		LDWI 	6H 			//0260 	2A06
		STR 	70H 			//0261 	01F0
		LDR 	78H,0 			//0262 	0878
		LCALL 	278H 			//0263 	3278
		BCR 	PCLATH,3 		//0264 	118A
		ADDWI 	3AH 			//0265 	273A
		STR 	FSR 			//0266 	0184
		BCR 	STATUS,7 		//0267 	1383
		CLRR 	INDF 			//0268 	0100
		INCR	INDF,1 			//0269 	0980
		LDWI 	4H 			//026A 	2A04
		INCR	78H,1 			//026B 	09F8
		SUBWR 	78H,0 			//026C 	0C78
		BTSS 	STATUS,0 		//026D 	1C03
		LJUMP 	216H 			//026E 	3A16
		LDR 	77H,0 			//026F 	0877
		STR 	PCLATH 			//0270 	018A
		LDR 	76H,0 			//0271 	0876
		STR 	FSR 			//0272 	0184
		SWAPR 	75H,0 			//0273 	0775
		STR 	STATUS 			//0274 	0183
		SWAPR 	7EH,1 			//0275 	07FE
		SWAPR 	7EH,0 			//0276 	077E
		RETI		 			//0277 	0009
		STR 	71H 			//0278 	01F1
		CLRR 	72H 			//0279 	0172
		LDR 	70H,0 			//027A 	0870
		BTSC 	71H,0 			//027B 	1471
		ADDWR 	72H,1 			//027C 	0BF2
		BCR 	STATUS,0 		//027D 	1003
		RLR 	70H,1 			//027E 	05F0
		BCR 	STATUS,0 		//027F 	1003
		RRR	71H,1 			//0280 	06F1
		LDR 	71H,0 			//0281 	0871
		BTSS 	STATUS,2 		//0282 	1D03
		LJUMP 	27AH 			//0283 	3A7A
		LDR 	72H,0 			//0284 	0872
		RET		 					//0285 	0004

		//;Task.c: 38: BUZZTT_Task();
		LJUMP 	288H 			//0286 	3A88

		//;BUZZTT.c: 157: BUZZHH_Control();
		LJUMP 	288H 			//0287 	3A88

		//;BUZZTT.c: 62: if(SYS.LB_Value)
		LDR 	21H,0 			//0288 	0821
		BTSC 	STATUS,2 		//0289 	1503
		LJUMP 	28CH 			//028A 	3A8C

		//;BUZZTT.c: 63: {
		//;BUZZTT.c: 64: Hummer_Task();
		LJUMP 	28DH 			//028B 	3A8D

		//;BUZZTT.c: 65: }
		//;BUZZTT.c: 66: else
		//;BUZZTT.c: 67: {
		//;BUZZTT.c: 68: Key_Task();
		LJUMP 	296H 			//028C 	3A96

		//;BUZZTT.c: 145: Hummer_Init();
		LCALL 	291H 			//028D 	3291

		//;BUZZTT.c: 146: PC1 = 0;
		BCR 	STATUS,5 		//028E 	1283
		BCR 	7H,1 			//028F 	1087
		RET		 					//0290 	0004

		//;BUZZTT.c: 49: PORTC = 0B00000000;
		CLRR 	7H 			//0291 	0107

		//;BUZZTT.c: 50: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0292 	1A83
		BCR 	7H,1 			//0293 	1087

		//;BUZZTT.c: 52: WPUC &= ~0B00000010;
		BCR 	13H,1 			//0294 	1093
		RET		 					//0295 	0004

		//;BUZZTT.c: 133: KEY_Init();
		LCALL 	299H 			//0296 	3299
		BCR 	PCLATH,3 		//0297 	118A

		//;BUZZTT.c: 134: Key_Detect();
		LJUMP 	29EH 			//0298 	3A9E

		//;BUZZTT.c: 36: PORTC = 0B00000000;
		CLRR 	7H 			//0299 	0107

		//;BUZZTT.c: 37: TRISC |= 0B00000010;
		BSR 	STATUS,5 		//029A 	1A83
		BSR 	7H,1 			//029B 	1887

		//;BUZZTT.c: 39: WPUC |= 0B00000010;
		BSR 	13H,1 			//029C 	1893
		RET		 					//029D 	0004

		//;BUZZTT.c: 81: static uint8_t press_cnt = 0;
		//;BUZZTT.c: 82: static uint16_t long_cnt = 0;
		//;BUZZTT.c: 83: static uint8_t long_trig = 0;
		//;BUZZTT.c: 85: if(PC1 == 0)
		BCR 	STATUS,5 		//029E 	1283
		BTSC 	7H,1 			//029F 	1487
		LJUMP 	2CCH 			//02A0 	3ACC

		//;BUZZTT.c: 86: {
		//;BUZZTT.c: 88: if(press_cnt <4)
		LDWI 	4H 			//02A1 	2A04
		SUBWR 	38H,0 			//02A2 	0C38
		BTSC 	STATUS,0 		//02A3 	1403
		LJUMP 	2A7H 			//02A4 	3AA7

		//;BUZZTT.c: 89: {
		//;BUZZTT.c: 90: press_cnt ++;
		INCR	38H,1 			//02A5 	09B8

		//;BUZZTT.c: 91: }
		LJUMP 	2A9H 			//02A6 	3AA9

		//;BUZZTT.c: 92: else
		//;BUZZTT.c: 93: {
		//;BUZZTT.c: 94: KEY_Press = 1;
		CLRR 	79H 			//02A7 	0179
		INCR	79H,1 			//02A8 	09F9

		//;BUZZTT.c: 95: }
		//;BUZZTT.c: 98: if(KEY_Press && long_trig == 0 && long_cnt<300)
		LDR 	79H,0 			//02A9 	0879
		BTSC 	STATUS,2 		//02AA 	1503
		LJUMP 	2B9H 			//02AB 	3AB9
		LDR 	37H,0 			//02AC 	0837
		BTSS 	STATUS,2 		//02AD 	1D03
		LJUMP 	2B9H 			//02AE 	3AB9
		LDWI 	1H 			//02AF 	2A01
		SUBWR 	31H,0 			//02B0 	0C31
		LDWI 	2CH 			//02B1 	2A2C
		BTSC 	STATUS,2 		//02B2 	1503
		SUBWR 	30H,0 			//02B3 	0C30
		BTSC 	STATUS,0 		//02B4 	1403
		LJUMP 	2B9H 			//02B5 	3AB9

		//;BUZZTT.c: 99: {
		//;BUZZTT.c: 100: long_cnt++;
		INCR	30H,1 			//02B6 	09B0
		BTSC 	STATUS,2 		//02B7 	1503
		INCR	31H,1 			//02B8 	09B1

		//;BUZZTT.c: 101: }
		//;BUZZTT.c: 105: if(KEY_Press && long_cnt >= 300 && long_trig == 0)
		LDR 	79H,0 			//02B9 	0879
		BTSC 	STATUS,2 		//02BA 	1503
		RET		 					//02BB 	0004
		LDWI 	1H 			//02BC 	2A01
		SUBWR 	31H,0 			//02BD 	0C31
		LDWI 	2CH 			//02BE 	2A2C
		BTSC 	STATUS,2 		//02BF 	1503
		SUBWR 	30H,0 			//02C0 	0C30
		BTSS 	STATUS,0 		//02C1 	1C03
		RET		 					//02C2 	0004
		LDR 	37H,0 			//02C3 	0837
		BTSS 	STATUS,2 		//02C4 	1D03
		RET		 					//02C5 	0004

		//;BUZZTT.c: 106: {
		//;BUZZTT.c: 108: SYS.Long_Time_Change = 0;
		CLRR 	2DH 			//02C6 	012D

		//;BUZZTT.c: 109: SYS.KEY_Value = 1;
		CLRR 	24H 			//02C7 	0124
		INCR	24H,1 			//02C8 	09A4

		//;BUZZTT.c: 111: long_trig = 1;
		CLRR 	37H 			//02C9 	0137
		INCR	37H,1 			//02CA 	09B7
		RET		 					//02CB 	0004

		//;BUZZTT.c: 115: else
		//;BUZZTT.c: 116: {
		//;BUZZTT.c: 118: press_cnt = 0;
		CLRR 	38H 			//02CC 	0138

		//;BUZZTT.c: 119: KEY_Press = 0;
		CLRR 	79H 			//02CD 	0179

		//;BUZZTT.c: 120: long_cnt = 0;
		CLRR 	30H 			//02CE 	0130
		CLRR 	31H 			//02CF 	0131

		//;BUZZTT.c: 121: long_trig = 0;
		CLRR 	37H 			//02D0 	0137
		RET		 					//02D1 	0004

		//;Task.c: 71: unsigned char i;
		//;Task.c: 72: for(i = 0;i<TASK_MAX;i++)
		CLRR 	59H 			//02D2 	0159

		//;Task.c: 73: {
		//;Task.c: 74: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//02D3 	2A06
		STR 	52H 			//02D4 	01D2
		LDR 	59H,0 			//02D5 	0859
		LCALL 	2F8H 			//02D6 	32F8
		BCR 	PCLATH,3 		//02D7 	118A
		ADDWI 	3AH 			//02D8 	273A
		STR 	FSR 			//02D9 	0184
		BCR 	STATUS,7 		//02DA 	1383
		DECRSZ 	INDF,0 		//02DB 	0E00
		LJUMP 	2F1H 			//02DC 	3AF1

		//;Task.c: 75: {
		//;Task.c: 76: TaskCompany[i].Run = 0;
		LDWI 	6H 			//02DD 	2A06
		STR 	52H 			//02DE 	01D2
		LDR 	59H,0 			//02DF 	0859
		LCALL 	2F8H 			//02E0 	32F8
		BCR 	PCLATH,3 		//02E1 	118A
		ADDWI 	3AH 			//02E2 	273A
		STR 	FSR 			//02E3 	0184
		LDWI 	6H 			//02E4 	2A06
		BCR 	STATUS,7 		//02E5 	1383
		CLRR 	INDF 			//02E6 	0100

		//;Task.c: 77: TaskCompany[i].TaskHook();
		STR 	52H 			//02E7 	01D2
		LDR 	59H,0 			//02E8 	0859
		LCALL 	2F8H 			//02E9 	32F8
		ADDWI 	3FH 			//02EA 	273F
		STR 	FSR 			//02EB 	0184
		BCR 	STATUS,7 		//02EC 	1383
		LDR 	INDF,0 			//02ED 	0800
		BCR 	PCLATH,3 		//02EE 	118A
		LCALL 	3FH 			//02EF 	303F
		BCR 	PCLATH,3 		//02F0 	118A
		BCR 	STATUS,5 		//02F1 	1283
		LDWI 	4H 			//02F2 	2A04
		INCR	59H,1 			//02F3 	09D9
		SUBWR 	59H,0 			//02F4 	0C59
		BTSC 	STATUS,0 		//02F5 	1403
		RET		 					//02F6 	0004
		LJUMP 	2D3H 			//02F7 	3AD3
		STR 	54H 			//02F8 	01D4
		CLRR 	53H 			//02F9 	0153
		LDR 	52H,0 			//02FA 	0852
		BTSC 	54H,0 			//02FB 	1454
		ADDWR 	53H,1 			//02FC 	0BD3
		BCR 	STATUS,0 		//02FD 	1003
		RLR 	52H,1 			//02FE 	05D2
		BCR 	STATUS,0 		//02FF 	1003
		RRR	54H,1 			//0300 	06D4
		LDR 	54H,0 			//0301 	0854
		BTSS 	STATUS,2 		//0302 	1D03
		LJUMP 	2FAH 			//0303 	3AFA
		LDR 	53H,0 			//0304 	0853
		RET		 					//0305 	0004

		//;Task.c: 59: Timer0_Task();
		LJUMP 	307H 			//0306 	3B07

		//;Timer.c: 22: static uint8_t Long_Ready_Time = 0;
		//;Timer.c: 23: static uint8_t Short_Ready_Time = 0;
		//;Timer.c: 24: static uint8_t Ready_Delay_Time = 0;
		//;Timer.c: 26: if(SYS.Standby_Work_State == 1)
		DECRSZ 	20H,0 		//0307 	0E20
		LJUMP 	312H 			//0308 	3B12
		LDWI 	50H 			//0309 	2A50

		//;Timer.c: 27: {
		//;Timer.c: 28: Long_Ready_Time++;
		INCR	34H,1 			//030A 	09B4

		//;Timer.c: 30: if(Long_Ready_Time>=80)
		SUBWR 	34H,0 			//030B 	0C34
		BTSS 	STATUS,0 		//030C 	1C03
		RET		 					//030D 	0004

		//;Timer.c: 31: {
		//;Timer.c: 32: Long_Ready_Time = 0;
		CLRR 	34H 			//030E 	0134

		//;Timer.c: 33: SYS.Long_Time_Change = 1;
		CLRR 	2DH 			//030F 	012D
		INCR	2DH,1 			//0310 	09AD
		RET		 					//0311 	0004

		//;Timer.c: 37: else
		//;Timer.c: 38: {
		//;Timer.c: 41: Long_Ready_Time = 0;
		CLRR 	34H 			//0312 	0134
		RET		 					//0313 	0004
		CLRWDT	 			//0314 	0001
		CLRR 	INDF 			//0315 	0100
		INCR	FSR,1 			//0316 	0984
		XORWR 	FSR,0 			//0317 	0404
		BTSC 	STATUS,2 		//0318 	1503
		RETW 	0H 			//0319 	2100
		XORWR 	FSR,0 			//031A 	0404
		LJUMP 	315H 			//031B 	3B15

		//;Main.c: 56: Initial();
		BCR 	PCLATH,3 		//031C 	118A
		LCALL 	A8H 			//031D 	30A8
		BCR 	PCLATH,3 		//031E 	118A

		//;Main.c: 58: {
		//;Main.c: 59: Task_Process();
		BCR 	PCLATH,3 		//031F 	118A
		LCALL 	2D2H 			//0320 	32D2
		BCR 	PCLATH,3 		//0321 	118A
		LJUMP 	31FH 			//0322 	3B1F
		RET		 					//0323 	0004
			END
