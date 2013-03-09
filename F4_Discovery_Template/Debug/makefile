################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include Libraries/util/subdir.mk
-include Libraries/STM32F4xx_StdPeriph_Driver/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
F4_Discovery_Template.hex \

SECONDARY_LIST += \
F4_Discovery_Template.lst \

SECONDARY_SIZE += \
F4_Discovery_Template.siz \


# All Target
all: F4_Discovery_Template.elf secondary-outputs

# Tool invocations
F4_Discovery_Template.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM Sourcery Linux GCC C++ Linker'
	arm-none-eabi-g++ -T"../stm32f4_flash.ld" -Xlinker --gc-sections -Wl,-Map,F4_Discovery_Template.map -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "F4_Discovery_Template.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

F4_Discovery_Template.hex: F4_Discovery_Template.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Create Flash Image'
	arm-none-eabi-objcopy -O ihex F4_Discovery_Template.elf  "F4_Discovery_Template.hex"
	@echo 'Finished building: $@'
	@echo ' '

F4_Discovery_Template.lst: F4_Discovery_Template.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Create Listing'
	arm-none-eabi-objdump -h -S F4_Discovery_Template.elf > "F4_Discovery_Template.lst"
	@echo 'Finished building: $@'
	@echo ' '

F4_Discovery_Template.siz: F4_Discovery_Template.elf
	@echo 'Invoking: ARM Sourcery Linux GNU Print Size'
	arm-none-eabi-size  --format=berkeley F4_Discovery_Template.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(SECONDARY_FLASH)$(CXX_DEPS)$(S_UPPER_DEPS)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(C++_DEPS)$(ASM_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(C_UPPER_DEPS) F4_Discovery_Template.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
