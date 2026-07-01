#include "RC.h"

/*一定周期内RC作为输入检测反冲和粘连还有反接和短路检测
  RC作为输出控制STANDBY

STANDBY一定是在不报警的前提下才能STANDBY
*/
/*-------------------------------------------------
 *  函数名RC_INITIAL
 *	功能：  RC初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	

void RC_INITIAL(void)
{
	PORTB  |= 0B00000000;		
	TRISB  |= 0B00100000;	//PB输入输出 0-输出 1-输入
    
}
/*-------------------------------------------------
 *  函数名RC_Detect
 *	功能：  检测RC引脚并配置为输入
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	

void RC_Detect(void)
{
	TRISB  |= 0B00100000;	//PB输入输出 0-输出 1-输入

    WPDB   = 0B00100000;    //PB端口上拉控制 1-开下拉 0-关下拉

	SYS.RC_Value = PB5;//读取RC值
}

/*-------------------------------------------------
 *  函数名RC_Control
 *	功能：  配置RC引脚
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
// void RC_Control(uint8_t value)
// {
//	TRISB  &= ~0B00100000;	//PB输入输出 0-输出 1-输入
//    
////    WPDB   = 0B00100000;    //PB端口上拉控制 1-开下拉 0-关下拉
// 
//	PB5 = (value == RC_ON)	? 1 : 0;
// }


void RC_Task(void)
{
	RC_Detect();


}
/*-------------------------------------------------
 *  函数名RC_Task
 *	功能：  RC任务（控制RC和STANDBY）
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
//void RC_Task(void)
//{
///*RC是一直检测的，STANDBY自定义*/
//	RC_Detect();//作为输入检测RC值
//    
//    
//    if(SYS.Standby_Work_State == 0)//在待机状态下
//    {
//		if(SYS.RC_Value || SYS.HT_Value || SYS.LB_Value)
//		{
//			SYS.STANDBY_Value = 0;//如果RC,HT,LB发生报警就关闭STANDBY
//		}
//		else
//		{
//			SYS.STANDBY_Value = 1;//如果没有报警打开STANDBY
//		}
//    }
//    else//在工作状态下
//    {
//		SYS.STANDBY_Value = 0;
//    }
////	RC_Control(SYS.STANDBY_Value);//输出STANDBY值，值可更改
//    
//    
//    if(SYS.RC_Value == 0 && SYS.LB_Value == 0 && SYS.HT_Value == 0&&
//		SYS.Standby_Work_State == 0 && (SYS.Relay_Release == 0 || SYS.KEY_Value == 1)
//		&& SYS.Long_Time_Change == 0)//待机状态下在RC,HT,LB不报警且夹子不松脱或者是按键导通的条件下进入工作状态,超时导通也会退出
//    {	
//		SYS.Standby_Work_State = 1;
//    }
//    else
//    {
//		SYS.Standby_Work_State == 0;//只要不符合就进入待机状态
//    }
//    /*进入*/
//}