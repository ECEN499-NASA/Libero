################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c 

OBJS += \
./main.o 

C_DEPS += \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv64-unknown-elf-gcc -march=rv32im -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreGPIO" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreSPI" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\drivers\CoreUARTapb" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\hal" -I"E:\12.2_Designs\PF\TU0775_MiV\Qality\mpf_tu0775_df\Solution\SoftConsole_Project\MiV_Workspace\MiV_uart_blinky\riscv_hal" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


