################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_OFF.cpp \
../TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_ON.cpp 

OBJS += \
./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_OFF.o \
./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_ON.o 

CPP_DEPS += \
./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_OFF.d \
./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_ON.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/generated/images/src/__designer/%.o: ../TouchGFX/generated/images/src/__designer/%.cpp TouchGFX/generated/images/src/__designer/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O1 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-threadsafe-statics -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer

clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer:
	-$(RM) ./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_OFF.d ./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_OFF.o ./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_ON.d ./TouchGFX/generated/images/src/__designer/image_Blue_Togglebars_Toggle_round_large_button_ON.o

.PHONY: clean-TouchGFX-2f-generated-2f-images-2f-src-2f-__designer

