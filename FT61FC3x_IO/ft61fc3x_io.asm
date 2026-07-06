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
		_KEY_Press		EQU		79H
		_PC1		EQU		07H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_TaskCompany.Run		EQU		20H
		_TaskCompany.Timer		EQU		21H
		_TaskCompany.IvtTime		EQU		23H
		_TaskCompany.TaskHook		EQU		25H
		_TaskCompany		EQU		20H
//		Task_Process@i		EQU		50H
//		___bmul@multiplier		EQU		4FH
//		___bmul@product		EQU		4EH
//		___bmul@multiplier		EQU		4FH
//		___bmul@multiplicand		EQU		4DH
//		___bmul@multiplier		EQU		4FH
//		Key_Detect@press_cnt		EQU		4CH
//		Key_Detect@long_cnt		EQU		49H
//		Key_Detect@long_trig		EQU		4BH
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
		LJUMP 	4DH 			//000C 	384D
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
		LCALL 	1C2H 			//003A 	31C2
		CLRR 	79H 			//003B 	0179
		CLRR 	STATUS 			//003C 	0103
		BCR 	PCLATH,3 		//003D 	118A
		LJUMP 	1CAH 			//003E 	39CA
		STR 	7FH 			//003F 	01FF
		LDWI 	0H 			//0040 	2A00
		STR 	PCLATH 			//0041 	018A
		LDR 	7FH,0 			//0042 	087F
		ADDWR 	PCL,1 			//0043 	0B82
		LJUMP 	44H 			//0044 	3844
		BCR 	PCLATH,3 		//0045 	118A
		LJUMP 	1D3H 			//0046 	39D3
		BCR 	PCLATH,3 		//0047 	118A
		LJUMP 	1D2H 			//0048 	39D2
		BCR 	PCLATH,3 		//0049 	118A
		LJUMP 	13EH 			//004A 	393E
		BCR 	PCLATH,3 		//004B 	118A
		LJUMP 	1D1H 			//004C 	39D1

		//;Main.c: 26: if(T0IE && T0IF)
		BTSC 	INTCON,5 		//004D 	168B
		BTSS 	INTCON,2 		//004E 	1D0B
		LJUMP 	56H 			//004F 	3856

		//;Main.c: 27: {
		//;Main.c: 28: T0IF = 0;
		BCR 	INTCON,2 		//0050 	110B

		//;Main.c: 29: TMR0 += 6;
		LDWI 	6H 			//0051 	2A06
		BCR 	STATUS,5 		//0052 	1283
		BCR 	STATUS,6 		//0053 	1303
		ADDWR 	1H,1 			//0054 	0B81

		//;Main.c: 31: Task_Count();
		LCALL 	5FH 			//0055 	305F
		LDR 	78H,0 			//0056 	0878
		STR 	PCLATH 			//0057 	018A
		LDR 	77H,0 			//0058 	0877
		STR 	FSR 			//0059 	0184
		SWAPR 	76H,0 			//005A 	0776
		STR 	STATUS 			//005B 	0183
		SWAPR 	7EH,1 			//005C 	07FE
		SWAPR 	7EH,0 			//005D 	077E
		RETI		 			//005E 	0009

		//;Task.c: 94: uint8_t i;
		//;Task.c: 95: for(i = 0;i<TASK_MAX;i++)
		CLRR 	75H 			//005F 	0175

		//;Task.c: 96: {
		//;Task.c: 97: if(TaskCompany[i].Timer)
		LDWI 	6H 			//0060 	2A06
		STR 	70H 			//0061 	01F0
		LDR 	75H,0 			//0062 	0875
		LCALL 	BAH 			//0063 	30BA
		BCR 	PCLATH,3 		//0064 	118A
		ADDWI 	21H 			//0065 	2721
		STR 	FSR 			//0066 	0184
		BCR 	STATUS,7 		//0067 	1383
		LDR 	INDF,0 			//0068 	0800
		STR 	73H 			//0069 	01F3
		INCR	FSR,1 			//006A 	0984
		LDR 	INDF,0 			//006B 	0800
		STR 	74H 			//006C 	01F4
		IORWR 	73H,0 			//006D 	0373
		BTSC 	STATUS,2 		//006E 	1503
		LJUMP 	B4H 			//006F 	38B4

		//;Task.c: 98: {
		//;Task.c: 99: TaskCompany[i].Timer--;
		LDWI 	6H 			//0070 	2A06
		STR 	70H 			//0071 	01F0
		LDR 	75H,0 			//0072 	0875
		LCALL 	BAH 			//0073 	30BA
		BCR 	PCLATH,3 		//0074 	118A
		ADDWI 	21H 			//0075 	2721
		STR 	FSR 			//0076 	0184
		LDWI 	1H 			//0077 	2A01
		BCR 	STATUS,7 		//0078 	1383
		SUBWR 	INDF,1 		//0079 	0C80
		INCRSZ 	FSR,1 		//007A 	0A84
		LDWI 	0H 			//007B 	2A00
		BTSS 	STATUS,0 		//007C 	1C03
		DECR 	INDF,1 			//007D 	0D80
		SUBWR 	INDF,1 		//007E 	0C80
		LDWI 	6H 			//007F 	2A06
		DECR 	FSR,1 			//0080 	0D84

		//;Task.c: 100: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//0081 	01F0
		LDR 	75H,0 			//0082 	0875
		LCALL 	BAH 			//0083 	30BA
		BCR 	PCLATH,3 		//0084 	118A
		ADDWI 	21H 			//0085 	2721
		STR 	FSR 			//0086 	0184
		BCR 	STATUS,7 		//0087 	1383
		LDR 	INDF,0 			//0088 	0800
		STR 	73H 			//0089 	01F3
		INCR	FSR,1 			//008A 	0984
		LDR 	INDF,0 			//008B 	0800
		STR 	74H 			//008C 	01F4
		IORWR 	73H,0 			//008D 	0373
		BTSS 	STATUS,2 		//008E 	1D03
		LJUMP 	B4H 			//008F 	38B4

		//;Task.c: 101: {
		//;Task.c: 102: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//0090 	2A06
		STR 	70H 			//0091 	01F0
		LDR 	75H,0 			//0092 	0875
		LCALL 	BAH 			//0093 	30BA
		BCR 	PCLATH,3 		//0094 	118A
		ADDWI 	23H 			//0095 	2723
		STR 	FSR 			//0096 	0184
		BCR 	STATUS,7 		//0097 	1383
		LDR 	INDF,0 			//0098 	0800
		STR 	73H 			//0099 	01F3
		INCR	FSR,1 			//009A 	0984
		LDR 	INDF,0 			//009B 	0800
		STR 	74H 			//009C 	01F4
		LDWI 	6H 			//009D 	2A06
		STR 	70H 			//009E 	01F0
		LDR 	75H,0 			//009F 	0875
		LCALL 	BAH 			//00A0 	30BA
		BCR 	PCLATH,3 		//00A1 	118A
		ADDWI 	21H 			//00A2 	2721
		STR 	FSR 			//00A3 	0184
		LDR 	73H,0 			//00A4 	0873
		BCR 	STATUS,7 		//00A5 	1383
		STR 	INDF 			//00A6 	0180
		INCR	FSR,1 			//00A7 	0984
		LDR 	74H,0 			//00A8 	0874
		STR 	INDF 			//00A9 	0180

		//;Task.c: 103: TaskCompany[i].Run = 1;
		LDWI 	6H 			//00AA 	2A06
		STR 	70H 			//00AB 	01F0
		LDR 	75H,0 			//00AC 	0875
		LCALL 	BAH 			//00AD 	30BA
		BCR 	PCLATH,3 		//00AE 	118A
		ADDWI 	20H 			//00AF 	2720
		STR 	FSR 			//00B0 	0184
		BCR 	STATUS,7 		//00B1 	1383
		CLRR 	INDF 			//00B2 	0100
		INCR	INDF,1 			//00B3 	0980
		LDWI 	4H 			//00B4 	2A04
		INCR	75H,1 			//00B5 	09F5
		SUBWR 	75H,0 			//00B6 	0C75
		BTSC 	STATUS,0 		//00B7 	1403
		RET		 					//00B8 	0004
		LJUMP 	60H 			//00B9 	3860
		STR 	71H 			//00BA 	01F1
		CLRR 	72H 			//00BB 	0172
		LDR 	70H,0 			//00BC 	0870
		BTSC 	71H,0 			//00BD 	1471
		ADDWR 	72H,1 			//00BE 	0BF2
		BCR 	STATUS,0 		//00BF 	1003
		RLR 	70H,1 			//00C0 	05F0
		BCR 	STATUS,0 		//00C1 	1003
		RRR	71H,1 			//00C2 	06F1
		LDR 	71H,0 			//00C3 	0871
		BTSS 	STATUS,2 		//00C4 	1D03
		LJUMP 	BCH 			//00C5 	38BC
		LDR 	72H,0 			//00C6 	0872
		RET		 					//00C7 	0004

		//;App.c: 13: DelayMs(20);
		LDWI 	14H 			//00C8 	2A14
		LCALL 	D7H 			//00C9 	30D7
		BCR 	PCLATH,3 		//00CA 	118A

		//;App.c: 14: POWER_INITIAL();
		LCALL 	F3H 			//00CB 	30F3
		BCR 	PCLATH,3 		//00CC 	118A

		//;App.c: 15: SYS_Initial();
		LCALL 	123H 			//00CD 	3123
		BCR 	PCLATH,3 		//00CE 	118A

		//;App.c: 16: Timer0_Init();
		LCALL 	12FH 			//00CF 	312F
		BCR 	PCLATH,3 		//00D0 	118A

		//;App.c: 19: Ready_Init();
		LCALL 	117H 			//00D1 	3117
		BCR 	PCLATH,3 		//00D2 	118A

		//;App.c: 23: BUZZTT_Init();
		LCALL 	137H 			//00D3 	3137

		//;App.c: 30: T0IE = 1;
		BSR 	INTCON,5 		//00D4 	1A8B

		//;App.c: 32: GIE = 1;
		BSR 	INTCON,7 		//00D5 	1B8B
		RET		 					//00D6 	0004
		STR 	4FH 			//00D7 	01CF

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	50H 			//00D8 	0150
		LDR 	4FH,0 			//00D9 	084F
		SUBWR 	50H,0 			//00DA 	0C50
		BTSC 	STATUS,0 		//00DB 	1403
		RET		 					//00DC 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	51H 			//00DD 	0151

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00DE 	2AC5
		LCALL 	E8H 			//00DF 	30E8
		BCR 	PCLATH,3 		//00E0 	118A
		LDWI 	5H 			//00E1 	2A05
		INCR	51H,1 			//00E2 	09D1
		SUBWR 	51H,0 			//00E3 	0C51
		BTSS 	STATUS,0 		//00E4 	1C03
		LJUMP 	DEH 			//00E5 	38DE
		INCR	50H,1 			//00E6 	09D0
		LJUMP 	D9H 			//00E7 	38D9
		STR 	4DH 			//00E8 	01CD

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	4EH 			//00E9 	014E
		LDR 	4DH,0 			//00EA 	084D
		SUBWR 	4EH,0 			//00EB 	0C4E
		BTSC 	STATUS,0 		//00EC 	1403
		RET		 					//00ED 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//00EE 	0000
		BCR 	STATUS,5 		//00EF 	1283
		BCR 	STATUS,6 		//00F0 	1303
		INCR	4EH,1 			//00F1 	09CE
		LJUMP 	EAH 			//00F2 	38EA

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//00F3 	2A71
		BSR 	STATUS,5 		//00F4 	1A83
		STR 	FH 			//00F5 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//00F6 	2A01
		STR 	1H 			//00F7 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//00F8 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//00F9 	1283
		CLRR 	5H 			//00FA 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//00FB 	2A13
		BSR 	STATUS,5 		//00FC 	1A83
		STR 	5H 			//00FD 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//00FE 	1283
		CLRR 	6H 			//00FF 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//0100 	2A29
		BSR 	STATUS,5 		//0101 	1A83
		STR 	6H 			//0102 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//0103 	1283
		CLRR 	7H 			//0104 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//0105 	2A03
		BSR 	STATUS,5 		//0106 	1A83
		STR 	7H 			//0107 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0108 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0109 	1283
		BSR 	STATUS,6 		//010A 	1B03
		CLRR 	DH 			//010B 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//010C 	1A83
		BCR 	STATUS,6 		//010D 	1303
		CLRR 	13H 			//010E 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//010F 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//0110 	1283
		BSR 	STATUS,6 		//0111 	1B03
		CLRR 	EH 			//0112 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//0113 	1A83
		BCR 	STATUS,6 		//0114 	1303
		CLRR 	DH 			//0115 	010D
		RET		 					//0116 	0004

		//;READY.c: 19: PORTC = 0B00000000;
		CLRR 	7H 			//0117 	0107

		//;READY.c: 20: TRISC &= ~0B00000001;
		BSR 	STATUS,5 		//0118 	1A83
		BCR 	7H,0 			//0119 	1007

		//;READY.c: 22: PORTB = 0B00000000;
		BCR 	STATUS,5 		//011A 	1283
		CLRR 	6H 			//011B 	0106

		//;READY.c: 23: TRISB &= ~0B00001000;
		BSR 	STATUS,5 		//011C 	1A83
		BCR 	6H,3 			//011D 	1186

		//;READY.c: 26: WPUC |= 0B00000001;
		BSR 	13H,0 			//011E 	1813

		//;READY.c: 28: WPUB |= 0B00001000;
		BCR 	STATUS,5 		//011F 	1283
		BSR 	STATUS,6 		//0120 	1B03
		BSR 	DH,3 			//0121 	198D
		RET		 					//0122 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//0123 	1283
		CLRR 	38H 			//0124 	0138

		//;Power.c: 46: SYS.HT_Value = 0;
		CLRR 	39H 			//0125 	0139

		//;Power.c: 48: SYS.LB_Value = 0;
		CLRR 	3AH 			//0126 	013A

		//;Power.c: 50: SYS.Relay_Release = 0;
		CLRR 	3CH 			//0127 	013C

		//;Power.c: 52: SYS.RC_Value = 0;
		CLRR 	3BH 			//0128 	013B

		//;Power.c: 54: SYS.KEY_Value = 0;
		CLRR 	3DH 			//0129 	013D

		//;Power.c: 56: SYS.Vadc_Value = 0;
		CLRR 	3EH 			//012A 	013E

		//;Power.c: 58: SYS.Cadc_Value = 0;
		CLRR 	3FH 			//012B 	013F

		//;Power.c: 62: SYS.READY_Value = 0;
		CLRR 	40H 			//012C 	0140

		//;Power.c: 64: SYS.STANDBY_Value = 0;
		CLRR 	41H 			//012D 	0141
		RET		 					//012E 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//012F 	2A04
		BSR 	STATUS,5 		//0130 	1A83
		STR 	1H 			//0131 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//0132 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//0133 	2A06
		BCR 	STATUS,5 		//0134 	1283
		STR 	1H 			//0135 	0181
		RET		 					//0136 	0004

		//;BUZZTT.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,6 		//0137 	1303
		CLRR 	7H 			//0138 	0107

		//;BUZZTT.c: 24: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0139 	1A83
		BCR 	7H,1 			//013A 	1087

		//;BUZZTT.c: 26: PC1 = 1;
		BCR 	STATUS,5 		//013B 	1283
		BSR 	7H,1 			//013C 	1887
		RET		 					//013D 	0004

		//;Task.c: 43: BUZZTT_Task();
		LJUMP 	140H 			//013E 	3940

		//;BUZZTT.c: 158: BUZZHH_Control();
		LJUMP 	140H 			//013F 	3940

		//;BUZZTT.c: 63: if(SYS.HT_Value || SYS.LB_Value || SYS.RC_Value)
		LDR 	39H,0 			//0140 	0839
		BTSS 	STATUS,2 		//0141 	1D03
		LJUMP 	148H 			//0142 	3948
		LDR 	3AH,0 			//0143 	083A
		BTSC 	STATUS,2 		//0144 	1503
		LDR 	3BH,0 			//0145 	083B
		BTSC 	STATUS,2 		//0146 	1503
		LJUMP 	149H 			//0147 	3949

		//;BUZZTT.c: 64: {
		//;BUZZTT.c: 65: Hummer_Task();
		LJUMP 	14AH 			//0148 	394A

		//;BUZZTT.c: 66: }
		//;BUZZTT.c: 67: else
		//;BUZZTT.c: 68: {
		//;BUZZTT.c: 69: Key_Task();
		LJUMP 	153H 			//0149 	3953

		//;BUZZTT.c: 146: Hummer_Init();
		LCALL 	14EH 			//014A 	314E

		//;BUZZTT.c: 147: PC1 = 0;
		BCR 	STATUS,5 		//014B 	1283
		BCR 	7H,1 			//014C 	1087
		RET		 					//014D 	0004

		//;BUZZTT.c: 49: PORTC = 0B00000000;
		CLRR 	7H 			//014E 	0107

		//;BUZZTT.c: 50: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//014F 	1A83
		BCR 	7H,1 			//0150 	1087

		//;BUZZTT.c: 52: WPUC &= ~0B00000010;
		BCR 	13H,1 			//0151 	1093
		RET		 					//0152 	0004

		//;BUZZTT.c: 134: KEY_Init();
		LCALL 	156H 			//0153 	3156
		BCR 	PCLATH,3 		//0154 	118A

		//;BUZZTT.c: 135: Key_Detect();
		LJUMP 	15BH 			//0155 	395B

		//;BUZZTT.c: 36: PORTC = 0B00000000;
		CLRR 	7H 			//0156 	0107

		//;BUZZTT.c: 37: TRISC |= 0B00000010;
		BSR 	STATUS,5 		//0157 	1A83
		BSR 	7H,1 			//0158 	1887

		//;BUZZTT.c: 39: WPUC |= 0B00000010;
		BSR 	13H,1 			//0159 	1893
		RET		 					//015A 	0004

		//;BUZZTT.c: 82: static uint8_t press_cnt = 0;
		//;BUZZTT.c: 83: static uint16_t long_cnt = 0;
		//;BUZZTT.c: 84: static uint8_t long_trig = 0;
		//;BUZZTT.c: 86: if(PC1 == 0)
		BCR 	STATUS,5 		//015B 	1283
		BTSC 	7H,1 			//015C 	1487
		LJUMP 	189H 			//015D 	3989

		//;BUZZTT.c: 87: {
		//;BUZZTT.c: 89: if(press_cnt <4)
		LDWI 	4H 			//015E 	2A04
		SUBWR 	4CH,0 			//015F 	0C4C
		BTSC 	STATUS,0 		//0160 	1403
		LJUMP 	164H 			//0161 	3964

		//;BUZZTT.c: 90: {
		//;BUZZTT.c: 91: press_cnt ++;
		INCR	4CH,1 			//0162 	09CC

		//;BUZZTT.c: 92: }
		LJUMP 	166H 			//0163 	3966

		//;BUZZTT.c: 93: else
		//;BUZZTT.c: 94: {
		//;BUZZTT.c: 95: KEY_Press = 1;
		CLRR 	79H 			//0164 	0179
		INCR	79H,1 			//0165 	09F9

		//;BUZZTT.c: 96: }
		//;BUZZTT.c: 99: if(KEY_Press && long_trig == 0 && long_cnt<300)
		LDR 	79H,0 			//0166 	0879
		BTSC 	STATUS,2 		//0167 	1503
		LJUMP 	176H 			//0168 	3976
		LDR 	4BH,0 			//0169 	084B
		BTSS 	STATUS,2 		//016A 	1D03
		LJUMP 	176H 			//016B 	3976
		LDWI 	1H 			//016C 	2A01
		SUBWR 	4AH,0 			//016D 	0C4A
		LDWI 	2CH 			//016E 	2A2C
		BTSC 	STATUS,2 		//016F 	1503
		SUBWR 	49H,0 			//0170 	0C49
		BTSC 	STATUS,0 		//0171 	1403
		LJUMP 	176H 			//0172 	3976

		//;BUZZTT.c: 100: {
		//;BUZZTT.c: 101: long_cnt++;
		INCR	49H,1 			//0173 	09C9
		BTSC 	STATUS,2 		//0174 	1503
		INCR	4AH,1 			//0175 	09CA

		//;BUZZTT.c: 102: }
		//;BUZZTT.c: 106: if(KEY_Press && long_cnt >= 300 && long_trig == 0)
		LDR 	79H,0 			//0176 	0879
		BTSC 	STATUS,2 		//0177 	1503
		RET		 					//0178 	0004
		LDWI 	1H 			//0179 	2A01
		SUBWR 	4AH,0 			//017A 	0C4A
		LDWI 	2CH 			//017B 	2A2C
		BTSC 	STATUS,2 		//017C 	1503
		SUBWR 	49H,0 			//017D 	0C49
		BTSS 	STATUS,0 		//017E 	1C03
		RET		 					//017F 	0004
		LDR 	4BH,0 			//0180 	084B
		BTSS 	STATUS,2 		//0181 	1D03
		RET		 					//0182 	0004

		//;BUZZTT.c: 107: {
		//;BUZZTT.c: 109: SYS.Long_Time_Change = 0;
		CLRR 	46H 			//0183 	0146

		//;BUZZTT.c: 110: SYS.KEY_Value = 1;
		CLRR 	3DH 			//0184 	013D
		INCR	3DH,1 			//0185 	09BD

		//;BUZZTT.c: 112: long_trig = 1;
		CLRR 	4BH 			//0186 	014B
		INCR	4BH,1 			//0187 	09CB
		RET		 					//0188 	0004

		//;BUZZTT.c: 116: else
		//;BUZZTT.c: 117: {
		//;BUZZTT.c: 119: press_cnt = 0;
		CLRR 	4CH 			//0189 	014C

		//;BUZZTT.c: 120: KEY_Press = 0;
		CLRR 	79H 			//018A 	0179

		//;BUZZTT.c: 121: long_cnt = 0;
		CLRR 	49H 			//018B 	0149
		CLRR 	4AH 			//018C 	014A

		//;BUZZTT.c: 122: long_trig = 0;
		CLRR 	4BH 			//018D 	014B
		RET		 					//018E 	0004

		//;Task.c: 77: unsigned char i;
		//;Task.c: 78: for(i = 0;i<TASK_MAX;i++)
		CLRR 	50H 			//018F 	0150

		//;Task.c: 79: {
		//;Task.c: 80: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//0190 	2A06
		STR 	4DH 			//0191 	01CD
		LDR 	50H,0 			//0192 	0850
		LCALL 	1B4H 			//0193 	31B4
		BCR 	PCLATH,3 		//0194 	118A
		ADDWI 	20H 			//0195 	2720
		STR 	FSR 			//0196 	0184
		BCR 	STATUS,7 		//0197 	1383
		DECRSZ 	INDF,0 		//0198 	0E00
		LJUMP 	1AEH 			//0199 	39AE

		//;Task.c: 81: {
		//;Task.c: 82: TaskCompany[i].Run = 0;
		LDWI 	6H 			//019A 	2A06
		STR 	4DH 			//019B 	01CD
		LDR 	50H,0 			//019C 	0850
		LCALL 	1B4H 			//019D 	31B4
		BCR 	PCLATH,3 		//019E 	118A
		ADDWI 	20H 			//019F 	2720
		STR 	FSR 			//01A0 	0184
		LDWI 	6H 			//01A1 	2A06
		BCR 	STATUS,7 		//01A2 	1383
		CLRR 	INDF 			//01A3 	0100

		//;Task.c: 83: TaskCompany[i].TaskHook();
		STR 	4DH 			//01A4 	01CD
		LDR 	50H,0 			//01A5 	0850
		LCALL 	1B4H 			//01A6 	31B4
		ADDWI 	25H 			//01A7 	2725
		STR 	FSR 			//01A8 	0184
		BCR 	STATUS,7 		//01A9 	1383
		LDR 	INDF,0 			//01AA 	0800
		BCR 	PCLATH,3 		//01AB 	118A
		LCALL 	3FH 			//01AC 	303F
		BCR 	PCLATH,3 		//01AD 	118A
		LDWI 	4H 			//01AE 	2A04
		INCR	50H,1 			//01AF 	09D0
		SUBWR 	50H,0 			//01B0 	0C50
		BTSC 	STATUS,0 		//01B1 	1403
		RET		 					//01B2 	0004
		LJUMP 	190H 			//01B3 	3990
		STR 	4FH 			//01B4 	01CF
		CLRR 	4EH 			//01B5 	014E
		LDR 	4DH,0 			//01B6 	084D
		BTSC 	4FH,0 			//01B7 	144F
		ADDWR 	4EH,1 			//01B8 	0BCE
		BCR 	STATUS,0 		//01B9 	1003
		RLR 	4DH,1 			//01BA 	05CD
		BCR 	STATUS,0 		//01BB 	1003
		RRR	4FH,1 			//01BC 	06CF
		LDR 	4FH,0 			//01BD 	084F
		BTSS 	STATUS,2 		//01BE 	1D03
		LJUMP 	1B6H 			//01BF 	39B6
		LDR 	4EH,0 			//01C0 	084E
		RET		 					//01C1 	0004
		CLRWDT	 			//01C2 	0001
		CLRR 	INDF 			//01C3 	0100
		INCR	FSR,1 			//01C4 	0984
		XORWR 	FSR,0 			//01C5 	0404
		BTSC 	STATUS,2 		//01C6 	1503
		RETW 	0H 			//01C7 	2100
		XORWR 	FSR,0 			//01C8 	0404
		LJUMP 	1C3H 			//01C9 	39C3

		//;Main.c: 42: Initial();
		BCR 	PCLATH,3 		//01CA 	118A
		LCALL 	C8H 			//01CB 	30C8
		BCR 	PCLATH,3 		//01CC 	118A

		//;Main.c: 44: {
		//;Main.c: 45: Task_Process();
		BCR 	PCLATH,3 		//01CD 	118A
		LCALL 	18FH 			//01CE 	318F
		BCR 	PCLATH,3 		//01CF 	118A
		LJUMP 	1CDH 			//01D0 	39CD
		RET		 					//01D1 	0004
		RET		 					//01D2 	0004
		RET		 					//01D3 	0004
			END
