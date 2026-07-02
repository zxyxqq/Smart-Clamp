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
		LCALL 	16DH 			//0039 	316D
		CLRR 	79H 			//003A 	0179
		CLRR 	STATUS 			//003B 	0103
		BCR 	PCLATH,3 		//003C 	118A
		LJUMP 	175H 			//003D 	3975
		STR 	7FH 			//003E 	01FF
		LDWI 	0H 			//003F 	2A00
		STR 	PCLATH 			//0040 	018A
		LDR 	7FH,0 			//0041 	087F
		ADDWR 	PCL,1 			//0042 	0B82
		LJUMP 	43H 			//0043 	3843
		BCR 	PCLATH,3 		//0044 	118A
		LJUMP 	183H 			//0045 	3983
		BCR 	PCLATH,3 		//0046 	118A
		LJUMP 	17CH 			//0047 	397C
		BCR 	PCLATH,3 		//0048 	118A
		LJUMP 	162H 			//0049 	3962
		BCR 	PCLATH,3 		//004A 	118A
		LJUMP 	182H 			//004B 	3982

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

		//;Task.c: 137: uint8_t i;
		//;Task.c: 138: for(i = 0;i<TASK_MAX;i++)
		CLRR 	75H 			//005E 	0175

		//;Task.c: 139: {
		//;Task.c: 140: if(TaskCompany[i].Timer)
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

		//;Task.c: 141: {
		//;Task.c: 142: TaskCompany[i].Timer--;
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

		//;Task.c: 143: if(TaskCompany[i].Timer <= 0)
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

		//;Task.c: 144: {
		//;Task.c: 145: TaskCompany[i].Timer = TaskCompany[i].IvtTime;
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

		//;Task.c: 146: TaskCompany[i].Run = 1;
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

		//;App.c: 26: BUZZER_Init();
		LCALL 	127H 			//00CB 	3127

		//;App.c: 41: T0IE = 1;
		BSR 	INTCON,5 		//00CC 	1A8B

		//;App.c: 43: GIE = 1;
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

		//;BUZZTT.c: 48: PORTC = 0B00000000;
		BCR 	STATUS,5 		//0127 	1283
		CLRR 	7H 			//0128 	0107

		//;BUZZTT.c: 49: TRISC &= ~0B00000010;
		BSR 	STATUS,5 		//0129 	1A83
		BCR 	7H,1 			//012A 	1087

		//;BUZZTT.c: 51: WPUC &= ~0B00000010;
		BCR 	13H,1 			//012B 	1093
		RET		 					//012C 	0004

		//;Task.c: 120: unsigned char i;
		//;Task.c: 121: for(i = 0;i<TASK_MAX;i++)
		BCR 	STATUS,5 		//012D 	1283
		CLRR 	4EH 			//012E 	014E

		//;Task.c: 122: {
		//;Task.c: 123: if(TaskCompany[i].Run == 1)
		LDWI 	6H 			//012F 	2A06
		STR 	4BH 			//0130 	01CB
		LDR 	4EH,0 			//0131 	084E
		LCALL 	154H 			//0132 	3154
		BCR 	PCLATH,3 		//0133 	118A
		ADDWI 	20H 			//0134 	2720
		STR 	FSR 			//0135 	0184
		BCR 	STATUS,7 		//0136 	1383
		DECRSZ 	INDF,0 		//0137 	0E00
		LJUMP 	14DH 			//0138 	394D

		//;Task.c: 124: {
		//;Task.c: 125: TaskCompany[i].Run = 0;
		LDWI 	6H 			//0139 	2A06
		STR 	4BH 			//013A 	01CB
		LDR 	4EH,0 			//013B 	084E
		LCALL 	154H 			//013C 	3154
		BCR 	PCLATH,3 		//013D 	118A
		ADDWI 	20H 			//013E 	2720
		STR 	FSR 			//013F 	0184
		LDWI 	6H 			//0140 	2A06
		BCR 	STATUS,7 		//0141 	1383
		CLRR 	INDF 			//0142 	0100

		//;Task.c: 126: TaskCompany[i].TaskHook();
		STR 	4BH 			//0143 	01CB
		LDR 	4EH,0 			//0144 	084E
		LCALL 	154H 			//0145 	3154
		ADDWI 	25H 			//0146 	2725
		STR 	FSR 			//0147 	0184
		BCR 	STATUS,7 		//0148 	1383
		LDR 	INDF,0 			//0149 	0800
		BCR 	PCLATH,3 		//014A 	118A
		LCALL 	3EH 			//014B 	303E
		BCR 	PCLATH,3 		//014C 	118A
		BCR 	STATUS,5 		//014D 	1283
		LDWI 	4H 			//014E 	2A04
		INCR	4EH,1 			//014F 	09CE
		SUBWR 	4EH,0 			//0150 	0C4E
		BTSC 	STATUS,0 		//0151 	1403
		RET		 					//0152 	0004
		LJUMP 	12FH 			//0153 	392F
		STR 	4DH 			//0154 	01CD
		CLRR 	4CH 			//0155 	014C
		LDR 	4BH,0 			//0156 	084B
		BTSC 	4DH,0 			//0157 	144D
		ADDWR 	4CH,1 			//0158 	0BCC
		BCR 	STATUS,0 		//0159 	1003
		RLR 	4BH,1 			//015A 	05CB
		BCR 	STATUS,0 		//015B 	1003
		RRR	4DH,1 			//015C 	06CD
		LDR 	4DH,0 			//015D 	084D
		BTSS 	STATUS,2 		//015E 	1D03
		LJUMP 	156H 			//015F 	3956
		LDR 	4CH,0 			//0160 	084C
		RET		 					//0161 	0004

		//;Task.c: 76: HT_Detect();
		LJUMP 	163H 			//0162 	3963

		//;INT.c: 30: TRISB |= 0B00000001;
		BSR 	STATUS,5 		//0163 	1A83
		BSR 	6H,0 			//0164 	1806

		//;INT.c: 34: SYS.HT_Value = PB0;
		LDWI 	0H 			//0165 	2A00
		BCR 	STATUS,5 		//0166 	1283
		BTSC 	6H,0 			//0167 	1406
		LDWI 	1H 			//0168 	2A01
		STR 	39H 			//0169 	01B9

		//;INT.c: 36: TRISB &= ~0B00000001;
		BSR 	STATUS,5 		//016A 	1A83
		BCR 	6H,0 			//016B 	1006
		RET		 					//016C 	0004
		CLRWDT	 			//016D 	0001
		CLRR 	INDF 			//016E 	0100
		INCR	FSR,1 			//016F 	0984
		XORWR 	FSR,0 			//0170 	0404
		BTSC 	STATUS,2 		//0171 	1503
		RETW 	0H 			//0172 	2100
		XORWR 	FSR,0 			//0173 	0404
		LJUMP 	16EH 			//0174 	396E

		//;Main.c: 42: Initial();
		BCR 	PCLATH,3 		//0175 	118A
		LCALL 	C0H 			//0176 	30C0
		BCR 	PCLATH,3 		//0177 	118A

		//;Main.c: 44: {
		//;Main.c: 45: Task_Process();
		BCR 	PCLATH,3 		//0178 	118A
		LCALL 	12DH 			//0179 	312D
		BCR 	PCLATH,3 		//017A 	118A
		LJUMP 	178H 			//017B 	3978

		//;Task.c: 39: LB_Close();
		LJUMP 	17DH 			//017C 	397D

		//;INT.c: 63: TRISB &= ~0B00000001;
		BSR 	STATUS,5 		//017D 	1A83
		BCR 	6H,0 			//017E 	1006

		//;INT.c: 65: PB0 = 0;
		BCR 	STATUS,5 		//017F 	1283
		BCR 	6H,0 			//0180 	1006
		RET		 					//0181 	0004
		RET		 					//0182 	0004
		RET		 					//0183 	0004
			END
