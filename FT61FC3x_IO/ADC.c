#include "adc.h"


/*ADC的引脚只用于检测两端电池的正常电压。*/


/*注：PA1和PA4共同打线，因此共同配置*/
/*	ADC配置

1.通道选择 
2.ADC参考电压 
3.ADC转换时钟源 
4.转换结果格式 
5.触发源 
6.ADC延时或前沿消隐 (LEB) 
7.阈值比较 (可选) 
8.响应 (中断设置) 
	


*/

/*
1.确定理想电压范围:1.4V~1.75V(Vadc);2.42V(Cadc)
2.选择参考电压5V,VDD。
3.计算理想电压对应的ADC值。

1.4V->(Vadc)
1.75->(Vadc)
2.42V->(Cadc)

4.确定ADC阈值比较方式
	


*/



//static uint16_t Vbattery_Adc = 0;//供电电池模拟量-AN0
//static uint16_t Cbattery_Adc = 0;//汽车电瓶模拟量-AN1




/*-------------------------------------------------
 *  函数名ADC_INITIAL
 *	功能：  ADC初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	

void ADC_INITIAL(void)
{
	PORTA  |= 0B00000000;		
	TRISA  |= 0B00010011;	//PA输入输出 0-输出 1-输入
							//PA0-Vadc PA1-Cbat	
    ANSEL0 = 0B00000011;    //模拟口设置，AN0,AN1为模拟管脚

	ADCON1 = 0B11100101; 	//右对齐，转换时钟許SYSCLK，负参考电压GND，正参考电压VDD
    
	ADCON0 = 0B00000000; 	//选择AD转换通道0，软件触发ADC
    
	DelayUs(450);            //必须要延时450us

    ADCON2 = 0B11000000; 	//不选择内部正参考电，无外部触发源

    ADCON3 = 0B00000000; 
    //Bit7:ADFBEN ADC比较结果响应故障刹车使能
	//0 = 禁止
	//1 = 使能
    ADCMPH = 0B00000000;	//ADC比较阈值,仅8位，用于ADC结果高8位比较。
    
    ADON=1;                 //使能ADC
    
	DelayMs(1);            //打开ADC模块后，需等待ADC稳定时间Tst(~15us); 
}

/*-------------------------------------------------
 *  函数名: GET_ADC_DATA
 *	功能：  读取通道ADC值
 *  输入：  adcChannel 通道序号
 *  输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
unsigned int GET_ADC_DATA (unsigned char adcChannel) 
{ 
	unsigned char ADCON0Buff; 
    ADCON0Buff = ADCON0&0B00000111;
    adcChannel<<=3; 
    ADCON0Buff |= adcChannel; 				   
    ADCON0 = ADCON0Buff; 		  //重新加载通道值
    DelayUs(10);                      //TACQ延时2us,外部串联电阻小于21kΩ
                                    //TACQ延时4us,外部串联电阻43kΩ
    //TACQ时间：必做，通道切换到GO/DONE置1的时间,保证内部 ADC 输入电容充满。
    //TACQ > 0.09*(R+1)us;R为外部串联电阻(kΩ),串联电阻越小越好，最大不要超过50kΩ
    
	ADCON0 = ADCON0|0x02;             //启动ADC 
                                      //采样保持时间0~1TAD
    NOP();  
    NOP();
	while(ADCON0&0x02);    			  //等待ADC转换完成
    //从GO_DONE = 1 ---> 从GO_DONE = 0,转换过程需要15TAD ~16TAD
    //TAD(us)与转换时钟Fosc/ADCS[2:0]有关
        
    return(unsigned int)(ADRESH<<8|ADRESL);  //整合12位AD值
} 
/*-------------------------------------------------
 *  函数名: Get_Vbattery_Data
 *	功能：  读取通道ADC值
 *  输入：  
 *  输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
void  Get_Vbattery_Data(void)
{
	SYS.Vbattery_Adc = GET_ADC_DATA(0);
}
/*-------------------------------------------------
 *  函数名: Get_Cbattery_Data
 *	功能：  读取通道ADC值
 *  输入：  
 *  输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
void  Get_Cbattery_Data(void)
{
	SYS.Cbattery_Adc = GET_ADC_DATA(1);
}
/*-------------------------------------------------
 *  函数名: Get_Vbattery_State
 *	功能：  获Vadc电压状态
 *  输入：  adc_value
 *  输出：  Battery_State
 --------------------------------------------------*/

Battery_State Get_Vbattery_Stand_State(uint16_t adc_value)
{
    static Battery_State current_state = STATE_NORMAL;
    
    switch(current_state)
    {
		case STATE_NORMAL:
			if(adc_value<Vadc_UV_ACTIVE)
            {
				current_state = STATE_UNDER_VOLTAGE;
            }
            else if(adc_value>Vadc_OV_ACTIVE)
            {
				current_state = STATE_OVER_VOLTAGE;            
            }
            break;
            
       case STATE_UNDER_VOLTAGE:
            // 欠压状态下，只有回升超过 Vadc_UV_RECOVER 才退出（防止抖动）
            if (adc_value >= Vadc_UV_RECOVER) 
            {
                current_state = STATE_NORMAL;
            }
            // 注意：即使电压进一步跌到 1000，依然稳定在欠压状态，不会误判为过压
            break;

        case STATE_OVER_VOLTAGE:
            // 过压状态下，只有回落低于 Vadc_OV_RECOVER 才退出（防止抖动）
            if (adc_value <= Vadc_OV_RECOVER) 
            {
                current_state = STATE_NORMAL;
            }
            // 注意：即使电压进一步飙到 3000，依然稳定在过压状态
            break;
    }
	return current_state;
}

