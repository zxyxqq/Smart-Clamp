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
		_SYS.Buzzer_Value		EQU		40H
		_SYS.READY_Value		EQU		41H
		_SYS.STANDBY_Value		EQU		42H
		_SYS.Short_Ready_Time_Flag		EQU		43H
		_SYS.Vbattery_Adc		EQU		44H
		_SYS.Cbattery_Adc		EQU		46H
		_SYS.Long_Time_Change		EQU		48H
		_SYS.Delay_2s_Flag		EQU		49H
		_SYS.Cadc_Ready_Flag		EQU		4AH
		_SYS		EQU		38H
		_BUZZTT_Flag		EQU		79H
		_PB0		EQU		06H
		_T0IF		EQU		0BH
		_T0IE		EQU		0BH
		_GIE		EQU		0BH
		_TaskCompany.Run		EQU		20H
		_TaskCompany.Timer		EQU		21H
		_TaskCompany.IvtTime		EQU		23H
		_TaskCompany.TaskHook		EQU		25H
		_TaskCompany		EQU		20H
//		Task_Process@i		EQU		4EH
//		___bmul@multiplier		EQU		4DH
//		___bmul@product		EQU		4CH
//		___bmul@multiplier		EQU		4DH
//		___bmul@multiplicand		EQU		4BH
//		___bmul@multiplier		EQU		4DH
//		INT_Control@value		EQU		4BH
//		INT_Control@value		EQU		4BH
//		INT_Control@value		EQU		4BH
//		DelayMs@Time		EQU		4DH
//		DelayMs@b		EQU		4FH
//		DelayMs@a		EQU		4EH
//		DelayMs@Time		EQU		4DH
//		DelayMs@Time		EQU		4DH
//		DelayUs@Time		EQU		4BH
//		DelayUs@a		EQU		4CH
//		DelayUs@Time		EQU		4BH
//		DelayUs@Time		EQU		4BH
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
		LDWI 	4BH 			//0037 	2A4B
		BCR 	PCLATH,3 		//0038 	118A
		LCALL 	194H 			//0039 	3194
		CLRR 	79H 			//003A 	0179
		CLRR 	STATUS 			//003B 	0103
		BCR 	PCLATH,3 		//003C 	118A
		LJUMP 	19CH 			//003D 	399C
		STR 	7FH 			//003E 	01FF
		LDWI 	0H 			//003F 	2A00
		STR 	PCLATH 			//0040 	018A
		LDR 	7FH,0 			//0041 	087F
		ADDWR 	PCL,1 			//0042 	0B82
		LJUMP 	43H 			//0043 	3843
		BCR 	PCLATH,3 		//0044 	118A
		LJUMP 	1A5H 			//0045 	39A5
		BCR 	PCLATH,3 		//0046 	118A
		LJUMP 	160H 			//0047 	3960
		BCR 	PCLATH,3 		//0048 	118A
		LJUMP 	1A4H 			//0049 	39A4
		BCR 	PCLATH,3 		//004A 	118A
		LJUMP 	1A3H 			//004B 	39A3

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

		//;Task.c: 107: uint8_t i;
		//;Task.c: 108: for(i = 0;i<TASK_MAX;i++)
		CLRR 	75H 			//005E 	0175

		//;Task.c: 109: {
		//;Task.c: 110: if(TaskCompany[i].Timer)
		LDWI 	6H 			//005F 	2A06
		STR 	70H 			//0060 	01F0
		LDR 	75H,0 			//0061 	0875
		LCALL 	AAH 			//0062 	30AA
		BCR 	PCLATH,3 		//0063 	118A
		ADDWI 	21H 			//0064 	2721
		LCALL 	B8H 			//0065 	30B8
		BCR 	PCLATH,3 		//0066 	118A
		IORWR 	73H,0 			//0067 	0373
		BTSC 	STATUS,2 		//0068 	1503
		LJUMP 	A4H 			//0069 	38A4

		//;Task.c: 111: {
		//;Task.c: 112: TaskCompany[i].Timer--;
		LDWI 	6H 			//006A 	2A06
		STR 	70H 			//006B 	01F0
		LDR 	75H,0 			//006C 	0875
		LCALL 	AAH 			//006D 	30AA
		BCR 	PCLATH,3 		//006E 	118A
		ADDWI 	21H 			//006F 	2721
		STR 	FSR 			//0070 	0184
		LDWI 	1H 			//0071 	2A01
		BCR 	STATUS,7 		//0072 	1383
		SUBWR 	INDF,1 		//0073 	0C80
		INCRSZ 	FSR,1 		//0074 	0A84
		LDWI 	0H 			//0075 	2A00
		BTSS 	STATUS,0 		//0076 	1C03
		DECR 	INDF,1 			//0077 	0D80
		SUBWR 	INDF,1 		//0078 	0C80
		LDWI 	6H 			//0079 	2A06
		DECR 	FSR,1 			//007A 	0D84

		//;Task.c: 113: if(TaskCompany[i].Timer <= 0)
		STR 	70H 			//007B 	01F0
		LDR 	75H,0 			//007C 	0875
		LCALL 	AAH 			//007D 	30AA
		BCR 	PCLATH,3 		//007E 	118A
		ADDWI 	21H 			//007F 	2721
		LCALL 	B8H 			//0080 	30B8
		BCR 	PCLATH,3 		//0081 	118A
		IORWR 	73H,0 			//0082 	0373
		BTSS 	STATUS,2 		//0083 	1D03
		LJUMP 	A4H 			//0084 	38A4

		//;Task.c: 114: {
		//;Task.c: 115: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
		LDWI 	6H 			//0085 	2A06
		STR 	70H 			//0086 	01F0
		LDR 	75H,0 			//0087 	0875
		LCALL 	AAH 			//0088 	30AA
		BCR 	PCLATH,3 		//0089 	118A
		ADDWI 	23H 			//008A 	2723
		LCALL 	B8H 			//008B 	30B8
		BCR 	PCLATH,3 		//008C 	118A
		LDWI 	6H 			//008D 	2A06
		STR 	70H 			//008E 	01F0
		LDR 	75H,0 			//008F 	0875
		LCALL 	AAH 			//0090 	30AA
		BCR 	PCLATH,3 		//0091 	118A
		ADDWI 	21H 			//0092 	2721
		STR 	FSR 			//0093 	0184
		LDR 	73H,0 			//0094 	0873
		BCR 	STATUS,7 		//0095 	1383
		STR 	INDF 			//0096 	0180
		INCR	FSR,1 			//0097 	0984
		LDR 	74H,0 			//0098 	0874
		STR 	INDF 			//0099 	0180

		//;Task.c: 116: TaskCompany[i].Run = 1;
		LDWI 	6H 			//009A 	2A06
		STR 	70H 			//009B 	01F0
		LDR 	75H,0 			//009C 	0875
		LCALL 	AAH 			//009D 	30AA
		BCR 	PCLATH,3 		//009E 	118A
		ADDWI 	20H 			//009F 	2720
		STR 	FSR 			//00A0 	0184
		BCR 	STATUS,7 		//00A1 	1383
		CLRR 	INDF 			//00A2 	0100
		INCR	INDF,1 			//00A3 	0980
		LDWI 	4H 			//00A4 	2A04
		INCR	75H,1 			//00A5 	09F5
		SUBWR 	75H,0 			//00A6 	0C75
		BTSC 	STATUS,0 		//00A7 	1403
		RET		 					//00A8 	0004
		LJUMP 	5FH 			//00A9 	385F
		STR 	71H 			//00AA 	01F1
		CLRR 	72H 			//00AB 	0172
		LDR 	70H,0 			//00AC 	0870
		BTSC 	71H,0 			//00AD 	1471
		ADDWR 	72H,1 			//00AE 	0BF2
		BCR 	STATUS,0 		//00AF 	1003
		RLR 	70H,1 			//00B0 	05F0
		BCR 	STATUS,0 		//00B1 	1003
		RRR	71H,1 			//00B2 	06F1
		LDR 	71H,0 			//00B3 	0871
		BTSS 	STATUS,2 		//00B4 	1D03
		LJUMP 	ACH 			//00B5 	38AC
		LDR 	72H,0 			//00B6 	0872
		RET		 					//00B7 	0004
		STR 	FSR 			//00B8 	0184
		BCR 	STATUS,7 		//00B9 	1383
		LDR 	INDF,0 			//00BA 	0800
		STR 	73H 			//00BB 	01F3
		INCR	FSR,1 			//00BC 	0984
		LDR 	INDF,0 			//00BD 	0800
		STR 	74H 			//00BE 	01F4
		RET		 					//00BF 	0004

		//;App.c: 14: DelayMs(20);
		LDWI 	14H 			//00C0 	2A14
		LCALL 	CFH 			//00C1 	30CF
		BCR 	PCLATH,3 		//00C2 	118A

		//;App.c: 15: POWER_INITIAL();
		LCALL 	EEH 			//00C3 	30EE
		BCR 	PCLATH,3 		//00C4 	118A

		//;App.c: 16: SYS_Initial();
		LCALL 	112H 			//00C5 	3112
		BCR 	PCLATH,3 		//00C6 	118A

		//;App.c: 17: Timer0_Init();
		LCALL 	11FH 			//00C7 	311F
		BCR 	PCLATH,3 		//00C8 	118A

		//;App.c: 21: Int_Initial();
		LCALL 	EBH 			//00C9 	30EB
		BCR 	PCLATH,3 		//00CA 	118A

		//;App.c: 22: RC_INITIAL();
		LCALL 	127H 			//00CB 	3127

		//;App.c: 36: T0IE = 1;
		BSR 	INTCON,5 		//00CC 	1A8B

		//;App.c: 38: GIE = 1;
		BSR 	INTCON,7 		//00CD 	1B8B
		RET		 					//00CE 	0004
		STR 	4DH 			//00CF 	01CD

		//;Delay.c: 24: unsigned char a,b;
		//;Delay.c: 25: for(a=0;a<Time;a++)
		CLRR 	4EH 			//00D0 	014E
		LDR 	4DH,0 			//00D1 	084D
		SUBWR 	4EH,0 			//00D2 	0C4E
		BTSC 	STATUS,0 		//00D3 	1403
		RET		 					//00D4 	0004

		//;Delay.c: 26: {
		//;Delay.c: 27: for(b=0;b<5;b++)
		CLRR 	4FH 			//00D5 	014F

		//;Delay.c: 28: {
		//;Delay.c: 29: DelayUs(197);
		LDWI 	C5H 			//00D6 	2AC5
		LCALL 	E0H 			//00D7 	30E0
		BCR 	PCLATH,3 		//00D8 	118A
		LDWI 	5H 			//00D9 	2A05
		INCR	4FH,1 			//00DA 	09CF
		SUBWR 	4FH,0 			//00DB 	0C4F
		BTSS 	STATUS,0 		//00DC 	1C03
		LJUMP 	D6H 			//00DD 	38D6
		INCR	4EH,1 			//00DE 	09CE
		LJUMP 	D1H 			//00DF 	38D1
		STR 	4BH 			//00E0 	01CB

		//;Delay.c: 10: unsigned char a;
		//;Delay.c: 11: for(a=0;a<Time;a++)
		CLRR 	4CH 			//00E1 	014C
		LDR 	4BH,0 			//00E2 	084B
		SUBWR 	4CH,0 			//00E3 	0C4C
		BTSC 	STATUS,0 		//00E4 	1403
		RET		 					//00E5 	0004

		//;Delay.c: 12: {
		//;Delay.c: 13: __nop();
		NOP		 					//00E6 	0000
		BCR 	STATUS,5 		//00E7 	1283
		BCR 	STATUS,6 		//00E8 	1303
		INCR	4CH,1 			//00E9 	09CC
		LJUMP 	E2H 			//00EA 	38E2

		//;INT.c: 19: TRISB |= 0B00000001;
		BSR 	STATUS,5 		//00EB 	1A83
		BSR 	6H,0 			//00EC 	1806
		RET		 					//00ED 	0004

		//;Power.c: 11: OSCCON = 0B01110001;
		LDWI 	71H 			//00EE 	2A71
		BSR 	STATUS,5 		//00EF 	1A83
		STR 	FH 			//00F0 	018F

		//;Power.c: 12: OPTION = 0B00000001;
		LDWI 	1H 			//00F1 	2A01
		STR 	1H 			//00F2 	0181

		//;Power.c: 13: INTCON = 0;
		CLRR 	INTCON 			//00F3 	010B

		//;Power.c: 15: PORTA = 0B00000000;
		BCR 	STATUS,5 		//00F4 	1283
		CLRR 	5H 			//00F5 	0105

		//;Power.c: 16: TRISA = 0B00010011;
		LDWI 	13H 			//00F6 	2A13
		BSR 	STATUS,5 		//00F7 	1A83
		STR 	5H 			//00F8 	0185

		//;Power.c: 19: PORTB = 0B00000000;
		BCR 	STATUS,5 		//00F9 	1283
		CLRR 	6H 			//00FA 	0106

		//;Power.c: 20: TRISB = 0B00101001;
		LDWI 	29H 			//00FB 	2A29
		BSR 	STATUS,5 		//00FC 	1A83
		STR 	6H 			//00FD 	0186

		//;Power.c: 23: PORTC = 0B00000000;
		BCR 	STATUS,5 		//00FE 	1283
		CLRR 	7H 			//00FF 	0107

		//;Power.c: 24: TRISC = 0B00000011;
		LDWI 	3H 			//0100 	2A03
		BSR 	STATUS,5 		//0101 	1A83
		STR 	7H 			//0102 	0187

		//;Power.c: 27: WPUA = 0B00000000;
		CLRR 	15H 			//0103 	0115

		//;Power.c: 28: WPUB = 0B00000000;
		BCR 	STATUS,5 		//0104 	1283
		BSR 	STATUS,6 		//0105 	1B03
		CLRR 	DH 			//0106 	010D

		//;Power.c: 29: WPUC = 0B00000000;
		BSR 	STATUS,5 		//0107 	1A83
		BCR 	STATUS,6 		//0108 	1303
		CLRR 	13H 			//0109 	0113

		//;Power.c: 31: WPDA = 0B00000000;
		CLRR 	9H 			//010A 	0109

		//;Power.c: 32: WPDB = 0B00000000;
		BCR 	STATUS,5 		//010B 	1283
		BSR 	STATUS,6 		//010C 	1B03
		CLRR 	EH 			//010D 	010E

		//;Power.c: 33: WPDC = 0B00000000;
		BSR 	STATUS,5 		//010E 	1A83
		BCR 	STATUS,6 		//010F 	1303
		CLRR 	DH 			//0110 	010D
		RET		 					//0111 	0004

		//;Power.c: 44: SYS.Standby_Work_State = 0;
		BCR 	STATUS,5 		//0112 	1283
		CLRR 	38H 			//0113 	0138

		//;Power.c: 46: SYS.HT_Value = 0;
		CLRR 	39H 			//0114 	0139

		//;Power.c: 48: SYS.LB_Value = 0;
		CLRR 	3AH 			//0115 	013A

		//;Power.c: 52: SYS.Relay_Release = 0;
		CLRR 	3CH 			//0116 	013C

		//;Power.c: 54: SYS.RC_Value = 0;
		CLRR 	3BH 			//0117 	013B

		//;Power.c: 56: SYS.KEY_Value = 0;
		CLRR 	3DH 			//0118 	013D

		//;Power.c: 58: SYS.Vadc_Value = 0;
		CLRR 	3EH 			//0119 	013E

		//;Power.c: 60: SYS.Cadc_Value = 0;
		CLRR 	3FH 			//011A 	013F

		//;Power.c: 62: SYS.Buzzer_Value = 0;
		CLRR 	40H 			//011B 	0140

		//;Power.c: 64: SYS.READY_Value = 0;
		CLRR 	41H 			//011C 	0141

		//;Power.c: 66: SYS.STANDBY_Value = 0;
		CLRR 	42H 			//011D 	0142
		RET		 					//011E 	0004

		//;Timer.c: 11: OPTION = 0B00000100;
		LDWI 	4H 			//011F 	2A04
		BSR 	STATUS,5 		//0120 	1A83
		STR 	1H 			//0121 	0181

		//;Timer.c: 12: T0IF = 0;
		BCR 	INTCON,2 		//0122 	110B

		//;Timer.c: 13: TMR0 = 6;
		LDWI 	6H 			//0123 	2A06
		BCR 	STATUS,5 		//0124 	1283
		STR 	1H 			//0125 	0181
		RET		 					//0126 	0004

		//;RC.c: 17: PORTB |= 0B00000000;
		BCR 	STATUS,5 		//0127 	1283
		LDR 	6H,0 			//0128 	0806

		//;RC.c: 18: TRISB |= 0B00100000;
		BSR 	STATUS,5 		//0129 	1A83
		BSR 	6H,5 			//012A 	1A86
		RET		 					//012B 	0004

		//;Task.c: 90: unsigned char i;
		//;Task.c: 91: for(i = 0;i<TASK_MAX;i++)
		BCR 	STATUS,5 		//012C 	1283
		CLRR 	4EH 			//012D 	014E

		//;Task.c: 92: {
		//;Task.c: 93: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//012E 	2A06
		STR 	4BH 			//012F 	01CB
		LDR 	4EH,0 			//0130 	084E
		LCALL 	152H 			//0131 	3152
		BCR 	PCLATH,3 		//0132 	118A
		ADDWI 	20H 			//0133 	2720
		STR 	FSR 			//0134 	0184
		BCR 	STATUS,7 		//0135 	1383
		DECRSZ 	INDF,0 		//0136 	0E00
		LJUMP 	14CH 			//0137 	394C

		//;Task.c: 94: {
		//;Task.c: 95: TaskCompany[i].Run = 0;
		LDWI 	6H 			//0138 	2A06
		STR 	4BH 			//0139 	01CB
		LDR 	4EH,0 			//013A 	084E
		LCALL 	152H 			//013B 	3152
		BCR 	PCLATH,3 		//013C 	118A
		ADDWI 	20H 			//013D 	2720
		STR 	FSR 			//013E 	0184
		LDWI 	6H 			//013F 	2A06
		BCR 	STATUS,7 		//0140 	1383
		CLRR 	INDF 			//0141 	0100

		//;Task.c: 96: TaskCompany[i].TaskHook();
		STR 	4BH 			//0142 	01CB
		LDR 	4EH,0 			//0143 	084E
		LCALL 	152H 			//0144 	3152
		ADDWI 	25H 			//0145 	2725
		STR 	FSR 			//0146 	0184
		BCR 	STATUS,7 		//0147 	1383
		LDR 	INDF,0 			//0148 	0800
		BCR 	PCLATH,3 		//0149 	118A
		LCALL 	3EH 			//014A 	303E
		BCR 	PCLATH,3 		//014B 	118A
		LDWI 	4H 			//014C 	2A04
		INCR	4EH,1 			//014D 	09CE
		SUBWR 	4EH,0 			//014E 	0C4E
		BTSC 	STATUS,0 		//014F 	1403
		RET		 					//0150 	0004
		LJUMP 	12EH 			//0151 	392E
		STR 	4DH 			//0152 	01CD
		CLRR 	4CH 			//0153 	014C
		LDR 	4BH,0 			//0154 	084B
		BTSC 	4DH,0 			//0155 	144D
		ADDWR 	4CH,1 			//0156 	0BCC
		BCR 	STATUS,0 		//0157 	1003
		RLR 	4BH,1 			//0158 	05CB
		BCR 	STATUS,0 		//0159 	1003
		RRR	4DH,1 			//015A 	06CD
		LDR 	4DH,0 			//015B 	084D
		BTSS 	STATUS,2 		//015C 	1D03
		LJUMP 	154H 			//015D 	3954
		LDR 	4CH,0 			//015E 	084C
		RET		 					//015F 	0004

		//;Task.c: 22: Int_Task();
		LCALL 	163H 			//0160 	3163

		//;Task.c: 36: SYS.RC_Value = 0;
		CLRR 	3BH 			//0161 	013B
		RET		 					//0162 	0004

		//;INT.c: 73: if(SYS.LB_Value)
		LDR 	3AH,0 			//0163 	083A
		BTSC 	STATUS,2 		//0164 	1503
		LJUMP 	168H 			//0165 	3968

		//;INT.c: 74: {
		//;INT.c: 75: LB_Open();
		LCALL 	181H 			//0166 	3181
		BCR 	PCLATH,3 		//0167 	118A

		//;INT.c: 76: }
		//;INT.c: 78: HT_Detect();
		LCALL 	179H 			//0168 	3179
		BCR 	PCLATH,3 		//0169 	118A

		//;INT.c: 80: if(SYS.RC_Value || SYS.HT_Value == 0 || SYS.LB_Value)
		LDR 	3BH,0 			//016A 	083B
		BTSS 	STATUS,2 		//016B 	1D03
		LJUMP 	173H 			//016C 	3973
		LDR 	39H,0 			//016D 	0839
		BTSC 	STATUS,2 		//016E 	1503
		LJUMP 	173H 			//016F 	3973
		LDR 	3AH,0 			//0170 	083A
		BTSC 	STATUS,2 		//0171 	1503
		LJUMP 	175H 			//0172 	3975

		//;INT.c: 81: {
		//;INT.c: 82: SYS.STANDBY_Value = 0;
		CLRR 	42H 			//0173 	0142

		//;INT.c: 83: }
		LJUMP 	177H 			//0174 	3977

		//;INT.c: 84: else
		//;INT.c: 85: {
		//;INT.c: 86: SYS.STANDBY_Value = 1;
		CLRR 	42H 			//0175 	0142
		INCR	42H,1 			//0176 	09C2

		//;INT.c: 87: }
		//;INT.c: 89: INT_Control(SYS.STANDBY_Value);
		LDR 	42H,0 			//0177 	0842
		LJUMP 	186H 			//0178 	3986

		//;INT.c: 30: TRISB |= 0B00000001;
		BSR 	STATUS,5 		//0179 	1A83
		BSR 	6H,0 			//017A 	1806

		//;INT.c: 32: SYS.HT_Value = PB0;
		LDWI 	0H 			//017B 	2A00
		BCR 	STATUS,5 		//017C 	1283
		BTSC 	6H,0 			//017D 	1406
		LDWI 	1H 			//017E 	2A01
		STR 	39H 			//017F 	01B9
		RET		 					//0180 	0004

		//;INT.c: 43: TRISB &= ~0B00000001;
		BSR 	STATUS,5 		//0181 	1A83
		BCR 	6H,0 			//0182 	1006

		//;INT.c: 45: PB0 = 0;
		BCR 	STATUS,5 		//0183 	1283
		BCR 	6H,0 			//0184 	1006
		RET		 					//0185 	0004
		STR 	4BH 			//0186 	01CB

		//;INT.c: 57: TRISB &= ~0B00000001;
		BSR 	STATUS,5 		//0187 	1A83
		BCR 	6H,0 			//0188 	1006

		//;INT.c: 59: PB0 = (value == 1) ? 1 : 0;
		BCR 	STATUS,5 		//0189 	1283
		DECRSZ 	4BH,0 		//018A 	0E4B
		LJUMP 	190H 			//018B 	3990
		BCR 	STATUS,5 		//018C 	1283
		BCR 	STATUS,6 		//018D 	1303
		BSR 	6H,0 			//018E 	1806
		RET		 					//018F 	0004
		BCR 	STATUS,5 		//0190 	1283
		BCR 	STATUS,6 		//0191 	1303
		BCR 	6H,0 			//0192 	1006
		RET		 					//0193 	0004
		CLRWDT	 			//0194 	0001
		CLRR 	INDF 			//0195 	0100
		INCR	FSR,1 			//0196 	0984
		XORWR 	FSR,0 			//0197 	0404
		BTSC 	STATUS,2 		//0198 	1503
		RETW 	0H 			//0199 	2100
		XORWR 	FSR,0 			//019A 	0404
		LJUMP 	195H 			//019B 	3995

		//;Main.c: 42: Initial();
		BCR 	PCLATH,3 		//019C 	118A
		LCALL 	C0H 			//019D 	30C0
		BCR 	PCLATH,3 		//019E 	118A

		//;Main.c: 44: {
		//;Main.c: 45: Task_Process();
		BCR 	PCLATH,3 		//019F 	118A
		LCALL 	12CH 			//01A0 	312C
		BCR 	PCLATH,3 		//01A1 	118A
		LJUMP 	19FH 			//01A2 	399F
		RET		 					//01A3 	0004
		RET		 					//01A4 	0004
		RET		 					//01A5 	0004
			END
