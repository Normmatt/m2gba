.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start ArcTan2
ArcTan2: @ 0x080F47BC
	svc #0xa
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x080F47C0
	svc #0xb
	bx lr

	thumb_func_start LZ77UnCompVram
LZ77UnCompVram: @ 0x080F47C4
	svc #0x12
	bx lr

	thumb_func_start LZ77UnCompWram
LZ77UnCompWram: @ 0x080F47C8
	svc #0x11
	bx lr

	thumb_func_start RegisterRamReset
RegisterRamReset: @ 0x080F47CC
	svc #1
	bx lr

	thumb_func_start SoundBiasReset
SoundBiasReset: @ 0x080F47D0
	movs r0, #0
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start SoundBiasSet
SoundBiasSet: @ 0x080F47D8
	movs r0, #1
	svc #0x19
	bx lr
	.align 2, 0

	thumb_func_start Sqrt
Sqrt: @ 0x080F47E0
	svc #8
	bx lr

	thumb_func_start VBlankIntrWait
VBlankIntrWait: @ 0x080F47E4
	movs r2, #0
	svc #5
	bx lr
	.align 2, 0

	thumb_func_start SoftResetRom
SoftResetRom: @ 0x080F47EC
	@ Disable all interrupts
	ldr r3, _080F4800 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	@ Set reset mode to "ROM"/cartridge mode, instead of multiboot mode
	ldr r3, _080F4804 @ =gUnknown_03007FFA
	movs r2, #0
	strb r2, [r3]
	@ Reset the user stack pointer to a known sane value (3007F00)
	subs r3, #0xfa
	mov sp, r3
	@ RegisterRamReset
	svc #1
	@ SoftReset
	svc #0
	.align 2, 0
_080F4800: .4byte 0x04000208
_080F4804: .4byte gUnknown_03007FFA