/*-------------------------------------------------
 *  函数名: Get_Cbattery_State
 *	功能：  获Cadc电压状态(7v)
 *  输入：  adc_value
 *  输出：  Battery_State
 --------------------------------------------------*/
Battery_State Get_Cbattery_Stand_State(uint16_t adc_value)
{
    static Battery_State current_state = STATE_NORMAL;
    
    switch(current_state)
    {
		case STATE_NORMAL:
			if(adc_value<Cadc_7V_ACTIVE)//7V阈值
            {
				current_state = STATE_UNDER_VOLTAGE;
            }
            break;
            
       case STATE_UNDER_VOLTAGE:
            // 欠压状态下，只有回升超过 Cadc_UV_RECOVER 才退出（防止抖动）
            if (adc_value >= Cadc_7V_RECOVER) 
            {
                current_state = STATE_NORMAL;
            }
            // 注意：即使电压进一步跌到 1000，依然稳定在欠压状态，不会误判为过压
            break;
    }
	return current_state;
}
/*-------------------------------------------------
 *  函数名: Relay_Detection
 *	功能：  继电器状态检测
 *  输入：  
 *  输出：  
 --------------------------------------------------*/

//void Relay_Detection(void)
//{
//	if(SYS.Standby_Work_State)//在工作状态下
//	{
//		if(Vbattery_Adc == Cbattery_Adc)//如果两端电压相等代表粘连
//        {
//			SYS.Relay_sticking = 1;
//        }
//        else
//        {
//			SYS.Relay_sticking = 0;
//        }
//        
//        if(Cbattery_Adc == 0)//如果Cbattery电压为0代表松脱
//        {
//			SYS.Relay_Release = 1;
//        }
//        else
//        {
//			SYS.Relay_Release = 0;
//        }
//		
//    }
//}

/*-------------------------------------------------
 *  函数名: Relay_Release_Detect
 *	功能： 	继电器Cbattery:1V(Cbat:0.978V~1.021V)电压范围的松脱检测判断
 *  输入：  
 *  输出： 
 --------------------------------------------------*/
void Relay_Release_Detect(void)
{
	if(SYS.Standby_Work_State == 0)//在待机状态下
    {
		if(SYS.Cadc_Value<Cadc_1V_High)//Cbat<1.021V
		{
			SYS.Relay_Release = 1;//松脱标志位
            SYS.Long_Time_Change = 0;//松脱之后导通超时重新计时
		}
		else
		{
			SYS.Relay_Release = 0;
		}
    }

}
/*-------------------------------------------------
 *  函数名: Relay_sticking_Dected
 *	功能： 	继电器粘连检测
 *  输入：  
 *  输出： 
 --------------------------------------------------*/
  /*
	如果是工作状态下夹子松脱先进行短时间Short_Ready_Time++；
    超过一定时间Short_Ready_Time_Flag = 1;//退出工作状态，进入待机状态
    如果是待机状态下，就一直检测是否松脱即可
 
 */

//void Relay_sticking_Dected(void)
//{
//	if(SYS.Vadc_Value == SYS.Cadc_Value)//2.粘连检测:电压相等代表粘连
//	{
//		SYS.Relay_sticking = 1;
//	}
//	else
//	{
//		SYS.Relay_sticking = 0;//在不粘连的情况下,判断松脱检测
//		/*只需要1V的电压范围进行判断，因为work的时候电压不会为1V
//			即便继电器断开，电压也是慢慢跌落的。
//		*/
//	}
//}
//void ADC_Task(void)
//{
//	Get_Vbattery_Data();
//    Get_Cbattery_Data();
//}
/*-------------------------------------------------
 *  函数名: ADC_Task
 *	功能：  ADC任务
 *  输入：  
 *  输出： 
 --------------------------------------------------*/
void ADC_Task(void)
{
/*获取电压*/
	Get_Vbattery_Data();
	Get_Cbattery_Data();
    
//    /*松脱报警无论什么状态，只要松脱就不进入相应状态或者是退出当前状态*/
//	Relay_Release_Detect();
//	
//	/*待机状态下判断电池端高低电压;只有为0时才是正常电压范围*/
//	if(SYS.Standby_Work_State == 0)
//    {
////		Relay_Release_Detect();//检测松脱			
//		SYS.Vadc_Value = Get_Vbattery_Stand_State(SYS.Vbattery_Adc);
//        
//        if(SYS.Vadc_Value == 0)//电池端电压没有问题
//        {
//			SYS.LB_Value = 0;
//        }
//        else
//        {
//			SYS.LB_Value = 1;//LB报警
//        }
//        
//    }
//    else if(SYS.Standby_Work_State)/*工作状态下*/
//    {
//		/*
//			1.在继电器断开的前提下
//			2.先进行粘连检测(区域范围？)
//            3.再进行松脱检测(区域范围?)
//        */
//        /*
//			什么时候判断电压?
//            继电器打开一定输出电压吗？
//        
//        */
//			if(SYS.READY_Value == 1)//在工作状态下且继电器打开的时候
//			{
//				if(SYS.Cadc_Ready_Flag == 1)//2s延迟过后
//				{
//					SYS.Cadc_Ready_Flag = 0;
//					SYS.Cadc_Value = Get_Cbattery_Stand_State(SYS.Cbattery_Adc);//获取Cbat电压用于判?
//                    if(SYS.Cadc_Value != 0)//判断电池端电压是否正常
//                    {
//						SYS.LB_Value = 1;//报警
//                    }
//                    else
//                    {
//						SYS.LB_Value = 0;
//                    }
//                }
//			}
//        
////        if(SYS.READY_Value == 0)//1.在继电器断开的前提下
////        {
////			Get_Vbattery_Data();
////			Get_Cbattery_Data();
//        
////			Relay_Release_Detect();
////			Relay_sticking_Dected();//粘连检测
////        }
//    }
}