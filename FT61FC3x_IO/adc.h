#ifndef	_ADC_H_
#define	_ADC_H_

#include "app.h"
/*宏定义*/

#define Vadc_Low_Value 1911
#define Vadc_High_Value 2388

#define Cadc_LOW_Value 3303

// 定义四阈值
#define Vadc_UV_ACTIVE   1861  // 欠压触发值 (Under Voltage Active)
#define Vadc_UV_RECOVER  1961  // 欠压恢复值 (Under Voltage Recover)
#define Vadc_OV_ACTIVE   2438  // 过压触发值 (Over Voltage Active)
#define Vadc_OV_RECOVER  2338  // 过压恢复值 (Over Voltage Recover)

#define Cadc_7V_ACTIVE   1111  // 欠压触发值 (Under Voltage Active)
#define Cadc_7V_RECOVER  1111  // 欠压恢复值 (Under Voltage Recover)

#define	Cadc_1V_High	 900  //1V的电压范围上限



/*变量声明*/

// 定义状态枚举
typedef enum {
    STATE_NORMAL = 0,
    STATE_UNDER_VOLTAGE,
    STATE_OVER_VOLTAGE
} Battery_State;

/*
	待机状态下,检测电池端电压在14v到17.5v之间为正常，否则LB_Value = 1;
				  
    
    工作状态下,1.检测电池端电压在7v以上为正常，否则LB_Value = 1;(无论导通不导通)
			  2.在READY_OFF的情况下检测Vbattery和Cbattery的电压,并根据
              检测电压判断是否松脱，如果松脱就退出工作状态.
*/

/*函数声明*/

void  Get_Vbattery_Data(void);
void  Get_Cbattery_Data(void);
unsigned int GET_ADC_DATA (unsigned char adcChannel) ;
void ADC_INITIAL(void);
void ADC_Task(void);
void Relay_Release_Detect(void);
void Relay_sticking_Dected(void);

Battery_State Get_Cbattery_Stand_State(uint16_t adc_value);



#endif

