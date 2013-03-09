################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/util/delay.c 

OBJS += \
./Libraries/util/delay.o 

C_DEPS += \
./Libraries/util/delay.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/util/%.o: ../Libraries/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Linux GCC C Compiler'
	arm-none-eabi-gcc -DHSE_VALUE=8000000 -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -DUSE_STM32F4_DISCOVERY -I"/home/junpei/workspace/arm/F4_Discovery_Template/src" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/CMSIS/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/Device/STM32F4xx/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/STM32F4xx_StdPeriph_Driver/inc" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/util" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


