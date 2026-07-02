#include "Ready.h"

/*
	注：PB3和PC0打线到一起，因此配置要相同
    且仿真的时候PB3不能设置为输出，会和ISPCLK通讯卡死.
	READY要在STANDBY1正常时才亮。
    按键（在STANDBY1）情况下才有效.

*/

/*-------------------------------------------------
 *  函数名：Ready_Init
 *	功能：  继电器开关引脚初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void Ready_Init(void)
{
	PORTC   = 0B00000000; 	
	TRISC  &= ~0B00000001;	//PC输入输出 0-输出 1-输入 
    
    PORTB   = 0B00000000; 	
	TRISB  &= ~0B00001000;	//PB输入输出 0-输出 1-输入 

    
    WPUC   |= 0B00000001;	//下拉
    
    WPUB   |= 0B00001000;	//下拉

}

/*-------------------------------------------------
 *  函数名：Ready_Control
 *	功能：  控制继电器开关
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void Ready_Control(uint8_t num)
{
	PC0 = (num == Ready_Open) ? 1 : 0;
}

/*-------------------------------------------------
 *  函数名：READY_Task
 *	功能：  
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void READY_Task(void)
{
    
	if(SYS.Standby_Work_State)//工作状态下才能进行READY的控制
    {
		SYS.READY_Value = 1;
        
//			SYS.READY_Value = 0;//关闭继电器
//            Get_Cbattery_Data();//获取Cbat电压
//			Get_Vbattery_Data();//获Vbat电压           
//            Relay_sticking_Dected();//继电器粘连检测
            
            
            
    }
    else//待机状态下继电器关闭
    {
		SYS.READY_Value = 0;

    }
    
	Ready_Control(SYS.READY_Value);//控制关断

}