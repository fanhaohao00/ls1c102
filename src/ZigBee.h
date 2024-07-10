#ifndef __ZIGBEE_H
#define __ZIGBEE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"

//节点ID：
#define ZIGBEE_NODE 01
//节点ID：0x0003节点1、0x0004节点2(ZigBee初始化)
#define DL_LN3X_NODE 0x0001     
//信道
#define CHANNEL 0x12
//ID
#define Network1_Id 0x0003

typedef struct {
    uint8_t Data_Head_H;
	uint8_t Data_Head_L;
    uint8_t Noid_High;
    uint8_t Noid_Low;
    uint8_t Data_Mode;
    uint8_t Data_Len;
    uint8_t Data_Check;
    uint8_t Data_End;
} Send_Data_TypeDef;

uint8_t DL_LN3X_Init(uint16_t address, uint16_t channel, uint16_t Network_Id);

void DL_LN3X_Reset(void);
void DL_LN3X_Baud_Rate(uint16_t Baud_Rate);
void DL_LN3X_Network_Id(uint16_t Network_Id);
void DL_LN3X_Channel(uint16_t channel);
void DL_LN3X_Address(uint16_t address);
void DL_LN3X_Send(uint8_t *buf,uint8_t length, uint16_t address);
void Send_ZigBee_data(uint8_t Noid_id, uint8_t *data,uint8_t data_len, uint16_t address);


#ifdef __cplusplus
}
#endif

#endif