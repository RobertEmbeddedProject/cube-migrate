################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include startup/subdir.mk
-include softwareTimers/startup/subdir.mk
-include softwareTimers/Src/subdir.mk
-include softwareTimers/Middleware/Third_Party/SEGGER/subdir.mk
-include softwareTimers/Middleware/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include softwareTimers/Middleware/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include softwareTimers/Middleware/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
-include softwareTimers/Middleware/Third_Party/FreeRTOS/Source/subdir.mk
-include softwareTimers/Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include softwareTimers/Drivers/STM32F7xx_HAL_Driver/Inc/subdir.mk
-include softwareTimers/BSP/subdir.mk
-include softwareTimers/subdir.mk
-include Src/subdir.mk
-include Middleware/Third_Party/SEGGER/subdir.mk
-include Middleware/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middleware/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/subdir.mk
-include Middleware/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/subdir.mk
-include Middleware/Third_Party/FreeRTOS/Source/subdir.mk
-include Inc/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Inc/subdir.mk
-include BSP/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := LLVM_Testing_Program
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
LLVM_Testing_Program.elf \

MAP_FILES += \
LLVM_Testing_Program.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
LLVM_Testing_Program.list \


# All Target
all:
	+@$(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: LLVM_Testing_Program.elf secondary-outputs

# Tool invocations
LLVM_Testing_Program.elf LLVM_Testing_Program.map: $(OBJS) $(USER_OBJS) ../STM32F767ZI_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "LLVM_Testing_Program.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"../STM32F767ZI_FLASH.ld" --specs=nosys.specs -Wl,-Map="LLVM_Testing_Program.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

LLVM_Testing_Program.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "LLVM_Testing_Program.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) LLVM_Testing_Program.elf LLVM_Testing_Program.list LLVM_Testing_Program.map default.size.stdout
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -O ihex "LLVM_Testing_Program.elf" "LLVM_Testing_Program.hex"
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified post-build

-include ../makefile.targets
