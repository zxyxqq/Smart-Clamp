#include "LB.h"

/*
	输出高时STANDBY灯亮
    输出低是LB灯亮
    输入时为高阻，都不亮


*/
void LB_Init(void)
{
	TRISB  |= 0B00100000;	//高阻输入都不亮
}

void STNADBY_Open(void)
{
	if(SYS.STANDBY_Value)
    {
		TRISB  &= ~0B00100000;	//
        PB5 = 1;
    }
}

void LB_Open(void)
{
	if(SYS.LB_Value)
    {
		TRISB  &= ~0B00100000;	//
        PB5 = 0;
    }
}

void LB_STANDBY_Close(void)
{
	if(SYS.STANDBY_Value == 0 && SYS.LB_Value == 0)
    {
		TRISB  |= 0B00100000;	//高阻输入都不亮
    }
	
}

void LB_ST_Task(void)
{
	STNADBY_Open();
    LB_Open();
    LB_STANDBY_Close();
    
}
