#define	__timer_t_defined		// To avoid error c:\lscc\propel\2.0\sdk\riscv-none-embed-gcc\riscv-none-embed\include\sys\types.h:205:19: error: conflicting types for 'timer_t'
#include "utils.h"
#include "pic.h"

uint8_t interrupt;

void gpio_interrupt_handler(void* context) {
	interrupt++;
	((GPIO_TypeDef*)context)->INT_STATUS = 0xF;		// Clear the interrupt on the GPIO peripheral
}

int main(void) {
	// Register IRQ handler for GPIO interrupts (this also enables the interrupt)
	pic_init(CPU0_INST_PICTIMER_START_ADDR);
	pic_isr_register(GPIO1_INST_IRQ, gpio_interrupt_handler, GPIO1);

	// Interrupt on All input GPIO1 pins rising edge
	GPIO1->DIRECTION = 0x0;			// Set direction of all 4 pins to input
	GPIO1->INT_ENABLE = 0xF;		// Enable interrupts on pins 0-3
	GPIO1->INT_TYPE = 0x00;			// 0 = Edge, 1 = Level
	GPIO1->INT_METHOD = 0xF;		// 1 = Rising edge

	static uint8_t idx = 0;
	uartPutS("Hello RISC-V world!\r\n");
	//LED_SET(ALL_OFF);
	GPIO0->WR_DATA = ALL_OFF;

	while (true) {
		LED_SET(LED_ON(idx));

		if (++idx == LED_COUNT) {
			idx = 0;
		}

		if (RTL_SIM) {
			delayMS(1);
		} else {
			delayMS(500);
		}
	}

	return 0;
}

