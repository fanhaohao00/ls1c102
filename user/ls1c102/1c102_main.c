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
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_exti.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "ls1x_clock.h"

#include "iic.h"
#include "oled.h"
#include "dht11.h"
#include "BEEP.h"
#include "key.h"
#include "led.h"
#include "ls1c102_adc.h"
#include "myIIC.h"
#include "BH1750.h"

#define LED 20

char str[50];
char st[50];
char show[20];
static uint16_t qiya=95;
static uint16_t temperature;
static uint16_t humidity;
static uint16_t guangzhao;
static uint16_t value; static uint16_t jiujin;
uint8_t data[8] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB}; //温湿度数据上云平台    数据包
uint8_t data1[8] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB};

int main(int arg, char *args[])
{
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    OLED_Init();
    EnableInt(); // 开总中断
    BH1750_Init();
    // Queue_Init(&Circular_queue);
    BEEP_Init();
    Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
    
    AFIO_RemapConfig(AFIOB, GPIO_PIN_16, 0);        // 初始化ADC通道4引脚
    Adc_powerOn();                                  // 打开ADC电源
    Adc_openGroup(ADC_EN_I6);  
    //OLED_Show_Str(10, 0, "温湿度监测", 16); // OLED显示界面

    while (DHT11_Init()) // 检测是否接入温湿度传感器
    {
        OLED_Show_Str(10, 4, "未检测到传感器", 16); // OLED显示界面
    }
    //OLED_Show_Str(0, 4, "                ", 16); // OLED显示界面
    //OLED_Show_Str(20, 3, "温度:     ℃", 16);     // OLED显示界面
    //OLED_Show_Str(20, 6, "湿度:     %RH", 16);
    while (1)
    {   
 //*************************************************************
         guangzhao = BH1750_Test();
         sprintf(show, "guangzao:%3d Lx ",guangzhao); 
         OLED_Show_Str(0, 0, show, 16);  
 //*************************************************************       
          value = Adc_Measure(ADC_CHANNEL_I6);         
          jiujin = value *400 / 22500-10;
        sprintf(st, "jiujin:%4d mg/L",jiujin);                 
        //OLED_Show_Str(0, 0, st, 16);               
        delay_ms(1000);
//*************************************************************
        DHT11_Read_Data(&temperature, &humidity); // 读取温湿度值

        sprintf(str, "温度:%2d℃", temperature / 10);     
        OLED_Show_Str(0, 3, str, 16);           //显示温度
        sprintf(str, "湿度:%2dRH", humidity / 10);
        OLED_Show_Str(0, 6, str, 16);           //显示湿度
//*************************************************************
     
//*************************************************************
        data[2] = temperature / 10;     //将温湿度数据存放至数据包中
        data[3] = humidity / 10;
        data[4] = jiujin-25 ;
        data[5] = guangzhao;
        //data[6] = qiya;//气压


 
 //*************************************************************       
        if(wifi_connected == 0)
        {
            if(esp8266_check_cmd('T'))     //当收到'T'字符时，表示ESP8266连接成功
            {
                OLED_Clear(); // OLED显示界面
                wifi_connected = 1;
                OLED_Show_Str(12, 3, "已连接到WIFI", 16);
                delay_ms(1000);
                OLED_Clear(); // OLED显示界面
                delay_ms(500);
                //OLED_Show_Str(0, 0, "监测", 16); // OLED显示界面
                //OLED_Show_Str(0, 3, "温度:    ℃", 16);     // OLED显示界面
                //OLED_Show_Str(0, 6, "湿度:    %RH", 16);
                
                gpio_write_pin(LED, 1);
                BEEP_ON;
                delay_ms(500);
                BEEP_OFF;
            }
        }
        if(wifi_connected == 1)
        {
            delay_ms(1500);
            data[6] = (data[2] + data[3] + data[4] + data[5]) % 256;   //计算校验和
            printf("%s",data);
            UART_SendDataALL(UART0, data, 8);
        /******************************************************************************/
 
        }
        /******************************************************************************/
if( jiujin-25>10)     
{
    gpio_write_pin(LED2_PIN, 1); // 点亮LED2作为视觉警告
    for(int i = 0; i < 5; i++) { // 循环5次以产生急促效果
        BEEP_ON;               // 蜂鸣器开
        delay_ms(100);         // 短暂延时，这里设置为100毫秒，可根据需要调整
        BEEP_OFF;              // 蜂鸣器关
        delay_ms(100);         // 再次短暂延时
    }
    gpio_write_pin(LED2_PIN, 0); // 在急促叫声结束后熄灭LED2
}
        
    }

    return 0;
}
