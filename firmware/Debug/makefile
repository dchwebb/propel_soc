################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/bsp/driver/uart/subdir.mk
-include src/bsp/driver/riscv_mc/subdir.mk
-include src/bsp/driver/gpio/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_LIST += \
firmware.lst \

SECONDARY_SIZE += \
firmware.siz \

SECONDARY_MEMORY += \
firmware.mem \


# All Target
all: firmware.elf secondary-outputs

# Tool invocations
firmware.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU RISC-V Cross C++ Linker'
	riscv-none-embed-g++ -march=rv32ic -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -T "D:/docs/FPGA/propel_soc/firmware/src/linker.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"firmware.map" --specs=nano.specs --specs=nosys.specs -o "firmware.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

firmware.lst: firmware.elf
	@echo 'Invoking: GNU RISC-V Cross Create Listing'
	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide "firmware.elf" > "firmware.lst"
	@echo 'Finished building: $@'
	@echo ' '

firmware.siz: firmware.elf
	@echo 'Invoking: GNU RISC-V Cross Print Size'
	riscv-none-embed-size --format=berkeley "firmware.elf"
	@echo 'Finished building: $@'
	@echo ' '

firmware.mem: firmware.elf
	@echo 'Invoking: Lattice Create Memory Deployment'
	riscv-none-embed-objcopy -O binary --gap-fill 0 "firmware.elf" "firmware.bin"; srec_cat "firmware.bin" -Binary -byte-swap 4 -DISable Header -Output "firmware.mem" -MEM 32
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(SECONDARY_MEMORY)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) firmware.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_LIST) $(SECONDARY_SIZE) $(SECONDARY_MEMORY)

.PHONY: all clean dependents

-include ../makefile.targets
