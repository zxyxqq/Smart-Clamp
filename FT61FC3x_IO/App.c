#include "APP.h"

sys SYS;

extern volatile uint8_t BUZZTT_Flag;
/*-------------------------------------------------
 *  函数名ADC_INITIAL
 *	功能：  ADC初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void Initial(void)
{
	DelayMs(20);//上电延迟
	POWER_INITIAL();
    SYS_Initial();
    Timer0_Init();

//	ADC_INITIAL();
//	Ready_Init();
    Int_Initial();
    RC_INITIAL();
//	BUZZTT_Init();
//	BUZZTT_Flag = 1;//蜂鸣器
//    
//	BUZZTT_Control();      
//    
//    Int_Control(0);
////    RC_Control(0);
//    Ready_Control(0);//关闭继电器

/**/


    
    T0IE = 1;				//开定时器/计数器0中断
    
    GIE = 1;
}