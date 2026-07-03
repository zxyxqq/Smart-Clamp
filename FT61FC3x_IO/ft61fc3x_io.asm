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
		_SYS.Short_Ready_Time_Flag		EQU		42H
		_SYS.Vbattery_Adc		EQU		43H
		_SYS.Cbattery_Adc		EQU		45H
		_SYS.Long_Time_Change		EQU		47H
		_SYS.Delay_2s_Flag		EQU		48H
		_SYS.Cadc_Ready_Flag		EQU		49H
		_SYS		EQU		38H
		_KEY_Press		EQU		79H
		_PB5		EQU		06H
		_PC1		EQU		07H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_TaskCompany.Run		EQU		20H
		_TaskCompany.Timer		EQU		21H
		_TaskCompany.IvtTime		EQU		23H
		_TaskCompany.TaskHook		EQU		25H
		_TaskCompany		EQU		20H
//		Task_Process@i		EQU		51H
//		___bmul@multiplier		EQU		50H
//		___bmul@product		EQU		4FH
//		___bmul@multiplier		EQU		50H
//		___bmul@multiplicand		EQU		4EH
//		___bmul@multiplier		EQU		50H
//		Key_Detect@press_cnt		EQU		4DH
//		Key_Detect@long_cnt		EQU		4AH
//		Key_Detect@long_trig		EQU		4CH
//		RC_Control@value		EQU		4EH
//		RC_Control@value		EQU		4EH
//		RC_Control@value		EQU		4EH
//		DelayMs@Time		EQU		50H
//		DelayMs@b		EQU		52H
//		DelayMs@a		EQU		51H
//		DelayMs@Time		EQU		50H
//		DelayMs@Time		EQU		50H
//		DelayUs@Time		EQU		4EH
//		DelayUs@a		EQU		4FH
//		DelayUs@Time		EQU		4EH
//		DelayUs@Time		EQU		4EH
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
		LJUMP 	4CH 			//000C 	384C
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
		LDWI 	4H 			//002A 	2A04
		CLRR 	32H 			//002B 	0132
		STR 	33H 			//002C 	01B3
		LDWI 	A0H 			//002D 	2AA0
		CLRR 	34H 			//002E 	0134
		STR 	35H 			//002F 	01B5
		LDWI 	FH 			//0030 	2A0F
		STR 	36H 			//0031 	01B6
		LDWI 	1H 			//0032 	2A01
		STR 	37H 			//0033 	01B7
		LDWI 	38H 			//0034 	2A38
		BCR 	STATUS,7 		//0035 	1383
		STR 	FSR 			//0036 	0184
		LDWI 	4EH 			//0037 	2A4E
		BCR 	PCLATH,3 		//0038 	118A
		LCALL 	1AFH 			//0039 	31AF
		CLRR 	79H 			//003A 	0179
		CLRR 	STATUS 			//003B 	0103
		BCR 	PCLATH,3 		//003C 	118A
		LJUMP 	1B7H 			//003D 	39B7
		STR 	7FH 			//003E 	01FF
		LDWI 	0H 			//003F 	2A00
		STR 	PCLATH 			//0040 	018A
		LDR 	7FH,0 			//0041 	087F
		ADDWR 	PCL,1 			//0042 	0B82
		LJUMP 	43H 			//0043 	3843
		BCR 	PCLATH,3 		//0044 	118A
		LJUMP 	1C0H 			//0045 	39C0
		BCR 	PCLATH,3 		//0046 	118A
		LJUMP 	1BFH 			//0047 	39BF
		BCR 	PCLATH,3 		//0048 	118A
		LJUMP 	12EH 			//0049 	392E
		BCR 	PCLATH,3 		//004A 	118A
		LJUMP 	1BEH 			//004B 	39BE

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//004C 	168B
		BTSS 	INTCON,2 		//004D 	1D0B
		LJUMP 	55H 			//004E 	3855

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//004F 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//0050 	2A06
		BCR 	STATUS,5 		//0051 	1283
		BCR 	STATUS,6 		//0052 	1303
		ADDWR 	1H,1 			//0053 	0B81

		//;Main.c: 31: Task_Count();
		LCALL 	5EH 			//0054 	305E
		LDR 	78H,0 			//0055 	0878
		STR 	PCLATH 			//0056 	018A
		LDR 	77H,0 			//0057 	0877
		STR 	FSR 			//0058 	0184
		SWAPR 	76H,0 			//0059 	0776
		STR 	STATUS 			//005A 	0183
		SWAPR 	7EH,1 			//005B 	07FE
		SWAPR 	7EH,0 			//005C 	077E
		RETI		 			//005D 	0009

		//;Task.c: 138: uint8_t i;
		//;Task.c: 139: for(i = 0;i<TASK_MAX;i++)
		CLRR 	75H 			//005E 	0175

		//;Task.c: 140: {
		//;Task.c: 141: if(TaskCompany[i].Timer)
		LDWI 	6H 			//005F 	2A06
		STR 	70H 			//0060 	01F0
		LDR 	75H,0 			//0061 	0875
		LCALL 	B9H 			//0062 	30B9
		BCR 	PCLATH,3 		//0063 	118A
		ADDWI 	21H 			//0064 	2721
		STR 	FSR 			//0065 	0184
		BCR 	STATUS,7 		//0066 	1383
		LDR 	INDF,0 			//0067 	0800
		STR 	73H 			//0068 	01F3
		INCR	FSR,1 			//0069 	0984
		LDR 	INDF,0 			//006A 	0800
		STR 	74H 			//006B 	01F4
		IORWR 	73H,0 			//006C 	0373
		BTSC 	STATUS,2 		//006D 	1503
		LJUMP 	B3H 			//006E 	38B3

		//;Task.c: 142: {
		//;Task.c: 143: TaskCompany[i].Timer--;
		LDWI 	6H 			//006F 	2A06
		STR 	70H 			//0070 	01F0
		LDR 	75H,0 			//0071 	0875
		LCALL 	B9H 			//0072 	30B9
		BCR 	PCLATH,3 		//0073 	118A
		ADDWI 	21H 			//0074 	2721
		STR 	FSR 			//0075 	0184
		LDWI 	1H 			//0076 	2A01
		BCR 	STATUS,7 		//0077 	1383
		SUBWR 	INDF,1 		//0078 	0C80
		INCRSZ 	FSR,1 		//0079 	0A84
		LDWI 	0H 			//007A 	2A00
		BTSS 	STATUS,0 		//007B 	1C03
		DECR 	INDF,1 			//007C 	0D80
		SUBWR 	INDF,1 		//007D 	0C80
		LDWI 	6H 			//007E 	2A06
		DECR 	FSR,1 			//007F 	0D84

		//;Task.c: 144: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//0080 	01F0
		LDR 	75H,0 			//0081 	0875
		LCALL 	B9H 			//0082 	30B9
		BCR 	PCLATH,3 		//0083 	118A
		ADDWI 	21H 			//0084 	2721
		STR 	FSR 			//0085 	0184
		BCR 	STATUS,7 		//0086 	1383
		LDR 	INDF,0 			//0087 	0800
		STR 	73H 			//0088 	01F3
		INCR	FSR,1 			//0089 	0984
		LDR 	INDF,0 			//008A 	0800
		STR 	74H 			//008B 	01F4
		IORWR 	73H,0 			//008C 	0373
		BTSS 	STATUS,2 		//008D 	1D03
		LJUMP 	B3H 			//008E 	38B3

		//;Task.c: 145: {
		//;Task.c: 146: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//008F 	2A06
		STR 	70H 			//0090 	01F0
		LDR 	75H,0 			//0091 	0875
		LCALL 	B9H 			//0092 	30B9
		BCR 	PCLATH,3 		//0093 	118A
		ADDWI 	23H 			//0094 	2723
		STR 	FSR 			//0095 	0184
		BCR 	STATUS,7 		//0096 	1383
		LDR 	INDF,0 			//0097 	0800
		STR 	73H 			//0098 	01F3
		INCR	FSR,1 			//0099 	0984
		LDR 	INDF,0 			//009A 	0800
		STR 	74H 			//009B 	01F4
		LDWI 	6H 			//009C 	2A06
		STR 	70H 			//009D 	01F0
		LDR 	75H,0 			//009E 	0875
		LCALL 	B9H 			//009F 	30B9
		BCR 	PCLATH,3 		//00A0 	118A
		ADDWI 	21H 			//00A1 	2721
		STR 	FSR 			//00A2 	0184
		LDR 	73H,0 			//00A3 	0873
		BCR 	STATUS,7 		//00A4 	1383
		STR 	INDF 			//00A5 	0180
		INCR	FSR,1 			//00A6 	0984
		LDR 	74H,0 			//00A7 	0874
		STR 	INDF 			//00A8 	0180

		//;Task.c: 147: TaskCompany[i].Run = 1;
		LDWI 	6H 			//00A9 	2A06
		STR 	70H 			//00AA 	01F0
		LDR 	75H,0 			//00AB 	0875
		LCALL 	B9H 			//00AC 	30B9
		BCR 	PCLATH,3 		//00AD 	118A
		ADDWI 	20H 			//00AE 	2720
		STR 	FSR 			//00AF 	0184
		BCR 	STATUS,7 		//00B0 	1383
		CLRR 	INDF 			//00B1 	0100
		INCR	INDF,1 			//00B2 	0980
		LDWI 	4H 			//00B3 	2A04
		INCR	75H,1 			//00B4 	09F5
		SUBWR 	75H,0 			//00B5 	0C75
		BTSC 	STATUS,0 		//00B6 	1403
		RET		 					//00B7 	0004
		LJUMP 	5FH 			//00B8 	385F
		STR 	71H 			//00B9 	01F1
		CLRR 	72H 			//00BA 	0172
		LDR 	70H,0 			//00BB 	0870
		BTSC 	71H,0 			//00BC 	1471
		ADDWR 	72H,1 			//00BD 	0BF2
		BCR 	STATUS,0 		//00BE 	1003
		RLR 	70H,1 			//00BF 	05F0
		BCR 	STATUS,0 		//00C0 	1003
		RRR	71H,1 			//00C1 	06F1
		LDR 	71H,0 			//00C2 	0871
		BTSS 	STATUS,2 		//00C3 	1D03
		LJUMP 	BBH 			//00C4 	38BB
		LDR 	72H,0 			//00C5 	0872
		RET		 					//00C6 	0004

		//;App.c: 13: DelayMs(20);
		LDWI 	14H 			//00C7 	2A14
		LCALL 	D4H 			//00C8 	30D4
		BCR 	PCLATH,3 		//00C9 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	F0H 			//00CA 	30F0
		BCR 	PCLATH,3 		//00CB 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	114H 			//00CC 	3114
		BCR 	PCLATH,3 		//00CD 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	120H 			//00CE 	3120
		BCR 	PCLATH,3 		//00CF 	118A

		//;App.c: 23: BUZZTT_Init();
		LCALL 	128H 			//00D0 	3128

		//;App.c: 30: T0IE = 1;
		BSR 	INTCON,5 		//00D1 	1A8B

		//;App.c: 32: GIE = 1;
		BSR 	INTCON,7 		//00D2 	1B8B
		RET		 					//00D3 	0004
		STR 	50H 			//00D4 	01D0

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	51H 			//00D5 	0151
		LDR 	50H,0 			//00D6 	0850
		SUBWR 	51H,0 			//00D7 	0C51
		BTSC 	STATUS,0 		//00D8 	1403
		RET		 					//00D9 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	52H 			//00DA 	0152

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00DB 	2AC5
		LCALL 	E5H 			//00DC 	30E5
		BCR 	PCLATH,3 		//00DD 	118A
		LDWI 	5H 			//00DE 	2A05
		INCR	52H,1 			//00DF 	09D2
		SUBWR 	52H,0 			//00E0 	0C52
		BTSS 	STATUS,0 		//00E1 	1C03
		LJUMP 	DBH 			//00E2 	38DB
		INCR	51H,1 			//00E3 	09D1
		LJUMP 	D6H 			//00E4 	38D6
		STR 	4EH 			//00E5 	01CE

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	4FH 			//00E6 	014F
		LDR 	4EH,0 			//00E7 	084E
		SUBWR 	4FH,0 			//00E8 	0C4F
		BTSC 	STATUS,0 		//00E9 	1403
		RET		 					//00EA 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//00EB 	0000
		BCR 	STATUS,5 		//00EC 	1283
		BCR 	STATUS,6 		//00ED 	1303
		INCR	4FH,1 			//00EE 	09CF
		LJUMP 	E7H 			//00EF 	38E7

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//00F0 	2A71
		BSR 	STATUS,5 		//00F1 	1A83
		STR 	FH 			//00F2 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//00F3 	2A01
		STR 	1H 			//00F4 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//00F5 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//00F6 	1283
		CLRR 	5H 			//00F7 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//00F8 	2A13
		BSR 	STATUS,5 		//00F9 	1A83
		STR 	5H 			//00FA 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//00FB 	1283
		CLRR 	6H 			//00FC 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//00FD 	2A29
		BSR 	STATUS,5 		//00FE 	1A83
		STR 	6H 			//00FF 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//0100 	1283
		CLRR 	7H 			//0101 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//0102 	2A03
		BSR 	STATUS,5 		//0103 	1A83
		STR 	7H 			//0104 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0105 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0106 	1283
		BSR 	STATUS,6 		//0107 	1B03
		CLRR 	DH 			//0108 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//0109 	1A83
		BCR 	STATUS,6 		//010A 	1303
		CLRR 	13H 			//010B 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//010C 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//010D 	1283
		BSR 	STATUS,6 		//010E 	1B03
		CLRR 	EH 			//010F 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//0110 	1A83
		BCR 	STATUS,6 		//0111 	1303
		CLRR 	DH 			//0112 	010D
		RET		 					//0113 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//0114 	1283
		CLRR 	38H 			//0115 	0138

		//;Power.c: 46: SYS.HT_Value = 0;
		CLRR 	39H 			//0116 	0139

		//;Power.c: 48: SYS.LB_Value = 0;
		CLRR 	3AH 			//0117 	013A

		//;Power.c: 52: SYS.Relay_Release = 0;
		CLRR 	3CH 			//0118 	013C

		//;Power.c: 54: SYS.RC_Value = 0;
		CLRR 	3BH 			//0119 	013B

		//;Power.c: 56: SYS.KEY_Value = 0;
		CLRR 	3DH 			//011A 	013D

		//;Power.c: 58: SYS.Vadc_Value = 0;
		CLRR 	3EH 			//011B 	013E

		//;Power.c: 60: SYS.Cadc_Value = 0;
		CLRR 	3FH 			//011C 	013F

		//;Power.c: 64: SYS.READY_Value = 0;
		CLRR 	40H 			//011D 	0140

		//;Power.c: 66: SYS.STANDBY_Value = 0;
		CLRR 	41H 			//011E 	0141
		RET		 					//011F 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//0120 	2A04
		BSR 	STATUS,5 		//0121 	1A83
		STR 	1H 			//0122 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//0123 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//0124 	2A06
		BCR 	STATUS,5 		//0125 	1283
		STR 	1H 			//0126 	0181
		RET		 					//0127 	0004

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		CLRR 	7H 			//0128 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0129 	1A83
		BCR 	7H,1 			//012A 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//012B 	1283
		BSR 	7H,1 			//012C 	1887
		RET		 					//012D 	0004

		//;Task.c: 77: BUZZTT_Task();
		LJUMP 	131H 			//012E 	3931

		//;BUZZTT.c: 158: BUZZHH_Control();
		LJUMP 	131H 			//012F 	3931

		//;BUZZTT.c: 68: Key_Task();
		LJUMP 	131H 			//0130 	3931

		//;BUZZTT.c: 134: KEY_Init();
		LCALL 	134H 			//0131 	3134
		BCR 	PCLATH,3 		//0132 	118A

		//;BUZZTT.c: 135: Key_Detect();
		LJUMP 	139H 			//0133 	3939

		//;BUZZTT.c: 36: PORTC = 0B00000000;
		CLRR 	7H 			//0134 	0107

		//;BUZZTT.c: 37: TRISC |= 0B00000010;
		BSR 	STATUS,5 		//0135 	1A83
		BSR 	7H,1 			//0136 	1887

		//;BUZZTT.c: 39: WPUC |= 0B00000010;
		BSR 	13H,1 			//0137 	1893
		RET		 					//0138 	0004

		//;BUZZTT.c: 81: static uint8_t press_cnt = 0;
		//;BUZZTT.c: 82: static uint16_t long_cnt = 0;
		//;BUZZTT.c: 83: static uint8_t long_trig = 0;
		//;BUZZTT.c: 85: if(PC1 == 0)
		BCR 	STATUS,5 		//0139 	1283
		BTSC 	7H,1 			//013A 	1487
		LJUMP 	168H 			//013B 	3968

		//;BUZZTT.c: 86: {
		//;BUZZTT.c: 88: if(press_cnt <4)
		LDWI 	4H 			//013C 	2A04
		SUBWR 	4DH,0 			//013D 	0C4D
		BTSC 	STATUS,0 		//013E 	1403
		LJUMP 	142H 			//013F 	3942

		//;BUZZTT.c: 89: {
		//;BUZZTT.c: 90: press_cnt ++;
		INCR	4DH,1 			//0140 	09CD

		//;BUZZTT.c: 91: }
		LJUMP 	144H 			//0141 	3944

		//;BUZZTT.c: 92: else
		//;BUZZTT.c: 93: {
		//;BUZZTT.c: 94: KEY_Press = 1;
		CLRR 	79H 			//0142 	0179
		INCR	79H,1 			//0143 	09F9

		//;BUZZTT.c: 95: }
		//;BUZZTT.c: 98: if(KEY_Press && long_trig == 0 && long_cnt<300)
		LDR 	79H,0 			//0144 	0879
		BTSC 	STATUS,2 		//0145 	1503
		LJUMP 	154H 			//0146 	3954
		LDR 	4CH,0 			//0147 	084C
		BTSS 	STATUS,2 		//0148 	1D03
		LJUMP 	154H 			//0149 	3954
		LDWI 	1H 			//014A 	2A01
		SUBWR 	4BH,0 			//014B 	0C4B
		LDWI 	2CH 			//014C 	2A2C
		BTSC 	STATUS,2 		//014D 	1503
		SUBWR 	4AH,0 			//014E 	0C4A
		BTSC 	STATUS,0 		//014F 	1403
		LJUMP 	154H 			//0150 	3954

		//;BUZZTT.c: 99: {
		//;BUZZTT.c: 100: long_cnt++;
		INCR	4AH,1 			//0151 	09CA
		BTSC 	STATUS,2 		//0152 	1503
		INCR	4BH,1 			//0153 	09CB

		//;BUZZTT.c: 101: }
		//;BUZZTT.c: 105: if(KEY_Press && long_cnt >= 300 && long_trig == 0)
		LDR 	79H,0 			//0154 	0879
		BTSC 	STATUS,2 		//0155 	1503
		RET		 					//0156 	0004
		LDWI 	1H 			//0157 	2A01
		SUBWR 	4BH,0 			//0158 	0C4B
		LDWI 	2CH 			//0159 	2A2C
		BTSC 	STATUS,2 		//015A 	1503
		SUBWR 	4AH,0 			//015B 	0C4A
		BTSS 	STATUS,0 		//015C 	1C03
		RET		 					//015D 	0004
		LDR 	4CH,0 			//015E 	084C
		BTSS 	STATUS,2 		//015F 	1D03
		RET		 					//0160 	0004
		LDWI 	0H 			//0161 	2A00

		//;BUZZTT.c: 106: {
		//;BUZZTT.c: 108: SYS.Long_Time_Change = 0;
		CLRR 	47H 			//0162 	0147

		//;BUZZTT.c: 109: SYS.KEY_Value = 1;
		CLRR 	3DH 			//0163 	013D
		INCR	3DH,1 			//0164 	09BD

		//;BUZZTT.c: 111: long_trig = 1;
		CLRR 	4CH 			//0165 	014C
		INCR	4CH,1 			//0166 	09CC

		//;BUZZTT.c: 112: RC_Control(0);
		LJUMP 	16EH 			//0167 	396E

		//;BUZZTT.c: 116: else
		//;BUZZTT.c: 117: {
		//;BUZZTT.c: 119: press_cnt = 0;
		CLRR 	4DH 			//0168 	014D

		//;BUZZTT.c: 120: KEY_Press = 0;
		CLRR 	79H 			//0169 	0179

		//;BUZZTT.c: 121: long_cnt = 0;
		CLRR 	4AH 			//016A 	014A
		CLRR 	4BH 			//016B 	014B

		//;BUZZTT.c: 122: long_trig = 0;
		CLRR 	4CH 			//016C 	014C
		RET		 					//016D 	0004
		STR 	4EH 			//016E 	01CE

		//;RC.c: 45: TRISB &= ~0B00100000;
		BSR 	STATUS,5 		//016F 	1A83
		BCR 	6H,5 			//0170 	1286

		//;RC.c: 49: PB5 = (value == 1) ? 1 : 0;
		BCR 	STATUS,5 		//0171 	1283
		DECRSZ 	4EH,0 		//0172 	0E4E
		LJUMP 	178H 			//0173 	3978
		BCR 	STATUS,5 		//0174 	1283
		BCR 	STATUS,6 		//0175 	1303
		BSR 	6H,5 			//0176 	1A86
		RET		 					//0177 	0004
		BCR 	STATUS,5 		//0178 	1283
		BCR 	STATUS,6 		//0179 	1303
		BCR 	6H,5 			//017A 	1286
		RET		 					//017B 	0004

		//;Task.c: 121: unsigned char i;
		//;Task.c: 122: for(i = 0;i<TASK_MAX;i++)
		CLRR 	51H 			//017C 	0151

		//;Task.c: 123: {
		//;Task.c: 124: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//017D 	2A06
		STR 	4EH 			//017E 	01CE
		LDR 	51H,0 			//017F 	0851
		LCALL 	1A1H 			//0180 	31A1
		BCR 	PCLATH,3 		//0181 	118A
		ADDWI 	20H 			//0182 	2720
		STR 	FSR 			//0183 	0184
		BCR 	STATUS,7 		//0184 	1383
		DECRSZ 	INDF,0 		//0185 	0E00
		LJUMP 	19BH 			//0186 	399B

		//;Task.c: 125: {
		//;Task.c: 126: TaskCompany[i].Run = 0;
		LDWI 	6H 			//0187 	2A06
		STR 	4EH 			//0188 	01CE
		LDR 	51H,0 			//0189 	0851
		LCALL 	1A1H 			//018A 	31A1
		BCR 	PCLATH,3 		//018B 	118A
		ADDWI 	20H 			//018C 	2720
		STR 	FSR 			//018D 	0184
		LDWI 	6H 			//018E 	2A06
		BCR 	STATUS,7 		//018F 	1383
		CLRR 	INDF 			//0190 	0100

		//;Task.c: 127: TaskCompany[i].TaskHook();
		STR 	4EH 			//0191 	01CE
		LDR 	51H,0 			//0192 	0851
		LCALL 	1A1H 			//0193 	31A1
		ADDWI 	25H 			//0194 	2725
		STR 	FSR 			//0195 	0184
		BCR 	STATUS,7 		//0196 	1383
		LDR 	INDF,0 			//0197 	0800
		BCR 	PCLATH,3 		//0198 	118A
		LCALL 	3EH 			//0199 	303E
		BCR 	PCLATH,3 		//019A 	118A
		LDWI 	4H 			//019B 	2A04
		INCR	51H,1 			//019C 	09D1
		SUBWR 	51H,0 			//019D 	0C51
		BTSC 	STATUS,0 		//019E 	1403
		RET		 					//019F 	0004
		LJUMP 	17DH 			//01A0 	397D
		STR 	50H 			//01A1 	01D0
		CLRR 	4FH 			//01A2 	014F
		LDR 	4EH,0 			//01A3 	084E
		BTSC 	50H,0 			//01A4 	1450
		ADDWR 	4FH,1 			//01A5 	0BCF
		BCR 	STATUS,0 		//01A6 	1003
		RLR 	4EH,1 			//01A7 	05CE
		BCR 	STATUS,0 		//01A8 	1003
		RRR	50H,1 			//01A9 	06D0
		LDR 	50H,0 			//01AA 	0850
		BTSS 	STATUS,2 		//01AB 	1D03
		LJUMP 	1A3H 			//01AC 	39A3
		LDR 	4FH,0 			//01AD 	084F
		RET		 					//01AE 	0004
		CLRWDT	 			//01AF 	0001
		CLRR 	INDF 			//01B0 	0100
		INCR	FSR,1 			//01B1 	0984
		XORWR 	FSR,0 			//01B2 	0404
		BTSC 	STATUS,2 		//01B3 	1503
		RETW 	0H 			//01B4 	2100
		XORWR 	FSR,0 			//01B5 	0404
		LJUMP 	1B0H 			//01B6 	39B0

		//;Main.c: 42: Initial();
		BCR 	PCLATH,3 		//01B7 	118A
		LCALL 	C7H 			//01B8 	30C7
		BCR 	PCLATH,3 		//01B9 	118A

		//;Main.c: 44: {
		//;Main.c: 45: Task_Process();
		BCR 	PCLATH,3 		//01BA 	118A
		LCALL 	17CH 			//01BB 	317C
		BCR 	PCLATH,3 		//01BC 	118A
		LJUMP 	1BAH 			//01BD 	39BA
		RET		 					//01BE 	0004
		RET		 					//01BF 	0004
		RET		 					//01C0 	0004
			END
