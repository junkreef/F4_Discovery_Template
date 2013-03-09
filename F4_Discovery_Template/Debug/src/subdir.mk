################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32f4xx_it.c \
../src/system_stm32f4xx.c \
../src/tiny_printf.c 

S_UPPER_SRCS += \
../src/startup_stm32f4xx.S 

OBJS += \
./src/main.o \
./src/startup_stm32f4xx.o \
./src/stm32f4xx_it.o \
./src/system_stm32f4xx.o \
./src/tiny_printf.o 

C_DEPS += \
./src/main.d \
./src/stm32f4xx_it.d \
./src/system_stm32f4xx.d \
./src/tiny_printf.d 

S_UPPER_DEPS += \
./src/startup_stm32f4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Linux GCC C Compiler'
	arm-none-eabi-gcc -DHSE_VALUE=8000000 -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -DUSE_STM32F4_DISCOVERY -I"/home/junpei/workspace/arm/F4_Discovery_Template/src" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/CMSIS/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/Device/STM32F4xx/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/STM32F4xx_StdPeriph_Driver/inc" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/util" -O0 -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Linux GCC Assembler'
	arm-none-eabi-gcc -x assembler-with-cpp -DHSE_VALUE=8000000 -DSTM32F4XX -DUSE_STDPERIPH_DRIVER -DUSE_STM32F4_DISCOVERY -I"/home/junpei/workspace/arm/F4_Discovery_Template/src" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/CMSIS/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/Device/STM32F4xx/Include" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/STM32F4xx_StdPeriph_Driver/inc" -I"/home/junpei/workspace/arm/F4_Discovery_Template/Libraries/util" -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


