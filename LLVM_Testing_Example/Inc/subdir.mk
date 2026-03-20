################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/stm32f7xx_hal_spi.c 

OBJS += \
./Inc/stm32f7xx_hal_spi.o 

C_DEPS += \
./Inc/stm32f7xx_hal_spi.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/%.o Inc/%.su Inc/%.cyclo: ../Inc/%.c Inc/subdir.mk
	arm-none-eabi-gcc -c "$<" -mcpu=cortex-m7 -std=gnu11 -g3 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F767xx -DUSE_FULL_ASSERT=1 -c -I../Inc -I../../BSP -I../../Drivers/CMSIS/Include -I../../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../../Drivers/STM32F7xx_HAL_Driver/Inc -I../../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../../Middleware/Third_Party/FreeRTOS/Source/include -I../../Middleware/Third_Party/SEGGER -I../../Middleware/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middleware/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Inc

clean-Inc:
	-$(RM) ./Inc/stm32f7xx_hal_spi.cyclo ./Inc/stm32f7xx_hal_spi.d ./Inc/stm32f7xx_hal_spi.o ./Inc/stm32f7xx_hal_spi.su

.PHONY: clean-Inc

