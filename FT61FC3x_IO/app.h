#ifndef	_APP_H_
#define	_APP_H_

#include "syscfg.h"
#include "POWER.h"
#include "task.h"
#include "adc.h"
#include "delay.h"
#include "Timer.h"
#include "ready.h"
#include "Int.h"
#include "RC.h"
#include "BUZZTT.h"
/*函数声明*/

void Initial(void);


/*变量声明*/
typedef struct{

uint8_t Standby_Work_State;	//0:待机状态；1：工作状态

uint8_t HT_Value;		//HT报警标志位;1:不报警；0:报警.其它相反

uint8_t LB_Value;		//LB报警标志位(待机状态下:输入端电压有问题时)

uint8_t RC_Value;		//RC报警标志位(待机：反充，反接，电瓶低电压；工作：继电器粘连)

//uint8_t Relay_sticking;	//继电器粘连标志位(工作)

uint8_t Relay_Release;	//夹子松脱标志位(工作)

uint8_t KEY_Value;		//按键长按导通标志位(待机)

uint8_t Vadc_Value;		//电池端高低压报警标志位

uint8_t Cadc_Value;		//电瓶端低电压报警标志位

//uint8_t Hummer_Value;	//蜂鸣器鸣叫标志位(待机),0:关闭蜂鸣器;1:打开蜂鸣器

uint8_t READY_Value;	//继电器开关标志位

uint8_t STANDBY_Value;	//STANDBY就绪标志位,1:打开；2：关闭

//uint8_t	Long_Ready_Time_Flag;//长READY时间计数标志位

uint8_t	Short_Ready_Time_Flag;//短时间READY时间计标志位

uint16_t Vbattery_Adc;	//电池端模拟电压

uint16_t Cbattery_Adc;	//电瓶端模拟电压

uint8_t	 Long_Time_Change;//电瓶长时间连接变更标志位,1：退出工作状态

uint8_t	 Delay_2s_Flag ;//2S延迟用于检测电池端电压标志位

uint8_t	 Cadc_Ready_Flag ;//在继电器打开2s后检测Cadc的电压

//uint8_t BUZZHH_Change_Flag = 0;//按键蜂鸣器切换标志位;0为按键，1为蜂鸣器.


}sys;

extern sys SYS;


#endif

