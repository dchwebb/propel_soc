################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/bsp/driver/gpio/gpio.c 

OBJS += \
./src/bsp/driver/gpio/gpio.o 

C_DEPS += \
./src/bsp/driver/gpio/gpio.d 


# Each subdirectory must supply rules for building sources it contributes
src/bsp/driver/gpio/%.o: ../src/bsp/driver/gpio/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ic -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DLSCC_STDIO_UART_APB -I"D:\docs\FPGA\propel_soc\firmware/src/bsp" -I"D:\docs\FPGA\propel_soc\firmware/src/bsp/driver" -I"D:\docs\FPGA\propel_soc\firmware/src/bsp/driver/gpio" -I"D:\docs\FPGA\propel_soc\firmware/src/bsp/driver/riscv_mc" -I"D:\docs\FPGA\propel_soc\firmware/src/bsp/driver/uart" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


