#ifndef __myIIC_H
#define __myIIC_H



#include "ls1x_gpio.h"
#include "ls1x_latimer.h"



// #define myI2C_Soft_SCL GPIO_PIN_1
// #define myI2C_Soft_SDA GPIO_PIN_57
 
#define myI2C_Soft_SCL GPIO_PIN_15
#define myI2C_Soft_SDA GPIO_PIN_14

#define myI2C_SCL_LOW     gpio_write_pin(myI2C_Soft_SCL, 0);
#define myI2C_SCL_HIGH 	gpio_write_pin(myI2C_Soft_SCL, 1);
#define myI2C_SDA_LOW  	gpio_write_pin(myI2C_Soft_SDA, 0);
#define myI2C_SDA_HIGH	gpio_write_pin(myI2C_Soft_SDA, 1);
#define myI2C_SDA_READ	gpio_get_pin(myI2C_Soft_SDA)



//myIIC所有操作函数
void myIIC_Delay(void);				        //MPU myIIC延时函数
void myIIC_Init(void);                        //初始化myIIC的IO口				 
void myIIC_Start(void);				        //发送myIIC开始信号
void myIIC_Stop(void);	  			        //发送myIIC停止信号
void myIIC_Send_Byte(uint8_t txd);			//myIIC发送一个字节
uint8_t myIIC_Read_Byte(unsigned char ack);   //myIIC读取一个字节
uint8_t myIIC_Wait_Ack(void); 				//myIIC等待ACK信号
void myIIC_Ack(void);					        //myIIC发送ACK信号
void myIIC_NAck(void);				        //myIIC不发送ACK信号



#endif 
