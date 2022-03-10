/**
  ******************************************************************************
  * File Name          : STM32TouchController.cpp
  ******************************************************************************
  * This file is generated by TouchGFX Generator 4.18.1.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* USER CODE BEGIN STM32TouchController */

#include <STM32TouchController.hpp>
extern "C"
{
#include "stm32h7xx_hal.h"
I2C_HandleTypeDef hi2c1;
}


  #define GTP_ADDRESS_WRITE          0x28
  #define GTP_ADDRESS_READ           0x29
void STM32TouchController::init()
{
    /**
     * Initialize touch controller and driver
     *
     */
}

bool STM32TouchController::sampleTouch(int32_t& x, int32_t& y)
{
    /**
     * By default sampleTouch returns false,
     * return true if a touch has been detected, otherwise false.
     *
     * Coordinates are passed to the caller by reference by x and y.
     *
     * This function is called by the TouchGFX framework.
     * By default sampleTouch is called every tick, this can be adjusted by HAL::setTouchSampleRate(int8_t);
     *
     */
	static uint8_t buf[6]={0x81,0x4E,0,0,0,0};   //寄存器地
	static uint8_t bufs[6]={0x81,0x50,0,0,0,0};   //数据

	  HAL_I2C_Master_Transmit(&hi2c1,GTP_ADDRESS_WRITE,&buf[0],2,100);
	  HAL_I2C_Master_Receive(&hi2c1, GTP_ADDRESS_READ, &buf[2],1,100);
	  if(buf[2]>>7==1)
	  {
		  if(buf[2]<<5!=0)
		  {
			  HAL_I2C_Master_Transmit(&hi2c1,GTP_ADDRESS_WRITE,&bufs[0],2,50);
			  HAL_I2C_Master_Receive(&hi2c1, GTP_ADDRESS_READ, &bufs[2],4,50);
			  x=bufs[2]|bufs[3]<<8;
			  y=bufs[4]|bufs[5]<<8;
			  buf[2]=0;
			  HAL_I2C_Master_Transmit(&hi2c1,GTP_ADDRESS_WRITE,&buf[0],3,50);
			  return true;
		  }
		  else
		  {
			  return false;
		  }
	  }
	  else
	  {
		  return false;
	  }

}

/* USER CODE END STM32TouchController */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
