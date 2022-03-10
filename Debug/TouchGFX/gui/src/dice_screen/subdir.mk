################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../TouchGFX/gui/src/dice_screen/DicePresenter.cpp \
../TouchGFX/gui/src/dice_screen/DiceView.cpp 

OBJS += \
./TouchGFX/gui/src/dice_screen/DicePresenter.o \
./TouchGFX/gui/src/dice_screen/DiceView.o 

CPP_DEPS += \
./TouchGFX/gui/src/dice_screen/DicePresenter.d \
./TouchGFX/gui/src/dice_screen/DiceView.d 


# Each subdirectory must supply rules for building sources it contributes
TouchGFX/gui/src/dice_screen/%.o: ../TouchGFX/gui/src/dice_screen/%.cpp TouchGFX/gui/src/dice_screen/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H750xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I../TouchGFX/App -I../TouchGFX/target/generated -I../TouchGFX/target -I../Middlewares/ST/touchgfx/framework/include -I../TouchGFX/generated/fonts/include -I../TouchGFX/generated/gui_generated/include -I../TouchGFX/generated/images/include -I../TouchGFX/generated/texts/include -I../TouchGFX/generated/videos/include -I../TouchGFX/gui/include -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-threadsafe-statics -Wall -femit-class-debug-always -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-TouchGFX-2f-gui-2f-src-2f-dice_screen

clean-TouchGFX-2f-gui-2f-src-2f-dice_screen:
	-$(RM) ./TouchGFX/gui/src/dice_screen/DicePresenter.d ./TouchGFX/gui/src/dice_screen/DicePresenter.o ./TouchGFX/gui/src/dice_screen/DiceView.d ./TouchGFX/gui/src/dice_screen/DiceView.o

.PHONY: clean-TouchGFX-2f-gui-2f-src-2f-dice_screen

