/******************************************************
 * 实验名称：温湿度监测实验
 *
 * 实验准备：龙芯1C102开发板，ESP8266模块，通讯底板，
            温湿度传感器，4P小白线，3P小白线
 *
 * 实验接线：ESP8266模块接到龙芯1C102开发板的UART0接口，
            使用通讯底板连接ESP8266模块的TXD和RXD接口
            到开发板的GPIO_Pin_06和GPIO_Pin_07接口，
 *
 * 实验现象：通过ESP8266上传温湿度数据至云平台
******************************************************/
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ZigBee.h"
#include "ls1c102_interrupt.h"
#include "iic.h"
#include "UserGpio.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "queue.h"
#include "ls1x_clock.h"


#define LED 20

char str[50];
static uint16_t temperature;
static uint16_t humidity;

uint8_t received_data = 0;

uint8_t Read_Buffer[255]; // 设置接收缓冲数组
uint8_t Read_length;
uint8_t da = 0;
int main(int arg, char *args[])
{
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    
    EnableInt(); // 开总中断

    Queue_Init(&Circular_queue);
    BEEP_Init();
    DL_LN3X_Init(DL_LN3X_NODE,CHANNEL,Network1_Id);

    OLED_Show_Str(10, 0, "ZigBee通信实验", 16); // OLED显示界面
    OLED_Show_Str(20, 3, "RX:     ", 16);     // OLED显示界面
    OLED_Show_Str(20, 6, "TX:     ", 16);
    UART_SendData(UART0, 0xFE);
    while (1)
    {
        da++;

        delay_ms(1000);
        if(da >= 10)
        da = 0;
        sprintf(str, "%d", da);
        Send_ZigBee_data(2, str, sizeof(str), 0x0001);
        
        OLED_Show_Str(20, 6, str, 16);

      if (Queue_isEmpty(&Circular_queue) == 0) // 判断队列是否为空，即判断是否收到数据
        {
            Read_length = Queue_HadUse(&Circular_queue); // 返回队列中数据的长度
            Queue_Read(&Circular_queue, Read_Buffer, Read_length); // 读取队列缓冲区的值到接收缓冲区
            OLED_Show_Str(40, 6, Read_Buffer, 16);
            OLED_Show_Str(20, 6, "1", 16);
        }
        else
        {
            memset(Read_Buffer, 0, 255); // 填充接收缓冲区为0
        }
    }

    return 0;
}
