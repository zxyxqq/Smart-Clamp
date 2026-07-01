#ifndef	_READY_H_
#define	_READY_H_

#include "app.h"


#define Ready_Open 1
#define	Ready_Close 0



/*º¯ÊıÉùÃ÷*/

void Ready_Init(void);
void Ready_Control(uint8_t num);
void READY_Task(void);



#endif

