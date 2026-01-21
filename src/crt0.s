#include "gba/io_reg.h"
.include "asm/macros.inc"

.syntax unified
.section .text

	arm_func_start start
start: @ 0x08000000
	b crt0
	.include "asm/rom_header.inc"
    
crt0:
	@ Set sp_irq
    mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =gUnknown_03007FA0
    @ Set normal initial sp for user/system mode
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =gUnknown_03007E00
    @ Set user IRQ handler
	ldr r1, _080001AC @ =gUnknown_03007FFC
	adr r0, DefaultIRQHandler
	str r0, [r1]
    @ Call main
	ldr r1, _080001B0 @ =AgbMain
	mov lr, pc
	bx r1
    @ If main returns... just do all of that again, why not
	b crt0
	.align 2, 0
_080000F4: .4byte gUnknown_03007E00
_080000F8: .4byte gUnknown_03007FA0

    @ This is not the IRQ handler you are looking for. This function is used only at boot,
    @ until a different function is copied into RAM.
	arm_func_start DefaultIRQHandler
DefaultIRQHandler: @ 0x080000FC
	@ Find which interrupt was requested, from those enabled
    mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	and r1, r2, r2, lsr #16
    @ For a cartridge IRQ, turn all sound off and hang
	ands r0, r1, #0x2000 @ Game Pak
	strbne r0, [r3, #-0x17c]
_08000114:
	bne _08000114
    @ Otherwise, set R2 to the offset into the default IRQ list of the right function.
    @ The list of specific IRQ handlers follows the same order as the handling priority.
	@ Serial
    mov r2, #0
	ands r0, r1, #0x80
	bne _08000198
	@ VBlank
	add r2, r2, #4
	ands r0, r1, #1
	bne _08000198
	@ HBlank
	add r2, r2, #4
	ands r0, r1, #2
	bne _08000198
	@ Timer 0
	add r2, r2, #4
	ands r0, r1, #8
	bne _08000198
	@ Timer 1
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _08000198
	@ Timer 3
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _08000198
	@ DMA 0
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _08000198
	@ DMA 1
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _08000198
	@ DMA 2
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _08000198
	@ DMA 3
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _08000198
	@ Keypad
	add r2, r2, #4
	ands r0, r1, #0x1000
_08000198:
	@ Write this single isolated flag to IF, to acknowledge the interrupt
    strh r0, [r3, #2]
    @ Call the interrupt handler at the given offset and return
	ldr r1, _080001B4 @ =gUnknown_080FA4B0
	add r1, r1, r2
	ldr r0, [r1]
	bx r0
	.align 2, 0
_080001AC: .4byte gUnknown_03007FFC
_080001B0: .4byte AgbMain
_080001B4: .4byte gUnknown_080FA4B0
