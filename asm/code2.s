.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_80E2BC8
sub_80E2BC8: @ 0x080E2BC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080E2BEC @ =gUnknown_02024860
	movs r1, #0x48
	adds r1, r1, r0
	mov r8, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	adds r7, r0, #0
	cmp r5, #1
	beq _080E2C40
	cmp r5, #1
	bgt _080E2BF0
	cmp r5, #0
	beq _080E2BF8
	b _080E2DB4
	.align 2, 0
_080E2BEC: .4byte gUnknown_02024860
_080E2BF0:
	cmp r5, #2
	bne _080E2BF6
	b _080E2D98
_080E2BF6:
	b _080E2DB4
_080E2BF8:
	ldr r6, _080E2C34 @ =gUnknown_03000ABE
	ldr r4, _080E2C38 @ =gUnknown_08B1F58C
	movs r0, #0x10
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r6]
	cmp r0, #0xf
	bls _080E2C12
	strh r5, [r6]
_080E2C12:
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r1, _080E2C3C @ =gUnknown_08B1F59C
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80DB168
	movs r0, #1
	mov r1, r8
	strh r0, [r1]
	b _080E2DB4
	.align 2, 0
_080E2C34: .4byte gUnknown_03000ABE
_080E2C38: .4byte gUnknown_08B1F58C
_080E2C3C: .4byte gUnknown_08B1F59C
_080E2C40:
	ldr r0, _080E2C58 @ =gUnknown_03000ABE
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #9
	bls _080E2C4C
	b _080E2D7A
_080E2C4C:
	lsls r0, r0, #2
	ldr r1, _080E2C5C @ =_080E2C60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E2C58: .4byte gUnknown_03000ABE
_080E2C5C: .4byte _080E2C60
_080E2C60: @ jump table
	.4byte _080E2C88 @ case 0
	.4byte _080E2CA0 @ case 1
	.4byte _080E2CB8 @ case 2
	.4byte _080E2CD0 @ case 3
	.4byte _080E2CF8 @ case 4
	.4byte _080E2D20 @ case 5
	.4byte _080E2D34 @ case 6
	.4byte _080E2D48 @ case 7
	.4byte _080E2D5C @ case 8
	.4byte _080E2D70 @ case 9
_080E2C88:
	bl sub_80E24FC
	bl sub_80E2670
	ldr r1, _080E2C98 @ =gUnknown_02024860
	ldr r0, _080E2C9C @ =sub_80EA9C4
	b _080E2D78
	.align 2, 0
_080E2C98: .4byte gUnknown_02024860
_080E2C9C: .4byte sub_80EA9C4
_080E2CA0:
	bl sub_80E24FC
	bl sub_80E2670
	ldr r1, _080E2CB0 @ =gUnknown_02024860
	ldr r0, _080E2CB4 @ =sub_80EA9F8
	b _080E2D78
	.align 2, 0
_080E2CB0: .4byte gUnknown_02024860
_080E2CB4: .4byte sub_80EA9F8
_080E2CB8:
	bl sub_80E24FC
	bl sub_80E2670
	ldr r1, _080E2CC8 @ =gUnknown_02024860
	ldr r0, _080E2CCC @ =sub_80EAA6C
	b _080E2D78
	.align 2, 0
_080E2CC8: .4byte gUnknown_02024860
_080E2CCC: .4byte sub_80EAA6C
_080E2CD0:
	bl sub_80E24FC
	bl sub_80E2670
	bl sub_80E2790
	ldr r4, _080E2CEC @ =gUnknown_0300534C
	ldr r0, [r4]
	bl sub_80E26BC
	str r0, [r4]
	ldr r1, _080E2CF0 @ =gUnknown_02024860
	ldr r0, _080E2CF4 @ =sub_80EAA2C
	b _080E2D78
	.align 2, 0
_080E2CEC: .4byte gUnknown_0300534C
_080E2CF0: .4byte gUnknown_02024860
_080E2CF4: .4byte sub_80EAA2C
_080E2CF8:
	bl sub_80E2554
	bl sub_80E2670
	bl sub_80E2790
	ldr r4, _080E2D14 @ =gUnknown_0300534C
	ldr r0, [r4]
	bl sub_80E26BC
	str r0, [r4]
	ldr r1, _080E2D18 @ =gUnknown_02024860
	ldr r0, _080E2D1C @ =sub_80E2DF4
	b _080E2D78
	.align 2, 0
_080E2D14: .4byte gUnknown_0300534C
_080E2D18: .4byte gUnknown_02024860
_080E2D1C: .4byte sub_80E2DF4
_080E2D20:
	bl sub_80E2624
	ldr r1, _080E2D2C @ =gUnknown_02024860
	ldr r0, _080E2D30 @ =sub_80E2ED0
	b _080E2D78
	.align 2, 0
_080E2D2C: .4byte gUnknown_02024860
_080E2D30: .4byte sub_80E2ED0
_080E2D34:
	bl sub_80E2624
	ldr r1, _080E2D40 @ =gUnknown_02024860
	ldr r0, _080E2D44 @ =sub_80EAB60
	b _080E2D78
	.align 2, 0
_080E2D40: .4byte gUnknown_02024860
_080E2D44: .4byte sub_80EAB60
_080E2D48:
	bl sub_80E2624
	ldr r1, _080E2D54 @ =gUnknown_02024860
	ldr r0, _080E2D58 @ =sub_80EAE34
	b _080E2D78
	.align 2, 0
_080E2D54: .4byte gUnknown_02024860
_080E2D58: .4byte sub_80EAE34
_080E2D5C:
	bl sub_80E2624
	ldr r1, _080E2D68 @ =gUnknown_02024860
	ldr r0, _080E2D6C @ =sub_80EAE88
	b _080E2D78
	.align 2, 0
_080E2D68: .4byte gUnknown_02024860
_080E2D6C: .4byte sub_80EAE88
_080E2D70:
	bl sub_80E2624
	ldr r1, _080E2DC0 @ =gUnknown_02024860
	ldr r0, _080E2DC4 @ =sub_80E3AA4
_080E2D78:
	str r0, [r1, #0x70]
_080E2D7A:
	ldr r4, _080E2DC0 @ =gUnknown_02024860
	adds r1, r4, #0
	adds r1, #0x48
	movs r0, #2
	strh r0, [r1]
	ldr r0, _080E2DC8 @ =gUnknown_03000ABE
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #6
	beq _080E2D92
	bl sub_80E2790
_080E2D92:
	movs r0, #0
	strh r0, [r4, #0x34]
	adds r7, r4, #0
_080E2D98:
	ldr r0, [r7, #0x70]
	bl sub_80DD940
	movs r2, #0x34
	ldrsh r1, [r7, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E2DB4
	ldr r0, _080E2DCC @ =gUnknown_0300534C
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	strh r0, [r7, #0x1a]
_080E2DB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E2DC0: .4byte gUnknown_02024860
_080E2DC4: .4byte sub_80E3AA4
_080E2DC8: .4byte gUnknown_03000ABE
_080E2DCC: .4byte gUnknown_0300534C

	thumb_func_start sub_80E2DD0
sub_80E2DD0: @ 0x080E2DD0
	ldr r1, _080E2DD8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E2DD8: .4byte gUnknown_02024860

	thumb_func_start sub_80E2DDC
sub_80E2DDC: @ 0x080E2DDC
	ldr r1, _080E2DE4 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E2DE4: .4byte gUnknown_02024860

	thumb_func_start sub_80E2DE8
sub_80E2DE8: @ 0x080E2DE8
	push {lr}
	movs r0, #0x50
	bl sub_80E9DA0
	pop {r0}
	bx r0

	thumb_func_start sub_80E2DF4
sub_80E2DF4: @ 0x080E2DF4
	push {lr}
	movs r0, #0xb4
	bl sub_80E9DA0
	pop {r0}
	bx r0

	thumb_func_start sub_80E2E00
sub_80E2E00: @ 0x080E2E00
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_80E9DA0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E10
sub_80E2E10: @ 0x080E2E10
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #2
	bl sub_80E9DA0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E20
sub_80E2E20: @ 0x080E2E20
	push {lr}
	movs r0, #0x50
	bl sub_80EA0FC
	pop {r0}
	bx r0

	thumb_func_start sub_80E2E2C
sub_80E2E2C: @ 0x080E2E2C
	push {lr}
	movs r0, #0xa0
	bl sub_80EA0FC
	pop {r0}
	bx r0

	thumb_func_start sub_80E2E38
sub_80E2E38: @ 0x080E2E38
	push {lr}
	movs r0, #0xf0
	bl sub_80EA0FC
	pop {r0}
	bx r0

	thumb_func_start sub_80E2E44
sub_80E2E44: @ 0x080E2E44
	push {lr}
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_80EA0FC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E54
sub_80E2E54: @ 0x080E2E54
	push {lr}
	movs r0, #0xb4
	bl sub_80EA1E8
	pop {r0}
	bx r0

	thumb_func_start sub_80E2E60
sub_80E2E60: @ 0x080E2E60
	push {lr}
	movs r0, #0xb4
	lsls r0, r0, #1
	bl sub_80EA1E8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E70
sub_80E2E70: @ 0x080E2E70
	push {lr}
	movs r0, #0x87
	lsls r0, r0, #2
	bl sub_80EA1E8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E80
sub_80E2E80: @ 0x080E2E80
	push {lr}
	movs r0, #0xb4
	lsls r0, r0, #2
	bl sub_80EA1E8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2E90
sub_80E2E90: @ 0x080E2E90
	push {lr}
	movs r0, #0x78
	movs r1, #1
	bl sub_80EA3A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2EA0
sub_80E2EA0: @ 0x080E2EA0
	push {lr}
	movs r0, #0x78
	movs r1, #2
	bl sub_80EA3A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2EB0
sub_80E2EB0: @ 0x080E2EB0
	push {lr}
	movs r0, #0xc8
	movs r1, #3
	bl sub_80EA3A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2EC0
sub_80E2EC0: @ 0x080E2EC0
	push {lr}
	movs r0, #0xc8
	movs r1, #4
	bl sub_80EA3A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E2ED0
sub_80E2ED0: @ 0x080E2ED0
	push {r4, lr}
	ldr r4, _080E2EE4 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E2EE8
	cmp r0, #1
	beq _080E2EFC
	b _080E2F44
	.align 2, 0
_080E2EE4: .4byte gUnknown_02024860
_080E2EE8:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E2EF8
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E2F44
_080E2EF8:
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E2EFC:
	bl sub_80EA78C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _080E2F30 @ =gUnknown_02024860
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E2F44
	movs r0, #0
	strh r0, [r3, #0x2e]
	cmp r2, #0
	beq _080E2F3A
	movs r0, #0xff
	bl RandomNumber
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne _080E2F34
	bl sub_80EA88C
	b _080E2F3E
	.align 2, 0
_080E2F30: .4byte gUnknown_02024860
_080E2F34:
	bl sub_80EA8D0
	b _080E2F3E
_080E2F3A:
	bl sub_80EA068
_080E2F3E:
	ldr r1, _080E2F4C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E2F44:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E2F4C: .4byte gUnknown_02024860

	thumb_func_start sub_80E2F50
sub_80E2F50: @ 0x080E2F50
	push {r4, lr}
	ldr r4, _080E2F68 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E2F84
	cmp r0, #1
	bgt _080E2F6C
	cmp r0, #0
	beq _080E2F76
	b _080E300C
	.align 2, 0
_080E2F68: .4byte gUnknown_02024860
_080E2F6C:
	cmp r0, #2
	beq _080E2FF0
	cmp r0, #3
	beq _080E3004
	b _080E300C
_080E2F76:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E3008
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E2F84:
	bl sub_80EA78C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _080E2FC0 @ =gUnknown_02024860
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E300C
	movs r0, #0
	strh r0, [r4, #0x2e]
	cmp r2, #0
	beq _080E3004
	movs r0, #0xff
	bl RandomNumber
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	cmp r1, #1
	beq _080E2FE0
	cmp r1, #1
	blo _080E2FC4
	cmp r1, #2
	beq _080E2FE6
	bl sub_80EA8D0
	b _080E2FEA
	.align 2, 0
_080E2FC0: .4byte gUnknown_02024860
_080E2FC4:
	ldr r0, _080E2FDC @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E2FD6
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E2FD6:
	movs r0, #2
	strh r0, [r4, #0x1c]
	b _080E300C
	.align 2, 0
_080E2FDC: .4byte gUnknown_03005390
_080E2FE0:
	bl sub_80E9850
	b _080E2FEA
_080E2FE6:
	bl sub_80EA88C
_080E2FEA:
	movs r0, #3
	strh r0, [r4, #0x1c]
	b _080E300C
_080E2FF0:
	ldr r0, _080E3000 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E300C
	b _080E3008
	.align 2, 0
_080E3000: .4byte gUnknown_03005390
_080E3004:
	bl sub_80EA068
_080E3008:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E300C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3014
sub_80E3014: @ 0x080E3014
	push {r4, r5, lr}
	ldr r4, _080E302C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E3048
	cmp r0, #1
	bgt _080E3030
	cmp r0, #0
	beq _080E303A
	b _080E30DC
	.align 2, 0
_080E302C: .4byte gUnknown_02024860
_080E3030:
	cmp r0, #2
	beq _080E30C0
	cmp r0, #3
	beq _080E30D4
	b _080E30DC
_080E303A:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E30D8
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E3048:
	bl sub_80EA78C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r5, _080E3084 @ =gUnknown_02024860
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E30DC
	movs r0, #0
	strh r0, [r5, #0x2e]
	cmp r2, #0
	beq _080E30B6
	movs r0, #0xff
	bl RandomNumber
	adds r4, r0, #0
	movs r0, #7
	ands r4, r0
	cmp r4, #2
	beq _080E30A4
	cmp r4, #2
	blo _080E3088
	cmp r4, #3
	beq _080E30AE
	bl sub_80EA8D0
	b _080E30A8
	.align 2, 0
_080E3084: .4byte gUnknown_02024860
_080E3088:
	ldr r0, _080E30A0 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E309A
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E309A:
	movs r0, #2
	strh r0, [r5, #0x1c]
	b _080E30DC
	.align 2, 0
_080E30A0: .4byte gUnknown_03005390
_080E30A4:
	bl sub_80E9850
_080E30A8:
	movs r0, #3
	strh r0, [r5, #0x1c]
	b _080E30DC
_080E30AE:
	bl sub_80EA88C
	strh r4, [r5, #0x1c]
	b _080E30DC
_080E30B6:
	bl sub_80EA068
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080E30DC
_080E30C0:
	ldr r0, _080E30D0 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E30DC
	b _080E30D8
	.align 2, 0
_080E30D0: .4byte gUnknown_03005390
_080E30D4:
	bl sub_80EA068
_080E30D8:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E30DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E30E4
sub_80E30E4: @ 0x080E30E4
	push {r4, lr}
	ldr r4, _080E30FC @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E3118
	cmp r0, #1
	bgt _080E3100
	cmp r0, #0
	beq _080E310A
	b _080E31CC
	.align 2, 0
_080E30FC: .4byte gUnknown_02024860
_080E3100:
	cmp r0, #2
	beq _080E31B0
	cmp r0, #3
	beq _080E31C4
	b _080E31CC
_080E310A:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E31C8
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E3118:
	bl sub_80EA78C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _080E3150 @ =gUnknown_02024860
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E31CC
	movs r0, #0
	strh r0, [r4, #0x2e]
	cmp r2, #0
	beq _080E31C4
	movs r0, #0xff
	bl RandomNumber
	adds r1, r0, #0
	movs r0, #7
	ands r1, r0
	cmp r1, #5
	bhi _080E31A0
	lsls r0, r1, #2
	ldr r1, _080E3154 @ =_080E3158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E3150: .4byte gUnknown_02024860
_080E3154: .4byte _080E3158
_080E3158: @ jump table
	.4byte _080E3170 @ case 0
	.4byte _080E3170 @ case 1
	.4byte _080E31A0 @ case 2
	.4byte _080E3170 @ case 3
	.4byte _080E3194 @ case 4
	.4byte _080E319A @ case 5
_080E3170:
	ldr r0, _080E318C @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3184
	ldr r1, _080E3190 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E3184:
	ldr r1, _080E3190 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
	b _080E31CC
	.align 2, 0
_080E318C: .4byte gUnknown_03005390
_080E3190: .4byte gUnknown_02024860
_080E3194:
	bl sub_80E9850
	b _080E31A4
_080E319A:
	bl sub_80EA88C
	b _080E31A4
_080E31A0:
	bl sub_80EA8D0
_080E31A4:
	ldr r1, _080E31AC @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080E31CC
	.align 2, 0
_080E31AC: .4byte gUnknown_02024860
_080E31B0:
	ldr r0, _080E31C0 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E31CC
	b _080E31C8
	.align 2, 0
_080E31C0: .4byte gUnknown_03005390
_080E31C4:
	bl sub_80EA068
_080E31C8:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E31CC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E31D4
sub_80E31D4: @ 0x080E31D4
	push {lr}
	movs r0, #0xb4
	lsls r0, r0, #1
	bl sub_80EB2AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E31E4
sub_80E31E4: @ 0x080E31E4
	push {lr}
	movs r0, #0xb4
	lsls r0, r0, #2
	bl sub_80EB2AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E31F4
sub_80E31F4: @ 0x080E31F4
	push {r4, lr}
	ldr r4, _080E3208 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E320C
	cmp r0, #1
	beq _080E3220
	b _080E3246
	.align 2, 0
_080E3208: .4byte gUnknown_02024860
_080E320C:
	movs r0, #0x64
	bl sub_80E2434
	ldr r1, _080E324C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E3220:
	ldr r0, _080E3250 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E324C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E3254 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E3246
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E3246:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E324C: .4byte gUnknown_020248E0
_080E3250: .4byte gUnknown_03005390
_080E3254: .4byte gUnknown_02024860

	thumb_func_start sub_80E3258
sub_80E3258: @ 0x080E3258
	push {r4, lr}
	ldr r4, _080E326C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E3270
	cmp r0, #1
	beq _080E3286
	b _080E32AC
	.align 2, 0
_080E326C: .4byte gUnknown_02024860
_080E3270:
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_80E2434
	ldr r1, _080E32B4 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E3286:
	ldr r0, _080E32B8 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E32B4 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E32BC @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E32AC
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E32AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E32B4: .4byte gUnknown_020248E0
_080E32B8: .4byte gUnknown_03005390
_080E32BC: .4byte gUnknown_02024860

	thumb_func_start sub_80E32C0
sub_80E32C0: @ 0x080E32C0
	push {r4, lr}
	ldr r4, _080E32D4 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E32D8
	cmp r0, #1
	beq _080E32EC
	b _080E3312
	.align 2, 0
_080E32D4: .4byte gUnknown_02024860
_080E32D8:
	ldr r0, _080E3318 @ =0x00002710
	bl sub_80E2434
	ldr r1, _080E331C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E32EC:
	ldr r0, _080E3320 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E331C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E3324 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E3312
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E3312:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3318: .4byte 0x00002710
_080E331C: .4byte gUnknown_020248E0
_080E3320: .4byte gUnknown_03005390
_080E3324: .4byte gUnknown_02024860

	thumb_func_start sub_80E3328
sub_80E3328: @ 0x080E3328
	push {r4, lr}
	ldr r4, _080E333C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E3340
	cmp r0, #1
	beq _080E3356
	b _080E337C
	.align 2, 0
_080E333C: .4byte gUnknown_02024860
_080E3340:
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_80E2434
	ldr r1, _080E3384 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E3356:
	ldr r0, _080E3388 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E3384 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E338C @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E337C
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E337C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3384: .4byte gUnknown_020248E0
_080E3388: .4byte gUnknown_03005390
_080E338C: .4byte gUnknown_02024860

	thumb_func_start sub_80E3390
sub_80E3390: @ 0x080E3390
	push {r4, lr}
	ldr r4, _080E33EC @ =gUnknown_03005390
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #6
	beq _080E33FC
	cmp r0, #7
	bne _080E3450
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E33DE
	ldr r2, _080E33F0 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E33DE
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E33DE:
	ldr r4, _080E33F4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E33F8 @ =gUnknown_08060822
	b _080E34BC
	.align 2, 0
_080E33EC: .4byte gUnknown_03005390
_080E33F0: .4byte m2_character_info
_080E33F4: .4byte gUnknown_02024860
_080E33F8: .4byte gUnknown_08060822
_080E33FC:
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3436
	ldr r2, _080E3444 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3436
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E3436:
	ldr r4, _080E3448 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E344C @ =gUnknown_080608A6
	b _080E34BC
	.align 2, 0
_080E3444: .4byte m2_character_info
_080E3448: .4byte gUnknown_02024860
_080E344C: .4byte gUnknown_080608A6
_080E3450:
	adds r1, r2, #0
	adds r1, #0x61
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E34B0
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3494
	ldr r2, _080E34A4 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x56
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3494
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E3494:
	ldr r4, _080E34A8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E34AC @ =gUnknown_080608C3
	b _080E34BC
	.align 2, 0
_080E34A4: .4byte m2_character_info
_080E34A8: .4byte gUnknown_02024860
_080E34AC: .4byte gUnknown_080608C3
_080E34B0:
	ldr r4, _080E34CC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E34D0 @ =gUnknown_080601D0
_080E34BC:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E34CC: .4byte gUnknown_02024860
_080E34D0: .4byte gUnknown_080601D0

	thumb_func_start sub_80E34D4
sub_80E34D4: @ 0x080E34D4
	push {r4, lr}
	ldr r4, _080E3530 @ =gUnknown_03005390
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #4
	beq _080E3540
	cmp r0, #5
	bne _080E3594
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3522
	ldr r2, _080E3534 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3522
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E3522:
	ldr r4, _080E3538 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E353C @ =gUnknown_08060806
	b _080E3644
	.align 2, 0
_080E3530: .4byte gUnknown_03005390
_080E3534: .4byte m2_character_info
_080E3538: .4byte gUnknown_02024860
_080E353C: .4byte gUnknown_08060806
_080E3540:
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E357A
	ldr r2, _080E3588 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E357A
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E357A:
	ldr r4, _080E358C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3590 @ =gUnknown_080607EC
	b _080E3644
	.align 2, 0
_080E3588: .4byte m2_character_info
_080E358C: .4byte gUnknown_02024860
_080E3590: .4byte gUnknown_080607EC
_080E3594:
	adds r1, r2, #0
	adds r1, #0x61
	ldrb r0, [r1]
	cmp r0, #2
	bne _080E35F4
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E35D8
	ldr r2, _080E35E8 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x56
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E35D8
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E35D8:
	ldr r4, _080E35EC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E35F0 @ =gUnknown_0806083A
	b _080E3644
	.align 2, 0
_080E35E8: .4byte m2_character_info
_080E35EC: .4byte gUnknown_02024860
_080E35F0: .4byte gUnknown_0806083A
_080E35F4:
	adds r1, r2, #0
	adds r1, #0x62
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E365C
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3638
	ldr r2, _080E3650 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x57
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3638
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E3638:
	ldr r4, _080E3654 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3658 @ =gUnknown_0806088F
_080E3644:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E3660
	.align 2, 0
_080E3650: .4byte m2_character_info
_080E3654: .4byte gUnknown_02024860
_080E3658: .4byte gUnknown_0806088F
_080E365C:
	bl sub_80E3390
_080E3660:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3668
sub_80E3668: @ 0x080E3668
	push {r4, r5, lr}
	ldr r5, _080E36B8 @ =gUnknown_02024860
	movs r0, #0x1e
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080E36C4
	cmp r4, #1
	bne _080E36C4
	ldr r0, _080E36BC @ =gUnknown_03005390
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x4c
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _080E368A
	adds r1, #3
_080E368A:
	asrs r1, r1, #2
	adds r0, r2, #0
	bl sub_80EABCC
	movs r0, #0x36
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E36A0
	b _080E3820
_080E36A0:
	ldr r0, _080E36C0 @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E36AE
	bl sub_80D1D84
_080E36AE:
	movs r0, #0
	strh r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	b _080E3820
	.align 2, 0
_080E36B8: .4byte gUnknown_02024860
_080E36BC: .4byte gUnknown_03005390
_080E36C0: .4byte gUnknown_03005344
_080E36C4:
	ldr r4, _080E36DC @ =gUnknown_03005390
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x5f
	ldrb r5, [r1]
	cmp r5, #2
	beq _080E373C
	cmp r5, #2
	bgt _080E36E0
	cmp r5, #1
	beq _080E37AC
	b _080E381C
	.align 2, 0
_080E36DC: .4byte gUnknown_03005390
_080E36E0:
	cmp r5, #3
	beq _080E36E6
	b _080E381C
_080E36E6:
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3720
	ldr r2, _080E3730 @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3720
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E3720:
	ldr r4, _080E3734 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3738 @ =gUnknown_080607D0
	b _080E3790
	.align 2, 0
_080E3730: .4byte m2_character_info
_080E3734: .4byte gUnknown_02024860
_080E3738: .4byte gUnknown_080607D0
_080E373C:
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3784
	ldr r2, _080E379C @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E3784
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
	ldr r0, _080E37A0 @ =gUnknown_03005344
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080E3784
	bl sub_80D1D84
_080E3784:
	ldr r4, _080E37A4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E37A8 @ =gUnknown_080607B0
_080E3790:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E3820
	.align 2, 0
_080E379C: .4byte m2_character_info
_080E37A0: .4byte gUnknown_03005344
_080E37A4: .4byte gUnknown_02024860
_080E37A8: .4byte gUnknown_080607B0
_080E37AC:
	movs r0, #0xc0
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3800
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x4c
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _080E37C8
	adds r1, #3
_080E37C8:
	asrs r1, r1, #2
	adds r0, r2, #0
	bl sub_80EABCC
	ldr r4, _080E37F4 @ =gUnknown_02024860
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E37FC
	ldr r0, _080E37F8 @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E37EC
	bl sub_80D1D84
_080E37EC:
	movs r0, #0
	strh r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	b _080E3820
	.align 2, 0
_080E37F4: .4byte gUnknown_02024860
_080E37F8: .4byte gUnknown_03005344
_080E37FC:
	strh r5, [r4, #0x1e]
	b _080E3820
_080E3800:
	ldr r4, _080E3814 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3818 @ =gUnknown_08060912
	bl sub_80DB168
	strh r5, [r4, #0x1a]
	b _080E3820
	.align 2, 0
_080E3814: .4byte gUnknown_02024860
_080E3818: .4byte gUnknown_08060912
_080E381C:
	bl sub_80E34D4
_080E3820:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3828
sub_80E3828: @ 0x080E3828
	push {r4, r5, lr}
	ldr r5, _080E3858 @ =gUnknown_02024860
	movs r0, #0x1e
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080E3860
	cmp r4, #1
	bne _080E3860
	ldr r0, _080E385C @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EABCC
	movs r3, #0x36
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E38B4
	b _080E3888
	.align 2, 0
_080E3858: .4byte gUnknown_02024860
_080E385C: .4byte gUnknown_03005390
_080E3860:
	ldr r0, _080E38A0 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x5f
	ldrb r4, [r0]
	cmp r4, #1
	bne _080E38B0
	subs r0, #0x13
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_80EABCC
	ldr r5, _080E38A4 @ =gUnknown_02024860
	movs r0, #0x36
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E38AC
_080E3888:
	ldr r0, _080E38A8 @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E3896
	bl sub_80D1D84
_080E3896:
	movs r0, #0
	strh r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	b _080E38B4
	.align 2, 0
_080E38A0: .4byte gUnknown_03005390
_080E38A4: .4byte gUnknown_02024860
_080E38A8: .4byte gUnknown_03005344
_080E38AC:
	strh r4, [r5, #0x1e]
	b _080E38B4
_080E38B0:
	bl sub_80E3668
_080E38B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E38BC
sub_80E38BC: @ 0x080E38BC
	push {lr}
	ldr r0, _080E38E0 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #4
	bl sub_80EB364
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E38EC
	ldr r2, _080E38E4 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E38E8 @ =gUnknown_0806093E
	bl sub_80DB168
	b _080E38FC
	.align 2, 0
_080E38E0: .4byte gUnknown_03005390
_080E38E4: .4byte gUnknown_02024860
_080E38E8: .4byte gUnknown_0806093E
_080E38EC:
	ldr r2, _080E3908 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E390C @ =gUnknown_0806091F
	bl sub_80DB168
_080E38FC:
	ldr r1, _080E3908 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E3908: .4byte gUnknown_02024860
_080E390C: .4byte gUnknown_0806091F

	thumb_func_start sub_80E3910
sub_80E3910: @ 0x080E3910
	push {lr}
	bl sub_80E38BC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E391C
sub_80E391C: @ 0x080E391C
	push {lr}
	ldr r0, _080E3940 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #3
	bl sub_80EB364
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E394C
	ldr r2, _080E3944 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E3948 @ =gUnknown_0806097B
	bl sub_80DB168
	b _080E395C
	.align 2, 0
_080E3940: .4byte gUnknown_03005390
_080E3944: .4byte gUnknown_02024860
_080E3948: .4byte gUnknown_0806097B
_080E394C:
	ldr r2, _080E3968 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E396C @ =gUnknown_0806095B
	bl sub_80DB168
_080E395C:
	ldr r1, _080E3968 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E3968: .4byte gUnknown_02024860
_080E396C: .4byte gUnknown_0806095B

	thumb_func_start sub_80E3970
sub_80E3970: @ 0x080E3970
	push {lr}
	bl sub_80E391C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E397C
sub_80E397C: @ 0x080E397C
	push {lr}
	ldr r0, _080E39A0 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	bl sub_80EB364
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E39AC
	ldr r2, _080E39A4 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E39A8 @ =gUnknown_080609B8
	bl sub_80DB168
	b _080E39BC
	.align 2, 0
_080E39A0: .4byte gUnknown_03005390
_080E39A4: .4byte gUnknown_02024860
_080E39A8: .4byte gUnknown_080609B8
_080E39AC:
	ldr r2, _080E39C8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E39CC @ =gUnknown_0806099A
	bl sub_80DB168
_080E39BC:
	ldr r1, _080E39C8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E39C8: .4byte gUnknown_02024860
_080E39CC: .4byte gUnknown_0806099A

	thumb_func_start sub_80E39D0
sub_80E39D0: @ 0x080E39D0
	push {lr}
	bl sub_80E397C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E39DC
sub_80E39DC: @ 0x080E39DC
	push {lr}
	ldr r0, _080E3A00 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #1
	bl sub_80EB364
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3A0C
	ldr r2, _080E3A04 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E3A08 @ =gUnknown_080609F8
	bl sub_80DB168
	b _080E3A1C
	.align 2, 0
_080E3A00: .4byte gUnknown_03005390
_080E3A04: .4byte gUnknown_02024860
_080E3A08: .4byte gUnknown_080609F8
_080E3A0C:
	ldr r2, _080E3A28 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E3A2C @ =gUnknown_080609D5
	bl sub_80DB168
_080E3A1C:
	ldr r1, _080E3A28 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E3A28: .4byte gUnknown_02024860
_080E3A2C: .4byte gUnknown_080609D5

	thumb_func_start sub_80E3A30
sub_80E3A30: @ 0x080E3A30
	push {lr}
	bl sub_80E39DC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3A3C
sub_80E3A3C: @ 0x080E3A3C
	push {r4, r5, r6, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3A54
	ldr r1, _080E3A50 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E3A84
	.align 2, 0
_080E3A50: .4byte gUnknown_02024860
_080E3A54:
	ldr r6, _080E3A8C @ =gUnknown_03005390
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r4, [r1]
	bl sub_80EB3A4
	ldr r5, _080E3A90 @ =gUnknown_02024860
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E3A94 @ =gUnknown_08060B07
	ldr r1, [r6]
	adds r1, #0x68
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r1, r4
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E3A84:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E3A8C: .4byte gUnknown_03005390
_080E3A90: .4byte gUnknown_02024860
_080E3A94: .4byte gUnknown_08060B07

	thumb_func_start sub_80E3A98
sub_80E3A98: @ 0x080E3A98
	push {lr}
	bl sub_80E3A3C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3AA4
sub_80E3AA4: @ 0x080E3AA4
	push {r4, r5, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E3B10
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3B00
	ldr r4, _080E3AF4 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6a
	ldrh r5, [r1]
	bl sub_80E3B30
	ldr r0, [r4]
	adds r0, #0x6a
	ldrh r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080E3ADE
	movs r5, #0
_080E3ADE:
	ldr r2, _080E3AF8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E3AFC @ =gUnknown_08060C21
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
	b _080E3B10
	.align 2, 0
_080E3AF4: .4byte gUnknown_03005390
_080E3AF8: .4byte gUnknown_02024860
_080E3AFC: .4byte gUnknown_08060C21
_080E3B00:
	ldr r2, _080E3B1C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E3B20 @ =gUnknown_080601A4
	bl sub_80DB168
_080E3B10:
	ldr r1, _080E3B1C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E3B1C: .4byte gUnknown_02024860
_080E3B20: .4byte gUnknown_080601A4

	thumb_func_start sub_80E3B24
sub_80E3B24: @ 0x080E3B24
	push {lr}
	bl sub_80E3AA4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3B30
sub_80E3B30: @ 0x080E3B30
	push {lr}
	adds r1, r0, #0
	adds r0, #0x6a
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r0, #0
	beq _080E3B48
	subs r0, r2, r0
	b _080E3B4A
_080E3B48:
	subs r0, r2, #1
_080E3B4A:
	adds r2, r1, #0
	adds r2, #0x6a
	strh r0, [r2]
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x75
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r0, #0
	asrs r1, r1, #2
	cmp r3, r1
	bge _080E3B68
	strh r1, [r2]
_080E3B68:
	pop {r0}
	bx r0

	thumb_func_start sub_80E3B6C
sub_80E3B6C: @ 0x080E3B6C
	push {lr}
	movs r0, #0x50
	bl sub_80E2394
	ldr r1, _080E3B8C @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x70
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _080E3B90
	movs r0, #1
	b _080E3B92
	.align 2, 0
_080E3B8C: .4byte gUnknown_03005390
_080E3B90:
	movs r0, #0
_080E3B92:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80E3B98
sub_80E3B98: @ 0x080E3B98
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3BB0
	ldr r1, _080E3BAC @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E3C00
	.align 2, 0
_080E3BAC: .4byte gUnknown_02024860
_080E3BB0:
	ldr r4, _080E3BE0 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x7e
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3BEC
	ldr r0, [r4]
	movs r1, #2
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3BEC
	ldr r4, _080E3BE4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3BE8 @ =gUnknown_0806059A
	b _080E3BF8
	.align 2, 0
_080E3BE0: .4byte gUnknown_03005390
_080E3BE4: .4byte gUnknown_02024860
_080E3BE8: .4byte gUnknown_0806059A
_080E3BEC:
	ldr r4, _080E3C08 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3C0C @ =gUnknown_080601A4
_080E3BF8:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E3C00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3C08: .4byte gUnknown_02024860
_080E3C0C: .4byte gUnknown_080601A4

	thumb_func_start sub_80E3C10
sub_80E3C10: @ 0x080E3C10
	push {lr}
	bl sub_80E3B98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3C1C
sub_80E3C1C: @ 0x080E3C1C
	push {r4, r5, r6, lr}
	ldr r0, _080E3C5C @ =gUnknown_02024860
	movs r1, #0x1e
	ldrsh r5, [r0, r1]
	adds r6, r0, #0
	cmp r5, #0
	beq _080E3C6C
	cmp r5, #1
	bne _080E3C6C
	ldr r0, _080E3C60 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r4, _080E3C64 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r4, r4, r2
	movs r3, #0
	ldrsh r1, [r4, r3]
	bl sub_80E9BCC
	ldr r0, _080E3C68 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x50
	ldrh r1, [r4]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80E9C78
	strh r5, [r6, #0x1a]
	b _080E3CE0
	.align 2, 0
_080E3C5C: .4byte gUnknown_02024860
_080E3C60: .4byte gUnknown_03005390
_080E3C64: .4byte gUnknown_020248E0
_080E3C68: .4byte gUnknown_0300538C
_080E3C6C:
	ldr r5, _080E3C90 @ =gUnknown_03005390
	ldr r0, [r5]
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E3C98
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080E3C94 @ =gUnknown_08060E51
	bl sub_80DB168
	movs r0, #1
	strh r0, [r6, #0x1a]
	b _080E3CE0
	.align 2, 0
_080E3C90: .4byte gUnknown_03005390
_080E3C94: .4byte gUnknown_08060E51
_080E3C98:
	movs r0, #4
	bl sub_80E2394
	adds r4, r0, #0
	movs r0, #4
	bl sub_80E2394
	ldr r1, _080E3CE8 @ =gUnknown_020248E0
	adds r4, r4, r0
	adds r4, #2
	movs r3, #0x92
	lsls r3, r3, #4
	adds r2, r1, r3
	strh r4, [r2]
	ldr r0, [r5]
	adds r0, #0x50
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r0, r4
	bge _080E3CC8
	strh r1, [r2]
_080E3CC8:
	ldr r4, _080E3CEC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3CF0 @ =gUnknown_0806026C
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1e]
_080E3CE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E3CE8: .4byte gUnknown_020248E0
_080E3CEC: .4byte gUnknown_02024860
_080E3CF0: .4byte gUnknown_0806026C

	thumb_func_start sub_80E3CF4
sub_80E3CF4: @ 0x080E3CF4
	push {lr}
	ldr r0, _080E3D18 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E3D20
	adds r0, r1, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _080E3D20
	ldr r1, _080E3D1C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E3D24
	.align 2, 0
_080E3D18: .4byte gUnknown_03005390
_080E3D1C: .4byte gUnknown_02024860
_080E3D20:
	bl sub_80E3C1C
_080E3D24:
	pop {r0}
	bx r0

	thumb_func_start sub_80E3D28
sub_80E3D28: @ 0x080E3D28
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3D40
	ldr r1, _080E3D3C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E3D90
	.align 2, 0
_080E3D3C: .4byte gUnknown_02024860
_080E3D40:
	ldr r4, _080E3D70 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x79
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3D7C
	ldr r0, [r4]
	movs r1, #0
	movs r2, #3
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3D7C
	ldr r4, _080E3D74 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3D78 @ =gUnknown_0806043D
	b _080E3D88
	.align 2, 0
_080E3D70: .4byte gUnknown_03005390
_080E3D74: .4byte gUnknown_02024860
_080E3D78: .4byte gUnknown_0806043D
_080E3D7C:
	ldr r4, _080E3D98 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3D9C @ =gUnknown_080601A4
_080E3D88:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E3D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3D98: .4byte gUnknown_02024860
_080E3D9C: .4byte gUnknown_080601A4

	thumb_func_start sub_80E3DA0
sub_80E3DA0: @ 0x080E3DA0
	push {lr}
	bl sub_80E3D28
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3DAC
sub_80E3DAC: @ 0x080E3DAC
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3DC4
	ldr r1, _080E3DC0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E3E14
	.align 2, 0
_080E3DC0: .4byte gUnknown_02024860
_080E3DC4:
	ldr r4, _080E3DF4 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x7d
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3E00
	ldr r0, [r4]
	movs r1, #3
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3E00
	ldr r4, _080E3DF8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3DFC @ =gUnknown_0806057E
	b _080E3E0C
	.align 2, 0
_080E3DF4: .4byte gUnknown_03005390
_080E3DF8: .4byte gUnknown_02024860
_080E3DFC: .4byte gUnknown_0806057E
_080E3E00:
	ldr r4, _080E3E1C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E3E20 @ =gUnknown_080601A4
_080E3E0C:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E3E14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E3E1C: .4byte gUnknown_02024860
_080E3E20: .4byte gUnknown_080601A4

	thumb_func_start sub_80E3E24
sub_80E3E24: @ 0x080E3E24
	push {lr}
	bl sub_80E3DAC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E3E30
sub_80E3E30: @ 0x080E3E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r1, _080E3EA0 @ =gUnknown_0300538C
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	beq _080E3E86
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r3, [r0]
	ldr r1, _080E3EA4 @ =gUnknown_08B29300
	ldr r0, _080E3EA8 @ =gEnemyGroup
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2]
	ldr r6, [sp]
	lsls r6, r6, #0x10
	str r6, [sp, #0x14]
	cmp r0, #0xff
	beq _080E3E86
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x18]
_080E3E78:
	ldrh r0, [r2, #2]
	cmp r1, r0
	beq _080E3EC0
	adds r2, #4
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _080E3E78
_080E3E86:
	ldr r0, _080E3EAC @ =gUnknown_02024860
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	ldr r1, [sp]
	cmp r1, #0
	beq _080E3EB4
	ldr r0, _080E3EB0 @ =gUnknown_08061D22
	bl sub_80DB168
	b _080E421E
	.align 2, 0
_080E3EA0: .4byte gUnknown_0300538C
_080E3EA4: .4byte gUnknown_08B29300
_080E3EA8: .4byte gEnemyGroup
_080E3EAC: .4byte gUnknown_02024860
_080E3EB0: .4byte gUnknown_08061D22
_080E3EB4:
	ldr r0, _080E3EBC @ =gUnknown_08061D0A
	bl sub_80DB168
	b _080E421E
	.align 2, 0
_080E3EBC: .4byte gUnknown_08061D0A
_080E3EC0:
	ldr r6, _080E3FDC @ =gUnknown_02020C70
	movs r4, #0
	movs r2, #8
	mov r8, r2
	ldr r3, _080E3FE0 @ =gUnknown_08739D1C
	adds r2, r6, #0
	adds r2, #0x42
_080E3ECE:
	ldrb r0, [r2, #0x18]
	cmp r0, #1
	bne _080E3EF4
	ldrb r0, [r2, #0x1d]
	cmp r0, #1
	beq _080E3EF4
	ldr r0, [r5]
	adds r0, #0x42
	movs r6, #0
	ldrsh r1, [r2, r6]
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r1, r0
	bne _080E3EF4
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
_080E3EF4:
	adds r2, #0x94
	mov r6, r8
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	mov r8, r6
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E3ECE
	ldr r1, [sp, #0x18]
	lsrs r0, r1, #0xa
	adds r0, r0, r3
	adds r6, r0, #0
	adds r6, #0x3e
	ldrb r1, [r6]
	lsrs r1, r1, #5
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	movs r2, #0xcd
	muls r0, r2, r0
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E3E86
	ldr r2, [sp, #0x18]
	lsrs r2, r2, #0x10
	mov sb, r2
	mov r5, sb
	adds r0, r5, #0
	bl sub_80DA6FC
	lsls r0, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	ldrb r0, [r6]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	str r0, [sp, #4]
	bl sub_80E2860
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_80DA6FC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r4, #0x1e
	ble _080E3F70
	b _080E40C4
_080E3F70:
	movs r6, #0x78
	str r6, [sp, #0x10]
	movs r0, #0x78
	str r0, [sp, #0xc]
	movs r1, #0x78
	str r1, [sp, #8]
	mov sl, r1
	ldr r6, _080E3FE4 @ =gUnknown_02020C70 + 8*0x94
	movs r2, #8
	mov r8, r2
	lsls r5, r7, #0x10
	adds r7, r6, #0
	adds r7, #0x89
	adds r6, #0x44
_080E3F8C:
	ldrb r0, [r6, #0x16]
	cmp r0, #0
	beq _080E4018
	movs r3, #0
	ldrsh r0, [r6, r3]
	bl sub_80DA6FC
	lsls r0, r0, #0x12
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #0x1a]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080E3FE8
	ldrb r2, [r7]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	subs r0, r2, r3
	mov ip, r0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp ip, r0
	bge _080E3FC6
	subs r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_080E3FC6:
	adds r1, r2, r3
	ldr r3, [sp, #8]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _080E4018
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	b _080E4018
	.align 2, 0
_080E3FDC: .4byte gUnknown_02020C70
_080E3FE0: .4byte gUnknown_08739D1C
_080E3FE4: .4byte gUnknown_02020C70 + 8*0x94
_080E3FE8:
	ldrb r2, [r7]
	lsls r0, r4, #0x10
	asrs r3, r0, #0x10
	subs r0, r2, r3
	mov ip, r0
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp ip, r0
	bge _080E4004
	subs r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_080E4004:
	adds r1, r2, r3
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _080E4018
	adds r0, r2, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
_080E4018:
	adds r7, #0x94
	adds r6, #0x94
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E3F8C
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r3, r0, #0x10
	movs r1, #0x78
	subs r1, r1, r3
	ldr r2, [sp, #8]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	subs r0, #0x78
	cmp r1, r0
	bge _080E405C
	asrs r0, r5, #0x10
	cmp r3, r0
	ble _080E4072
	asrs r0, r0, #1
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r3, sb
	lsls r5, r3, #0x10
	b _080E412E
_080E405C:
	asrs r1, r5, #0x10
	adds r0, r2, r1
	cmp r0, #0xef
	bgt _080E4072
	asrs r0, r1, #1
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r6, sb
	lsls r5, r6, #0x10
	b _080E412E
_080E4072:
	movs r1, #1
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r1, #0x78
	subs r1, r1, r3
	ldr r6, [sp, #0x10]
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	subs r0, #0x78
	cmp r1, r0
	bge _080E40AE
	asrs r0, r5, #0x10
	cmp r3, r0
	ble _080E40C4
	asrs r0, r0, #1
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r0, sb
	lsls r5, r0, #0x10
	b _080E412E
_080E40AE:
	asrs r1, r5, #0x10
	adds r0, r2, r1
	cmp r0, #0xef
	bgt _080E40C4
	asrs r0, r1, #1
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mov r1, sb
	lsls r5, r1, #0x10
	b _080E412E
_080E40C4:
	ldr r6, _080E4118 @ =gUnknown_02020C70 + 8*0x94
	movs r2, #8
	mov r8, r2
	adds r7, r6, #0
	adds r7, #0x44
_080E40CE:
	movs r3, #0x5a
	adds r3, r3, r6
	mov sl, r3
	ldrb r0, [r7, #0x16]
	cmp r0, #1
	bne _080E40FC
	ldrb r0, [r7, #0x1b]
	cmp r0, #1
	bne _080E40FC
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	bl sub_80DA6FC
	adds r4, r0, #0
	movs r1, #0
	ldrsh r0, [r7, r1]
	bl sub_80DA6FC
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _080E411C
_080E40FC:
	adds r7, #0x94
	adds r6, #0x94
	mov r2, r8
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E40CE
	b _080E3E86
	.align 2, 0
_080E4118: .4byte gUnknown_02020C70 + 8*0x94
_080E411C:
	movs r0, #0
	mov r2, sl
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0x89
	ldrb r7, [r0]
	subs r0, #0x2b
	ldrb r0, [r0]
	str r0, [sp, #4]
_080E412E:
	bl sub_80E2860
	adds r4, r0, #0
	asrs r0, r5, #0x10
	bl sub_80DA6FC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	cmp r4, #0x1e
	ble _080E414A
	b _080E3E86
_080E414A:
	ldr r6, _080E4154 @ =gUnknown_02020C70 + 8*0x94
	movs r3, #8
	mov r8, r3
	b _080E416E
	.align 2, 0
_080E4154: .4byte gUnknown_02020C70 + 8*0x94
_080E4158:
	adds r6, #0x94
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov r8, r3
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _080E4178
_080E416E:
	adds r0, r6, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4158
_080E4178:
	ldr r4, _080E41A8 @ =gUnknown_03005390
	str r6, [r4]
	ldr r0, [sp, #0x18]
	asrs r1, r0, #0x10
	adds r0, r6, #0
	bl sub_80DA29C
	ldr r0, [r4]
	adds r0, #0x89
	strb r7, [r0]
	ldr r0, [r4]
	adds r0, #0x5e
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x5e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E41AC
	adds r1, #0x8a
	movs r0, #0x60
	b _080E41B0
	.align 2, 0
_080E41A8: .4byte gUnknown_03005390
_080E41AC:
	adds r1, #0x8a
	movs r0, #0x70
_080E41B0:
	strb r0, [r1]
	ldr r4, _080E4208 @ =gUnknown_03005390
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x89
	ldrb r0, [r0]
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	str r0, [r1, #0x28]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_80DADC8
	ldr r1, [r4]
	adds r1, #0x88
	movs r5, #0
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x5b
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x5f
	strb r5, [r0]
	bl sub_80DAE00
	ldr r0, _080E420C @ =gUnknown_03005384
	strh r5, [r0]
	ldr r2, _080E4210 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r3, [sp, #0x14]
	cmp r3, #0
	beq _080E4218
	ldr r0, _080E4214 @ =gUnknown_08061CF9
	bl sub_80DB168
	b _080E421E
	.align 2, 0
_080E4208: .4byte gUnknown_03005390
_080E420C: .4byte gUnknown_03005384
_080E4210: .4byte gUnknown_02024860
_080E4214: .4byte gUnknown_08061CF9
_080E4218:
	ldr r0, _080E4230 @ =gUnknown_08061CE2
	bl sub_80DB168
_080E421E:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E4230: .4byte gUnknown_08061CE2

	thumb_func_start sub_80E4234
sub_80E4234: @ 0x080E4234
	push {lr}
	movs r0, #0
	bl sub_80E3E30
	ldr r1, _080E4248 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E4248: .4byte gUnknown_02024860

	thumb_func_start sub_80E424C
sub_80E424C: @ 0x080E424C
	push {lr}
	movs r0, #1
	bl sub_80E3E30
	ldr r1, _080E4260 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E4260: .4byte gUnknown_02024860

	thumb_func_start sub_80E4264
sub_80E4264: @ 0x080E4264
	push {lr}
	movs r0, #0x87
	lsls r0, r0, #1
	bl sub_80EAEDC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E4274
sub_80E4274: @ 0x080E4274
	push {lr}
	ldr r0, _080E42D8 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E42CE
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E42CE
	ldr r0, _080E42DC @ =gUnknown_020248E0
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _080E42E0 @ =gUnknown_0300538C
	cmp r0, #0
	beq _080E42B8
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E42B8
	adds r0, r1, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _080E42CE
_080E42B8:
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E42CE
	adds r1, r0, #0
	subs r1, #1
	movs r0, #0xff
	bl sub_80BC874
_080E42CE:
	ldr r1, _080E42E4 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E42D8: .4byte gUnknown_03005390
_080E42DC: .4byte gUnknown_020248E0
_080E42E0: .4byte gUnknown_0300538C
_080E42E4: .4byte gUnknown_02024860

	thumb_func_start sub_80E42E8
sub_80E42E8: @ 0x080E42E8
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _080E4304 @ =gUnknown_02024860
	adds r5, r0, #0
	adds r5, #0x44
	movs r0, #0
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080E433C
	cmp r4, #1
	bgt _080E4308
	cmp r4, #0
	beq _080E4314
	b _080E443E
	.align 2, 0
_080E4304: .4byte gUnknown_02024860
_080E4308:
	cmp r4, #2
	beq _080E43AC
	cmp r4, #3
	bne _080E4312
	b _080E4420
_080E4312:
	b _080E443E
_080E4314:
	bl sub_80D6740
	movs r0, #4
	bl sub_80E2394
	ldr r2, _080E4364 @ =gUnknown_020248E0
	adds r0, #1
	ldr r3, _080E4368 @ =0x00000948
	adds r1, r2, r3
	strh r0, [r1]
	ldr r6, _080E436C @ =0x00000934
	adds r1, r2, r6
	ldr r0, _080E4370 @ =gUnknown_0300534C
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080E4374 @ =0x00000958
	adds r2, r2, r0
	strh r4, [r2]
	movs r0, #2
	strh r0, [r5]
_080E433C:
	ldr r0, _080E4378 @ =gUnknown_02024860
	adds r0, #0x44
	movs r1, #1
	strh r1, [r0]
	bl sub_80DD784
	ldr r4, _080E4370 @ =gUnknown_0300534C
	ldr r0, [r4]
	cmp r0, #0
	beq _080E4420
	ldr r0, _080E4364 @ =gUnknown_020248E0
	ldr r1, _080E436C @ =0x00000934
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80E26BC
	str r0, [r4]
	movs r0, #0
	b _080E4382
	.align 2, 0
_080E4364: .4byte gUnknown_020248E0
_080E4368: .4byte 0x00000948
_080E436C: .4byte 0x00000934
_080E4370: .4byte gUnknown_0300534C
_080E4374: .4byte 0x00000958
_080E4378: .4byte gUnknown_02024860
_080E437C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080E4382:
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x1f
	bgt _080E4394
	adds r0, r4, #0
	bl sub_80E2748
	cmp r0, #0
	beq _080E437C
_080E4394:
	ldr r2, _080E4400 @ =gUnknown_03005390
	movs r0, #0x94
	muls r0, r4, r0
	ldr r1, _080E4404 @ =gUnknown_02020C70
	adds r0, r0, r1
	str r0, [r2]
	bl sub_80DAE00
	ldr r0, _080E4408 @ =gUnknown_02024860
	adds r0, #0x44
	movs r1, #2
	strh r1, [r0]
_080E43AC:
	ldr r5, _080E440C @ =gUnknown_020248E0
	ldr r3, _080E4410 @ =0x000008DC
	adds r0, r5, r3
	movs r6, #0
	ldrsh r4, [r0, r6]
	cmp r4, #0
	bne _080E443E
	bl sub_80E28B0
	ldr r2, _080E4408 @ =gUnknown_02024860
	movs r0, #0x1a
	ldrsh r3, [r2, r0]
	cmp r3, #1
	bne _080E443E
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080E4414 @ =0x040000D4
	str r0, [r1]
	adds r0, r2, #0
	adds r0, #0x1c
	str r0, [r1, #4]
	ldr r0, _080E4418 @ =0x81000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r6, _080E441C @ =0x00000958
	adds r1, r5, r6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	subs r6, #0x10
	adds r1, r5, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r1, r5]
	cmp r0, r1
	bge _080E4420
	strh r4, [r2, #0x1a]
	adds r0, r2, #0
	adds r0, #0x44
	strh r3, [r0]
	b _080E443E
	.align 2, 0
_080E4400: .4byte gUnknown_03005390
_080E4404: .4byte gUnknown_02020C70
_080E4408: .4byte gUnknown_02024860
_080E440C: .4byte gUnknown_020248E0
_080E4410: .4byte 0x000008DC
_080E4414: .4byte 0x040000D4
_080E4418: .4byte 0x81000014
_080E441C: .4byte 0x00000958
_080E4420:
	bl sub_80D6760
	ldr r4, _080E4448 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E444C @ =gUnknown_08061D36
	bl sub_80DB168
	movs r1, #0
	movs r0, #1
	strh r0, [r4, #0x1a]
	ldr r0, _080E4450 @ =gUnknown_0300534C
	str r1, [r0]
_080E443E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E4448: .4byte gUnknown_02024860
_080E444C: .4byte gUnknown_08061D36
_080E4450: .4byte gUnknown_0300534C

	thumb_func_start sub_80E4454
sub_80E4454: @ 0x080E4454
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E446C
	ldr r1, _080E4468 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E44BC
	.align 2, 0
_080E4468: .4byte gUnknown_02024860
_080E446C:
	ldr r4, _080E449C @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x79
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E44A8
	ldr r0, [r4]
	movs r1, #0
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E44A8
	ldr r4, _080E44A0 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E44A4 @ =gUnknown_08060419
	b _080E44B4
	.align 2, 0
_080E449C: .4byte gUnknown_03005390
_080E44A0: .4byte gUnknown_02024860
_080E44A4: .4byte gUnknown_08060419
_080E44A8:
	ldr r4, _080E44C4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E44C8 @ =gUnknown_080601A4
_080E44B4:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E44BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E44C4: .4byte gUnknown_02024860
_080E44C8: .4byte gUnknown_080601A4

	thumb_func_start sub_80E44CC
sub_80E44CC: @ 0x080E44CC
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E44E4
	ldr r1, _080E44E0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E4540
	.align 2, 0
_080E44E0: .4byte gUnknown_02024860
_080E44E4:
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E452C
	ldr r4, _080E4520 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x79
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E452C
	ldr r0, [r4]
	movs r1, #0
	movs r2, #3
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E452C
	ldr r4, _080E4524 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4528 @ =gUnknown_0806043D
	b _080E4538
	.align 2, 0
_080E4520: .4byte gUnknown_03005390
_080E4524: .4byte gUnknown_02024860
_080E4528: .4byte gUnknown_0806043D
_080E452C:
	ldr r4, _080E4548 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E454C @ =gUnknown_080601A4
_080E4538:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4540:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4548: .4byte gUnknown_02024860
_080E454C: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4550
sub_80E4550: @ 0x080E4550
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4568
	ldr r1, _080E4564 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E45B4
	.align 2, 0
_080E4564: .4byte gUnknown_02024860
_080E4568:
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E45A0
	ldr r0, _080E4594 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	movs r2, #4
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E45A0
	ldr r4, _080E4598 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E459C @ =gUnknown_0806052B
	b _080E45AC
	.align 2, 0
_080E4594: .4byte gUnknown_03005390
_080E4598: .4byte gUnknown_02024860
_080E459C: .4byte gUnknown_0806052B
_080E45A0:
	ldr r4, _080E45BC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E45C0 @ =gUnknown_080601A4
_080E45AC:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E45B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E45BC: .4byte gUnknown_02024860
_080E45C0: .4byte gUnknown_080601A4

	thumb_func_start sub_80E45C4
sub_80E45C4: @ 0x080E45C4
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4610
	ldr r0, _080E45F4 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #4
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4600
	ldr r2, _080E45F8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E45FC @ =gUnknown_08060459
	bl sub_80DB168
	b _080E4610
	.align 2, 0
_080E45F4: .4byte gUnknown_03005390
_080E45F8: .4byte gUnknown_02024860
_080E45FC: .4byte gUnknown_08060459
_080E4600:
	ldr r2, _080E461C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4620 @ =gUnknown_080601A4
	bl sub_80DB168
_080E4610:
	ldr r1, _080E461C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E461C: .4byte gUnknown_02024860
_080E4620: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4624
sub_80E4624: @ 0x080E4624
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4670
	ldr r0, _080E4654 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #5
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4660
	ldr r2, _080E4658 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E465C @ =gUnknown_0806047D
	bl sub_80DB168
	b _080E4670
	.align 2, 0
_080E4654: .4byte gUnknown_03005390
_080E4658: .4byte gUnknown_02024860
_080E465C: .4byte gUnknown_0806047D
_080E4660:
	ldr r2, _080E467C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4680 @ =gUnknown_080601A4
	bl sub_80DB168
_080E4670:
	ldr r1, _080E467C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E467C: .4byte gUnknown_02024860
_080E4680: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4684
sub_80E4684: @ 0x080E4684
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E469C
	ldr r1, _080E4698 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E46EC
	.align 2, 0
_080E4698: .4byte gUnknown_02024860
_080E469C:
	ldr r4, _080E46CC @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x7a
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E46D8
	ldr r0, [r4]
	movs r1, #0
	movs r2, #7
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E46D8
	ldr r4, _080E46D0 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E46D4 @ =gUnknown_08060496
	b _080E46E4
	.align 2, 0
_080E46CC: .4byte gUnknown_03005390
_080E46D0: .4byte gUnknown_02024860
_080E46D4: .4byte gUnknown_08060496
_080E46D8:
	ldr r4, _080E46F4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E46F8 @ =gUnknown_080601A4
_080E46E4:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E46EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E46F4: .4byte gUnknown_02024860
_080E46F8: .4byte gUnknown_080601A4

	thumb_func_start sub_80E46FC
sub_80E46FC: @ 0x080E46FC
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4748
	ldr r0, _080E472C @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #1
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4738
	ldr r2, _080E4730 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4734 @ =gUnknown_080604B1
	bl sub_80DB168
	b _080E4748
	.align 2, 0
_080E472C: .4byte gUnknown_03005390
_080E4730: .4byte gUnknown_02024860
_080E4734: .4byte gUnknown_080604B1
_080E4738:
	ldr r2, _080E4754 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4758 @ =gUnknown_080601A4
	bl sub_80DB168
_080E4748:
	ldr r1, _080E4754 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E4754: .4byte gUnknown_02024860
_080E4758: .4byte gUnknown_080601A4

	thumb_func_start sub_80E475C
sub_80E475C: @ 0x080E475C
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E47DC
	ldr r0, _080E47BC @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E47CC
	adds r0, r1, #0
	movs r1, #1
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E47CC
	ldr r2, _080E47C0 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E47C4 @ =gUnknown_080604CD
	bl sub_80DB168
	ldr r4, _080E47C8 @ =gUnknown_02020C70 + 6*0x94
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E47DC
	adds r0, r4, #0
	movs r1, #0xd5
	bl sub_80DA29C
	adds r1, r4, #0
	adds r1, #0x5d
	movs r0, #0xd5
	strb r0, [r1]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
	b _080E47DC
	.align 2, 0
_080E47BC: .4byte gUnknown_03005390
_080E47C0: .4byte gUnknown_02024860
_080E47C4: .4byte gUnknown_080604CD
_080E47C8: .4byte gUnknown_02020C70 + 6*0x94
_080E47CC:
	ldr r2, _080E47E8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E47EC @ =gUnknown_080601A4
	bl sub_80DB168
_080E47DC:
	ldr r1, _080E47E8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E47E8: .4byte gUnknown_02024860
_080E47EC: .4byte gUnknown_080601A4

	thumb_func_start sub_80E47F0
sub_80E47F0: @ 0x080E47F0
	push {lr}
	bl sub_80E3B98
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E47FC
sub_80E47FC: @ 0x080E47FC
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4814
	ldr r1, _080E4810 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E4864
	.align 2, 0
_080E4810: .4byte gUnknown_02024860
_080E4814:
	ldr r4, _080E4844 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x7b
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4850
	ldr r0, [r4]
	movs r1, #2
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4850
	ldr r4, _080E4848 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E484C @ =gUnknown_080604F1
	b _080E485C
	.align 2, 0
_080E4844: .4byte gUnknown_03005390
_080E4848: .4byte gUnknown_02024860
_080E484C: .4byte gUnknown_080604F1
_080E4850:
	ldr r4, _080E486C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4870 @ =gUnknown_080601A4
_080E485C:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4864:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E486C: .4byte gUnknown_02024860
_080E4870: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4874
sub_80E4874: @ 0x080E4874
	push {lr}
	ldr r0, _080E489C @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	movs r2, #3
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E48A8
	ldr r2, _080E48A0 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E48A4 @ =gUnknown_0806050E
	bl sub_80DB168
	b _080E48B8
	.align 2, 0
_080E489C: .4byte gUnknown_03005390
_080E48A0: .4byte gUnknown_02024860
_080E48A4: .4byte gUnknown_0806050E
_080E48A8:
	ldr r2, _080E48C4 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E48C8 @ =gUnknown_080601A4
	bl sub_80DB168
_080E48B8:
	ldr r1, _080E48C4 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E48C4: .4byte gUnknown_02024860
_080E48C8: .4byte gUnknown_080601A4

	thumb_func_start sub_80E48CC
sub_80E48CC: @ 0x080E48CC
	push {lr}
	bl sub_80E3DAC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E48D8
sub_80E48D8: @ 0x080E48D8
	push {r4, r5, lr}
	ldr r5, _080E491C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080E4928
	ldr r3, _080E4920 @ =gUnknown_03005390
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E4914
	adds r1, #0x5e
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080E4914
	ldr r2, _080E4924 @ =m2_character_info
	adds r1, r0, #0
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x58
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E4914:
	ldr r1, _080E491C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E4994
	.align 2, 0
_080E491C: .4byte gUnknown_02024860
_080E4920: .4byte gUnknown_03005390
_080E4924: .4byte m2_character_info
_080E4928:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4938
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080E4994
_080E4938:
	bl sub_80EB3E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4980
	ldr r4, _080E4978 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r0, #0x79
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4980
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x63
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E4980
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E497C @ =gUnknown_08060548
	bl sub_80DB168
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E4994
	.align 2, 0
_080E4978: .4byte gUnknown_03005390
_080E497C: .4byte gUnknown_08060548
_080E4980:
	ldr r4, _080E499C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E49A0 @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4994:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E499C: .4byte gUnknown_02024860
_080E49A0: .4byte gUnknown_080601A4

	thumb_func_start sub_80E49A4
sub_80E49A4: @ 0x080E49A4
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E49F0
	ldr r0, _080E49D4 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #3
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E49E0
	ldr r2, _080E49D8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E49DC @ =gUnknown_0806057E
	bl sub_80DB168
	b _080E49F0
	.align 2, 0
_080E49D4: .4byte gUnknown_03005390
_080E49D8: .4byte gUnknown_02024860
_080E49DC: .4byte gUnknown_0806057E
_080E49E0:
	ldr r2, _080E49FC @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4A00 @ =gUnknown_080601A4
	bl sub_80DB168
_080E49F0:
	ldr r1, _080E49FC @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E49FC: .4byte gUnknown_02024860
_080E4A00: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4A04
sub_80E4A04: @ 0x080E4A04
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4A50
	ldr r0, _080E4A34 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4A40
	ldr r2, _080E4A38 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4A3C @ =gUnknown_080604F1
	bl sub_80DB168
	b _080E4A50
	.align 2, 0
_080E4A34: .4byte gUnknown_03005390
_080E4A38: .4byte gUnknown_02024860
_080E4A3C: .4byte gUnknown_080604F1
_080E4A40:
	ldr r2, _080E4A5C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4A60 @ =gUnknown_080601A4
	bl sub_80DB168
_080E4A50:
	ldr r1, _080E4A5C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E4A5C: .4byte gUnknown_02024860
_080E4A60: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4A64
sub_80E4A64: @ 0x080E4A64
	push {r4, r5, lr}
	ldr r5, _080E4A8C @ =gUnknown_03005390
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080E4A98
	ldr r4, _080E4A90 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4A94 @ =gUnknown_08060E51
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E4AEA
	.align 2, 0
_080E4A8C: .4byte gUnknown_03005390
_080E4A90: .4byte gUnknown_02024860
_080E4A94: .4byte gUnknown_08060E51
_080E4A98:
	adds r0, r1, #0
	adds r0, #0x52
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r0, #0
	beq _080E4AD4
	bl sub_80E23B8
	adds r4, r0, #0
	ldr r0, [r5]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_80E9BCC
	ldr r2, _080E4ACC @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4AD0 @ =gUnknown_08060282
	adds r1, r4, #0
	bl sub_80DB1FC
	b _080E4AE4
	.align 2, 0
_080E4ACC: .4byte gUnknown_02024860
_080E4AD0: .4byte gUnknown_08060282
_080E4AD4:
	ldr r2, _080E4AF0 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E4AF4 @ =gUnknown_080601A4
	bl sub_80DB168
_080E4AE4:
	ldr r1, _080E4AF0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E4AEA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4AF0: .4byte gUnknown_02024860
_080E4AF4: .4byte gUnknown_080601A4

	thumb_func_start sub_80E4AF8
sub_80E4AF8: @ 0x080E4AF8
	push {r4, r5, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4B10
	ldr r1, _080E4B0C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E4B60
	.align 2, 0
_080E4B0C: .4byte gUnknown_02024860
_080E4B10:
	ldr r5, _080E4B68 @ =gUnknown_03005390
	ldr r4, [r5]
	adds r3, r4, #0
	adds r3, #0x6e
	ldrh r2, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r0, #0
	bge _080E4B28
	adds r0, #3
_080E4B28:
	asrs r0, r0, #2
	strh r0, [r3]
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r4, #0
	adds r0, #0x77
	ldrb r0, [r0]
	lsrs r0, r0, #1
	cmp r1, r0
	bge _080E4B3E
	strh r0, [r3]
_080E4B3E:
	ldr r4, _080E4B6C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4B70 @ =gUnknown_08060B77
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r5]
	adds r2, #0x6e
	movs r3, #0
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4B60:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E4B68: .4byte gUnknown_03005390
_080E4B6C: .4byte gUnknown_02024860
_080E4B70: .4byte gUnknown_08060B77

	thumb_func_start sub_80E4B74
sub_80E4B74: @ 0x080E4B74
	push {r4, r5, r6, r7, lr}
	ldr r6, _080E4B8C @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r5, [r6, r0]
	cmp r5, #1
	beq _080E4BA4
	cmp r5, #1
	bgt _080E4B90
	cmp r5, #0
	beq _080E4B96
	b _080E4C0C
	.align 2, 0
_080E4B8C: .4byte gUnknown_02024860
_080E4B90:
	cmp r5, #2
	beq _080E4BE0
	b _080E4C0C
_080E4B96:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4C08
	movs r0, #1
	strh r0, [r6, #0x1c]
_080E4BA4:
	ldr r6, _080E4BD4 @ =gUnknown_03005390
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r7, [r1]
	bl sub_80EB40C
	ldr r4, _080E4BD8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r5, #2
	orrs r0, r5
	str r0, [r4]
	ldr r0, _080E4BDC @ =gUnknown_08060C05
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r6]
	adds r2, #0x68
	movs r3, #0
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_80DB1FC
	strh r5, [r4, #0x1c]
	b _080E4C0C
	.align 2, 0
_080E4BD4: .4byte gUnknown_03005390
_080E4BD8: .4byte gUnknown_02024860
_080E4BDC: .4byte gUnknown_08060C05
_080E4BE0:
	ldr r4, _080E4C14 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x6a
	ldrh r7, [r1]
	bl sub_80E3B30
	ldr r0, [r6]
	orrs r0, r5
	str r0, [r6]
	ldr r0, _080E4C18 @ =gUnknown_08060C21
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r4]
	adds r2, #0x6a
	movs r3, #0
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	bl sub_80DB1FC
_080E4C08:
	movs r0, #1
	strh r0, [r6, #0x1a]
_080E4C0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E4C14: .4byte gUnknown_03005390
_080E4C18: .4byte gUnknown_08060C21

	thumb_func_start sub_80E4C1C
sub_80E4C1C: @ 0x080E4C1C
	push {r4, lr}
	ldr r0, _080E4C34 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bls _080E4C2A
	b _080E4D1A
_080E4C2A:
	lsls r0, r0, #2
	ldr r1, _080E4C38 @ =_080E4C3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E4C34: .4byte gUnknown_02024860
_080E4C38: .4byte _080E4C3C
_080E4C3C: @ jump table
	.4byte _080E4C50 @ case 0
	.4byte _080E4C60 @ case 1
	.4byte _080E4C7E @ case 2
	.4byte _080E4CA6 @ case 3
	.4byte _080E4CDC @ case 4
_080E4C50:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4C6C
	ldr r1, _080E4C74 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E4C60:
	movs r0, #0
	bl sub_80E83FC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4C78
_080E4C6C:
	ldr r1, _080E4C74 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E4D1A
	.align 2, 0
_080E4C74: .4byte gUnknown_02024860
_080E4C78:
	ldr r1, _080E4C9C @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
_080E4C7E:
	bl sub_80E84E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4CA0
	ldr r2, _080E4C9C @ =gUnknown_02024860
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E4D1A
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E4D1A
	.align 2, 0
_080E4C9C: .4byte gUnknown_02024860
_080E4CA0:
	ldr r1, _080E4CBC @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
_080E4CA6:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4CC0
	bl sub_80E8E80
	ldr r1, _080E4CBC @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x1c]
	b _080E4D1A
	.align 2, 0
_080E4CBC: .4byte gUnknown_02024860
_080E4CC0:
	ldr r4, _080E4CD4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4CD8 @ =gUnknown_0806018C
	bl sub_80DB168
	b _080E4D16
	.align 2, 0
_080E4CD4: .4byte gUnknown_02024860
_080E4CD8: .4byte gUnknown_0806018C
_080E4CDC:
	bl sub_80E8E80
	ldr r4, _080E4D20 @ =gUnknown_02024860
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E4D1A
	movs r0, #0
	strh r0, [r4, #0x22]
	bl sub_80E8F1C
	ldr r0, _080E4D24 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #5
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4D16
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4D28 @ =gUnknown_0806047D
	bl sub_80DB168
_080E4D16:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4D1A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4D20: .4byte gUnknown_02024860
_080E4D24: .4byte gUnknown_03005390
_080E4D28: .4byte gUnknown_0806047D

	thumb_func_start sub_80E4D2C
sub_80E4D2C: @ 0x080E4D2C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _080E4D44 @ =gUnknown_02024860
	adds r6, r5, #0
	adds r6, #0x48
	movs r0, #0
	ldrsh r4, [r6, r0]
	cmp r4, #0
	beq _080E4D48
	cmp r4, #1
	beq _080E4D7C
	b _080E4D80
	.align 2, 0
_080E4D44: .4byte gUnknown_02024860
_080E4D48:
	bl sub_80E28B0
	movs r1, #0x1a
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _080E4D80
	strh r4, [r5, #0x1a]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _080E4D74 @ =0x040000D4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x1c
	str r0, [r1, #4]
	ldr r0, _080E4D78 @ =0x81000015
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	b _080E4D80
	.align 2, 0
_080E4D74: .4byte 0x040000D4
_080E4D78: .4byte 0x81000015
_080E4D7C:
	bl sub_80E28B0
_080E4D80:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80E4D88
sub_80E4D88: @ 0x080E4D88
	push {r4, lr}
	ldr r4, _080E4D9C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E4DA0
	cmp r0, #1
	beq _080E4DB6
	b _080E4DE4
	.align 2, 0
_080E4D9C: .4byte gUnknown_02024860
_080E4DA0:
	movs r0, #0xaf
	lsls r0, r0, #1
	bl sub_80E2434
	ldr r1, _080E4DEC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E4DB6:
	ldr r0, _080E4DEC @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _080E4DF0 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x7c
	ldrb r1, [r1]
	bl sub_80E8634
	ldr r2, _080E4DF4 @ =gUnknown_02024860
	movs r0, #0x26
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E4DE4
	movs r0, #0
	strh r0, [r2, #0x26]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E4DE4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4DEC: .4byte gUnknown_020248E0
_080E4DF0: .4byte gUnknown_03005390
_080E4DF4: .4byte gUnknown_02024860

	thumb_func_start sub_80E4DF8
sub_80E4DF8: @ 0x080E4DF8
	push {r4, lr}
	ldr r4, _080E4E10 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E4E2E
	cmp r0, #1
	bgt _080E4E14
	cmp r0, #0
	beq _080E4E1E
	b _080E4F0A
	.align 2, 0
_080E4E10: .4byte gUnknown_02024860
_080E4E14:
	cmp r0, #2
	beq _080E4E56
	cmp r0, #3
	beq _080E4EE0
	b _080E4F0A
_080E4E1E:
	movs r0, #0
	bl sub_80E83FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4F06
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E4E2E:
	bl sub_80E84E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4E50
	ldr r2, _080E4E4C @ =gUnknown_02024860
	movs r3, #0x24
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E4F0A
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E4F0A
	.align 2, 0
_080E4E4C: .4byte gUnknown_02024860
_080E4E50:
	ldr r1, _080E4EB4 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
_080E4E56:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4EC4
	ldr r2, _080E4EB8 @ =gUnknown_020248E0
	ldr r0, _080E4EBC @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x68
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #2
	ldr r0, _080E4EC0 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r4, r2, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080E4E96
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_80E2434
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E4E9A
_080E4E96:
	movs r0, #1
	strh r0, [r4]
_080E4E9A:
	ldr r0, _080E4EB8 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080E4EB4 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080E4F0A
	.align 2, 0
_080E4EB4: .4byte gUnknown_02024860
_080E4EB8: .4byte gUnknown_020248E0
_080E4EBC: .4byte gUnknown_0300538C
_080E4EC0: .4byte gUnknown_03005390
_080E4EC4:
	ldr r4, _080E4ED8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4EDC @ =gUnknown_0806018C
	bl sub_80DB168
	b _080E4F06
	.align 2, 0
_080E4ED8: .4byte gUnknown_02024860
_080E4EDC: .4byte gUnknown_0806018C
_080E4EE0:
	ldr r0, _080E4F10 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r3, #0x26
	ldrsh r1, [r4, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E4F0A
	bl sub_80E8F1C
	movs r0, #0
	strh r0, [r4, #0x26]
_080E4F06:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E4F0A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E4F10: .4byte gUnknown_020248E0

	thumb_func_start sub_80E4F14
sub_80E4F14: @ 0x080E4F14
	push {r4, lr}
	ldr r4, _080E4F2C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E4F4A
	cmp r0, #1
	bgt _080E4F30
	cmp r0, #0
	beq _080E4F3A
	b _080E502A
	.align 2, 0
_080E4F2C: .4byte gUnknown_02024860
_080E4F30:
	cmp r0, #2
	beq _080E4F72
	cmp r0, #3
	beq _080E5000
	b _080E502A
_080E4F3A:
	movs r0, #0
	bl sub_80E83FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5026
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E4F4A:
	bl sub_80E84E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E4F6C
	ldr r2, _080E4F68 @ =gUnknown_02024860
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E502A
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E502A
	.align 2, 0
_080E4F68: .4byte gUnknown_02024860
_080E4F6C:
	ldr r1, _080E4FD4 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
_080E4F72:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E4FE4
	ldr r2, _080E4FD8 @ =gUnknown_020248E0
	ldr r0, _080E4FDC @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, _080E4FE0 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r4, r2, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080E4FB4
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_80E2434
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E4FB8
_080E4FB4:
	movs r0, #1
	strh r0, [r4]
_080E4FB8:
	ldr r0, _080E4FD8 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080E4FD4 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080E502A
	.align 2, 0
_080E4FD4: .4byte gUnknown_02024860
_080E4FD8: .4byte gUnknown_020248E0
_080E4FDC: .4byte gUnknown_0300538C
_080E4FE0: .4byte gUnknown_03005390
_080E4FE4:
	ldr r4, _080E4FF8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E4FFC @ =gUnknown_0806018C
	bl sub_80DB168
	b _080E5026
	.align 2, 0
_080E4FF8: .4byte gUnknown_02024860
_080E4FFC: .4byte gUnknown_0806018C
_080E5000:
	ldr r0, _080E5030 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E502A
	bl sub_80E8F1C
	movs r0, #0
	strh r0, [r4, #0x26]
_080E5026:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E502A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5030: .4byte gUnknown_020248E0

	thumb_func_start sub_80E5034
sub_80E5034: @ 0x080E5034
	push {lr}
	bl sub_80E4F14
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E5040
sub_80E5040: @ 0x080E5040
	ldr r1, _080E5048 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5048: .4byte gUnknown_02024860

	thumb_func_start sub_80E504C
sub_80E504C: @ 0x080E504C
	ldr r1, _080E5054 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5054: .4byte gUnknown_02024860

	thumb_func_start sub_80E5058
sub_80E5058: @ 0x080E5058
	ldr r1, _080E5060 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5060: .4byte gUnknown_02024860

	thumb_func_start sub_80E5064
sub_80E5064: @ 0x080E5064
	ldr r1, _080E506C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E506C: .4byte gUnknown_02024860

	thumb_func_start sub_80E5070
sub_80E5070: @ 0x080E5070
	ldr r1, _080E5078 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5078: .4byte gUnknown_02024860

	thumb_func_start sub_80E507C
sub_80E507C: @ 0x080E507C
	ldr r1, _080E5084 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5084: .4byte gUnknown_02024860

	thumb_func_start sub_80E5088
sub_80E5088: @ 0x080E5088
	ldr r1, _080E5090 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E5090: .4byte gUnknown_02024860

	thumb_func_start sub_80E5094
sub_80E5094: @ 0x080E5094
	ldr r1, _080E509C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E509C: .4byte gUnknown_02024860

	thumb_func_start sub_80E50A0
sub_80E50A0: @ 0x080E50A0
	push {r4, lr}
	ldr r4, _080E50B4 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E50B8
	cmp r0, #1
	beq _080E50CE
	b _080E50F4
	.align 2, 0
_080E50B4: .4byte gUnknown_02024860
_080E50B8:
	movs r0, #4
	bl sub_80E2394
	ldr r1, _080E50FC @ =gUnknown_020248E0
	adds r0, #1
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E50CE:
	ldr r0, _080E5100 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E50FC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E5104 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E50F4
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E50F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E50FC: .4byte gUnknown_020248E0
_080E5100: .4byte gUnknown_03005390
_080E5104: .4byte gUnknown_02024860

	thumb_func_start sub_80E5108
sub_80E5108: @ 0x080E5108
	push {r4, lr}
	ldr r4, _080E511C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5120
	cmp r0, #1
	beq _080E5134
	b _080E515A
	.align 2, 0
_080E511C: .4byte gUnknown_02024860
_080E5120:
	movs r0, #0x32
	bl sub_80E2434
	ldr r1, _080E5160 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E5134:
	ldr r0, _080E5164 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E5160 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E5168 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E515A
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E515A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5160: .4byte gUnknown_020248E0
_080E5164: .4byte gUnknown_03005390
_080E5168: .4byte gUnknown_02024860

	thumb_func_start sub_80E516C
sub_80E516C: @ 0x080E516C
	push {r4, lr}
	ldr r4, _080E5180 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5184
	cmp r0, #1
	beq _080E5198
	b _080E51BE
	.align 2, 0
_080E5180: .4byte gUnknown_02024860
_080E5184:
	movs r0, #0xc8
	bl sub_80E2434
	ldr r1, _080E51C4 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E5198:
	ldr r0, _080E51C8 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E51C4 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E51CC @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E51BE
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E51BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E51C4: .4byte gUnknown_020248E0
_080E51C8: .4byte gUnknown_03005390
_080E51CC: .4byte gUnknown_02024860

	thumb_func_start sub_80E51D0
sub_80E51D0: @ 0x080E51D0
	push {r4, lr}
	ldr r0, _080E5200 @ =gUnknown_03005390
	ldr r4, [r0]
	movs r0, #0x14
	bl sub_80E2434
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80EAAC4
	ldr r2, _080E5204 @ =gUnknown_02024860
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E51FA
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E51FA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5200: .4byte gUnknown_03005390
_080E5204: .4byte gUnknown_02024860

	thumb_func_start sub_80E5208
sub_80E5208: @ 0x080E5208
	push {r4, lr}
	ldr r0, _080E5238 @ =gUnknown_03005390
	ldr r4, [r0]
	movs r0, #0x50
	bl sub_80E2434
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80EAAC4
	ldr r2, _080E523C @ =gUnknown_02024860
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5232
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E5232:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5238: .4byte gUnknown_03005390
_080E523C: .4byte gUnknown_02024860

	thumb_func_start sub_80E5240
sub_80E5240: @ 0x080E5240
	push {r4, lr}
	ldr r4, _080E5254 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5258
	cmp r0, #1
	beq _080E526E
	b _080E5294
	.align 2, 0
_080E5254: .4byte gUnknown_02024860
_080E5258:
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_80E2434
	ldr r1, _080E529C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E526E:
	ldr r0, _080E52A0 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E529C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E52A4 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5294
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E5294:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E529C: .4byte gUnknown_020248E0
_080E52A0: .4byte gUnknown_03005390
_080E52A4: .4byte gUnknown_02024860

	thumb_func_start sub_80E52A8
sub_80E52A8: @ 0x080E52A8
	push {lr}
	movs r0, #7
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	bhi _080E5370
	lsls r0, r0, #2
	ldr r1, _080E52C4 @ =_080E52C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E52C4: .4byte _080E52C8
_080E52C8: @ jump table
	.4byte _080E52E4 @ case 0
	.4byte _080E531C @ case 1
	.4byte _080E5354 @ case 2
	.4byte _080E535A @ case 3
	.4byte _080E5360 @ case 4
	.4byte _080E5366 @ case 5
	.4byte _080E536C @ case 6
_080E52E4:
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	ldr r0, _080E5310 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x6a
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r2]
	ldr r3, _080E5314 @ =gUnknown_02024860
	ldr r0, [r3]
	movs r2, #2
	orrs r0, r2
	str r0, [r3]
	ldr r0, _080E5318 @ =gUnknown_08060B24
	bl sub_80DB1FC
	b _080E5370
	.align 2, 0
_080E5310: .4byte gUnknown_03005390
_080E5314: .4byte gUnknown_02024860
_080E5318: .4byte gUnknown_08060B24
_080E531C:
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	ldr r0, _080E5348 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x68
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r2]
	ldr r3, _080E534C @ =gUnknown_02024860
	ldr r0, [r3]
	movs r2, #2
	orrs r0, r2
	str r0, [r3]
	ldr r0, _080E5350 @ =gUnknown_08060B07
	bl sub_80DB1FC
	b _080E5370
	.align 2, 0
_080E5348: .4byte gUnknown_03005390
_080E534C: .4byte gUnknown_02024860
_080E5350: .4byte gUnknown_08060B07
_080E5354:
	bl sub_80E55C4
	b _080E5370
_080E535A:
	bl sub_80E5580
	b _080E5370
_080E5360:
	bl sub_80E5608
	b _080E5370
_080E5366:
	bl sub_80E5538
	b _080E5370
_080E536C:
	bl sub_80E5650
_080E5370:
	ldr r1, _080E537C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080E537C: .4byte gUnknown_02024860

	thumb_func_start sub_80E5380
sub_80E5380: @ 0x080E5380
	push {r4, lr}
	ldr r4, _080E5394 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5398
	cmp r0, #1
	beq _080E53AC
	b _080E53D2
	.align 2, 0
_080E5394: .4byte gUnknown_02024860
_080E5398:
	movs r0, #0xa
	bl sub_80E2434
	ldr r1, _080E53D8 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E53AC:
	ldr r0, _080E53DC @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E53D8 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E53E0 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E53D2
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E53D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E53D8: .4byte gUnknown_020248E0
_080E53DC: .4byte gUnknown_03005390
_080E53E0: .4byte gUnknown_02024860

	thumb_func_start sub_80E53E4
sub_80E53E4: @ 0x080E53E4
	push {r4, lr}
	ldr r4, _080E53F8 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E53FC
	cmp r0, #1
	beq _080E5410
	b _080E5436
	.align 2, 0
_080E53F8: .4byte gUnknown_02024860
_080E53FC:
	movs r0, #0xa
	bl sub_80E2434
	ldr r1, _080E543C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E5410:
	ldr r0, _080E5440 @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E543C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E5444 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5436
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E5436:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E543C: .4byte gUnknown_020248E0
_080E5440: .4byte gUnknown_03005390
_080E5444: .4byte gUnknown_02024860

	thumb_func_start sub_80E5448
sub_80E5448: @ 0x080E5448
	push {lr}
	ldr r0, _080E546C @ =gUnknown_03005390
	ldr r1, [r0]
	adds r1, #0x42
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r3, r0, #0
	cmp r1, #3
	bne _080E54B8
	ldr r2, _080E5470 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080E5474
	cmp r0, #1
	beq _080E5484
	b _080E54BC
	.align 2, 0
_080E546C: .4byte gUnknown_03005390
_080E5470: .4byte gUnknown_02024860
_080E5474:
	ldr r0, _080E54AC @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, _080E54B0 @ =0x00002710
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1c]
_080E5484:
	ldr r0, [r3]
	ldr r1, _080E54AC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E54B4 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E54BC
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E54BC
	.align 2, 0
_080E54AC: .4byte gUnknown_020248E0
_080E54B0: .4byte 0x00002710
_080E54B4: .4byte gUnknown_02024860
_080E54B8:
	bl sub_80E50A0
_080E54BC:
	pop {r0}
	bx r0

	thumb_func_start sub_80E54C0
sub_80E54C0: @ 0x080E54C0
	push {r4, lr}
	ldr r4, _080E5528 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x5f
	ldrb r0, [r1]
	cmp r0, #5
	bne _080E551A
	movs r0, #0
	strb r0, [r1]
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E550A
	ldr r2, _080E552C @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r2, r0, #0
	adds r2, #0x54
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	ldrb r0, [r2]
	cmp r0, r1
	beq _080E550A
	strb r1, [r2]
	ldr r0, [r4]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E550A:
	ldr r2, _080E5530 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E5534 @ =gUnknown_08060806
	bl sub_80DB168
_080E551A:
	ldr r1, _080E5530 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5528: .4byte gUnknown_03005390
_080E552C: .4byte m2_character_info
_080E5530: .4byte gUnknown_02024860
_080E5534: .4byte gUnknown_08060806

	thumb_func_start sub_80E5538
sub_80E5538: @ 0x080E5538
	push {r4, lr}
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080E5574 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x73
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldr r4, _080E5578 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	ldr r0, _080E557C @ =gUnknown_08060B42
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5574: .4byte gUnknown_03005390
_080E5578: .4byte gUnknown_02024860
_080E557C: .4byte gUnknown_08060B42

	thumb_func_start sub_80E5580
sub_80E5580: @ 0x080E5580
	push {r4, lr}
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	ldr r0, _080E55B8 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x6e
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r2]
	ldr r4, _080E55BC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	ldr r0, _080E55C0 @ =gUnknown_08060B5C
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E55B8: .4byte gUnknown_03005390
_080E55BC: .4byte gUnknown_02024860
_080E55C0: .4byte gUnknown_08060B5C

	thumb_func_start sub_80E55C4
sub_80E55C4: @ 0x080E55C4
	push {r4, lr}
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	ldr r0, _080E55FC @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x6c
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r2]
	ldr r4, _080E5600 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	ldr r0, _080E5604 @ =gUnknown_08060BB0
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E55FC: .4byte gUnknown_03005390
_080E5600: .4byte gUnknown_02024860
_080E5604: .4byte gUnknown_08060BB0

	thumb_func_start sub_80E5608
sub_80E5608: @ 0x080E5608
	push {r4, lr}
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080E5644 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x72
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	ldr r4, _080E5648 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	ldr r0, _080E564C @ =gUnknown_08060BCC
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5644: .4byte gUnknown_03005390
_080E5648: .4byte gUnknown_02024860
_080E564C: .4byte gUnknown_08060BCC

	thumb_func_start sub_80E5650
sub_80E5650: @ 0x080E5650
	push {r4, lr}
	movs r0, #4
	bl sub_80E2394
	adds r1, r0, #0
	adds r1, #1
	ldr r0, _080E5688 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r2, #0x70
	ldrh r0, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r2]
	ldr r4, _080E568C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r2, #2
	orrs r0, r2
	str r0, [r4]
	ldr r0, _080E5690 @ =gUnknown_08060BEA
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5688: .4byte gUnknown_03005390
_080E568C: .4byte gUnknown_02024860
_080E5690: .4byte gUnknown_08060BEA

	thumb_func_start sub_80E5694
sub_80E5694: @ 0x080E5694
	push {r4, lr}
	bl sub_80EF7E4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5748
	ldr r4, _080E56E4 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E56F0
	ldr r3, _080E56E8 @ =gUnknown_03005390
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E56DA
	adds r1, #0x5e
	ldrb r0, [r1]
	cmp r0, #3
	bhi _080E56DA
	ldr r2, _080E56EC @ =m2_character_info
	adds r1, r0, #0
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x58
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r3]
	adds r0, #0x5e
	ldrb r0, [r0]
	bl sub_80D6AF8
_080E56DA:
	ldr r1, _080E56E4 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E5748
	.align 2, 0
_080E56E4: .4byte gUnknown_02024860
_080E56E8: .4byte gUnknown_03005390
_080E56EC: .4byte m2_character_info
_080E56F0:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5744
	bl sub_80EB3E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5734
	ldr r0, _080E572C @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x63
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E5734
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5730 @ =gUnknown_08060548
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1c]
	b _080E5748
	.align 2, 0
_080E572C: .4byte gUnknown_03005390
_080E5730: .4byte gUnknown_08060548
_080E5734:
	ldr r4, _080E5750 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5754 @ =gUnknown_080601A4
	bl sub_80DB168
_080E5744:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E5748:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5750: .4byte gUnknown_02024860
_080E5754: .4byte gUnknown_080601A4

	thumb_func_start sub_80E5758
sub_80E5758: @ 0x080E5758
	push {r4, lr}
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5790
	ldr r0, _080E5784 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x65
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E5790
	movs r0, #0
	strb r0, [r1]
	ldr r4, _080E5788 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E578C @ =gUnknown_08060A1C
	b _080E579C
	.align 2, 0
_080E5784: .4byte gUnknown_03005390
_080E5788: .4byte gUnknown_02024860
_080E578C: .4byte gUnknown_08060A1C
_080E5790:
	ldr r4, _080E57AC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E57B0 @ =gUnknown_080601A4
_080E579C:
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E57AC: .4byte gUnknown_02024860
_080E57B0: .4byte gUnknown_080601A4

	thumb_func_start sub_80E57B4
sub_80E57B4: @ 0x080E57B4
	push {r4, r5, r6, lr}
	ldr r5, _080E57CC @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080E587C
	cmp r4, #1
	bgt _080E57D0
	cmp r4, #0
	beq _080E57D8
	b _080E58E2
	.align 2, 0
_080E57CC: .4byte gUnknown_02024860
_080E57D0:
	cmp r4, #2
	bne _080E57D6
	b _080E58D0
_080E57D6:
	b _080E58E2
_080E57D8:
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E585C
	ldr r0, _080E580C @ =gUnknown_0300538C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E585C
	ldr r6, _080E5810 @ =gUnknown_03005390
	ldr r0, [r6]
	cmp r0, r1
	bne _080E5818
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5814 @ =gUnknown_0806023A
	bl sub_80DB168
	b _080E58DE
	.align 2, 0
_080E580C: .4byte gUnknown_0300538C
_080E5810: .4byte gUnknown_03005390
_080E5814: .4byte gUnknown_0806023A
_080E5818:
	adds r0, #0x4c
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_80E23B8
	ldr r4, _080E5854 @ =gUnknown_020248E0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	movs r1, #0x92
	lsls r1, r1, #4
	adds r4, r4, r1
	strh r0, [r4]
	ldr r0, [r6]
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl sub_80E9BA0
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5858 @ =gUnknown_08060253
	movs r3, #0
	ldrsh r1, [r4, r3]
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E58E2
	.align 2, 0
_080E5854: .4byte gUnknown_020248E0
_080E5858: .4byte gUnknown_08060253
_080E585C:
	ldr r4, _080E5874 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5878 @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E58E2
	.align 2, 0
_080E5874: .4byte gUnknown_02024860
_080E5878: .4byte gUnknown_080601A4
_080E587C:
	ldr r0, _080E58C0 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x48
	ldr r1, _080E58C4 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrh r1, [r1]
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80E9BF8
	ldr r0, _080E58C8 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080E58CC
	adds r0, r1, #0
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E58B8
	strh r4, [r5, #0x1a]
_080E58B8:
	movs r0, #2
	strh r0, [r5, #0x1c]
	b _080E58E2
	.align 2, 0
_080E58C0: .4byte gUnknown_0300538C
_080E58C4: .4byte gUnknown_020248E0
_080E58C8: .4byte gUnknown_03005390
_080E58CC:
	strh r4, [r5, #0x1a]
	b _080E58E2
_080E58D0:
	ldr r0, _080E58E8 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E58E2
_080E58DE:
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E58E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E58E8: .4byte gUnknown_03005390

	thumb_func_start sub_80E58EC
sub_80E58EC: @ 0x080E58EC
	push {lr}
	bl sub_80E57B4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E58F8
sub_80E58F8: @ 0x080E58F8
	push {r4, r5, lr}
	ldr r5, _080E590C @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080E5910
	cmp r4, #1
	beq _080E5984
	b _080E59C8
	.align 2, 0
_080E590C: .4byte gUnknown_02024860
_080E5910:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5920
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080E59C8
_080E5920:
	movs r0, #0xfa
	bl sub_80EB54C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5964
	ldr r2, _080E595C @ =gUnknown_020248E0
	ldr r0, _080E5960 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r3, #0
	subs r0, r0, r1
	movs r1, #0x92
	lsls r1, r1, #4
	adds r2, r2, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5964
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E59C8
	.align 2, 0
_080E595C: .4byte gUnknown_020248E0
_080E5960: .4byte gUnknown_03005390
_080E5964:
	ldr r4, _080E597C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5980 @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E59C8
	.align 2, 0
_080E597C: .4byte gUnknown_02024860
_080E5980: .4byte gUnknown_080601A4
_080E5984:
	ldr r0, _080E59D0 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E59C8
	movs r0, #0
	strh r0, [r5, #0x26]
	ldr r0, _080E59D4 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	movs r2, #4
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E59C6
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E59D8 @ =gUnknown_0806052B
	bl sub_80DB168
_080E59C6:
	strh r4, [r5, #0x1a]
_080E59C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E59D0: .4byte gUnknown_020248E0
_080E59D4: .4byte gUnknown_03005390
_080E59D8: .4byte gUnknown_0806052B

	thumb_func_start sub_80E59DC
sub_80E59DC: @ 0x080E59DC
	push {lr}
	movs r0, #1
	bl sub_80EB5A0
	pop {r0}
	bx r0

	thumb_func_start sub_80E59E8
sub_80E59E8: @ 0x080E59E8
	push {lr}
	movs r0, #5
	bl sub_80EB5A0
	pop {r0}
	bx r0

	thumb_func_start sub_80E59F4
sub_80E59F4: @ 0x080E59F4
	push {lr}
	movs r0, #0x14
	bl sub_80EB5A0
	pop {r0}
	bx r0

	thumb_func_start sub_80E5A00
sub_80E5A00: @ 0x080E5A00
	push {r4, r5, lr}
	ldr r5, _080E5A14 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080E5A18
	cmp r4, #1
	beq _080E5A88
	b _080E5ACC
	.align 2, 0
_080E5A14: .4byte gUnknown_02024860
_080E5A18:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5A28
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080E5ACC
_080E5A28:
	movs r0, #0xfa
	bl sub_80EB54C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5A68
	ldr r2, _080E5A60 @ =gUnknown_020248E0
	ldr r0, _080E5A64 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r1, [r0]
	movs r0, #0x64
	subs r0, r0, r1
	movs r1, #0x92
	lsls r1, r1, #4
	adds r2, r2, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5A68
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E5ACC
	.align 2, 0
_080E5A60: .4byte gUnknown_020248E0
_080E5A64: .4byte gUnknown_03005390
_080E5A68:
	ldr r4, _080E5A80 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5A84 @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E5ACC
	.align 2, 0
_080E5A80: .4byte gUnknown_02024860
_080E5A84: .4byte gUnknown_080601A4
_080E5A88:
	ldr r0, _080E5AD4 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5ACC
	movs r0, #0
	strh r0, [r5, #0x26]
	ldr r0, _080E5AD8 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #2
	movs r2, #4
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5ACA
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5ADC @ =gUnknown_0806052B
	bl sub_80DB168
_080E5ACA:
	strh r4, [r5, #0x1a]
_080E5ACC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5AD4: .4byte gUnknown_020248E0
_080E5AD8: .4byte gUnknown_03005390
_080E5ADC: .4byte gUnknown_0806052B

	thumb_func_start sub_80E5AE0
sub_80E5AE0: @ 0x080E5AE0
	push {lr}
	movs r0, #0x5a
	bl sub_80EAEDC
	pop {r0}
	bx r0

	thumb_func_start sub_80E5AEC
sub_80E5AEC: @ 0x080E5AEC
	push {r4, r5, lr}
	ldr r5, _080E5B00 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080E5B04
	cmp r4, #1
	beq _080E5B50
	b _080E5B74
	.align 2, 0
_080E5B00: .4byte gUnknown_02024860
_080E5B04:
	movs r0, #0xfa
	bl sub_80EB54C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5B38
	movs r0, #4
	bl sub_80E2394
	ldr r1, _080E5B34 @ =gUnknown_020248E0
	adds r0, #1
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E5B74
	.align 2, 0
_080E5B34: .4byte gUnknown_020248E0
_080E5B38:
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5B4C @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080E5B74
	.align 2, 0
_080E5B4C: .4byte gUnknown_080601A4
_080E5B50:
	ldr r0, _080E5B7C @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5B74
	movs r0, #0
	strh r0, [r5, #0x26]
	strh r4, [r5, #0x1a]
_080E5B74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E5B7C: .4byte gUnknown_020248E0

	thumb_func_start sub_80E5B80
sub_80E5B80: @ 0x080E5B80
	push {r4, lr}
	ldr r4, _080E5B94 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5B98
	cmp r0, #1
	beq _080E5BEC
	b _080E5C40
	.align 2, 0
_080E5B94: .4byte gUnknown_02024860
_080E5B98:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5BE2
	movs r0, #0xfa
	bl sub_80EB54C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5BD4
	movs r0, #4
	bl sub_80E2394
	ldr r1, _080E5BD0 @ =gUnknown_020248E0
	adds r0, #1
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r4, #0x1c]
	b _080E5C40
	.align 2, 0
_080E5BD0: .4byte gUnknown_020248E0
_080E5BD4:
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5BE8 @ =gUnknown_080601A4
	bl sub_80DB168
_080E5BE2:
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E5C40
	.align 2, 0
_080E5BE8: .4byte gUnknown_080601A4
_080E5BEC:
	ldr r0, _080E5C48 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5C40
	movs r0, #0
	strh r0, [r4, #0x26]
	movs r0, #0x80
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5C3A
	ldr r0, _080E5C4C @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #5
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5C3A
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5C50 @ =gUnknown_0806047D
	bl sub_80DB168
_080E5C3A:
	ldr r1, _080E5C54 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E5C40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5C48: .4byte gUnknown_020248E0
_080E5C4C: .4byte gUnknown_03005390
_080E5C50: .4byte gUnknown_0806047D
_080E5C54: .4byte gUnknown_02024860

	thumb_func_start sub_80E5C58
sub_80E5C58: @ 0x080E5C58
	push {r4, lr}
	ldr r4, _080E5C6C @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E5C70
	cmp r0, #1
	beq _080E5C86
	b _080E5CB4
	.align 2, 0
_080E5C6C: .4byte gUnknown_02024860
_080E5C70:
	movs r0, #0xc8
	lsls r0, r0, #2
	bl sub_80E2434
	ldr r1, _080E5CBC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E5C86:
	ldr r0, _080E5CBC @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _080E5CC0 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x7c
	ldrb r1, [r1]
	bl sub_80E8634
	ldr r2, _080E5CC4 @ =gUnknown_02024860
	movs r0, #0x26
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E5CB4
	movs r0, #0
	strh r0, [r2, #0x26]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E5CB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5CBC: .4byte gUnknown_020248E0
_080E5CC0: .4byte gUnknown_03005390
_080E5CC4: .4byte gUnknown_02024860

	thumb_func_start sub_80E5CC8
sub_80E5CC8: @ 0x080E5CC8
	push {lr}
	movs r0, #0x64
	bl sub_80EB680
	pop {r0}
	bx r0

	thumb_func_start sub_80E5CD4
sub_80E5CD4: @ 0x080E5CD4
	push {lr}
	movs r0, #0xc8
	bl sub_80EB680
	pop {r0}
	bx r0

	thumb_func_start sub_80E5CE0
sub_80E5CE0: @ 0x080E5CE0
	push {lr}
	movs r0, #0xc8
	bl sub_80EB740
	pop {r0}
	bx r0

	thumb_func_start sub_80E5CEC
sub_80E5CEC: @ 0x080E5CEC
	push {lr}
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_80EB740
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E5CFC
sub_80E5CFC: @ 0x080E5CFC
	push {r4, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5D14
	ldr r1, _080E5D10 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E5D42
	.align 2, 0
_080E5D10: .4byte gUnknown_02024860
_080E5D14:
	ldr r0, _080E5D48 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x6e
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	cmp r0, #0xff
	ble _080E5D28
	movs r0, #0xff
_080E5D28:
	strh r0, [r2]
	ldr r4, _080E5D4C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E5D50 @ =gUnknown_08060B91
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E5D42:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5D48: .4byte gUnknown_03005390
_080E5D4C: .4byte gUnknown_02024860
_080E5D50: .4byte gUnknown_08060B91

	thumb_func_start sub_80E5D54
sub_80E5D54: @ 0x080E5D54
	push {r4, r5, r6, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5D6C
	ldr r1, _080E5D68 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E5D9C
	.align 2, 0
_080E5D68: .4byte gUnknown_02024860
_080E5D6C:
	ldr r6, _080E5DA4 @ =gUnknown_03005390
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x6a
	ldrh r4, [r1]
	bl sub_80EB510
	ldr r5, _080E5DA8 @ =gUnknown_02024860
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5DAC @ =gUnknown_08060B24
	ldr r1, [r6]
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r1, r4
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E5D9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E5DA4: .4byte gUnknown_03005390
_080E5DA8: .4byte gUnknown_02024860
_080E5DAC: .4byte gUnknown_08060B24

	thumb_func_start sub_80E5DB0
sub_80E5DB0: @ 0x080E5DB0
	push {lr}
	bl sub_80E5D54
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E5DBC
sub_80E5DBC: @ 0x080E5DBC
	push {r4, r5, lr}
	ldr r5, _080E5DD4 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080E5EA8
	cmp r4, #1
	bgt _080E5DD8
	cmp r4, #0
	beq _080E5DE0
	b _080E5ED8
	.align 2, 0
_080E5DD4: .4byte gUnknown_02024860
_080E5DD8:
	cmp r4, #2
	bne _080E5DDE
	b _080E5ED4
_080E5DDE:
	b _080E5ED8
_080E5DE0:
	ldr r2, _080E5E6C @ =gUnknown_0872F2DC
	ldr r0, _080E5E70 @ =gCurrentMapId
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0xa]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080E5ED8
	ldr r0, _080E5E74 @ =0x000002F2
	bl sub_80262A8
	cmp r0, #0
	bne _080E5ED8
	ldr r0, _080E5E78 @ =gUnknown_030052F8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bgt _080E5ED8
	ldr r0, _080E5E7C @ =gUnknown_03005344
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E5E46
	movs r0, #0x64
	bl sub_80E2394
	ldr r3, _080E5E80 @ =gUnknown_08B1D62C
	ldr r1, _080E5E84 @ =gUnknown_0300538C
	ldr r1, [r1]
	adds r1, #0x56
	ldrb r2, [r1]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge _080E5E8C
	bl sub_80EBF80
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5E8C
_080E5E46:
	ldr r0, _080E5E84 @ =gUnknown_0300538C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, #0x55
	ldrb r1, [r1]
	bl sub_80BC6C8
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5E88 @ =gUnknown_0805EF47
	bl sub_80DB168
	strh r4, [r5, #0x1c]
	b _080E5ED8
	.align 2, 0
_080E5E6C: .4byte gUnknown_0872F2DC
_080E5E70: .4byte gCurrentMapId
_080E5E74: .4byte 0x000002F2
_080E5E78: .4byte gUnknown_030052F8
_080E5E7C: .4byte gUnknown_03005344
_080E5E80: .4byte gUnknown_08B1D62C
_080E5E84: .4byte gUnknown_0300538C
_080E5E88: .4byte gUnknown_0805EF47
_080E5E8C:
	ldr r4, _080E5EA0 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r5, #2
	orrs r0, r5
	str r0, [r4]
	ldr r0, _080E5EA4 @ =gUnknown_0805EF95
	bl sub_80DB168
	strh r5, [r4, #0x1c]
	b _080E5ED8
	.align 2, 0
_080E5EA0: .4byte gUnknown_02024860
_080E5EA4: .4byte gUnknown_0805EF95
_080E5EA8:
	ldr r0, _080E5EC4 @ =m2_character_info
	ldr r1, _080E5EC8 @ =0x000006AC
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #3
	bl sub_80F0944
	ldr r0, _080E5ECC @ =gUnknown_020248E0
	ldr r2, _080E5ED0 @ =0x0000083C
	adds r0, r0, r2
	strh r4, [r0]
	strh r4, [r5, #0x1a]
	b _080E5ED8
	.align 2, 0
_080E5EC4: .4byte m2_character_info
_080E5EC8: .4byte 0x000006AC
_080E5ECC: .4byte gUnknown_020248E0
_080E5ED0: .4byte 0x0000083C
_080E5ED4:
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E5ED8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E5EE0
sub_80E5EE0: @ 0x080E5EE0
	push {r4, r5, r6, lr}
	ldr r0, _080E5F1C @ =gUnknown_02020C70 + 8*0x94
	movs r2, #8
	ldr r6, _080E5F20 @ =gUnknown_02024860
	adds r5, r6, #0
	adds r1, r0, #0
	adds r1, #0x42
_080E5EEE:
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _080E5F28
	ldrb r4, [r1, #0x1a]
	cmp r4, #1
	bne _080E5F28
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0xc0
	beq _080E5F06
	cmp r0, #0x5d
	bne _080E5F28
_080E5F06:
	movs r0, #0xa9
	strh r0, [r1]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E5F24 @ =gUnknown_08060C3E
	bl sub_80DB168
	strh r4, [r5, #0x1a]
	b _080E5F4C
	.align 2, 0
_080E5F1C: .4byte gUnknown_02020C70 + 8*0x94
_080E5F20: .4byte gUnknown_02024860
_080E5F24: .4byte gUnknown_08060C3E
_080E5F28:
	adds r1, #0x94
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E5EEE
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080E5F54 @ =gUnknown_08060C70
	bl sub_80DB168
	movs r0, #1
	strh r0, [r6, #0x1a]
_080E5F4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E5F54: .4byte gUnknown_08060C70

	thumb_func_start sub_80E5F58
sub_80E5F58: @ 0x080E5F58
	push {r4, lr}
	ldr r4, _080E5F70 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E5F8E
	cmp r0, #1
	bgt _080E5F74
	cmp r0, #0
	beq _080E5F7E
	b _080E6066
	.align 2, 0
_080E5F70: .4byte gUnknown_02024860
_080E5F74:
	cmp r0, #2
	beq _080E5FB6
	cmp r0, #3
	beq _080E603C
	b _080E6066
_080E5F7E:
	movs r0, #0
	bl sub_80E83FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E6062
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E5F8E:
	bl sub_80E84E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E5FB0
	ldr r2, _080E5FAC @ =gUnknown_02024860
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E6066
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E6066
	.align 2, 0
_080E5FAC: .4byte gUnknown_02024860
_080E5FB0:
	ldr r1, _080E6010 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
_080E5FB6:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E6020
	ldr r2, _080E6014 @ =gUnknown_020248E0
	ldr r0, _080E6018 @ =gUnknown_0300538C
	ldr r1, [r0]
	adds r1, #0x68
	ldr r0, _080E601C @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r1, [r1]
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r4, r2, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080E5FF2
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_80E2434
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E5FF6
_080E5FF2:
	movs r0, #1
	strh r0, [r4]
_080E5FF6:
	ldr r0, _080E6014 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080E6010 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080E6066
	.align 2, 0
_080E6010: .4byte gUnknown_02024860
_080E6014: .4byte gUnknown_020248E0
_080E6018: .4byte gUnknown_0300538C
_080E601C: .4byte gUnknown_03005390
_080E6020:
	ldr r4, _080E6034 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E6038 @ =gUnknown_0806018C
	bl sub_80DB168
	b _080E6062
	.align 2, 0
_080E6034: .4byte gUnknown_02024860
_080E6038: .4byte gUnknown_0806018C
_080E603C:
	ldr r0, _080E606C @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E6066
	movs r0, #0
	strh r0, [r4, #0x26]
	bl sub_80E8F1C
_080E6062:
	movs r0, #1
	strh r0, [r4, #0x1a]
_080E6066:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E606C: .4byte gUnknown_020248E0

	thumb_func_start sub_80E6070
sub_80E6070: @ 0x080E6070
	push {r4, lr}
	ldr r4, _080E6088 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E60B0
	cmp r0, #1
	bgt _080E608C
	cmp r0, #0
	beq _080E6096
	b _080E615C
	.align 2, 0
_080E6088: .4byte gUnknown_02024860
_080E608C:
	cmp r0, #2
	beq _080E60DA
	cmp r0, #3
	beq _080E6114
	b _080E615C
_080E6096:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E6104
	movs r0, #0
	bl sub_80E83FC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E6104
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E60B0:
	bl sub_80E84E0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E60D4
	ldr r2, _080E60D0 @ =gUnknown_02024860
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E615C
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E615C
	.align 2, 0
_080E60D0: .4byte gUnknown_02024860
_080E60D4:
	ldr r1, _080E60F0 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
_080E60DA:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E60F4
	bl sub_80E8E80
	ldr r1, _080E60F0 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080E615C
	.align 2, 0
_080E60F0: .4byte gUnknown_02024860
_080E60F4:
	ldr r4, _080E610C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E6110 @ =gUnknown_0806018C
	bl sub_80DB168
_080E6104:
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080E615C
	.align 2, 0
_080E610C: .4byte gUnknown_02024860
_080E6110: .4byte gUnknown_0806018C
_080E6114:
	bl sub_80E8E80
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E615C
	movs r0, #0
	strh r0, [r4, #0x22]
	bl sub_80E8F1C
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E6156
	ldr r0, _080E6164 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E6156
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E6168 @ =gUnknown_08060419
	bl sub_80DB168
_080E6156:
	ldr r1, _080E616C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E615C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E6164: .4byte gUnknown_03005390
_080E6168: .4byte gUnknown_08060419
_080E616C: .4byte gUnknown_02024860

	thumb_func_start sub_80E6170
sub_80E6170: @ 0x080E6170
	push {r4, r5, r6, lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E6188
	ldr r1, _080E6184 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080E61BA
	.align 2, 0
_080E6184: .4byte gUnknown_02024860
_080E6188:
	ldr r6, _080E61C0 @ =gUnknown_03005390
	ldr r0, [r6]
	adds r1, r0, #0
	adds r1, #0x68
	ldrh r4, [r1]
	bl sub_80EB40C
	ldr r5, _080E61C4 @ =gUnknown_02024860
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E61C8 @ =gUnknown_08060C05
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r1, [r6]
	adds r1, #0x68
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r4, r4, r1
	adds r1, r4, #0
	bl sub_80DB1FC
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E61BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E61C0: .4byte gUnknown_03005390
_080E61C4: .4byte gUnknown_02024860
_080E61C8: .4byte gUnknown_08060C05

	thumb_func_start sub_80E61CC
sub_80E61CC: @ 0x080E61CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _080E61EC @ =gUnknown_02024860
	movs r1, #0x3a
	ldrsh r0, [r7, r1]
	adds r4, r7, #0
	cmp r0, #1
	beq _080E62D4
	cmp r0, #1
	bgt _080E61F0
	cmp r0, #0
	beq _080E61FE
	b _080E637C
	.align 2, 0
_080E61EC: .4byte gUnknown_02024860
_080E61F0:
	cmp r0, #2
	bne _080E61F6
	b _080E6354
_080E61F6:
	cmp r0, #5
	bne _080E61FC
	b _080E636C
_080E61FC:
	b _080E637C
_080E61FE:
	ldr r2, _080E62A4 @ =gUnknown_0300538C
	mov r8, r2
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r3, [r0]
	mov sb, r3
	movs r2, #0
	ldrsh r4, [r0, r2]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x56
	ldrb r1, [r1]
	subs r1, #1
	bl sub_80A53D4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E62B4
	movs r0, #0x6c
	muls r4, r0, r4
	ldr r0, _080E62A8 @ =gUnknown_03001D54
	adds r4, r4, r0
	mov r3, r8
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r5, [r0, r2]
	adds r0, #0xc
	ldrb r0, [r0]
	subs r5, r5, r0
	adds r0, r1, #0
	adds r0, #0x6e
	movs r3, #0
	ldrsh r6, [r0, r3]
	adds r0, #9
	ldrb r0, [r0]
	subs r6, r6, r0
	ldr r0, _080E62AC @ =m2_selected_person
	mov r2, sb
	strh r2, [r0]
	adds r0, r1, #0
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_80BBEE4
	mov r3, r8
	ldr r0, [r3]
	adds r1, r4, #0
	adds r1, #0x4f
	ldrb r1, [r1]
	adds r0, #0x74
	strb r1, [r0]
	ldr r2, [r3]
	adds r0, r2, #0
	adds r0, #0x74
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r1, r2, #0
	adds r1, #0x68
	strh r0, [r1]
	adds r4, #0x52
	ldrb r1, [r4]
	adds r0, r2, #0
	adds r0, #0x77
	strb r1, [r0]
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x77
	ldrb r0, [r0]
	adds r0, r0, r6
	adds r1, #0x6e
	strh r0, [r1]
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080E62B0 @ =gUnknown_0805FBEC
	bl sub_80DB168
	b _080E62C2
	.align 2, 0
_080E62A4: .4byte gUnknown_0300538C
_080E62A8: .4byte gUnknown_03001D54
_080E62AC: .4byte m2_selected_person
_080E62B0: .4byte gUnknown_0805FBEC
_080E62B4:
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080E62CC @ =gUnknown_0805FC0F
	bl sub_80DB168
_080E62C2:
	ldr r1, _080E62D0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x3a]
	b _080E637C
	.align 2, 0
_080E62CC: .4byte gUnknown_0805FC0F
_080E62D0: .4byte gUnknown_02024860
_080E62D4:
	movs r0, #0
	strh r0, [r7, #0x1a]
	ldr r0, _080E6328 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x42
	ldr r2, _080E632C @ =m2_character_info
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x6c
	muls r1, r0, r1
	adds r0, r1, r2
	adds r0, #0x75
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r2, #0x14
	adds r0, r0, r2
	movs r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #0
	beq _080E6338
	ldr r1, _080E6330 @ =gUnknown_08B1D62C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _080E6338
	ldr r0, [r7]
	movs r4, #2
	orrs r0, r4
	str r0, [r7]
	ldr r0, _080E6334 @ =gUnknown_08B204E4
	ldr r0, [r0, #0x40]
	bl sub_80DB168
	strh r4, [r7, #0x3a]
	b _080E637C
	.align 2, 0
_080E6328: .4byte gUnknown_0300538C
_080E632C: .4byte m2_character_info
_080E6330: .4byte gUnknown_08B1D62C
_080E6334: .4byte gUnknown_08B204E4
_080E6338:
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E6350 @ =gUnknown_08B204E4
	ldr r0, [r0, #0x34]
	bl sub_80DB168
	movs r0, #5
	strh r0, [r4, #0x3a]
	b _080E637C
	.align 2, 0
_080E6350: .4byte gUnknown_08B204E4
_080E6354:
	movs r2, #0x1a
	ldrsh r0, [r7, r2]
	cmp r0, #0
	bne _080E637C
	ldr r0, _080E6368 @ =gUnknown_08B204E4
	ldr r0, [r0, #0x44]
	bl _call_via_r0
	b _080E637C
	.align 2, 0
_080E6368: .4byte gUnknown_08B204E4
_080E636C:
	movs r3, #0x1a
	ldrsh r0, [r7, r3]
	cmp r0, #0
	bne _080E637C
	ldr r0, _080E6388 @ =gUnknown_08B204E4
	ldr r0, [r0, #0x38]
	bl _call_via_r0
_080E637C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6388: .4byte gUnknown_08B204E4

	thumb_func_start sub_80E638C
sub_80E638C: @ 0x080E638C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080E63A8 @ =gUnknown_02024860
	mov sb, r0
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E63AC
	cmp r0, #1
	bne _080E63A6
	b _080E6530
_080E63A6:
	b _080E6534
	.align 2, 0
_080E63A8: .4byte gUnknown_02024860
_080E63AC:
	ldr r2, _080E64FC @ =gUnknown_0300538C
	mov r8, r2
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x56
	ldrb r1, [r1]
	subs r1, #1
	bl sub_80A53D4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E63D0
	b _080E650C
_080E63D0:
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _080E6500 @ =gUnknown_03001D54
	adds r7, r1, r0
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r0, #0xb
	ldrb r0, [r0]
	subs r4, r4, r0
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r0, #0xa
	ldrb r0, [r0]
	subs r5, r5, r0
	adds r0, r2, #0
	adds r0, #0x70
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, #8
	ldrb r0, [r0]
	subs r6, r6, r0
	ldr r1, _080E6504 @ =m2_selected_person
	adds r0, r2, #0
	adds r0, #0x42
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x55
	ldrb r0, [r0]
	bl sub_80BBEE4
	mov r2, r8
	ldr r0, [r2]
	adds r1, r7, #0
	adds r1, #0x50
	ldrb r1, [r1]
	adds r0, #0x75
	strb r1, [r0]
	ldr r2, [r2]
	adds r0, r2, #0
	adds r0, #0x75
	ldrb r0, [r0]
	adds r0, r0, r4
	adds r1, r2, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x51
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	strb r1, [r0]
	mov r0, r8
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x76
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r1, r2, #0
	adds r1, #0x6c
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x53
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strb r1, [r0]
	mov r2, r8
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0]
	adds r0, r0, r6
	adds r1, #0x70
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x57
	ldrb r0, [r0]
	bl sub_80DA67C
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x7c
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x58
	ldrb r0, [r0]
	bl sub_80DA67C
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x7a
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x59
	ldrb r0, [r0]
	bl sub_80DA6B4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	bl sub_80DA6B4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x79
	strb r0, [r1]
	adds r4, r7, #0
	adds r4, #0x5b
	ldrb r0, [r4]
	bl sub_80DA6B4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x7e
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80DA6B4
	mov r2, r8
	ldr r1, [r2]
	adds r1, #0x7d
	strb r0, [r1]
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	str r0, [r2]
	ldr r0, _080E6508 @ =gUnknown_0805FBEC
	bl sub_80DB168
	b _080E651E
	.align 2, 0
_080E64FC: .4byte gUnknown_0300538C
_080E6500: .4byte gUnknown_03001D54
_080E6504: .4byte m2_selected_person
_080E6508: .4byte gUnknown_0805FBEC
_080E650C:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #2
	orrs r0, r1
	mov r2, sb
	str r0, [r2]
	ldr r0, _080E6528 @ =gUnknown_0805FC0F
	bl sub_80DB168
_080E651E:
	ldr r1, _080E652C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
	b _080E6534
	.align 2, 0
_080E6528: .4byte gUnknown_0805FC0F
_080E652C: .4byte gUnknown_02024860
_080E6530:
	mov r1, sb
	strh r0, [r1, #0x1a]
_080E6534:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80E6540
sub_80E6540: @ 0x080E6540
	push {r4, r5, lr}
	ldr r5, _080E6558 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080E65AC
	cmp r4, #1
	bgt _080E655C
	cmp r4, #0
	beq _080E6562
	b _080E65CC
	.align 2, 0
_080E6558: .4byte gUnknown_02024860
_080E655C:
	cmp r4, #2
	beq _080E65B8
	b _080E65CC
_080E6562:
	ldr r0, _080E658C @ =gUnknown_08B2AD10
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80262A8
	cmp r0, #0
	beq _080E6594
	ldr r0, [r5]
	movs r1, #0x42
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E6590 @ =gUnknown_0805FEA0
	bl sub_80DB168
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080E65CC
	.align 2, 0
_080E658C: .4byte gUnknown_08B2AD10
_080E6590: .4byte gUnknown_0805FEA0
_080E6594:
	ldr r0, [r5]
	movs r4, #2
	orrs r0, r4
	str r0, [r5]
	ldr r0, _080E65A8 @ =gUnknown_0805FE45
	bl sub_80DB168
	strh r4, [r5, #0x1c]
	b _080E65CC
	.align 2, 0
_080E65A8: .4byte gUnknown_0805FE45
_080E65AC:
	movs r0, #0xf
	movs r1, #3
	bl sub_80F0944
	strh r4, [r5, #0x1a]
	b _080E65CC
_080E65B8:
	movs r0, #0xd
	movs r1, #3
	bl sub_80F0944
	ldr r0, _080E65D4 @ =gUnknown_020248E0
	ldr r1, _080E65D8 @ =0x0000083C
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
	strh r1, [r5, #0x1a]
_080E65CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E65D4: .4byte gUnknown_020248E0
_080E65D8: .4byte 0x0000083C

	thumb_func_start sub_80E65DC
sub_80E65DC: @ 0x080E65DC
	push {r4, r5, r6, lr}
	ldr r0, _080E65F8 @ =gUnknown_02024860
	adds r6, r0, #0
	adds r6, #0x42
	movs r1, #0
	ldrsh r2, [r6, r1]
	adds r5, r0, #0
	cmp r2, #1
	beq _080E66D8
	cmp r2, #1
	bgt _080E65FC
	cmp r2, #0
	beq _080E660A
	b _080E67CC
	.align 2, 0
_080E65F8: .4byte gUnknown_02024860
_080E65FC:
	cmp r2, #2
	bne _080E6602
	b _080E6708
_080E6602:
	cmp r2, #3
	bne _080E6608
	b _080E6770
_080E6608:
	b _080E67CC
_080E660A:
	strh r2, [r5, #0x1a]
	ldr r1, _080E665C @ =gUnknown_020248E0
	ldr r3, _080E6660 @ =0x00000924
	adds r2, r1, r3
	ldr r0, _080E6664 @ =gUnknown_0300538C
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _080E6668 @ =0x00000928
	adds r1, r1, r0
	ldr r0, _080E666C @ =gUnknown_03005390
	ldr r0, [r0]
	str r0, [r1]
	bl sub_80D3E28
	movs r0, #3
	bl sub_80CB594
	movs r5, #0
	ldr r2, _080E6670 @ =gUnknown_02020C70
_080E6630:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	adds r4, r0, r2
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E669C
	adds r0, r4, #0
	movs r1, #3
	bl sub_80DA4EC
	ldr r0, _080E6664 @ =gUnknown_0300538C
	str r4, [r0]
	ldr r0, _080E6674 @ =gUnknown_02024860
	strh r5, [r0, #8]
	bl sub_80D3C50
	movs r5, #0
	b _080E667E
	.align 2, 0
_080E665C: .4byte gUnknown_020248E0
_080E6660: .4byte 0x00000924
_080E6664: .4byte gUnknown_0300538C
_080E6668: .4byte 0x00000928
_080E666C: .4byte gUnknown_03005390
_080E6670: .4byte gUnknown_02020C70
_080E6674: .4byte gUnknown_02024860
_080E6678:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080E667E:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #5
	bgt _080E66A8
	ldr r0, _080E6698 @ =gUnknown_03005350
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E6678
	adds r0, r1, #0
	bl sub_80D3F0C
	b _080E66A8
	.align 2, 0
_080E6698: .4byte gUnknown_03005350
_080E669C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E6630
_080E66A8:
	ldr r4, _080E66CC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E66D0 @ =gWindowPointers
	ldr r1, [r0, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r0, _080E66D4 @ =gUnknown_0805FF98
	bl sub_80DB168
	adds r4, #0x42
	movs r0, #1
	strh r0, [r4]
	b _080E67CC
	.align 2, 0
_080E66CC: .4byte gUnknown_02024860
_080E66D0: .4byte gWindowPointers
_080E66D4: .4byte gUnknown_0805FF98
_080E66D8:
	movs r0, #0
	bl sub_80DB04C
	movs r0, #0x15
	bl sub_80DB03C
	ldr r0, [r5]
	movs r4, #2
	orrs r0, r4
	str r0, [r5]
	ldr r0, _080E6704 @ =gUnknown_08B204E4
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80DB168
	movs r0, #0
	strh r0, [r5, #8]
	strh r4, [r6]
	b _080E67CC
	.align 2, 0
_080E6704: .4byte gUnknown_08B204E4
_080E6708:
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0x1f
	bgt _080E67A8
	ldr r2, _080E675C @ =gUnknown_02020C70
	adds r1, r0, #0
	movs r0, #0x94
	muls r0, r1, r0
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E6768
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E6768
	adds r0, r1, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E6768
	ldr r0, _080E6760 @ =gUnknown_03005390
	str r1, [r0]
	bl sub_80DAE00
	movs r0, #0xb4
	lsls r0, r0, #1
	bl sub_80E2434
	ldr r1, _080E6764 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x42
	movs r0, #3
	strh r0, [r1]
	b _080E6770
	.align 2, 0
_080E675C: .4byte gUnknown_02020C70
_080E6760: .4byte gUnknown_03005390
_080E6764: .4byte gUnknown_020248E0
_080E6768:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	b _080E6708
_080E6770:
	ldr r0, _080E679C @ =gUnknown_03005390
	ldr r0, [r0]
	ldr r1, _080E67A0 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80E89EC
	ldr r2, _080E67A4 @ =gUnknown_02024860
	movs r3, #0x28
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E67CC
	movs r0, #0
	strh r0, [r2, #0x28]
	adds r5, r2, #0
	b _080E6768
	.align 2, 0
_080E679C: .4byte gUnknown_03005390
_080E67A0: .4byte gUnknown_020248E0
_080E67A4: .4byte gUnknown_02024860
_080E67A8:
	ldr r2, _080E67D4 @ =gUnknown_0300538C
	ldr r1, _080E67D8 @ =gUnknown_020248E0
	ldr r3, _080E67DC @ =0x00000924
	adds r0, r1, r3
	ldr r0, [r0]
	str r0, [r2]
	ldr r2, _080E67E0 @ =gUnknown_03005390
	ldr r0, _080E67E4 @ =0x00000928
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	bl sub_80DB04C
	bl sub_80DAE00
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E67CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E67D4: .4byte gUnknown_0300538C
_080E67D8: .4byte gUnknown_020248E0
_080E67DC: .4byte 0x00000924
_080E67E0: .4byte gUnknown_03005390
_080E67E4: .4byte 0x00000928

	thumb_func_start sub_80E67E8
sub_80E67E8: @ 0x080E67E8
	ldr r1, _080E67F0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E67F0: .4byte gUnknown_02024860

	thumb_func_start sub_80E67F4
sub_80E67F4: @ 0x080E67F4
	push {r4, r5, r6, lr}
	ldr r4, _080E6850 @ =gUnknown_0300538C
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r5, [r1]
	adds r1, #1
	ldrb r6, [r1]
	subs r1, #0x34
	ldrb r1, [r1]
	bl sub_80DA29C
	ldr r1, [r4]
	adds r1, #0x59
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x89
	strb r5, [r0]
	ldr r0, [r4]
	adds r0, #0x8a
	strb r6, [r0]
	ldr r0, [r4]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80DADC8
	ldr r1, [r4]
	adds r1, #0x88
	strb r0, [r1]
	ldr r0, [r4]
	adds r0, #0x5b
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080E6854 @ =gUnknown_020248E0
	ldr r2, _080E6858 @ =0x00000752
	adds r0, r0, r2
	strh r1, [r0]
	ldr r0, _080E685C @ =gUnknown_02024860
	strh r1, [r0, #0x1a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E6850: .4byte gUnknown_0300538C
_080E6854: .4byte gUnknown_020248E0
_080E6858: .4byte 0x00000752
_080E685C: .4byte gUnknown_02024860

	thumb_func_start sub_80E6860
sub_80E6860: @ 0x080E6860
	push {r4, r5, lr}
	ldr r4, _080E6880 @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r4, #0
	cmp r0, #1
	bne _080E6874
	b _080E6984
_080E6874:
	cmp r0, #1
	bgt _080E6884
	cmp r0, #0
	beq _080E691C
	b _080E69AE
	.align 2, 0
_080E6880: .4byte gUnknown_02024860
_080E6884:
	cmp r0, #2
	bne _080E688A
	b _080E6990
_080E688A:
	b _080E69AE
_080E688C:
	ldr r1, _080E690C @ =gUnknown_0202505C
	adds r0, r5, #0
	bl sub_80EB448
	adds r0, r5, #0
	adds r0, #0x46
	strh r4, [r0]
	ldr r2, _080E6910 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r2, _080E6914 @ =m2_character_info
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x61
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r1, [r0]
	adds r3, #1
	adds r0, r2, r3
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x65
	ldrb r0, [r0]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	ldr r0, _080E6918 @ =gUnknown_08060ACC
	bl sub_80DB168
	movs r0, #3
	bl sub_80D6AF8
	b _080E695C
	.align 2, 0
_080E690C: .4byte gUnknown_0202505C
_080E6910: .4byte gUnknown_02024860
_080E6914: .4byte m2_character_info
_080E6918: .4byte gUnknown_08060ACC
_080E691C:
	ldr r0, _080E6978 @ =gUnknown_020248E0
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E696A
	ldr r5, _080E697C @ =gUnknown_02020C70
	movs r2, #0
	adds r1, r5, #0
	adds r1, #0x42
_080E6934:
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _080E6948
	ldrb r4, [r1, #0x1a]
	cmp r4, #0
	bne _080E6948
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #3
	beq _080E688C
_080E6948:
	adds r1, #0x94
	adds r5, #0x94
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E6934
_080E695C:
	ldr r0, _080E6978 @ =gUnknown_020248E0
	movs r3, #0x81
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	ldr r3, _080E6980 @ =gUnknown_02024860
_080E696A:
	adds r0, r3, #0
	adds r0, #0x48
	movs r2, #0
	movs r1, #1
	strh r1, [r0]
	strh r2, [r3, #0x1e]
	b _080E69AE
	.align 2, 0
_080E6978: .4byte gUnknown_020248E0
_080E697C: .4byte gUnknown_02020C70
_080E6980: .4byte gUnknown_02024860
_080E6984:
	bl sub_80E2624
	bl sub_80E2790
	movs r0, #2
	strh r0, [r4, #0x1c]
_080E6990:
	ldr r0, _080E69B4 @ =sub_80E69C0
	bl sub_80DD940
	ldr r2, _080E69B8 @ =gUnknown_02024860
	movs r0, #0x34
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E69AE
	ldr r0, _080E69BC @ =gUnknown_0300534C
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E69AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E69B4: .4byte sub_80E69C0
_080E69B8: .4byte gUnknown_02024860
_080E69BC: .4byte gUnknown_0300534C

	thumb_func_start sub_80E69C0
sub_80E69C0: @ 0x080E69C0
	push {r4, lr}
	ldr r4, _080E69D4 @ =gUnknown_02024860
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	cmp r1, #0
	beq _080E69D8
	cmp r1, #1
	beq _080E6A34
	b _080E6A3A
	.align 2, 0
_080E69D4: .4byte gUnknown_02024860
_080E69D8:
	ldr r0, _080E6A2C @ =gUnknown_03005390
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	ldrb r1, [r0]
	subs r0, #0xc
	movs r2, #0
	strh r1, [r0]
	adds r0, #0xd
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x76
	ldrb r1, [r0]
	subs r0, #0xa
	strh r1, [r0]
	adds r0, #0xb
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x6e
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x78
	ldrb r1, [r0]
	subs r0, #8
	strh r1, [r0]
	subs r0, #9
	strb r2, [r0]
	subs r0, #2
	strb r2, [r0]
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E6A30 @ =gUnknown_08060AA7
	bl sub_80DB168
	movs r0, #1
	b _080E6A38
	.align 2, 0
_080E6A2C: .4byte gUnknown_03005390
_080E6A30: .4byte gUnknown_08060AA7
_080E6A34:
	movs r0, #0
	strh r1, [r4, #0x1a]
_080E6A38:
	strh r0, [r4, #0x1e]
_080E6A3A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80E6A40
sub_80E6A40: @ 0x080E6A40
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080E6A84 @ =gUnknown_03005390
	ldr r5, [r2]
	adds r3, r5, #0
	adds r3, #0x42
	ldr r1, _080E6A88 @ =gUnknown_020248E0
	ldr r4, _080E6A8C @ =0x0000095C
	adds r0, r1, r4
	ldr r4, [r0]
	ldrh r7, [r3]
	mov r8, r7
	movs r0, #0
	ldrsh r3, [r3, r0]
	adds r0, r4, #2
	mov sb, r1
	cmp r3, #3
	bne _080E6A6A
	adds r0, r4, #4
_080E6A6A:
	ldrh r6, [r0]
	ldr r0, _080E6A90 @ =gUnknown_02024860
	movs r7, #0x1c
	ldrsh r1, [r0, r7]
	adds r7, r0, #0
	cmp r1, #1
	beq _080E6AF8
	cmp r1, #1
	bgt _080E6A94
	cmp r1, #0
	beq _080E6A9C
	b _080E6ECC
	.align 2, 0
_080E6A84: .4byte gUnknown_03005390
_080E6A88: .4byte gUnknown_020248E0
_080E6A8C: .4byte 0x0000095C
_080E6A90: .4byte gUnknown_02024860
_080E6A94:
	cmp r1, #2
	bne _080E6A9A
	b _080E6EA8
_080E6A9A:
	b _080E6ECC
_080E6A9C:
	cmp r3, #3
	bgt _080E6AD4
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E6AD4
	ldr r1, _080E6ACC @ =m2_character_info
	movs r0, #0x6c
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x54
	ldrb r4, [r0]
	cmp r4, #1
	bne _080E6AD4
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080E6AD0 @ =gUnknown_080601A4
	bl sub_80DB168
	strh r4, [r7, #0x1a]
	b _080E6ECC
	.align 2, 0
_080E6ACC: .4byte m2_character_info
_080E6AD0: .4byte gUnknown_080601A4
_080E6AD4:
	bl sub_80E6EDC
	ldr r1, _080E6AEC @ =gUnknown_020248E0
	ldr r2, _080E6AF0 @ =0x0000095C
	adds r1, r1, r2
	str r0, [r1]
	ldr r1, _080E6AF4 @ =gUnknown_02024860
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	b _080E6ECC
	.align 2, 0
_080E6AEC: .4byte gUnknown_020248E0
_080E6AF0: .4byte 0x0000095C
_080E6AF4: .4byte gUnknown_02024860
_080E6AF8:
	ldrh r0, [r4]
	cmp r0, #0xa
	bls _080E6B00
	b _080E6ECC
_080E6B00:
	lsls r0, r0, #2
	ldr r1, _080E6B0C @ =_080E6B10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E6B0C: .4byte _080E6B10
_080E6B10: @ jump table
	.4byte _080E6B3C @ case 0
	.4byte _080E6BA8 @ case 1
	.4byte _080E6C0C @ case 2
	.4byte _080E6CEC @ case 3
	.4byte _080E6D24 @ case 4
	.4byte _080E6D6C @ case 5
	.4byte _080E6DB0 @ case 6
	.4byte _080E6DF4 @ case 7
	.4byte _080E6E40 @ case 8
	.4byte _080E6E8C @ case 9
	.4byte _080E6E92 @ case 10
_080E6B3C:
	movs r4, #0x1e
	ldrsh r0, [r7, r4]
	cmp r0, #0
	beq _080E6B4A
	cmp r0, #1
	beq _080E6B80
	b _080E6ECC
_080E6B4A:
	ldr r4, _080E6B64 @ =gUnknown_020248E0
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080E6B68
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	bl sub_80E2434
	adds r1, r0, #0
	b _080E6B6C
	.align 2, 0
_080E6B64: .4byte gUnknown_020248E0
_080E6B68:
	ldr r7, _080E6B98 @ =0x00004E20
	adds r1, r7, #0
_080E6B6C:
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _080E6B9C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1e]
	ldr r2, _080E6BA0 @ =gUnknown_03005390
	ldr r4, _080E6BA4 @ =gUnknown_020248E0
	mov sb, r4
_080E6B80:
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	add r1, sb
	movs r7, #0
	ldrsh r1, [r1, r7]
	bl sub_80EA910
	ldr r2, _080E6B9C @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	b _080E6CCC
	.align 2, 0
_080E6B98: .4byte 0x00004E20
_080E6B9C: .4byte gUnknown_02024860
_080E6BA0: .4byte gUnknown_03005390
_080E6BA4: .4byte gUnknown_020248E0
_080E6BA8:
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _080E6BB6
	cmp r0, #1
	beq _080E6BE4
	b _080E6ECC
_080E6BB6:
	ldr r4, _080E6BC8 @ =gUnknown_020248E0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080E6BCC
	bl sub_80E2434
	adds r1, r0, #0
	b _080E6BD0
	.align 2, 0
_080E6BC8: .4byte gUnknown_020248E0
_080E6BCC:
	ldr r2, _080E6BFC @ =0x00004E20
	adds r1, r2, #0
_080E6BD0:
	movs r7, #0x92
	lsls r7, r7, #4
	adds r0, r4, r7
	strh r1, [r0]
	ldr r1, _080E6C00 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1e]
	ldr r2, _080E6C04 @ =gUnknown_03005390
	ldr r0, _080E6C08 @ =gUnknown_020248E0
	mov sb, r0
_080E6BE4:
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	add r1, sb
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EAAC4
	ldr r2, _080E6C00 @ =gUnknown_02024860
	movs r4, #0x32
	ldrsh r1, [r2, r4]
	b _080E6CCC
	.align 2, 0
_080E6BFC: .4byte 0x00004E20
_080E6C00: .4byte gUnknown_02024860
_080E6C04: .4byte gUnknown_03005390
_080E6C08: .4byte gUnknown_020248E0
_080E6C0C:
	movs r1, #0x1e
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _080E6C5C
	cmp r0, #1
	bgt _080E6C1E
	cmp r0, #0
	beq _080E6C24
	b _080E6ECC
_080E6C1E:
	cmp r0, #2
	beq _080E6CB6
	b _080E6ECC
_080E6C24:
	ldr r4, _080E6C40 @ =gUnknown_020248E0
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080E6C44
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	bl sub_80E2434
	adds r1, r0, #0
	b _080E6C48
	.align 2, 0
_080E6C40: .4byte gUnknown_020248E0
_080E6C44:
	ldr r2, _080E6C94 @ =0x00004E20
	adds r1, r2, #0
_080E6C48:
	movs r7, #0x92
	lsls r7, r7, #4
	adds r0, r4, r7
	strh r1, [r0]
	ldr r1, _080E6C98 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1e]
	ldr r2, _080E6C9C @ =gUnknown_03005390
	ldr r0, _080E6CA0 @ =gUnknown_020248E0
	mov sb, r0
_080E6C5C:
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	add r1, sb
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EA910
	ldr r2, _080E6C98 @ =gUnknown_02024860
	movs r4, #0x30
	ldrsh r1, [r2, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E6C7C
	b _080E6ECC
_080E6C7C:
	movs r0, #2
	strh r0, [r2, #0x1e]
	mov r4, sb
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080E6CA4
	bl sub_80E2434
	adds r1, r0, #0
	b _080E6CA8
	.align 2, 0
_080E6C94: .4byte 0x00004E20
_080E6C98: .4byte gUnknown_02024860
_080E6C9C: .4byte gUnknown_03005390
_080E6CA0: .4byte gUnknown_020248E0
_080E6CA4:
	ldr r7, _080E6CDC @ =0x00004E20
	adds r1, r7, #0
_080E6CA8:
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r4, r2
	strh r1, [r0]
	ldr r2, _080E6CE0 @ =gUnknown_03005390
	ldr r4, _080E6CE4 @ =gUnknown_020248E0
	mov sb, r4
_080E6CB6:
	ldr r0, [r2]
	movs r1, #0x92
	lsls r1, r1, #4
	add r1, sb
	movs r7, #0
	ldrsh r1, [r1, r7]
	bl sub_80EAAC4
	ldr r2, _080E6CE8 @ =gUnknown_02024860
	movs r0, #0x32
	ldrsh r1, [r2, r0]
_080E6CCC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E6CD6
	b _080E6ECC
_080E6CD6:
	movs r0, #2
	strh r0, [r2, #0x1c]
	b _080E6ECC
	.align 2, 0
_080E6CDC: .4byte 0x00004E20
_080E6CE0: .4byte gUnknown_03005390
_080E6CE4: .4byte gUnknown_020248E0
_080E6CE8: .4byte gUnknown_02024860
_080E6CEC:
	movs r0, #4
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bhi _080E6D24
	lsls r0, r0, #2
	ldr r1, _080E6D08 @ =_080E6D10
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080E6D0C @ =gUnknown_03005390
	mov pc, r0
	.align 2, 0
_080E6D08: .4byte _080E6D10
_080E6D0C: .4byte gUnknown_03005390
_080E6D10: @ jump table
	.4byte _080E6D24 @ case 0
	.4byte _080E6D6C @ case 1
	.4byte _080E6DB0 @ case 2
	.4byte _080E6DF4 @ case 3
	.4byte _080E6E40 @ case 4
_080E6D24:
	ldr r0, _080E6D5C @ =gUnknown_03005390
	ldr r1, [r0]
	adds r1, #0x73
	ldrb r0, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	ldr r3, _080E6D60 @ =m2_character_info
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r2, #0x73
	ldrb r1, [r2]
	adds r1, r1, r6
	strb r1, [r2]
	bl sub_80EC530
	ldr r4, _080E6D64 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r5, #2
	orrs r0, r5
	str r0, [r4]
	ldr r0, _080E6D68 @ =gUnknown_08060B42
	b _080E6E26
	.align 2, 0
_080E6D5C: .4byte gUnknown_03005390
_080E6D60: .4byte m2_character_info
_080E6D64: .4byte gUnknown_02024860
_080E6D68: .4byte gUnknown_08060B42
_080E6D6C:
	ldr r1, [r2]
	adds r1, #0x6e
	ldrh r0, [r1]
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, r0
	strh r0, [r1]
	ldr r3, _080E6DA4 @ =m2_character_info
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r2, #0x71
	ldrb r1, [r2]
	adds r1, r1, r6
	strb r1, [r2]
	bl sub_80EC5BC
	ldr r4, _080E6DA8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r6, #2
	orrs r0, r6
	str r0, [r4]
	ldr r0, _080E6DAC @ =gUnknown_08060B5C
	b _080E6E76
	.align 2, 0
_080E6DA4: .4byte m2_character_info
_080E6DA8: .4byte gUnknown_02024860
_080E6DAC: .4byte gUnknown_08060B5C
_080E6DB0:
	ldr r1, [r2]
	adds r1, #0x6c
	ldrh r0, [r1]
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, r0
	strh r0, [r1]
	ldr r3, _080E6DE8 @ =m2_character_info
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r2, #0x70
	ldrb r1, [r2]
	adds r1, r1, r6
	strb r1, [r2]
	bl sub_80EC558
	ldr r4, _080E6DEC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r6, #2
	orrs r0, r6
	str r0, [r4]
	ldr r0, _080E6DF0 @ =gUnknown_08060BB0
	b _080E6E76
	.align 2, 0
_080E6DE8: .4byte m2_character_info
_080E6DEC: .4byte gUnknown_02024860
_080E6DF0: .4byte gUnknown_08060BB0
_080E6DF4:
	ldr r1, [r2]
	adds r1, #0x72
	ldrb r0, [r1]
	adds r0, r0, r6
	strb r0, [r1]
	ldr r3, _080E6E34 @ =m2_character_info
	mov r7, r8
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r2, #0x72
	ldrb r1, [r2]
	adds r1, r1, r6
	strb r1, [r2]
	bl sub_80EC6B0
	ldr r4, _080E6E38 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r5, #2
	orrs r0, r5
	str r0, [r4]
	ldr r0, _080E6E3C @ =gUnknown_08060BCC
_080E6E26:
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
	strh r5, [r4, #0x1c]
	b _080E6ECC
	.align 2, 0
_080E6E34: .4byte m2_character_info
_080E6E38: .4byte gUnknown_02024860
_080E6E3C: .4byte gUnknown_08060BCC
_080E6E40:
	ldr r1, [r2]
	adds r1, #0x70
	ldrh r0, [r1]
	lsls r5, r6, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, r0
	strh r0, [r1]
	ldr r3, _080E6E80 @ =m2_character_info
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r2, #0x74
	ldrb r1, [r2]
	adds r1, r1, r6
	strb r1, [r2]
	bl sub_80EC620
	ldr r4, _080E6E84 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r6, #2
	orrs r0, r6
	str r0, [r4]
	ldr r0, _080E6E88 @ =gUnknown_08060BEA
_080E6E76:
	adds r1, r5, #0
	bl sub_80DB1FC
	strh r6, [r4, #0x1c]
	b _080E6ECC
	.align 2, 0
_080E6E80: .4byte m2_character_info
_080E6E84: .4byte gUnknown_02024860
_080E6E88: .4byte gUnknown_08060BEA
_080E6E8C:
	bl sub_80E3390
	b _080E6E96
_080E6E92:
	bl sub_80E54C0
_080E6E96:
	ldr r0, _080E6EA4 @ =gUnknown_02024860
	movs r1, #0
	strh r1, [r0, #0x1a]
	movs r1, #2
	strh r1, [r0, #0x1c]
	b _080E6ECC
	.align 2, 0
_080E6EA4: .4byte gUnknown_02024860
_080E6EA8:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E6EC6
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _080E6EC6
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	bl sub_80EB814
_080E6EC6:
	ldr r1, _080E6ED8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E6ECC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6ED8: .4byte gUnknown_02024860

	thumb_func_start sub_80E6EDC
sub_80E6EDC: @ 0x080E6EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, _080E6FA4 @ =gUnknown_0300538C
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80ED118
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _080E6FE0
	ldr r0, [r4]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r1, r5, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80BC82C
	ldr r1, _080E6FA8 @ =gUnknown_03005374
	movs r0, #0
	strh r0, [r1]
	ldr r3, _080E6FAC @ =m2_character_info
	ldr r1, [r4]
	movs r2, #0x55
	adds r2, r2, r1
	mov ip, r2
	ldrb r0, [r2]
	subs r4, r0, #1
	lsls r2, r4, #1
	adds r1, #0x42
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r2, r2, r0
	adds r3, #0x14
	adds r2, r2, r3
	ldrh r2, [r2]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	mov sb, r0
	cmp r2, r1
	beq _080E6F52
	mov r2, ip
	strb r4, [r2]
_080E6F52:
	movs r2, #0
	ldr r0, _080E6FB0 @ =gUnknown_08B1E9F0
	ldrb r1, [r0]
	adds r6, r0, #0
	ldr r7, _080E6FB4 @ =gUnknown_02024860
	cmp r1, #0
	beq _080E6FD2
	mov ip, r6
	adds r0, r6, #4
	mov sl, r0
	str r5, [sp]
_080E6F68:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r4, r0, #2
	mov r1, ip
	adds r3, r4, r1
	ldrb r1, [r3]
	mov r5, sb
	asrs r0, r5, #0x10
	cmp r1, r0
	bne _080E6FBC
	ldrb r0, [r3, #1]
	ldr r1, [sp]
	subs r1, #1
	cmp r0, r1
	beq _080E6F90
	ldrb r0, [r3, #2]
	cmp r0, r1
	bne _080E6FD2
_080E6F90:
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080E6FB8 @ =gUnknown_0805E40F
	bl sub_80DB168
	mov r1, sl
	adds r0, r4, r1
	b _080E6FF0
	.align 2, 0
_080E6FA4: .4byte gUnknown_0300538C
_080E6FA8: .4byte gUnknown_03005374
_080E6FAC: .4byte m2_character_info
_080E6FB0: .4byte gUnknown_08B1E9F0
_080E6FB4: .4byte gUnknown_02024860
_080E6FB8: .4byte gUnknown_0805E40F
_080E6FBC:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrb r0, [r1]
	cmp r0, #0
	bne _080E6F68
_080E6FD2:
	ldr r0, [r7]
	movs r1, #2
	orrs r0, r1
	str r0, [r7]
	ldr r0, _080E7000 @ =gUnknown_0805E428
	bl sub_80DB168
_080E6FE0:
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080E7004 @ =gUnknown_08B1D632
	adds r0, r0, r1
_080E6FF0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E7000: .4byte gUnknown_0805E428
_080E7004: .4byte gUnknown_08B1D632

	thumb_func_start sub_80E7008
sub_80E7008: @ 0x080E7008
	push {r4, lr}
	ldr r0, _080E7024 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #4
	bls _080E7018
	b _080E7124
_080E7018:
	lsls r0, r1, #2
	ldr r1, _080E7028 @ =_080E702C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7024: .4byte gUnknown_02024860
_080E7028: .4byte _080E702C
_080E702C: @ jump table
	.4byte _080E7040 @ case 0
	.4byte _080E705E @ case 1
	.4byte _080E707A @ case 2
	.4byte _080E70C0 @ case 3
	.4byte _080E70F4 @ case 4
_080E7040:
	ldr r1, _080E70A0 @ =gUnknown_03000AC0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, _080E70A4 @ =gUnknown_020248E0
	ldr r3, _080E70A8 @ =0x00000882
	adds r0, r0, r3
	movs r1, #2
	strh r1, [r0]
	movs r0, #0xdb
	bl sub_80EB840
	movs r0, #1
	strh r0, [r4, #0x1c]
_080E705E:
	ldr r1, _080E70AC @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	movs r1, #0xba
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7124
_080E707A:
	ldr r4, _080E70B0 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E70B4 @ =gUnknown_08060F72
	bl sub_80DB168
	ldr r0, _080E70B8 @ =gWindowPointers
	ldr r2, [r0, #8]
	ldr r0, [r2]
	ldr r1, _080E70BC @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
	movs r0, #3
	strh r0, [r4, #0x1c]
	b _080E7124
	.align 2, 0
_080E70A0: .4byte gUnknown_03000AC0
_080E70A4: .4byte gUnknown_020248E0
_080E70A8: .4byte 0x00000882
_080E70AC: .4byte gUnknown_03000ABC
_080E70B0: .4byte gUnknown_02024860
_080E70B4: .4byte gUnknown_08060F72
_080E70B8: .4byte gWindowPointers
_080E70BC: .4byte 0xFFFFFEFF
_080E70C0:
	ldr r0, _080E712C @ =gUnknown_02020C70
	ldr r1, _080E7130 @ =0x0000058E
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080E7134 @ =gUnknown_020248E0
	ldr r2, _080E7138 @ =0x00000882
	adds r0, r0, r2
	movs r1, #3
	strh r1, [r0]
	movs r0, #0xdc
	bl sub_80EB840
	ldr r0, _080E713C @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E7140 @ =m2_character_info
	ldr r3, _080E7144 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	ldr r1, _080E7148 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x1c]
_080E70F4:
	ldr r1, _080E714C @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080E7150 @ =0x000001DD
	movs r1, #0x49
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7124
	ldr r2, _080E7148 @ =gUnknown_02024860
	ldr r0, [r2]
	subs r1, #0x20
	ands r0, r1
	str r0, [r2]
	ldr r0, _080E7134 @ =gUnknown_020248E0
	ldr r1, _080E7154 @ =0x00000752
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
	strh r1, [r2, #0x1a]
_080E7124:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E712C: .4byte gUnknown_02020C70
_080E7130: .4byte 0x0000058E
_080E7134: .4byte gUnknown_020248E0
_080E7138: .4byte 0x00000882
_080E713C: .4byte gWindowPointers
_080E7140: .4byte m2_character_info
_080E7144: .4byte 0x0000069C
_080E7148: .4byte gUnknown_02024860
_080E714C: .4byte gUnknown_03000ABC
_080E7150: .4byte 0x000001DD
_080E7154: .4byte 0x00000752

	thumb_func_start sub_80E7158
sub_80E7158: @ 0x080E7158
	ldr r1, _080E7160 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080E7160: .4byte gUnknown_02024860

	thumb_func_start sub_80E7164
sub_80E7164: @ 0x080E7164
	push {r4, lr}
	ldr r0, _080E7180 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	adds r4, r0, #0
	cmp r1, #6
	bls _080E7174
	b _080E7288
_080E7174:
	lsls r0, r1, #2
	ldr r1, _080E7184 @ =_080E7188
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7180: .4byte gUnknown_02024860
_080E7184: .4byte _080E7188
_080E7188: @ jump table
	.4byte _080E71A4 @ case 0
	.4byte _080E71C8 @ case 1
	.4byte _080E71D8 @ case 2
	.4byte _080E71F0 @ case 3
	.4byte _080E7210 @ case 4
	.4byte _080E7254 @ case 5
	.4byte _080E7254 @ case 6
_080E71A4:
	movs r0, #0
	strh r0, [r4, #0x1a]
	ldr r0, _080E71C0 @ =gUnknown_020248E0
	ldr r3, _080E71C4 @ =0x00000882
	adds r0, r0, r3
	movs r1, #4
	strh r1, [r0]
	movs r0, #0x78
	bl sub_80E2850
	movs r0, #1
	strh r0, [r4, #0x1c]
	b _080E7288
	.align 2, 0
_080E71C0: .4byte gUnknown_020248E0
_080E71C4: .4byte 0x00000882
_080E71C8:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7288
	movs r0, #2
	strh r0, [r4, #0x1c]
_080E71D8:
	ldr r0, _080E71E8 @ =gUnknown_02020C70
	ldr r2, _080E71EC @ =0x0000058E
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0]
	movs r0, #3
	strh r0, [r4, #0x1c]
	b _080E7288
	.align 2, 0
_080E71E8: .4byte gUnknown_02020C70
_080E71EC: .4byte 0x0000058E
_080E71F0:
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E720C @ =gUnknown_08061068
	bl sub_80DB168
	bl sub_80D3C50
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7288
	.align 2, 0
_080E720C: .4byte gUnknown_08061068
_080E7210:
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	ldr r0, _080E7240 @ =gUnknown_02020C70
	ldr r3, _080E7244 @ =0x0000058E
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080E7248 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E724C @ =m2_character_info
	ldr r2, _080E7250 @ =0x0000069C
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #5
	strh r0, [r4, #0x1c]
	b _080E7288
	.align 2, 0
_080E7240: .4byte gUnknown_02020C70
_080E7244: .4byte 0x0000058E
_080E7248: .4byte gWindowPointers
_080E724C: .4byte m2_character_info
_080E7250: .4byte 0x0000069C
_080E7254:
	ldr r1, _080E7290 @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xef
	lsls r0, r0, #1
	movs r1, #0xb9
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7288
	movs r0, #0xdd
	bl sub_80EB840
	ldr r0, _080E7294 @ =gUnknown_020248E0
	ldr r1, _080E7298 @ =0x00000752
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080E729C @ =gUnknown_02024860
	strh r1, [r0, #0x1a]
	ldr r0, _080E72A0 @ =gUnknown_03000AC0
	strh r1, [r0]
_080E7288:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7290: .4byte gUnknown_03000ABC
_080E7294: .4byte gUnknown_020248E0
_080E7298: .4byte 0x00000752
_080E729C: .4byte gUnknown_02024860
_080E72A0: .4byte gUnknown_03000AC0

	thumb_func_start sub_80E72A4
sub_80E72A4: @ 0x080E72A4
	push {r4, r5, lr}
	ldr r5, _080E73A4 @ =gUnknown_03005390
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x42
	ldrh r4, [r0]
	adds r0, #0x1a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E72BA
	b _080E73D0
_080E72BA:
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E72C6
	b _080E73D0
_080E72C6:
	movs r0, #0x64
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E73A8 @ =gUnknown_08739D1C
	lsls r1, r4, #0x10
	asrs r1, r1, #0xa
	adds r1, r1, r2
	adds r1, #0x3f
	ldrb r1, [r1]
	cmp r0, r1
	bge _080E73D0
	ldr r0, _080E73AC @ =gUnknown_020248E0
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r0, r2
	strh r4, [r1]
	ldr r3, _080E73B0 @ =0x00000812
	adds r2, r0, r3
	movs r1, #0x10
	strh r1, [r2]
	ldr r4, _080E73B4 @ =0x0000077C
	adds r0, r0, r4
	ldr r4, _080E73B8 @ =gUnknown_0300538C
	ldr r1, [r4]
	movs r2, #0x94
	bl memcpy
	ldr r0, [r4]
	ldr r1, [r5]
	bl sub_80EB448
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E7390
	adds r0, r3, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bne _080E7390
	ldr r2, _080E73BC @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r1, [r0]
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	ldr r1, _080E73C0 @ =gUnknown_03005398
	ldr r0, _080E73C4 @ =0x00000199
	adds r4, r2, r0
	ldrb r0, [r4]
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x60
	ldrb r0, [r0]
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #1
	adds r1, r2, r4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r0, [r0]
	adds r4, #1
	adds r1, r2, r4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x63
	ldrb r1, [r0]
	adds r4, #1
	adds r0, r2, r4
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r4, #1
	adds r1, r2, r4
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x65
	ldrb r0, [r0]
	movs r3, #0xcf
	lsls r3, r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	movs r0, #3
	bl sub_80D6AF8
	bl sub_80D42F8
	bl sub_80D4078
_080E7390:
	ldr r2, _080E73C8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E73CC @ =gUnknown_080603DF
	bl sub_80DB168
	b _080E73E0
	.align 2, 0
_080E73A4: .4byte gUnknown_03005390
_080E73A8: .4byte gUnknown_08739D1C
_080E73AC: .4byte gUnknown_020248E0
_080E73B0: .4byte 0x00000812
_080E73B4: .4byte 0x0000077C
_080E73B8: .4byte gUnknown_0300538C
_080E73BC: .4byte m2_character_info
_080E73C0: .4byte gUnknown_03005398
_080E73C4: .4byte 0x00000199
_080E73C8: .4byte gUnknown_02024860
_080E73CC: .4byte gUnknown_080603DF
_080E73D0:
	ldr r2, _080E73EC @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E73F0 @ =gUnknown_080603FD
	bl sub_80DB168
_080E73E0:
	ldr r1, _080E73EC @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E73EC: .4byte gUnknown_02024860
_080E73F0: .4byte gUnknown_080603FD

	thumb_func_start sub_80E73F4
sub_80E73F4: @ 0x080E73F4
	push {r4, lr}
	ldr r1, _080E7410 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #0x22
	bls _080E7404
	b _080E75B6
_080E7404:
	lsls r0, r0, #2
	ldr r1, _080E7414 @ =_080E7418
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7410: .4byte gUnknown_02024860
_080E7414: .4byte _080E7418
_080E7418: @ jump table
	.4byte _080E74A4 @ case 0
	.4byte _080E74BE @ case 1
	.4byte _080E74EC @ case 2
	.4byte _080E757E @ case 3
	.4byte _080E75B6 @ case 4
	.4byte _080E75B6 @ case 5
	.4byte _080E75B6 @ case 6
	.4byte _080E75B6 @ case 7
	.4byte _080E75B6 @ case 8
	.4byte _080E75B6 @ case 9
	.4byte _080E75B6 @ case 10
	.4byte _080E75B6 @ case 11
	.4byte _080E75B6 @ case 12
	.4byte _080E75B6 @ case 13
	.4byte _080E75B6 @ case 14
	.4byte _080E75B6 @ case 15
	.4byte _080E75B6 @ case 16
	.4byte _080E75B6 @ case 17
	.4byte _080E75B6 @ case 18
	.4byte _080E75B6 @ case 19
	.4byte _080E75B6 @ case 20
	.4byte _080E75B6 @ case 21
	.4byte _080E75B6 @ case 22
	.4byte _080E75B6 @ case 23
	.4byte _080E75B6 @ case 24
	.4byte _080E75B6 @ case 25
	.4byte _080E75B6 @ case 26
	.4byte _080E75B6 @ case 27
	.4byte _080E75B6 @ case 28
	.4byte _080E75B6 @ case 29
	.4byte _080E75B6 @ case 30
	.4byte _080E75B6 @ case 31
	.4byte _080E75B6 @ case 32
	.4byte _080E7538 @ case 33
	.4byte _080E756A @ case 34
_080E74A4:
	ldr r0, _080E74DC @ =gUnknown_08076BA7
	movs r1, #0xef
	lsls r1, r1, #1
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E74E0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E74BE:
	ldr r0, _080E74E4 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E75B6
	ldr r1, _080E74E0 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E74E8 @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E75B6
	.align 2, 0
_080E74DC: .4byte gUnknown_08076BA7
_080E74E0: .4byte gUnknown_02024860
_080E74E4: .4byte gUnknown_03002A40
_080E74E8: .4byte gUnknown_03000ABC
_080E74EC:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E75B6
	ldr r1, _080E75BC @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	bl sub_80D3C50
	ldr r0, _080E75C0 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E75C4 @ =m2_character_info
	ldr r3, _080E75C8 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x21
	strh r0, [r4, #0x1c]
	bl sub_80D7154
	movs r0, #0x78
	bl sub_80E2850
_080E7538:
	ldr r4, _080E75CC @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E75B6
	ldr r0, _080E75D0 @ =gUnknown_08061CAA
	bl sub_80DB168
	ldr r1, _080E75D4 @ =gUnknown_020248E0
	ldr r3, _080E75D8 @ =0x000008D8
	adds r2, r1, r3
	movs r0, #0x3c
	strh r0, [r2]
	ldr r0, _080E75DC @ =0x000008DA
	adds r1, r1, r0
	movs r0, #0xc
	strh r0, [r1]
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	movs r0, #0x22
	strh r0, [r4, #0x1c]
_080E756A:
	ldr r0, _080E75D4 @ =gUnknown_020248E0
	ldr r1, _080E75D8 @ =0x000008D8
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080E75B6
	ldr r1, _080E75CC @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
_080E757E:
	ldr r0, _080E75BC @ =gUnknown_03000ABC
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080E75E0 @ =gUnknown_03000AC0
	strh r1, [r4]
	ldr r0, _080E75E4 @ =0x000001DF
	movs r1, #0
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E75B6
	movs r0, #1
	strh r0, [r4]
	movs r0, #0xe5
	bl sub_80EB840
	ldr r0, _080E75D4 @ =gUnknown_020248E0
	ldr r3, _080E75E8 @ =0x00000882
	adds r0, r0, r3
	movs r1, #5
	strh r1, [r0]
	ldr r1, _080E75CC @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E75B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E75BC: .4byte gUnknown_03000ABC
_080E75C0: .4byte gWindowPointers
_080E75C4: .4byte m2_character_info
_080E75C8: .4byte 0x0000069C
_080E75CC: .4byte gUnknown_02024860
_080E75D0: .4byte gUnknown_08061CAA
_080E75D4: .4byte gUnknown_020248E0
_080E75D8: .4byte 0x000008D8
_080E75DC: .4byte 0x000008DA
_080E75E0: .4byte gUnknown_03000AC0
_080E75E4: .4byte 0x000001DF
_080E75E8: .4byte 0x00000882

	thumb_func_start sub_80E75EC
sub_80E75EC: @ 0x080E75EC
	push {r4, lr}
	ldr r1, _080E7608 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #4
	bls _080E75FC
	b _080E7702
_080E75FC:
	lsls r0, r0, #2
	ldr r1, _080E760C @ =_080E7610
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7608: .4byte gUnknown_02024860
_080E760C: .4byte _080E7610
_080E7610: @ jump table
	.4byte _080E7624 @ case 0
	.4byte _080E763C @ case 1
	.4byte _080E766C @ case 2
	.4byte _080E76C8 @ case 3
	.4byte _080E76E0 @ case 4
_080E7624:
	ldr r0, _080E7658 @ =gUnknown_0807689B
	ldr r1, _080E765C @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E7660 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E763C:
	ldr r0, _080E7664 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E7702
	ldr r1, _080E7660 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E7668 @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E7702
	.align 2, 0
_080E7658: .4byte gUnknown_0807689B
_080E765C: .4byte 0x000001DF
_080E7660: .4byte gUnknown_02024860
_080E7664: .4byte gUnknown_03002A40
_080E7668: .4byte gUnknown_03000ABC
_080E766C:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7702
	ldr r1, _080E76B8 @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E76BC @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E76C0 @ =m2_character_info
	ldr r3, _080E76C4 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E7702
	.align 2, 0
_080E76B8: .4byte gUnknown_03000ABC
_080E76BC: .4byte gWindowPointers
_080E76C0: .4byte m2_character_info
_080E76C4: .4byte 0x0000069C
_080E76C8:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7702
	movs r0, #0x32
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7702
_080E76E0:
	movs r0, #0x32
	bl sub_80EB8B0
	ldr r2, _080E7708 @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E7702
	ldr r0, _080E770C @ =gUnknown_020248E0
	ldr r1, _080E7710 @ =0x00000882
	adds r0, r0, r1
	movs r1, #6
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E7702:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7708: .4byte gUnknown_02024860
_080E770C: .4byte gUnknown_020248E0
_080E7710: .4byte 0x00000882

	thumb_func_start sub_80E7714
sub_80E7714: @ 0x080E7714
	push {r4, lr}
	ldr r1, _080E7730 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #4
	bls _080E7724
	b _080E782A
_080E7724:
	lsls r0, r0, #2
	ldr r1, _080E7734 @ =_080E7738
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7730: .4byte gUnknown_02024860
_080E7734: .4byte _080E7738
_080E7738: @ jump table
	.4byte _080E774C @ case 0
	.4byte _080E7764 @ case 1
	.4byte _080E7794 @ case 2
	.4byte _080E77F0 @ case 3
	.4byte _080E7808 @ case 4
_080E774C:
	ldr r0, _080E7780 @ =gUnknown_0807696D
	ldr r1, _080E7784 @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E7788 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E7764:
	ldr r0, _080E778C @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E782A
	ldr r1, _080E7788 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E7790 @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E782A
	.align 2, 0
_080E7780: .4byte gUnknown_0807696D
_080E7784: .4byte 0x000001DF
_080E7788: .4byte gUnknown_02024860
_080E778C: .4byte gUnknown_03002A40
_080E7790: .4byte gUnknown_03000ABC
_080E7794:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E782A
	ldr r1, _080E77E0 @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E77E4 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E77E8 @ =m2_character_info
	ldr r3, _080E77EC @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E782A
	.align 2, 0
_080E77E0: .4byte gUnknown_03000ABC
_080E77E4: .4byte gWindowPointers
_080E77E8: .4byte m2_character_info
_080E77EC: .4byte 0x0000069C
_080E77F0:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E782A
	movs r0, #0x64
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E782A
_080E7808:
	movs r0, #0x64
	bl sub_80EB8B0
	ldr r2, _080E7830 @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E782A
	ldr r0, _080E7834 @ =gUnknown_020248E0
	ldr r1, _080E7838 @ =0x00000882
	adds r0, r0, r1
	movs r1, #7
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E782A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7830: .4byte gUnknown_02024860
_080E7834: .4byte gUnknown_020248E0
_080E7838: .4byte 0x00000882

	thumb_func_start sub_80E783C
sub_80E783C: @ 0x080E783C
	push {r4, lr}
	ldr r1, _080E7858 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #4
	bls _080E784C
	b _080E7952
_080E784C:
	lsls r0, r0, #2
	ldr r1, _080E785C @ =_080E7860
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7858: .4byte gUnknown_02024860
_080E785C: .4byte _080E7860
_080E7860: @ jump table
	.4byte _080E7874 @ case 0
	.4byte _080E788C @ case 1
	.4byte _080E78BC @ case 2
	.4byte _080E7918 @ case 3
	.4byte _080E7930 @ case 4
_080E7874:
	ldr r0, _080E78A8 @ =gUnknown_080769FD
	ldr r1, _080E78AC @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E78B0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E788C:
	ldr r0, _080E78B4 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E7952
	ldr r1, _080E78B0 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E78B8 @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E7952
	.align 2, 0
_080E78A8: .4byte gUnknown_080769FD
_080E78AC: .4byte 0x000001DF
_080E78B0: .4byte gUnknown_02024860
_080E78B4: .4byte gUnknown_03002A40
_080E78B8: .4byte gUnknown_03000ABC
_080E78BC:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7952
	ldr r1, _080E7908 @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E790C @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E7910 @ =m2_character_info
	ldr r3, _080E7914 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E7952
	.align 2, 0
_080E7908: .4byte gUnknown_03000ABC
_080E790C: .4byte gWindowPointers
_080E7910: .4byte m2_character_info
_080E7914: .4byte 0x0000069C
_080E7918:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7952
	movs r0, #0xc8
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7952
_080E7930:
	movs r0, #0xc8
	bl sub_80EB8B0
	ldr r2, _080E7958 @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E7952
	ldr r0, _080E795C @ =gUnknown_020248E0
	ldr r1, _080E7960 @ =0x00000882
	adds r0, r0, r1
	movs r1, #8
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E7952:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7958: .4byte gUnknown_02024860
_080E795C: .4byte gUnknown_020248E0
_080E7960: .4byte 0x00000882

	thumb_func_start sub_80E7964
sub_80E7964: @ 0x080E7964
	push {r4, lr}
	ldr r1, _080E7980 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #4
	bls _080E7974
	b _080E7A7E
_080E7974:
	lsls r0, r0, #2
	ldr r1, _080E7984 @ =_080E7988
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7980: .4byte gUnknown_02024860
_080E7984: .4byte _080E7988
_080E7988: @ jump table
	.4byte _080E799C @ case 0
	.4byte _080E79B4 @ case 1
	.4byte _080E79E4 @ case 2
	.4byte _080E7A40 @ case 3
	.4byte _080E7A5A @ case 4
_080E799C:
	ldr r0, _080E79D0 @ =gUnknown_08076AD9
	ldr r1, _080E79D4 @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E79D8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E79B4:
	ldr r0, _080E79DC @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E7A7E
	ldr r1, _080E79D8 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E79E0 @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E7A7E
	.align 2, 0
_080E79D0: .4byte gUnknown_08076AD9
_080E79D4: .4byte 0x000001DF
_080E79D8: .4byte gUnknown_02024860
_080E79DC: .4byte gUnknown_03002A40
_080E79E0: .4byte gUnknown_03000ABC
_080E79E4:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7A7E
	ldr r1, _080E7A30 @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E7A34 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E7A38 @ =m2_character_info
	ldr r3, _080E7A3C @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E7A7E
	.align 2, 0
_080E7A30: .4byte gUnknown_03000ABC
_080E7A34: .4byte gWindowPointers
_080E7A38: .4byte m2_character_info
_080E7A3C: .4byte 0x0000069C
_080E7A40:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7A7E
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7A7E
_080E7A5A:
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_80EB8B0
	ldr r2, _080E7A84 @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E7A7E
	ldr r0, _080E7A88 @ =gUnknown_020248E0
	ldr r1, _080E7A8C @ =0x00000882
	adds r0, r0, r1
	movs r1, #9
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E7A7E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A84: .4byte gUnknown_02024860
_080E7A88: .4byte gUnknown_020248E0
_080E7A8C: .4byte 0x00000882

	thumb_func_start sub_80E7A90
sub_80E7A90: @ 0x080E7A90
	push {r4, lr}
	ldr r1, _080E7AAC @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #4
	bls _080E7AA0
	b _080E7BAA
_080E7AA0:
	lsls r0, r0, #2
	ldr r1, _080E7AB0 @ =_080E7AB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7AAC: .4byte gUnknown_02024860
_080E7AB0: .4byte _080E7AB4
_080E7AB4: @ jump table
	.4byte _080E7AC8 @ case 0
	.4byte _080E7AE0 @ case 1
	.4byte _080E7B10 @ case 2
	.4byte _080E7B6C @ case 3
	.4byte _080E7B86 @ case 4
_080E7AC8:
	ldr r0, _080E7AFC @ =gUnknown_08076B55
	ldr r1, _080E7B00 @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E7B04 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E7AE0:
	ldr r0, _080E7B08 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E7BAA
	ldr r1, _080E7B04 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E7B0C @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E7BAA
	.align 2, 0
_080E7AFC: .4byte gUnknown_08076B55
_080E7B00: .4byte 0x000001DF
_080E7B04: .4byte gUnknown_02024860
_080E7B08: .4byte gUnknown_03002A40
_080E7B0C: .4byte gUnknown_03000ABC
_080E7B10:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7BAA
	ldr r1, _080E7B5C @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E7B60 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E7B64 @ =m2_character_info
	ldr r3, _080E7B68 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E7BAA
	.align 2, 0
_080E7B5C: .4byte gUnknown_03000ABC
_080E7B60: .4byte gWindowPointers
_080E7B64: .4byte m2_character_info
_080E7B68: .4byte 0x0000069C
_080E7B6C:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7BAA
	movs r0, #0xc8
	lsls r0, r0, #2
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7BAA
_080E7B86:
	movs r0, #0xc8
	lsls r0, r0, #2
	bl sub_80EB8B0
	ldr r2, _080E7BB0 @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E7BAA
	ldr r0, _080E7BB4 @ =gUnknown_020248E0
	ldr r1, _080E7BB8 @ =0x00000882
	adds r0, r0, r1
	movs r1, #0xa
	strh r1, [r0]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080E7BAA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BB0: .4byte gUnknown_02024860
_080E7BB4: .4byte gUnknown_020248E0
_080E7BB8: .4byte 0x00000882

	thumb_func_start sub_80E7BBC
sub_80E7BBC: @ 0x080E7BBC
	push {r4, lr}
	ldr r1, _080E7BD8 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r4, r1, #0
	cmp r0, #5
	bls _080E7BCC
	b _080E7D04
_080E7BCC:
	lsls r0, r0, #2
	ldr r1, _080E7BDC @ =_080E7BE0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7BD8: .4byte gUnknown_02024860
_080E7BDC: .4byte _080E7BE0
_080E7BE0: @ jump table
	.4byte _080E7BF8 @ case 0
	.4byte _080E7C10 @ case 1
	.4byte _080E7C40 @ case 2
	.4byte _080E7C9C @ case 3
	.4byte _080E7CB6 @ case 4
	.4byte _080E7CD0 @ case 5
_080E7BF8:
	ldr r0, _080E7C2C @ =gUnknown_080767EB
	ldr r1, _080E7C30 @ =0x000001DF
	movs r2, #0xb9
	bl sub_80EBF10
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	ldr r1, _080E7C34 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
_080E7C10:
	ldr r0, _080E7C38 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080E7D04
	ldr r1, _080E7C34 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x60
	movs r2, #1
	strh r2, [r0]
	movs r0, #2
	strh r0, [r1, #0x1c]
	ldr r0, _080E7C3C @ =gUnknown_03000ABC
	strh r2, [r0]
	b _080E7D04
	.align 2, 0
_080E7C2C: .4byte gUnknown_080767EB
_080E7C30: .4byte 0x000001DF
_080E7C34: .4byte gUnknown_02024860
_080E7C38: .4byte gUnknown_03002A40
_080E7C3C: .4byte gUnknown_03000ABC
_080E7C40:
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r4, #0
	adds r1, #0x6a
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7D04
	ldr r1, _080E7C8C @ =gUnknown_03000ABC
	movs r0, #0
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
	bl sub_80D3C50
	ldr r0, _080E7C90 @ =gWindowPointers
	ldr r0, [r0, #8]
	ldr r1, _080E7C94 @ =m2_character_info
	ldr r3, _080E7C98 @ =0x0000069C
	adds r1, r1, r3
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	movs r0, #0x3c
	bl sub_80E2850
	b _080E7D04
	.align 2, 0
_080E7C8C: .4byte gUnknown_03000ABC
_080E7C90: .4byte gWindowPointers
_080E7C94: .4byte m2_character_info
_080E7C98: .4byte 0x0000069C
_080E7C9C:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E7D04
	movs r0, #0xc8
	lsls r0, r0, #3
	bl sub_80EB8B0
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080E7D04
_080E7CB6:
	movs r0, #0xc8
	lsls r0, r0, #3
	bl sub_80EB8B0
	ldr r2, _080E7D0C @ =gUnknown_02024860
	movs r3, #0x3e
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E7D04
	movs r0, #5
	strh r0, [r2, #0x1c]
_080E7CD0:
	ldr r0, _080E7D10 @ =gUnknown_03000ABC
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080E7D14 @ =gUnknown_03000AC0
	strh r1, [r4]
	movs r0, #0xf0
	lsls r0, r0, #1
	movs r1, #0x4a
	bl sub_80EB98C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7D04
	movs r0, #1
	strh r0, [r4]
	ldr r0, _080E7D18 @ =gUnknown_020248E0
	ldr r1, _080E7D1C @ =0x00000882
	adds r0, r0, r1
	movs r1, #0xb
	strh r1, [r0]
	ldr r1, _080E7D0C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E7D04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D0C: .4byte gUnknown_02024860
_080E7D10: .4byte gUnknown_03000ABC
_080E7D14: .4byte gUnknown_03000AC0
_080E7D18: .4byte gUnknown_020248E0
_080E7D1C: .4byte 0x00000882

	thumb_func_start sub_80E7D20
sub_80E7D20: @ 0x080E7D20
	push {lr}
	ldr r0, _080E7D4C @ =gUnknown_08061AED
	movs r1, #0x4a
	bl sub_80EBBA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080E7D46
	ldr r1, _080E7D50 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldr r0, _080E7D54 @ =gUnknown_020248E0
	ldr r1, _080E7D58 @ =0x00000882
	adds r0, r0, r1
	movs r1, #0xc
	strh r1, [r0]
_080E7D46:
	pop {r0}
	bx r0
	.align 2, 0
_080E7D4C: .4byte gUnknown_08061AED
_080E7D50: .4byte gUnknown_02024860
_080E7D54: .4byte gUnknown_020248E0
_080E7D58: .4byte 0x00000882

	thumb_func_start sub_80E7D5C
sub_80E7D5C: @ 0x080E7D5C
	push {r4, r5, r6, lr}
	ldr r1, _080E7D78 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	adds r2, r1, #0
	cmp r0, #0x8c
	bls _080E7D6C
	b _080E83CC
_080E7D6C:
	lsls r0, r0, #2
	ldr r1, _080E7D7C @ =_080E7D80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E7D78: .4byte gUnknown_02024860
_080E7D7C: .4byte _080E7D80
_080E7D80: @ jump table
	.4byte _080E7FB4 @ case 0
	.4byte _080E7FE8 @ case 1
	.4byte _080E8020 @ case 2
	.4byte _080E8044 @ case 3
	.4byte _080E807C @ case 4
	.4byte _080E80A0 @ case 5
	.4byte _080E80DC @ case 6
	.4byte _080E8118 @ case 7
	.4byte _080E814C @ case 8
	.4byte _080E8170 @ case 9
	.4byte _080E8186 @ case 10
	.4byte _080E81C4 @ case 11
	.4byte _080E8202 @ case 12
	.4byte _080E8240 @ case 13
	.4byte _080E827C @ case 14
	.4byte _080E82A4 @ case 15
	.4byte _080E82F8 @ case 16
	.4byte _080E834E @ case 17
	.4byte _080E8378 @ case 18
	.4byte _080E83AC @ case 19
	.4byte _080E83CC @ case 20
	.4byte _080E83CC @ case 21
	.4byte _080E83CC @ case 22
	.4byte _080E83CC @ case 23
	.4byte _080E83CC @ case 24
	.4byte _080E83CC @ case 25
	.4byte _080E83CC @ case 26
	.4byte _080E83CC @ case 27
	.4byte _080E83CC @ case 28
	.4byte _080E83CC @ case 29
	.4byte _080E83CC @ case 30
	.4byte _080E83CC @ case 31
	.4byte _080E83CC @ case 32
	.4byte _080E8056 @ case 33
	.4byte _080E83CC @ case 34
	.4byte _080E83CC @ case 35
	.4byte _080E83CC @ case 36
	.4byte _080E83CC @ case 37
	.4byte _080E83CC @ case 38
	.4byte _080E83CC @ case 39
	.4byte _080E83CC @ case 40
	.4byte _080E83CC @ case 41
	.4byte _080E83CC @ case 42
	.4byte _080E83CC @ case 43
	.4byte _080E83CC @ case 44
	.4byte _080E83CC @ case 45
	.4byte _080E83CC @ case 46
	.4byte _080E83CC @ case 47
	.4byte _080E83CC @ case 48
	.4byte _080E83CC @ case 49
	.4byte _080E83CC @ case 50
	.4byte _080E83CC @ case 51
	.4byte _080E83CC @ case 52
	.4byte _080E83CC @ case 53
	.4byte _080E83CC @ case 54
	.4byte _080E80B4 @ case 55
	.4byte _080E83CC @ case 56
	.4byte _080E83CC @ case 57
	.4byte _080E83CC @ case 58
	.4byte _080E83CC @ case 59
	.4byte _080E83CC @ case 60
	.4byte _080E83CC @ case 61
	.4byte _080E83CC @ case 62
	.4byte _080E83CC @ case 63
	.4byte _080E83CC @ case 64
	.4byte _080E83CC @ case 65
	.4byte _080E83CC @ case 66
	.4byte _080E83CC @ case 67
	.4byte _080E83CC @ case 68
	.4byte _080E83CC @ case 69
	.4byte _080E83CC @ case 70
	.4byte _080E83CC @ case 71
	.4byte _080E83CC @ case 72
	.4byte _080E83CC @ case 73
	.4byte _080E83CC @ case 74
	.4byte _080E83CC @ case 75
	.4byte _080E83CC @ case 76
	.4byte _080E812C @ case 77
	.4byte _080E83CC @ case 78
	.4byte _080E83CC @ case 79
	.4byte _080E83CC @ case 80
	.4byte _080E83CC @ case 81
	.4byte _080E83CC @ case 82
	.4byte _080E83CC @ case 83
	.4byte _080E83CC @ case 84
	.4byte _080E83CC @ case 85
	.4byte _080E83CC @ case 86
	.4byte _080E83CC @ case 87
	.4byte _080E83CC @ case 88
	.4byte _080E83CC @ case 89
	.4byte _080E83CC @ case 90
	.4byte _080E83CC @ case 91
	.4byte _080E83CC @ case 92
	.4byte _080E83CC @ case 93
	.4byte _080E83CC @ case 94
	.4byte _080E83CC @ case 95
	.4byte _080E83CC @ case 96
	.4byte _080E83CC @ case 97
	.4byte _080E83CC @ case 98
	.4byte _080E83CC @ case 99
	.4byte _080E83CC @ case 100
	.4byte _080E83CC @ case 101
	.4byte _080E83CC @ case 102
	.4byte _080E83CC @ case 103
	.4byte _080E83CC @ case 104
	.4byte _080E83CC @ case 105
	.4byte _080E83CC @ case 106
	.4byte _080E83CC @ case 107
	.4byte _080E83CC @ case 108
	.4byte _080E83CC @ case 109
	.4byte _080E83CC @ case 110
	.4byte _080E7FFA @ case 111
	.4byte _080E83CC @ case 112
	.4byte _080E83CC @ case 113
	.4byte _080E83CC @ case 114
	.4byte _080E83CC @ case 115
	.4byte _080E83CC @ case 116
	.4byte _080E83CC @ case 117
	.4byte _080E83CC @ case 118
	.4byte _080E83CC @ case 119
	.4byte _080E83CC @ case 120
	.4byte _080E83CC @ case 121
	.4byte _080E83CC @ case 122
	.4byte _080E83CC @ case 123
	.4byte _080E83CC @ case 124
	.4byte _080E83CC @ case 125
	.4byte _080E83CC @ case 126
	.4byte _080E83CC @ case 127
	.4byte _080E83CC @ case 128
	.4byte _080E83CC @ case 129
	.4byte _080E83CC @ case 130
	.4byte _080E83CC @ case 131
	.4byte _080E83CC @ case 132
	.4byte _080E83CC @ case 133
	.4byte _080E83CC @ case 134
	.4byte _080E83CC @ case 135
	.4byte _080E83CC @ case 136
	.4byte _080E83CC @ case 137
	.4byte _080E83CC @ case 138
	.4byte _080E83CC @ case 139
	.4byte _080E8264 @ case 140
_080E7FB4:
	ldr r1, _080E7FDC @ =gUnknown_0300535C
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080E7FE0 @ =gUnknown_08061B20
	movs r1, #0x4a
	bl sub_80EBBA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E7FD0
	b _080E83CC
_080E7FD0:
	ldr r0, _080E7FE4 @ =gUnknown_02024860
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x3e]
	b _080E8100
	.align 2, 0
_080E7FDC: .4byte gUnknown_0300535C
_080E7FE0: .4byte gUnknown_08061B20
_080E7FE4: .4byte gUnknown_02024860
_080E7FE8:
	adds r0, r2, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E7FF6
	b _080E83CC
_080E7FF6:
	movs r0, #0x6f
	strh r0, [r2, #0x1c]
_080E7FFA:
	movs r0, #0xc8
	lsls r0, r0, #4
	bl sub_80EB8B0
	ldr r2, _080E801C @ =gUnknown_02024860
	movs r0, #0x3e
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E8012
	b _080E83CC
_080E8012:
	movs r0, #0
	strh r0, [r2, #0x3e]
	movs r0, #2
	strh r0, [r2, #0x1c]
	b _080E83CC
	.align 2, 0
_080E801C: .4byte gUnknown_02024860
_080E8020:
	ldr r0, _080E803C @ =gUnknown_08061BE7
	movs r1, #0x4a
	bl sub_80EBBA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E8036
	b _080E83CC
_080E8036:
	ldr r1, _080E8040 @ =gUnknown_02024860
	movs r0, #3
	b _080E80FE
	.align 2, 0
_080E803C: .4byte gUnknown_08061BE7
_080E8040: .4byte gUnknown_02024860
_080E8044:
	adds r0, r2, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E8052
	b _080E83CC
_080E8052:
	movs r0, #0x21
	strh r0, [r2, #0x1c]
_080E8056:
	movs r0, #0xc8
	lsls r0, r0, #5
	bl sub_80EB8B0
	ldr r2, _080E8078 @ =gUnknown_02024860
	movs r0, #0x3e
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E806E
	b _080E83CC
_080E806E:
	movs r0, #0
	strh r0, [r2, #0x3e]
	movs r0, #4
	strh r0, [r2, #0x1c]
	b _080E83CC
	.align 2, 0
_080E8078: .4byte gUnknown_02024860
_080E807C:
	ldr r0, _080E8098 @ =gUnknown_08061C39
	movs r1, #0x4a
	bl sub_80EBBA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E8092
	b _080E83CC
_080E8092:
	ldr r1, _080E809C @ =gUnknown_02024860
	movs r0, #5
	b _080E80FE
	.align 2, 0
_080E8098: .4byte gUnknown_08061C39
_080E809C: .4byte gUnknown_02024860
_080E80A0:
	adds r0, r2, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E80AE
	b _080E83CC
_080E80AE:
	movs r0, #0x37
	strh r0, [r2, #0x1c]
	b _080E83CC
_080E80B4:
	movs r0, #0xc8
	lsls r0, r0, #6
	bl sub_80EB8B0
	ldr r2, _080E80D8 @ =gUnknown_02024860
	movs r0, #0x3e
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E80CC
	b _080E83CC
_080E80CC:
	movs r0, #0
	strh r0, [r2, #0x3e]
	movs r0, #6
	strh r0, [r2, #0x1c]
	b _080E83CC
	.align 2, 0
_080E80D8: .4byte gUnknown_02024860
_080E80DC:
	ldr r0, _080E8108 @ =gUnknown_08061C8B
	movs r1, #0x4a
	bl sub_80EBBA0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080E80F2
	b _080E83CC
_080E80F2:
	ldr r1, _080E810C @ =gUnknown_030053F0
	ldr r0, _080E8110 @ =gUnknown_03000AC2
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _080E8114 @ =gUnknown_02024860
	movs r0, #7
_080E80FE:
	strh r0, [r1, #0x1c]
_080E8100:
	movs r0, #0x3c
	bl sub_80E2850
	b _080E83CC
	.align 2, 0
_080E8108: .4byte gUnknown_08061C8B
_080E810C: .4byte gUnknown_030053F0
_080E8110: .4byte gUnknown_03000AC2
_080E8114: .4byte gUnknown_02024860
_080E8118:
	adds r0, r2, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E8126
	b _080E83CC
_080E8126:
	movs r0, #0x4d
	strh r0, [r2, #0x1c]
	b _080E83CC
_080E812C:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl sub_80EB8B0
	ldr r2, _080E8168 @ =gUnknown_02024860
	movs r0, #0x3e
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E8144
	b _080E83CC
_080E8144:
	movs r0, #0
	strh r0, [r2, #0x3e]
	movs r0, #8
	strh r0, [r2, #0x1c]
_080E814C:
	ldr r4, _080E816C @ =gUnknown_03005344
	movs r0, #0
	strh r0, [r4]
	bl sub_80EBF38
	movs r0, #1
	strh r0, [r4]
	ldr r1, _080E8168 @ =gUnknown_02024860
	movs r0, #0
	strh r0, [r1, #8]
	movs r0, #9
	strh r0, [r1, #0x1c]
	b _080E83CC
	.align 2, 0
_080E8168: .4byte gUnknown_02024860
_080E816C: .4byte gUnknown_03005344
_080E8170:
	ldr r0, _080E81D4 @ =gUnknown_020248E0
	ldr r1, _080E81D8 @ =0x00000882
	adds r0, r0, r1
	ldr r1, _080E81DC @ =0x0000FFFF
	strh r1, [r0]
	movs r0, #0xbe
	bl PlaySongSetupPlayer
	ldr r1, _080E81E0 @ =gUnknown_02024860
	movs r0, #0xa
	strh r0, [r1, #0x1c]
_080E8186:
	ldr r6, _080E81E4 @ =gUnknown_08B1F5F0
	ldr r5, _080E81E0 @ =gUnknown_02024860
	ldrh r0, [r5, #8]
	adds r1, r0, #1
	strh r1, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	ldrb r0, [r0]
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	bl m2_play_soundeffect
	movs r1, #8
	ldrsh r0, [r5, r1]
	adds r0, r0, r6
	ldrb r4, [r0]
	cmp r4, #0
	beq _080E81E8
	ldrh r0, [r5, #8]
	adds r1, r0, #1
	strh r1, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	ldrb r0, [r0]
	bl sub_80E2850
	movs r0, #0xb
	strh r0, [r5, #0x1c]
_080E81C4:
	ldr r0, _080E81E0 @ =gUnknown_02024860
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E81D2
	b _080E83CC
_080E81D2:
	b _080E8186
	.align 2, 0
_080E81D4: .4byte gUnknown_020248E0
_080E81D8: .4byte 0x00000882
_080E81DC: .4byte 0x0000FFFF
_080E81E0: .4byte gUnknown_02024860
_080E81E4: .4byte gUnknown_08B1F5F0
_080E81E8:
	movs r0, #0x4b
	bl PlaySongSetupPlayer
	ldr r0, _080E8228 @ =gUnknown_020248E0
	ldr r1, _080E822C @ =0x00000882
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #1
	bl sub_80E2850
	movs r0, #0xc
	strh r0, [r5, #0x1c]
_080E8202:
	ldr r4, _080E8230 @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E8212
	b _080E83CC
_080E8212:
	ldr r0, _080E8234 @ =gUnknown_02020C70
	ldr r1, _080E8238 @ =0x0000058E
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080E823C @ =gUnknown_08061254
	bl sub_80DB168
	movs r0, #0xd
	strh r0, [r4, #0x1c]
	b _080E83CC
	.align 2, 0
_080E8228: .4byte gUnknown_020248E0
_080E822C: .4byte 0x00000882
_080E8230: .4byte gUnknown_02024860
_080E8234: .4byte gUnknown_02020C70
_080E8238: .4byte 0x0000058E
_080E823C: .4byte gUnknown_08061254
_080E8240:
	ldr r0, _080E8258 @ =gUnknown_02020C70
	ldr r2, _080E825C @ =0x0000058E
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x3c
	bl sub_80E2850
	ldr r1, _080E8260 @ =gUnknown_02024860
	movs r0, #0x8c
	strh r0, [r1, #0x1c]
	b _080E83CC
	.align 2, 0
_080E8258: .4byte gUnknown_02020C70
_080E825C: .4byte 0x0000058E
_080E8260: .4byte gUnknown_02024860
_080E8264:
	adds r0, r2, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E8272
	b _080E83CC
_080E8272:
	movs r0, #0xe
	strh r0, [r2, #0x1c]
	movs r0, #0x78
	bl sub_80E2850
_080E827C:
	ldr r0, _080E82E0 @ =gUnknown_020248E0
	ldr r2, _080E82E4 @ =0x000008D8
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080E828E
	movs r0, #0x2a
	strh r0, [r1]
_080E828E:
	ldr r1, _080E82E8 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E829E
	b _080E83CC
_080E829E:
	strh r0, [r1, #8]
	movs r0, #2
	strh r0, [r1, #0xa]
_080E82A4:
	ldr r0, _080E82EC @ =gUnknown_08B1F5C4
	ldr r4, _080E82E8 @ =gUnknown_02024860
	movs r2, #8
	ldrsh r1, [r4, r2]
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080E8334
	bl sub_80E2850
	movs r0, #0x10
	strh r0, [r4, #0x1c]
	movs r0, #8
	ldrsh r1, [r4, r0]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #1
	bne _080E82F0
	movs r0, #0xe0
	lsls r0, r0, #1
	bl m2_play_soundeffect
	b _080E82F8
	.align 2, 0
_080E82E0: .4byte gUnknown_020248E0
_080E82E4: .4byte 0x000008D8
_080E82E8: .4byte gUnknown_02024860
_080E82EC: .4byte gUnknown_08B1F5C4
_080E82F0:
	movs r0, #0xe0
	lsls r0, r0, #1
	bl m2_stop_soundeffect
_080E82F8:
	ldr r4, _080E8318 @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E83CC
	bl sub_80F0838
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #2
	bne _080E831C
	movs r0, #1
	b _080E831E
	.align 2, 0
_080E8318: .4byte gUnknown_02024860
_080E831C:
	movs r0, #2
_080E831E:
	strh r0, [r4, #0xa]
	ldr r0, _080E8330 @ =gUnknown_02024860
	ldrh r1, [r0, #8]
	adds r1, #1
	strh r1, [r0, #8]
	movs r1, #0xf
	strh r1, [r0, #0x1c]
	b _080E83CC
	.align 2, 0
_080E8330: .4byte gUnknown_02024860
_080E8334:
	movs r0, #0xe0
	lsls r0, r0, #1
	bl m2_stop_soundeffect
	movs r0, #0xb6
	bl PlaySongSetupPlayer
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_80E2850
	movs r0, #0x11
	strh r0, [r4, #0x1c]
_080E834E:
	ldr r4, _080E83D4 @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E83CC
	movs r0, #0xbe
	bl PlaySongSetupPlayer
	movs r0, #0xb5
	lsls r0, r0, #1
	bl m2_play_soundeffect
	movs r0, #5
	movs r1, #0
	movs r2, #5
	bl sub_80EFF40
	movs r0, #0x12
	strh r0, [r4, #0x1c]
_080E8378:
	bl sub_80EFF94
	cmp r0, #0
	bne _080E83CC
	ldr r0, _080E83D8 @ =gUnknown_020248E0
	ldr r2, _080E83DC @ =0x0000083C
	adds r0, r0, r2
	movs r1, #3
	strh r1, [r0]
	ldr r0, _080E83E0 @ =0x04000050
	movs r1, #0xff
	strh r1, [r0]
	ldr r0, _080E83E4 @ =gUnknown_030050EC
	strh r1, [r0]
	ldr r0, _080E83E8 @ =0x04000054
	movs r1, #0xf
	strh r1, [r0]
	ldr r0, _080E83EC @ =gUnknown_030050E0
	strh r1, [r0]
	ldr r1, _080E83D4 @ =gUnknown_02024860
	movs r0, #0x13
	strh r0, [r1, #0x1c]
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_80E2850
_080E83AC:
	ldr r5, _080E83D4 @ =gUnknown_02024860
	adds r0, r5, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bne _080E83CC
	ldr r0, _080E83F0 @ =gUnknown_08078784
	bl sub_80A2190
	ldr r0, _080E83F4 @ =gUnknown_0300521C
	strb r4, [r0]
	ldr r0, _080E83F8 @ =gUnknown_03001304
	strb r4, [r0]
	movs r0, #1
	strh r0, [r5, #0x1a]
_080E83CC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E83D4: .4byte gUnknown_02024860
_080E83D8: .4byte gUnknown_020248E0
_080E83DC: .4byte 0x0000083C
_080E83E0: .4byte 0x04000050
_080E83E4: .4byte gUnknown_030050EC
_080E83E8: .4byte 0x04000054
_080E83EC: .4byte gUnknown_030050E0
_080E83F0: .4byte gUnknown_08078784
_080E83F4: .4byte gUnknown_0300521C
_080E83F8: .4byte gUnknown_03001304

	thumb_func_start sub_80E83FC
sub_80E83FC: @ 0x080E83FC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _080E8448 @ =gUnknown_0300538C
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _080E8478
	ldr r3, _080E844C @ =m2_character_info
	adds r0, r2, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	adds r0, r1, r3
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8454
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r2, _080E8450 @ =gUnknown_08B1D62C
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0xc]
	b _080E8456
	.align 2, 0
_080E8448: .4byte gUnknown_0300538C
_080E844C: .4byte m2_character_info
_080E8450: .4byte gUnknown_08B1D62C
_080E8454:
	movs r1, #1
_080E8456:
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #2
	beq _080E846C
	adds r0, r2, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #4
	bne _080E848E
_080E846C:
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	b _080E848E
_080E8478:
	ldr r1, _080E84BC @ =gUnknown_08739D1C
	adds r0, r2, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r1, r0, #0x1b
_080E848E:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080E84D8
	subs r4, r0, #1
	movs r0, #0x10
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r4, r0
	blt _080E84D8
	ldr r0, _080E84C0 @ =gUnknown_02024860
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	cmp r5, #0
	beq _080E84C8
	ldr r0, _080E84C4 @ =gUnknown_0806020F
	bl sub_80DB168
	b _080E84CE
	.align 2, 0
_080E84BC: .4byte gUnknown_08739D1C
_080E84C0: .4byte gUnknown_02024860
_080E84C4: .4byte gUnknown_0806020F
_080E84C8:
	ldr r0, _080E84D4 @ =gUnknown_08060200
	bl sub_80DB168
_080E84CE:
	movs r0, #1
	b _080E84DA
	.align 2, 0
_080E84D4: .4byte gUnknown_08060200
_080E84D8:
	movs r0, #0
_080E84DA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80E84E0
sub_80E84E0: @ 0x080E84E0
	push {r4, r5, r6, lr}
	ldr r5, _080E84F8 @ =gUnknown_02024860
	movs r0, #0x24
	ldrsh r1, [r5, r0]
	cmp r1, #1
	beq _080E8584
	cmp r1, #1
	bgt _080E84FC
	cmp r1, #0
	beq _080E8506
	b _080E862C
	.align 2, 0
_080E84F8: .4byte gUnknown_02024860
_080E84FC:
	cmp r1, #2
	beq _080E85AA
	cmp r1, #3
	beq _080E85E8
	b _080E862C
_080E8506:
	ldr r6, _080E854C @ =gUnknown_0300538C
	ldr r0, [r6]
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x19
	bge _080E8518
	movs r1, #0x19
_080E8518:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_80E24D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8528
	b _080E862C
_080E8528:
	ldr r0, _080E8550 @ =gWindowPointers
	ldr r0, [r0, #8]
	bl m2_clearwindowtiles
	movs r4, #1
	strh r4, [r5, #0x24]
	ldr r0, [r6]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8560
	ldr r0, _080E8554 @ =gUnknown_020248E0
	ldr r1, _080E8558 @ =0x000008EC
	adds r0, r0, r1
	movs r1, #0x3c
	strh r1, [r0]
	ldr r0, _080E855C @ =gUnknown_08060160
	b _080E856C
	.align 2, 0
_080E854C: .4byte gUnknown_0300538C
_080E8550: .4byte gWindowPointers
_080E8554: .4byte gUnknown_020248E0
_080E8558: .4byte 0x000008EC
_080E855C: .4byte gUnknown_08060160
_080E8560:
	ldr r0, _080E8578 @ =gUnknown_020248E0
	ldr r2, _080E857C @ =0x000008EE
	adds r0, r0, r2
	movs r1, #0x3c
	strh r1, [r0]
	ldr r0, _080E8580 @ =gUnknown_0806016A
_080E856C:
	bl sub_80DB168
	strh r4, [r5, #0x24]
_080E8572:
	movs r0, #1
	b _080E862E
	.align 2, 0
_080E8578: .4byte gUnknown_020248E0
_080E857C: .4byte 0x000008EE
_080E8580: .4byte gUnknown_0806016A
_080E8584:
	ldr r0, _080E85D4 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x65
	ldrb r0, [r0]
	subs r0, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080E859E
	adds r0, r2, #0
	adds r0, #0x67
	strb r1, [r0]
_080E859E:
	ldr r0, _080E85D8 @ =gUnknown_020248E0
	ldr r2, _080E85DC @ =0x0000074E
	adds r0, r0, r2
	strh r1, [r0]
	movs r0, #2
	strh r0, [r5, #0x24]
_080E85AA:
	ldr r0, _080E85E0 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	ldr r1, _080E85D4 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080E85E4 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x24]
	b _080E8572
	.align 2, 0
_080E85D4: .4byte gUnknown_03005390
_080E85D8: .4byte gUnknown_020248E0
_080E85DC: .4byte 0x0000074E
_080E85E0: .4byte gUnknown_0300538C
_080E85E4: .4byte gUnknown_02024860
_080E85E8:
	ldr r0, _080E8620 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	ldr r1, _080E8624 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x6a
	ldrh r1, [r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E8572
	movs r0, #0
	strh r0, [r5, #0x26]
	ldr r0, _080E8628 @ =0x0000FFFF
	strh r0, [r5, #0x24]
	b _080E8572
	.align 2, 0
_080E8620: .4byte gUnknown_0300538C
_080E8624: .4byte gUnknown_03005390
_080E8628: .4byte 0x0000FFFF
_080E862C:
	movs r0, #0
_080E862E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80E8634
sub_80E8634: @ 0x080E8634
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080E8658 @ =gUnknown_02024860
	movs r1, #0x26
	ldrsh r2, [r0, r1]
	adds r5, r0, #0
	cmp r2, #8
	bls _080E864C
	b _080E89D0
_080E864C:
	lsls r0, r2, #2
	ldr r1, _080E865C @ =_080E8660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E8658: .4byte gUnknown_02024860
_080E865C: .4byte _080E8660
_080E8660: @ jump table
	.4byte _080E8684 @ case 0
	.4byte _080E8740 @ case 1
	.4byte _080E87A6 @ case 2
	.4byte _080E87B6 @ case 3
	.4byte _080E8878 @ case 4
	.4byte _080E8892 @ case 5
	.4byte _080E88E4 @ case 6
	.4byte _080E88FA @ case 7
	.4byte _080E8944 @ case 8
_080E8684:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _080E868C
	movs r3, #0
_080E868C:
	ldr r0, _080E8790 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r5, r0, r2
	strh r3, [r5]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfe
	bgt _080E86AC
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	bl sub_80E2384
	strh r0, [r5]
_080E86AC:
	ldr r0, _080E8794 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E86BC
	b _080E89CA
_080E86BC:
	adds r0, r1, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E86C8
	b _080E89CA
_080E86C8:
	adds r0, r1, #0
	adds r0, #0x66
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E86F0
	ldr r0, _080E8798 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x46
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80E2828
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080E86F0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5]
_080E86F0:
	ldr r0, _080E8798 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x46
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_80E2828
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080E8726
	ldr r0, _080E8794 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #4
	bgt _080E8726
	cmp r0, #3
	blt _080E8726
	ldr r1, _080E8790 @ =gUnknown_020248E0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r1, r1, r0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
_080E8726:
	ldr r0, _080E8790 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080E873A
	movs r0, #1
	strh r0, [r1]
_080E873A:
	ldr r1, _080E879C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x26]
_080E8740:
	ldr r5, _080E8794 @ =gUnknown_03005390
	ldr r0, [r5]
	ldr r1, _080E8790 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80E89EC
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r4, _080E879C @ =gUnknown_02024860
	movs r0, #0x28
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E8768
	b _080E89D0
_080E8768:
	movs r0, #0
	strh r0, [r4, #0x28]
	cmp r2, #0
	beq _080E87B6
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080E87B6
	adds r0, r1, #0
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E87A0
	movs r0, #3
	strh r0, [r4, #0x26]
	b _080E89D0
	.align 2, 0
_080E8790: .4byte gUnknown_020248E0
_080E8794: .4byte gUnknown_03005390
_080E8798: .4byte gUnknown_0300538C
_080E879C: .4byte gUnknown_02024860
_080E87A0:
	movs r0, #2
	strh r0, [r4, #0x26]
	b _080E89D0
_080E87A6:
	ldr r0, _080E87EC @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E87B6
	b _080E89D0
_080E87B6:
	ldr r2, _080E87F0 @ =gUnknown_020248E0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r3, r2, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080E87CA
	movs r0, #1
	strh r0, [r3]
_080E87CA:
	ldr r1, _080E87F4 @ =0x00000754
	adds r0, r2, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E886C
	ldr r1, _080E87EC @ =gUnknown_03005390
	ldr r0, [r1]
	adds r0, #0x65
	ldrb r0, [r0]
	adds r4, r1, #0
	cmp r0, #3
	beq _080E87F8
	cmp r0, #4
	beq _080E8834
	b _080E886C
	.align 2, 0
_080E87EC: .4byte gUnknown_03005390
_080E87F0: .4byte gUnknown_020248E0
_080E87F4: .4byte 0x00000754
_080E87F8:
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080E8834
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r3]
	cmp r0, #0
	bne _080E8816
	movs r0, #1
	strh r0, [r3]
_080E8816:
	ldr r4, _080E882C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E8830 @ =gUnknown_08060A36
	bl sub_80DB168
	movs r0, #4
	strh r0, [r4, #0x26]
	b _080E89D0
	.align 2, 0
_080E882C: .4byte gUnknown_02024860
_080E8830: .4byte gUnknown_08060A36
_080E8834:
	ldr r1, [r4]
	adds r1, #0x67
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080E885C
	ldr r0, [r4]
	adds r0, #0x65
	strb r1, [r0]
	ldr r2, _080E8864 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E8868 @ =gUnknown_08060A1C
	bl sub_80DB168
_080E885C:
	ldr r1, _080E8864 @ =gUnknown_02024860
	movs r0, #8
	b _080E89CE
	.align 2, 0
_080E8864: .4byte gUnknown_02024860
_080E8868: .4byte gUnknown_08060A1C
_080E886C:
	ldr r1, _080E8874 @ =gUnknown_02024860
	movs r0, #8
	strh r0, [r1, #0x26]
	b _080E8944
	.align 2, 0
_080E8874: .4byte gUnknown_02024860
_080E8878:
	ldr r0, _080E88D0 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x46
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x46
	movs r4, #0
	strh r0, [r1]
	bl sub_80EA044
	strh r4, [r5, #0x28]
	movs r0, #5
	strh r0, [r5, #0x26]
_080E8892:
	ldr r4, _080E88D4 @ =gUnknown_03005390
	ldr r0, [r4]
	ldr r1, _080E88D8 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80E89EC
	ldr r2, _080E88DC @ =gUnknown_02024860
	movs r0, #0x28
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E88B6
	b _080E89D0
_080E88B6:
	movs r0, #0
	strh r0, [r2, #0x28]
	ldr r0, [r4]
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E88E0
	movs r0, #7
	strh r0, [r2, #0x26]
	adds r5, r2, #0
	b _080E88FA
	.align 2, 0
_080E88D0: .4byte gUnknown_0300538C
_080E88D4: .4byte gUnknown_03005390
_080E88D8: .4byte gUnknown_020248E0
_080E88DC: .4byte gUnknown_02024860
_080E88E0:
	movs r0, #6
	strh r0, [r2, #0x26]
_080E88E4:
	ldr r0, _080E8938 @ =gUnknown_03005390
	ldr r0, [r0]
	bl sub_80E8F88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E89D0
	ldr r1, _080E893C @ =gUnknown_02024860
	movs r0, #7
	strh r0, [r1, #0x26]
	adds r5, r1, #0
_080E88FA:
	adds r4, r5, #0
	adds r1, r4, #0
	adds r1, #0x46
	movs r0, #0
	strh r0, [r1]
	bl sub_80EA044
	ldr r2, _080E8938 @ =gUnknown_03005390
	ldr r1, [r2]
	adds r1, #0x67
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080E8930
	ldr r0, [r2]
	adds r0, #0x65
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E8940 @ =gUnknown_08060A1C
	bl sub_80DB168
_080E8930:
	movs r0, #8
	strh r0, [r5, #0x26]
	b _080E89D0
	.align 2, 0
_080E8938: .4byte gUnknown_03005390
_080E893C: .4byte gUnknown_02024860
_080E8940: .4byte gUnknown_08060A1C
_080E8944:
	ldr r4, _080E89D8 @ =gUnknown_03005390
	ldr r3, [r4]
	adds r0, r3, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	cmp r0, #0
	bne _080E896A
	ldr r2, _080E89DC @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x4a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E89CA
_080E896A:
	adds r0, r3, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #1
	bne _080E89CA
	movs r0, #0x80
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E89CA
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x46
	movs r3, #0
	movs r0, #0
	strh r0, [r2]
	adds r1, #0x61
	strb r3, [r1]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E89BA
	ldr r2, _080E89DC @ =m2_character_info
	adds r0, r1, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x56
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80D6AF8
_080E89BA:
	ldr r2, _080E89E0 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E89E4 @ =gUnknown_080608C3
	bl sub_80DB168
_080E89CA:
	ldr r1, _080E89E0 @ =gUnknown_02024860
	ldr r0, _080E89E8 @ =0x0000FFFF
_080E89CE:
	strh r0, [r1, #0x26]
_080E89D0:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080E89D8: .4byte gUnknown_03005390
_080E89DC: .4byte m2_character_info
_080E89E0: .4byte gUnknown_02024860
_080E89E4: .4byte gUnknown_080608C3
_080E89E8: .4byte 0x0000FFFF

	thumb_func_start sub_80E89EC
sub_80E89EC: @ 0x080E89EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080E8A14 @ =gUnknown_02024860
	movs r1, #0x28
	ldrsh r2, [r0, r1]
	adds r6, r0, #0
	cmp r2, #4
	bls _080E8A08
	b _080E8D64
_080E8A08:
	lsls r0, r2, #2
	ldr r1, _080E8A18 @ =_080E8A1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E8A14: .4byte gUnknown_02024860
_080E8A18: .4byte _080E8A1C
_080E8A1C: @ jump table
	.4byte _080E8A30 @ case 0
	.4byte _080E8A50 @ case 1
	.4byte _080E8ACE @ case 2
	.4byte _080E8AE0 @ case 3
	.4byte _080E8D38 @ case 4
_080E8A30:
	cmp r4, #0
	bne _080E8A50
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080E8A48 @ =gUnknown_080601A4
	bl sub_80DB168
	ldr r0, _080E8A4C @ =0x0000FFFF
	strh r0, [r6, #0x28]
	b _080E8D64
	.align 2, 0
_080E8A48: .4byte gUnknown_080601A4
_080E8A4C: .4byte 0x0000FFFF
_080E8A50:
	adds r0, r5, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	cmp r1, #1
	bne _080E8AC6
	subs r0, #0x1a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xda
	bne _080E8AC6
	adds r0, r6, #0
	adds r0, #0x58
	strh r1, [r0]
	ldr r1, _080E8BE4 @ =gUnknown_03005390
	ldr r0, [r1]
	str r0, [r6, #0x5c]
	adds r5, r1, #0
_080E8A72:
	movs r0, #0xff
	bl RandomNumber
	movs r1, #3
	ands r1, r0
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, _080E8BE8 @ =gUnknown_02020C70
	adds r1, r1, r0
	str r1, [r5]
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8A72
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8A72
	adds r0, r1, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E8A72
	cmp r0, #2
	beq _080E8A72
	bl sub_80DAE00
	ldr r0, _080E8BE4 @ =gUnknown_03005390
	ldr r5, [r0]
	ldr r0, _080E8BEC @ =gUnknown_020248E0
	ldr r3, _080E8BF0 @ =0x000008F4
	adds r0, r0, r3
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _080E8BF4 @ =0x00000175
	bl m2_play_soundeffect
	movs r0, #0x1e
	bl sub_80E2850
_080E8AC6:
	ldr r1, _080E8BF8 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x28]
	adds r6, r1, #0
_080E8ACE:
	adds r0, r6, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E8ADC
	b _080E8D64
_080E8ADC:
	movs r0, #3
	strh r0, [r6, #0x28]
_080E8AE0:
	adds r0, r5, #0
	adds r0, #0x4a
	ldrh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r2, [r1]
	mov r8, r1
	mov sb, r0
	cmp r2, #0
	beq _080E8B14
	subs r0, #8
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r6, r4, #0x10
	cmp r0, #0x5d
	beq _080E8B20
	cmp r0, #0xc0
	beq _080E8B20
	cmp r0, #0xda
	beq _080E8B20
	cmp r0, #0xdb
	beq _080E8B20
	cmp r0, #0xdd
	beq _080E8B20
	cmp r0, #0xe5
	beq _080E8B20
_080E8B14:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r5, #0
	bl sub_80E9BA0
	adds r6, r4, #0
_080E8B20:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _080E8B96
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080E8B62
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080E8B62
	ldr r0, _080E8BFC @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x19
	bge _080E8B4C
	movs r1, #0x19
_080E8B4C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_80E24D8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E8B62
	adds r0, r5, #0
	movs r1, #1
	bl sub_80E9BF8
_080E8B62:
	ldr r0, _080E8BEC @ =gUnknown_020248E0
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E8B96
	movs r0, #1
	bl sub_80E27D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080E8B96
	movs r0, #0
	bl sub_80E27D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080E8B96
	adds r0, r5, #0
	movs r1, #1
	bl sub_80E9BF8
_080E8B96:
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _080E8C40
	adds r0, r5, #0
	adds r0, #0x42
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0xdb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _080E8BB6
	ldr r2, _080E8BEC @ =gUnknown_020248E0
	cmp r1, #0xe5
	bne _080E8BC0
_080E8BB6:
	ldr r2, _080E8BEC @ =gUnknown_020248E0
	ldr r0, _080E8C00 @ =0x000008F6
	adds r1, r2, r0
	movs r0, #0x10
	strh r0, [r1]
_080E8BC0:
	adds r1, r5, #0
	adds r1, #0x8e
	movs r0, #0x15
	strb r0, [r1]
	ldr r1, _080E8C04 @ =0x0000074E
	adds r0, r2, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E8C10
	ldr r0, _080E8C08 @ =gUnknown_0806012B
	asrs r1, r6, #0x10
	bl sub_80DB1FC
	ldr r1, _080E8BF8 @ =gUnknown_02024860
	ldr r0, _080E8C0C @ =sub_80E8D74
	str r0, [r1, #0x6c]
	b _080E8D64
	.align 2, 0
_080E8BE4: .4byte gUnknown_03005390
_080E8BE8: .4byte gUnknown_02020C70
_080E8BEC: .4byte gUnknown_020248E0
_080E8BF0: .4byte 0x000008F4
_080E8BF4: .4byte 0x00000175
_080E8BF8: .4byte gUnknown_02024860
_080E8BFC: .4byte gUnknown_0300538C
_080E8C00: .4byte 0x000008F6
_080E8C04: .4byte 0x0000074E
_080E8C08: .4byte gUnknown_0806012B
_080E8C0C: .4byte sub_80E8D74
_080E8C10:
	ldr r4, _080E8C28 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E8C2C @ =gUnknown_080600FD
	asrs r1, r6, #0x10
	bl sub_80DB1FC
	movs r0, #4
	strh r0, [r4, #0x28]
	b _080E8D64
	.align 2, 0
_080E8C28: .4byte gUnknown_02024860
_080E8C2C: .4byte gUnknown_080600FD
_080E8C30:
	ldrh r1, [r1]
	ldr r3, _080E8C3C @ =0x000008F2
	adds r0, r2, r3
	strh r1, [r0]
	b _080E8C82
	.align 2, 0
_080E8C3C: .4byte 0x000008F2
_080E8C40:
	adds r0, r5, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	ldr r2, _080E8CB4 @ =gUnknown_020248E0
	cmp r0, #0
	bne _080E8C82
	movs r0, #0x8f
	lsls r0, r0, #4
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _080E8C82
	movs r0, #0x15
	strh r0, [r1]
	movs r3, #0
	adds r1, r5, #0
	adds r1, #0x42
	ldr r5, _080E8CB8 @ =gUnknown_03005350
	movs r0, #0
	ldrsh r4, [r1, r0]
_080E8C6A:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, r4
	beq _080E8C30
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080E8C6A
_080E8C82:
	mov r1, sb
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _080E8CD0
	ldr r0, _080E8CBC @ =0x000008D8
	adds r1, r2, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, _080E8CC0 @ =0x000008DA
	adds r1, r2, r3
	movs r0, #0xc
	strh r0, [r1]
	ldr r4, _080E8CC4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E8CC8 @ =gUnknown_08060142
	asrs r1, r6, #0x10
	bl sub_80DB1FC
	ldr r0, _080E8CCC @ =sub_80E8D98
	str r0, [r4, #0x6c]
	b _080E8D64
	.align 2, 0
_080E8CB4: .4byte gUnknown_020248E0
_080E8CB8: .4byte gUnknown_03005350
_080E8CBC: .4byte 0x000008D8
_080E8CC0: .4byte 0x000008DA
_080E8CC4: .4byte gUnknown_02024860
_080E8CC8: .4byte gUnknown_08060142
_080E8CCC: .4byte sub_80E8D98
_080E8CD0:
	ldr r1, _080E8CF4 @ =0x0000074E
	adds r0, r2, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080E8D08
	ldr r0, _080E8CF8 @ =0x000008D8
	adds r1, r2, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r0, _080E8CFC @ =gUnknown_08060114
	asrs r1, r6, #0x10
	bl sub_80DB1FC
	ldr r1, _080E8D00 @ =gUnknown_02024860
	ldr r0, _080E8D04 @ =sub_80E8DBC
	str r0, [r1, #0x6c]
	b _080E8D64
	.align 2, 0
_080E8CF4: .4byte 0x0000074E
_080E8CF8: .4byte 0x000008D8
_080E8CFC: .4byte gUnknown_08060114
_080E8D00: .4byte gUnknown_02024860
_080E8D04: .4byte sub_80E8DBC
_080E8D08:
	ldr r3, _080E8D28 @ =0x000008D8
	adds r1, r2, r3
	movs r0, #0x2a
	strh r0, [r1]
	ldr r4, _080E8D2C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E8D30 @ =gUnknown_080600E6
	asrs r1, r6, #0x10
	bl sub_80DB1FC
	ldr r0, _080E8D34 @ =sub_80E8DF4
	str r0, [r4, #0x6c]
	b _080E8D64
	.align 2, 0
_080E8D28: .4byte 0x000008D8
_080E8D2C: .4byte gUnknown_02024860
_080E8D30: .4byte gUnknown_080600E6
_080E8D34: .4byte sub_80E8DF4
_080E8D38:
	adds r1, r6, #0
	adds r4, r1, #0
	adds r4, #0x58
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E8D54
	ldr r0, _080E8D5C @ =gUnknown_03005390
	ldr r1, [r1, #0x5c]
	str r1, [r0]
	bl sub_80DAE00
	movs r0, #0
	strh r0, [r4]
_080E8D54:
	ldr r0, _080E8D60 @ =0x0000FFFF
	strh r0, [r6, #0x28]
	movs r0, #1
	b _080E8D66
	.align 2, 0
_080E8D5C: .4byte gUnknown_03005390
_080E8D60: .4byte 0x0000FFFF
_080E8D64:
	movs r0, #0
_080E8D66:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80E8D74
sub_80E8D74: @ 0x080E8D74
	ldr r0, _080E8D8C @ =gUnknown_020248E0
	ldr r1, _080E8D90 @ =0x0000074E
	adds r0, r0, r1
	movs r2, #0
	strh r2, [r0]
	ldr r1, _080E8D94 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x28]
	str r2, [r1, #0x6c]
	movs r0, #0
	bx lr
	.align 2, 0
_080E8D8C: .4byte gUnknown_020248E0
_080E8D90: .4byte 0x0000074E
_080E8D94: .4byte gUnknown_02024860

	thumb_func_start sub_80E8D98
sub_80E8D98: @ 0x080E8D98
	ldr r0, _080E8DB0 @ =gUnknown_020248E0
	ldr r1, _080E8DB4 @ =0x000008DC
	adds r0, r0, r1
	movs r2, #0
	movs r1, #0x28
	strh r1, [r0]
	ldr r1, _080E8DB8 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x28]
	str r2, [r1, #0x6c]
	movs r0, #0
	bx lr
	.align 2, 0
_080E8DB0: .4byte gUnknown_020248E0
_080E8DB4: .4byte 0x000008DC
_080E8DB8: .4byte gUnknown_02024860

	thumb_func_start sub_80E8DBC
sub_80E8DBC: @ 0x080E8DBC
	ldr r1, _080E8DE0 @ =gUnknown_020248E0
	ldr r2, _080E8DE4 @ =0x000008DA
	adds r0, r1, r2
	movs r2, #0
	strh r2, [r0]
	ldr r3, _080E8DE8 @ =0x0000074E
	adds r0, r1, r3
	strh r2, [r0]
	ldr r0, _080E8DEC @ =0x000008DC
	adds r1, r1, r0
	movs r0, #0x28
	strh r0, [r1]
	ldr r1, _080E8DF0 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x28]
	str r2, [r1, #0x6c]
	movs r0, #0
	bx lr
	.align 2, 0
_080E8DE0: .4byte gUnknown_020248E0
_080E8DE4: .4byte 0x000008DA
_080E8DE8: .4byte 0x0000074E
_080E8DEC: .4byte 0x000008DC
_080E8DF0: .4byte gUnknown_02024860

	thumb_func_start sub_80E8DF4
sub_80E8DF4: @ 0x080E8DF4
	ldr r1, _080E8E14 @ =gUnknown_020248E0
	ldr r2, _080E8E18 @ =0x000008DA
	adds r0, r1, r2
	movs r2, #0
	strh r2, [r0]
	ldr r0, _080E8E1C @ =0x000008DC
	adds r1, r1, r0
	movs r0, #0x28
	strh r0, [r1]
	ldr r1, _080E8E20 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x28]
	str r2, [r1, #0x6c]
	movs r0, #0
	bx lr
	.align 2, 0
_080E8E14: .4byte gUnknown_020248E0
_080E8E18: .4byte 0x000008DA
_080E8E1C: .4byte 0x000008DC
_080E8E20: .4byte gUnknown_02024860

	thumb_func_start sub_80E8E24
sub_80E8E24: @ 0x080E8E24
	push {lr}
	ldr r0, _080E8E70 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #3
	beq _080E8E6C
	adds r0, r1, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E8E6C
	cmp r0, #3
	beq _080E8E6C
	cmp r0, #4
	beq _080E8E6C
	adds r0, r1, #0
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #1
	ldr r0, _080E8E74 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x6c
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	blt _080E8E6C
	bl sub_80E24D8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8E78
_080E8E6C:
	movs r0, #0
	b _080E8E7A
	.align 2, 0
_080E8E70: .4byte gUnknown_03005390
_080E8E74: .4byte gUnknown_0300538C
_080E8E78:
	movs r0, #1
_080E8E7A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80E8E80
sub_80E8E80: @ 0x080E8E80
	push {r4, lr}
	ldr r0, _080E8E94 @ =gUnknown_02024860
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080E8E98
	cmp r0, #1
	beq _080E8ED8
	b _080E8F00
	.align 2, 0
_080E8E94: .4byte gUnknown_02024860
_080E8E98:
	ldr r2, _080E8F08 @ =gUnknown_020248E0
	ldr r0, _080E8F0C @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x68
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #1
	ldr r0, _080E8F10 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6a
	ldrh r0, [r0]
	subs r1, r1, r0
	movs r0, #0x92
	lsls r0, r0, #4
	adds r4, r2, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	ble _080E8ECE
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_80E2434
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E8ED2
_080E8ECE:
	movs r0, #1
	strh r0, [r4]
_080E8ED2:
	ldr r1, _080E8F14 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x22]
_080E8ED8:
	ldr r0, _080E8F08 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080E8F14 @ =gUnknown_02024860
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E8F00
	movs r0, #0
	strh r0, [r2, #0x26]
	ldr r0, _080E8F18 @ =0x0000FFFF
	strh r0, [r2, #0x22]
_080E8F00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8F08: .4byte gUnknown_020248E0
_080E8F0C: .4byte gUnknown_0300538C
_080E8F10: .4byte gUnknown_03005390
_080E8F14: .4byte gUnknown_02024860
_080E8F18: .4byte 0x0000FFFF

	thumb_func_start sub_80E8F1C
sub_80E8F1C: @ 0x080E8F1C
	push {r4, lr}
	ldr r4, _080E8F78 @ =gUnknown_03005390
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x62
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E8F70
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r3, [r0]
	cmp r3, #0
	bne _080E8F60
	adds r1, #0x42
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #3
	bgt _080E8F60
	ldr r2, _080E8F7C @ =m2_character_info
	adds r1, r0, #0
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x57
	strb r3, [r0]
	ldr r0, [r4]
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80D6AF8
_080E8F60:
	ldr r2, _080E8F80 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E8F84 @ =gUnknown_0806088F
	bl sub_80DB168
_080E8F70:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8F78: .4byte gUnknown_03005390
_080E8F7C: .4byte m2_character_info
_080E8F80: .4byte gUnknown_02024860
_080E8F84: .4byte gUnknown_0806088F

	thumb_func_start sub_80E8F88
sub_80E8F88: @ 0x080E8F88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	ldr r0, _080E8FB0 @ =gUnknown_02024860
	movs r2, #0x2a
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0xf
	bls _080E8FA4
	b _080E95D6
_080E8FA4:
	lsls r0, r1, #2
	ldr r1, _080E8FB4 @ =_080E8FB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E8FB0: .4byte gUnknown_02024860
_080E8FB4: .4byte _080E8FB8
_080E8FB8: @ jump table
	.4byte _080E8FF8 @ case 0
	.4byte _080E9028 @ case 1
	.4byte _080E9248 @ case 2
	.4byte _080E9832 @ case 3
	.4byte _080E9324 @ case 4
	.4byte _080E9518 @ case 5
	.4byte _080E95D6 @ case 6
	.4byte _080E95D6 @ case 7
	.4byte _080E95D6 @ case 8
	.4byte _080E95D6 @ case 9
	.4byte _080E9568 @ case 10
	.4byte _080E9614 @ case 11
	.4byte _080E967A @ case 12
	.4byte _080E968C @ case 13
	.4byte _080E96CC @ case 14
	.4byte _080E970C @ case 15
_080E8FF8:
	ldr r0, _080E9018 @ =gUnknown_020248E0
	ldr r4, _080E901C @ =0x00000918
	adds r1, r0, r4
	str r6, [r1]
	ldr r5, _080E9020 @ =0x00000752
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9024
	movs r0, #4
	strh r0, [r3, #0x2a]
	b _080E9324
	.align 2, 0
_080E9018: .4byte gUnknown_020248E0
_080E901C: .4byte 0x00000918
_080E9020: .4byte 0x00000752
_080E9024:
	movs r0, #1
	strh r0, [r3, #0x2a]
_080E9028:
	adds r0, r6, #0
	adds r0, #0x60
	ldrb r1, [r0]
	str r0, [sp, #4]
	adds r7, r6, #0
	adds r7, #0x5f
	str r7, [sp]
	adds r0, #5
	str r0, [sp, #0x18]
	adds r2, r6, #0
	adds r2, #0x64
	str r2, [sp, #0x14]
	adds r3, r6, #0
	adds r3, #0x63
	str r3, [sp, #0x10]
	adds r4, r6, #0
	adds r4, #0x62
	str r4, [sp, #0xc]
	adds r5, r6, #0
	adds r5, #0x61
	str r5, [sp, #8]
	movs r7, #0x5d
	adds r7, r7, r6
	mov sl, r7
	cmp r1, #2
	beq _080E905E
	b _080E9176
_080E905E:
	subs r0, #9
	ldrh r4, [r0]
	cmp r4, #0
	bne _080E9086
	subs r3, #0x21
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #3
	bgt _080E9086
	ldr r2, _080E9154 @ =m2_character_info
	adds r1, r0, #0
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x55
	strb r4, [r0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	bl sub_80D6AF8
_080E9086:
	movs r7, #0
	ldr r5, _080E9158 @ =gUnknown_02020C70
	adds r0, r6, #0
	adds r0, #0x5f
	str r0, [sp]
	adds r1, r6, #0
	adds r1, #0x65
	str r1, [sp, #0x18]
	adds r2, r6, #0
	adds r2, #0x64
	str r2, [sp, #0x14]
	adds r3, r6, #0
	adds r3, #0x63
	str r3, [sp, #0x10]
	adds r4, r6, #0
	adds r4, #0x62
	str r4, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #8]
	movs r1, #0x5d
	adds r1, r1, r6
	mov sl, r1
	mov r8, r5
	ldr r2, _080E915C @ =0x000003D2
	add r2, r8
	mov sb, r2
_080E90BA:
	lsls r1, r7, #0x10
	asrs r4, r1, #0x10
	movs r0, #0x94
	muls r0, r4, r0
	mov r5, r8
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r2, r1, #0
	cmp r0, #0
	beq _080E9168
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r5, [r0]
	cmp r5, #0
	bne _080E9168
	adds r0, #3
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E9168
	cmp r6, r3
	bne _080E9176
	ldr r0, _080E9160 @ =0x000003D5
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0xd5
	bne _080E9176
	mov r0, sb
	strb r5, [r0]
	cmp r4, #5
	bgt _080E9176
	ldr r4, _080E9158 @ =gUnknown_02020C70
	ldr r2, _080E9164 @ =0x000003D3
	adds r5, r4, r2
_080E9100:
	asrs r1, r1, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	adds r1, r0, r4
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E913E
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E913E
	adds r0, r1, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E913E
	movs r3, #0xde
	lsls r3, r3, #2
	adds r0, r4, r3
	movs r1, #0xd5
	bl sub_80DA29C
	ldr r1, _080E9160 @ =0x000003D5
	adds r0, r4, r1
	movs r1, #0xd5
	strb r1, [r0]
	movs r0, #1
	strb r0, [r5]
_080E913E:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	cmp r0, #5
	ble _080E9100
	b _080E9176
	.align 2, 0
_080E9154: .4byte m2_character_info
_080E9158: .4byte gUnknown_02020C70
_080E915C: .4byte 0x000003D2
_080E9160: .4byte 0x000003D5
_080E9164: .4byte 0x000003D3
_080E9168:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r2, r3
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080E90BA
_080E9176:
	movs r0, #0
	movs r4, #1
	mov r8, r4
	mov r7, r8
	ldr r5, [sp]
	strb r7, [r5]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	ldr r3, [sp, #0x10]
	strb r0, [r3]
	ldr r4, [sp, #0xc]
	strb r0, [r4]
	ldr r5, [sp, #8]
	strb r0, [r5]
	ldr r7, [sp, #4]
	strb r0, [r7]
	mov r0, sl
	ldrb r7, [r0]
	cmp r7, #0
	beq _080E91D0
	ldr r4, _080E91C8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r5, #2
	orrs r0, r5
	str r0, [r4]
	ldr r1, _080E91CC @ =gUnknown_08739D1C
	adds r0, r6, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80DB168
	strh r5, [r4, #0x2a]
	b _080E95D6
	.align 2, 0
_080E91C8: .4byte gUnknown_02024860
_080E91CC: .4byte gUnknown_08739D1C
_080E91D0:
	ldr r4, _080E923C @ =m2_character_info
	adds r5, r6, #0
	adds r5, #0x5e
	ldrb r0, [r5]
	movs r2, #0x6c
	muls r0, r2, r0
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x4a
	movs r3, #0
	strh r7, [r1]
	adds r0, #0x46
	strh r7, [r0]
	ldrb r0, [r5]
	muls r0, r2, r0
	adds r0, r0, r4
	adds r0, #0x4a
	strh r7, [r0]
	ldrb r0, [r5]
	muls r0, r2, r0
	adds r0, r0, r4
	adds r0, #0x54
	mov r6, r8
	strb r6, [r0]
	ldrb r0, [r5]
	muls r0, r2, r0
	adds r1, r0, r4
	adds r0, r1, #0
	adds r0, #0x5a
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	ldr r4, _080E9240 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E9244 @ =gUnknown_080605B2
	bl sub_80DB168
	strh r7, [r4, #0x2a]
	bl sub_80D6844
	bl sub_80D1B8C
	b _080E9838
	.align 2, 0
_080E923C: .4byte m2_character_info
_080E9240: .4byte gUnknown_02024860
_080E9244: .4byte gUnknown_080605B2
_080E9248:
	adds r7, r6, #0
	adds r7, #0x5a
	movs r0, #0
	mov sl, r0
	mov r1, sl
	strb r1, [r7]
	adds r5, r6, #0
	adds r5, #0x5f
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strb r3, [r5]
	adds r4, r6, #0
	adds r4, #0x5d
	ldrb r0, [r4]
	subs r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080E92DC
	bl sub_80ED67C
	ldr r1, _080E92CC @ =m2_character_info
	adds r3, r6, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	ldr r2, _080E92D0 @ =0x0000022B
	adds r2, r2, r1
	mov sb, r2
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080E928C
	b _080E9832
_080E928C:
	mov r0, r8
	strb r0, [r7]
	mov r2, sl
	strb r2, [r5]
	ldrb r0, [r3]
	lsls r0, r0, #1
	ldr r5, _080E92D4 @ =0x0000022E
	adds r1, r1, r5
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r6, #0
	adds r2, #0x4a
	strh r1, [r2]
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x48
	strh r1, [r0]
	ldrb r0, [r3]
	add r0, sb
	ldrb r0, [r0]
	strb r0, [r4]
	ldr r1, _080E92D8 @ =gUnknown_08B213CC
	ldrb r0, [r4]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r0, r6, #0
	adds r0, #0x42
	strh r1, [r0]
	b _080E9832
	.align 2, 0
_080E92CC: .4byte m2_character_info
_080E92D0: .4byte 0x0000022B
_080E92D4: .4byte 0x0000022E
_080E92D8: .4byte gUnknown_08B213CC
_080E92DC:
	ldr r0, _080E9318 @ =m2_character_info
	ldr r6, _080E931C @ =0x0000022B
	adds r1, r0, r6
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _080E92EA
	b _080E9832
_080E92EA:
	ldr r4, _080E9320 @ =gUnknown_02020C70
	movs r3, #0
	adds r5, r1, #0
	adds r2, r4, #0
	adds r2, #0x5a
_080E92F4:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E930A
	ldrb r1, [r2, #2]
	cmp r1, #0
	bne _080E930A
	ldrb r0, [r2, #3]
	ldrb r7, [r5]
	cmp r0, r7
	bne _080E930A
	b _080E982C
_080E930A:
	adds r2, #0x94
	adds r4, #0x94
	adds r3, #1
	cmp r3, #0x1f
	ble _080E92F4
	b _080E9832
	.align 2, 0
_080E9318: .4byte m2_character_info
_080E931C: .4byte 0x0000022B
_080E9320: .4byte gUnknown_02020C70
_080E9324:
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r2, [r1]
	adds r0, r2, #0
	subs r0, #0xda
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r1
	cmp r0, #1
	bls _080E9344
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xdd
	beq _080E9344
	cmp r0, #0xe5
	bne _080E934A
_080E9344:
	movs r0, #0
	strh r0, [r3, #0x2a]
	b _080E9838
_080E934A:
	movs r0, #1
	bl sub_80E27D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x84
	adds r1, r1, r6
	mov r8, r1
	adds r6, #0x80
	mov sb, r6
	cmp r0, #1
	bne _080E93CE
	movs r7, #0
	ldr r5, _080E94D0 @ =gUnknown_02020C70
	ldr r6, _080E94D4 @ =m2_character_info
	movs r4, #1
_080E936A:
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E93C0
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E93C0
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E93C0
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E93C0
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _080E93C0
	adds r0, r3, #0
	adds r0, #0x4a
	strh r4, [r0]
	adds r0, r1, #0
	adds r0, #0x46
	strh r4, [r0]
_080E93C0:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080E936A
_080E93CE:
	ldr r4, _080E94D8 @ =gUnknown_020248E0
	ldr r3, _080E94DC @ =0x00000814
	adds r2, r4, r3
	ldr r0, [r2]
	mov r5, r8
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r2]
	ldr r3, _080E94E0 @ =0x0098967F
	cmp r0, r3
	ble _080E93E6
	str r3, [r2]
_080E93E6:
	ldr r6, _080E94E4 @ =0x00000818
	adds r2, r4, r6
	mov r7, sb
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, r3
	ble _080E93FC
	str r3, [r2]
_080E93FC:
	ldr r7, _080E94E8 @ =gUnknown_08739D1C
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #6
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	cmp r0, #0
	bne _080E9410
	b _080E9568
_080E9410:
	movs r3, #0xea
	lsls r3, r3, #3
	adds r0, r4, r3
	movs r5, #0
	mov sb, r5
	movs r6, #1
	mov r8, r6
	mov r1, r8
	strh r1, [r0]
	ldr r6, _080E94EC @ =gUnknown_02024860
	ldr r0, _080E94F0 @ =gUnknown_03005378
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x46
	strh r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r5, _080E94F4 @ =gUnknown_0300538C
	ldr r0, [r5]
	str r0, [r1]
	ldr r3, _080E94F8 @ =0x00000904
	adds r1, r4, r3
	ldr r0, _080E94FC @ =gUnknown_03005390
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _080E9500 @ =0x00000908
	adds r1, r4, r0
	ldr r0, _080E9504 @ =gUnknown_0300534C
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080E9508 @ =0x00000918
	adds r4, r4, r1
	ldr r1, [r4]
	str r1, [r5]
	adds r0, r1, #0
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r0, r0, r7
	ldrh r0, [r0, #0x30]
	adds r1, #0x46
	strh r0, [r1]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #6
	adds r0, r0, r7
	ldrh r0, [r0, #0x3a]
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, [r5]
	bl sub_80DCF58
	ldr r0, [r5]
	bl sub_80DD664
	movs r0, #0
	bl sub_80DB04C
	bl sub_80DD818
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r2, _080E950C @ =gUnknown_08B204E4
	ldr r0, [r4]
	adds r0, #0x42
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #6
	adds r0, r0, r7
	ldrh r1, [r0, #0x30]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_80DB168
	movs r0, #5
	strh r0, [r6, #0x2a]
	ldr r0, _080E9510 @ =gUnknown_03005388
	mov r7, r8
	strh r7, [r0]
	mov r0, sb
	strh r0, [r6, #0x1a]
	ldr r1, _080E9514 @ =gUnknown_03005348
	ldr r0, [r5]
	b _080E95D4
	.align 2, 0
_080E94D0: .4byte gUnknown_02020C70
_080E94D4: .4byte m2_character_info
_080E94D8: .4byte gUnknown_020248E0
_080E94DC: .4byte 0x00000814
_080E94E0: .4byte 0x0098967F
_080E94E4: .4byte 0x00000818
_080E94E8: .4byte gUnknown_08739D1C
_080E94EC: .4byte gUnknown_02024860
_080E94F0: .4byte gUnknown_03005378
_080E94F4: .4byte gUnknown_0300538C
_080E94F8: .4byte 0x00000904
_080E94FC: .4byte gUnknown_03005390
_080E9500: .4byte 0x00000908
_080E9504: .4byte gUnknown_0300534C
_080E9508: .4byte 0x00000918
_080E950C: .4byte gUnknown_08B204E4
_080E9510: .4byte gUnknown_03005388
_080E9514: .4byte gUnknown_03005348
_080E9518:
	ldr r0, _080E95DC @ =gUnknown_02024860
	adds r0, #0x46
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080E95E0 @ =gUnknown_020248E0
	movs r2, #0xea
	lsls r2, r2, #3
	adds r0, r4, r2
	strh r1, [r0]
	ldr r1, _080E95E4 @ =gUnknown_0300538C
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _080E95E8 @ =gUnknown_03005390
	ldr r5, _080E95EC @ =0x00000904
	adds r0, r4, r5
	ldr r2, [r0]
	str r2, [r1]
	ldr r1, _080E95F0 @ =gUnknown_0300534C
	ldr r6, _080E95F4 @ =0x00000908
	adds r0, r4, r6
	ldr r0, [r0]
	str r0, [r1]
	ldr r7, _080E95F8 @ =0x00000918
	adds r0, r4, r7
	str r2, [r0]
	movs r0, #0
	bl sub_80DB04C
	bl sub_80DAE00
	ldr r0, _080E95FC @ =0x0000083C
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080E9568
	b _080E9832
_080E9568:
	ldr r2, _080E95E0 @ =gUnknown_020248E0
	ldr r3, _080E9600 @ =0x00000752
	adds r0, r2, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _080E9578
	b _080E9832
_080E9578:
	ldr r0, _080E9604 @ =gEnemyGroup
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, _080E9608 @ =0x000001BF
	cmp r1, r0
	ble _080E95A6
	ldr r1, _080E960C @ =gUnknown_08739D1C
	ldr r6, _080E95F8 @ =0x00000918
	adds r0, r2, r6
	ldr r0, [r0]
	adds r0, #0x42
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080E95A6
	ldr r0, _080E9610 @ =0x0000014D
	bl m2_play_soundeffect
_080E95A6:
	ldr r5, _080E95DC @ =gUnknown_02024860
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r1, _080E960C @ =gUnknown_08739D1C
	ldr r4, _080E95E0 @ =gUnknown_020248E0
	ldr r0, _080E95F8 @ =0x00000918
	adds r4, r4, r0
	ldr r0, [r4]
	adds r0, #0x42
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #6
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_80DB168
	movs r0, #0xb
	strh r0, [r5, #0x2a]
	ldr r1, _080E95E8 @ =gUnknown_03005390
	ldr r0, [r4]
_080E95D4:
	str r0, [r1]
_080E95D6:
	movs r0, #0
	b _080E983A
	.align 2, 0
_080E95DC: .4byte gUnknown_02024860
_080E95E0: .4byte gUnknown_020248E0
_080E95E4: .4byte gUnknown_0300538C
_080E95E8: .4byte gUnknown_03005390
_080E95EC: .4byte 0x00000904
_080E95F0: .4byte gUnknown_0300534C
_080E95F4: .4byte 0x00000908
_080E95F8: .4byte 0x00000918
_080E95FC: .4byte 0x0000083C
_080E9600: .4byte 0x00000752
_080E9604: .4byte gEnemyGroup
_080E9608: .4byte 0x000001BF
_080E960C: .4byte gUnknown_08739D1C
_080E9610: .4byte 0x0000014D
_080E9614:
	ldr r2, _080E96E4 @ =gUnknown_02020C70
	movs r7, #0
	adds r1, r6, #0
	adds r1, #0x91
	movs r3, #0
_080E961E:
	adds r0, r2, #0
	adds r0, #0x91
	strb r3, [r0]
	adds r2, #0x94
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080E961E
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xa
	bl sub_80EF7D0
	movs r7, #1
	ldr r5, _080E96E8 @ =gUnknown_020251F8
_080E9644:
	ldr r0, [r5]
	adds r0, #0x40
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #4
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0x1f
	bl sub_80EF5EC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080E9644
	movs r0, #0xa
	bl sub_80E2850
	ldr r1, _080E96EC @ =gUnknown_02024860
	movs r0, #0xc
	strh r0, [r1, #0x2a]
_080E967A:
	ldr r1, _080E96EC @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x56
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _080E95D6
	movs r0, #0xd
	strh r0, [r1, #0x2a]
_080E968C:
	movs r0, #0x14
	bl sub_80EF7D0
	movs r7, #1
	ldr r5, _080E96E8 @ =gUnknown_020251F8
_080E9696:
	ldr r0, [r5]
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	lsls r4, r7, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80EF5EC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r7, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080E9696
	movs r0, #0x14
	bl sub_80E2850
	ldr r1, _080E96EC @ =gUnknown_02024860
	movs r0, #0xe
	strh r0, [r1, #0x2a]
_080E96CC:
	ldr r1, _080E96EC @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x56
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080E96DC
	b _080E95D6
_080E96DC:
	movs r0, #0xf
	strh r0, [r1, #0x2a]
	b _080E95D6
	.align 2, 0
_080E96E4: .4byte gUnknown_02020C70
_080E96E8: .4byte gUnknown_020251F8
_080E96EC: .4byte gUnknown_02024860
_080E96F0:
	strb r2, [r1]
	ldr r1, _080E9708 @ =m2_character_info
	movs r0, #0x6c
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x55
	strb r2, [r0]
	adds r0, r3, #0
	bl sub_80D6AF8
	b _080E97A6
	.align 2, 0
_080E9708: .4byte m2_character_info
_080E970C:
	ldr r4, _080E980C @ =gUnknown_020248E0
	ldr r5, _080E9810 @ =0x00000918
	adds r3, r4, r5
	ldr r0, [r3]
	adds r0, #0x5f
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	ldr r1, [r3]
	adds r0, r1, #0
	adds r0, #0x65
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x62
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x60
	strb r2, [r0]
	ldr r0, [r3]
	adds r0, #0x4a
	strh r2, [r0]
	ldr r1, _080E9814 @ =gUnknown_08739D1C
	ldr r0, [r3]
	adds r0, #0x42
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #6
	adds r0, r0, r1
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge _080E9762
	ldr r7, _080E9818 @ =0x0000083C
	adds r1, r4, r7
	movs r0, #2
	strh r0, [r1]
_080E9762:
	ldr r0, [r3]
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0xd5
	bne _080E9832
	movs r7, #0
	ldr r5, _080E981C @ =gUnknown_02020C70
_080E9770:
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	movs r0, #0x94
	muls r0, r3, r0
	adds r1, r0, r5
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9796
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r2, [r0]
	cmp r2, #0
	bne _080E9796
	adds r1, #0x60
	ldrb r0, [r1]
	cmp r0, #2
	beq _080E96F0
_080E9796:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080E9770
_080E97A6:
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	cmp r0, #5
	bgt _080E9832
	ldr r5, _080E981C @ =gUnknown_02020C70
	ldr r2, _080E9820 @ =0x000003D7
	adds r6, r5, r2
_080E97B4:
	asrs r1, r1, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	adds r1, r0, r5
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E97F6
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r4, [r0]
	cmp r4, #0
	bne _080E97F6
	adds r0, #3
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E97F6
	movs r3, #0xde
	lsls r3, r3, #2
	adds r0, r5, r3
	movs r1, #0xd5
	bl sub_80DA29C
	ldr r0, _080E9824 @ =0x000003D5
	adds r1, r5, r0
	movs r0, #0xd5
	strb r0, [r1]
	ldr r2, _080E9828 @ =0x000003D3
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	strb r4, [r6]
_080E97F6:
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	lsls r1, r7, #0x10
	asrs r0, r1, #0x10
	cmp r0, #5
	ble _080E97B4
	b _080E9832
	.align 2, 0
_080E980C: .4byte gUnknown_020248E0
_080E9810: .4byte 0x00000918
_080E9814: .4byte gUnknown_08739D1C
_080E9818: .4byte 0x0000083C
_080E981C: .4byte gUnknown_02020C70
_080E9820: .4byte 0x000003D7
_080E9824: .4byte 0x000003D5
_080E9828: .4byte 0x000003D3
_080E982C:
	adds r0, r4, #0
	adds r0, #0x5e
	strb r1, [r0]
_080E9832:
	ldr r1, _080E984C @ =gUnknown_02024860
	movs r0, #0
	strh r0, [r1, #0x2a]
_080E9838:
	movs r0, #1
_080E983A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E984C: .4byte gUnknown_02024860

	thumb_func_start sub_80E9850
sub_80E9850: @ 0x080E9850
	push {lr}
	ldr r2, _080E9878 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E987C @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #0
	movs r2, #3
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E9884
	ldr r0, _080E9880 @ =gUnknown_0806043D
	bl sub_80DB168
	b _080E988A
	.align 2, 0
_080E9878: .4byte gUnknown_02024860
_080E987C: .4byte gUnknown_03005390
_080E9880: .4byte gUnknown_0806043D
_080E9884:
	ldr r0, _080E9890 @ =gUnknown_080601A4
	bl sub_80DB168
_080E988A:
	pop {r0}
	bx r0
	.align 2, 0
_080E9890: .4byte gUnknown_080601A4

	thumb_func_start sub_80E9894
sub_80E9894: @ 0x080E9894
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r5, _080E98B4 @ =gUnknown_02024860
	adds r6, r5, #0
	adds r6, #0x54
	movs r0, #0
	ldrsh r4, [r6, r0]
	cmp r4, #1
	bne _080E98A8
	b _080E9AA6
_080E98A8:
	cmp r4, #1
	bgt _080E98B8
	cmp r4, #0
	beq _080E98C0
	b _080E9B2C
	.align 2, 0
_080E98B4: .4byte gUnknown_02024860
_080E98B8:
	cmp r4, #2
	bne _080E98BE
	b _080E9AD8
_080E98BE:
	b _080E9B2C
_080E98C0:
	movs r0, #1
	bl sub_80E27D0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9954
	strh r4, [r6]
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	movs r0, #0
	bl sub_80E27D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _080E98E4
	b _080E9AD4
_080E98E4:
	movs r2, #0
	ldr r6, _080E994C @ =gUnknown_02020C70
	ldr r5, _080E9950 @ =m2_character_info
	movs r4, #1
_080E98EC:
	movs r0, #0x94
	muls r0, r2, r0
	adds r3, r0, r6
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E993E
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E993E
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E993E
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E993E
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r1, r0, r5
	adds r0, r1, #0
	adds r0, #0x4a
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _080E993E
	adds r0, r3, #0
	adds r0, #0x4a
	strh r4, [r0]
	adds r0, r1, #0
	adds r0, #0x46
	strh r4, [r0]
_080E993E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #5
	bls _080E98EC
	b _080E9AD4
	.align 2, 0
_080E994C: .4byte gUnknown_02020C70
_080E9950: .4byte m2_character_info
_080E9954:
	adds r0, r5, #0
	adds r0, #0x52
	strh r4, [r0]
	adds r6, r5, #0
_080E995C:
	adds r5, r6, #0
	adds r5, #0x52
	ldrh r2, [r5]
	movs r4, #0x94
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r1, _080E9A68 @ =gUnknown_02020C70
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9978
	b _080E9AA6
_080E9978:
	adds r0, r3, #0
	adds r0, #0x5c
	ldrh r0, [r0]
	cmp r0, #0
	beq _080E9984
	b _080E9AA6
_080E9984:
	movs r2, #0
	ldrsh r0, [r5, r2]
	muls r0, r4, r0
	adds r0, r0, r1
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _080E9A6C @ =gUnknown_03001D54
	adds r4, r1, r0
	ldrh r0, [r4, #0x36]
	adds r2, r3, #0
	adds r2, #0x48
	movs r5, #0
	strh r0, [r2]
	ldrh r0, [r4, #0x3e]
	adds r1, r3, #0
	adds r1, #0x4e
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bne _080E9AA6
	movs r0, #0x5f
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E9AA6
	ldr r0, _080E9A70 @ =gUnknown_0300535C
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080E9A98
	ldr r2, _080E9A74 @ =gUnknown_03005390
	str r3, [r2]
	movs r1, #1
	mov r3, ip
	strb r1, [r3]
	adds r0, r4, #0
	adds r0, #0x40
	strb r1, [r0]
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x65
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	adds r0, r4, #0
	adds r0, #0x46
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	bl sub_80DAE00
	movs r0, #0
	bl m2_swapwindowbuf
	ldr r4, _080E9A78 @ =gWindowPointers
	ldr r0, [r4]
	bl sub_80CA904
	ldr r0, [r4, #0x18]
	bl sub_80CA904
	mov r2, sp
	ldr r1, _080E9A7C @ =tile_offset
	ldr r7, _080E9A80 @ =0x000001DF
	adds r0, r7, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _080E9A84 @ =palette_mask
	ldrh r1, [r1]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080E9A88 @ =0x040000D4
	str r2, [r1]
	ldr r0, _080E9A8C @ =gUnknown_03005270
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _080E9A90 @ =0x81000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, [r4, #8]
	ldr r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080E9A94 @ =gUnknown_080605B2
	bl sub_80DB168
	adds r1, r6, #0
	adds r1, #0x54
	movs r0, #2
	strh r0, [r1]
	bl sub_80D1B8C
	b _080E9B2C
	.align 2, 0
_080E9A68: .4byte gUnknown_02020C70
_080E9A6C: .4byte gUnknown_03001D54
_080E9A70: .4byte gUnknown_0300535C
_080E9A74: .4byte gUnknown_03005390
_080E9A78: .4byte gWindowPointers
_080E9A7C: .4byte tile_offset
_080E9A80: .4byte 0x000001DF
_080E9A84: .4byte palette_mask
_080E9A88: .4byte 0x040000D4
_080E9A8C: .4byte gUnknown_03005270
_080E9A90: .4byte 0x81000100
_080E9A94: .4byte gUnknown_080605B2
_080E9A98:
	movs r0, #1
	strh r0, [r4, #0x32]
	adds r1, r3, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x36]
	strh r0, [r2]
_080E9AA6:
	ldr r1, _080E9AC8 @ =gUnknown_02024860
	adds r3, r1, #0
	adds r3, #0x52
	ldrh r0, [r3]
	adds r0, #1
	movs r2, #0
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r1, #0
	cmp r0, #5
	bgt _080E9ACC
	adds r0, r1, #0
	adds r0, #0x54
	strh r2, [r0]
	b _080E995C
	.align 2, 0
_080E9AC8: .4byte gUnknown_02024860
_080E9ACC:
	adds r0, r1, #0
	adds r0, #0x54
	strh r2, [r0]
	strh r2, [r3]
_080E9AD4:
	movs r0, #1
	b _080E9B2E
_080E9AD8:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r0, #0x94
	muls r2, r0, r2
	ldr r0, _080E9B24 @ =gUnknown_02020C70
	adds r2, r2, r0
	adds r0, r2, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _080E9B28 @ =gUnknown_03001D54
	adds r4, r1, r0
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x40
	adds r2, #0x5f
_080E9AFC:
	adds r1, r5, r3
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #7
	bls _080E9AFC
	adds r1, r4, #0
	adds r1, #0x44
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E9B1C
	movs r0, #1
	strb r0, [r1]
_080E9B1C:
	bl sub_80D6844
	b _080E9AA6
	.align 2, 0
_080E9B24: .4byte gUnknown_02020C70
_080E9B28: .4byte gUnknown_03001D54
_080E9B2C:
	movs r0, #0
_080E9B2E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80E9B38
sub_80E9B38: @ 0x080E9B38
	push {r4, lr}
	movs r2, #0
	ldr r4, _080E9B98 @ =gUnknown_02020C70
_080E9B3E:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	adds r1, r0, r4
	adds r0, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9B84
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9B84
	adds r0, r1, #0
	adds r0, #0x5d
	ldrb r3, [r0]
	cmp r3, #0
	bne _080E9B84
	adds r0, #1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r1, r0, r1
	ldr r0, _080E9B9C @ =gUnknown_03001D54
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x46
	strb r3, [r0]
	subs r0, #2
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
	subs r0, #1
	strb r3, [r0]
_080E9B84:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080E9B3E
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9B98: .4byte gUnknown_02020C70
_080E9B9C: .4byte gUnknown_03001D54

	thumb_func_start sub_80E9BA0
sub_80E9BA0: @ 0x080E9BA0
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x4a
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080E9BBC
	subs r0, r2, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080E9BBE
_080E9BBC:
	movs r1, #0
_080E9BBE:
	adds r0, r3, #0
	bl sub_80E9BF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E9BCC
sub_80E9BCC: @ 0x080E9BCC
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080E9BE8
	subs r0, r2, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080E9BEA
_080E9BE8:
	movs r1, #0
_080E9BEA:
	adds r0, r3, #0
	bl sub_80E9C78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E9BF8
sub_80E9BF8: @ 0x080E9BF8
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0x4c
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	ble _080E9C10
	ldrh r4, [r2]
_080E9C10:
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9C68
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9C40
	ldr r2, _080E9C3C @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x4a
	strh r4, [r1]
	adds r0, #0x46
	b _080E9C70
	.align 2, 0
_080E9C3C: .4byte m2_character_info
_080E9C40:
	ldr r0, _080E9C60 @ =m2_character_info
	adds r1, r3, #0
	adds r1, #0x5e
	ldrb r1, [r1]
	lsls r1, r1, #1
	ldr r2, _080E9C64 @ =0x0000022E
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x48
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	strh r4, [r1]
	b _080E9C72
	.align 2, 0
_080E9C60: .4byte m2_character_info
_080E9C64: .4byte 0x0000022E
_080E9C68:
	adds r0, r3, #0
	adds r0, #0x48
	strh r4, [r0]
	adds r0, #2
_080E9C70:
	strh r4, [r0]
_080E9C72:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80E9C78
sub_80E9C78: @ 0x080E9C78
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	adds r2, r3, #0
	adds r2, #0x52
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r1, r0
	ble _080E9C90
	ldrh r4, [r2]
_080E9C90:
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9CC0
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9CC0
	ldr r2, _080E9CBC @ =m2_character_info
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x50
	strh r4, [r1]
	adds r0, #0x4e
	b _080E9CC8
	.align 2, 0
_080E9CBC: .4byte m2_character_info
_080E9CC0:
	adds r0, r3, #0
	adds r0, #0x4e
	strh r4, [r0]
	adds r0, #2
_080E9CC8:
	strh r4, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80E9CD0
sub_80E9CD0: @ 0x080E9CD0
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x50
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080E9CEC
	subs r0, r2, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080E9CEE
_080E9CEC:
	movs r1, #0
_080E9CEE:
	adds r0, r3, #0
	bl sub_80E9C78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E9CFC
sub_80E9CFC: @ 0x080E9CFC
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x4a
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bgt _080E9D18
	subs r0, r2, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	b _080E9D1A
_080E9D18:
	movs r1, #0
_080E9D1A:
	adds r0, r3, #0
	bl sub_80E9BF8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80E9D28
sub_80E9D28: @ 0x080E9D28
	push {r4, r5, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9D98
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	mov r0, ip
	adds r0, #0x5f
	adds r3, r0, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E9D58
	adds r1, r0, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _080E9D98
_080E9D58:
	strb r5, [r3]
	mov r0, ip
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9D8E
	mov r0, ip
	adds r0, #0x42
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #3
	bhi _080E9D8E
	ldr r2, _080E9D94 @ =m2_character_info
	asrs r0, r1, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r4, r1
	adds r2, #0x54
	adds r1, r1, r2
	strb r5, [r1]
	bl sub_80D6AF8
	bl sub_80D42F8
	bl sub_80D4078
_080E9D8E:
	movs r0, #1
	b _080E9D9A
	.align 2, 0
_080E9D94: .4byte m2_character_info
_080E9D98:
	movs r0, #0
_080E9D9A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80E9DA0
sub_80E9DA0: @ 0x080E9DA0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080E9DBC @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #0xa
	bls _080E9DB2
	b _080E9EFA
_080E9DB2:
	lsls r0, r0, #2
	ldr r1, _080E9DC0 @ =_080E9DC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E9DBC: .4byte gUnknown_02024860
_080E9DC0: .4byte _080E9DC4
_080E9DC4: @ jump table
	.4byte _080E9DF0 @ case 0
	.4byte _080E9E20 @ case 1
	.4byte _080E9E40 @ case 2
	.4byte _080E9E6C @ case 3
	.4byte _080E9ECC @ case 4
	.4byte _080E9EFA @ case 5
	.4byte _080E9EFA @ case 6
	.4byte _080E9EFA @ case 7
	.4byte _080E9EFA @ case 8
	.4byte _080E9EFA @ case 9
	.4byte _080E9EF0 @ case 10
_080E9DF0:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080E9E14
	ldr r2, _080E9E10 @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080E9E32
	movs r0, #1
	strh r0, [r2, #0x1c]
	b _080E9EFA
	.align 2, 0
_080E9E10: .4byte gUnknown_02024860
_080E9E14:
	ldr r1, _080E9E1C @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1c]
	b _080E9EFA
	.align 2, 0
_080E9E1C: .4byte gUnknown_02024860
_080E9E20:
	bl sub_80E9F08
	ldr r2, _080E9E3C @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E9EFA
_080E9E32:
	movs r0, #0
	strh r0, [r2, #0x2c]
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080E9EFA
	.align 2, 0
_080E9E3C: .4byte gUnknown_02024860
_080E9E40:
	bl sub_80E9F08
	ldr r4, _080E9E8C @ =gUnknown_02024860
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E9EFA
	movs r0, #0
	strh r0, [r4, #0x2c]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_80E23B8
	ldr r1, _080E9E90 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #3
	strh r0, [r4, #0x1c]
_080E9E6C:
	bl sub_80E8E24
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	beq _080E9E98
	ldr r4, _080E9E8C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080E9E94 @ =gUnknown_080601A4
	bl sub_80DB168
	b _080E9EBE
	.align 2, 0
_080E9E8C: .4byte gUnknown_02024860
_080E9E90: .4byte gUnknown_020248E0
_080E9E94: .4byte gUnknown_080601A4
_080E9E98:
	ldr r4, _080E9EC4 @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r4, #0x1c]
	ldr r0, _080E9EC8 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E9EFA
	strh r5, [r4, #0x26]
_080E9EBE:
	movs r0, #0xa
	strh r0, [r4, #0x1c]
	b _080E9EFA
	.align 2, 0
_080E9EC4: .4byte gUnknown_02024860
_080E9EC8: .4byte gUnknown_020248E0
_080E9ECC:
	ldr r0, _080E9F00 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080E9F04 @ =gUnknown_02024860
	movs r0, #0x26
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080E9EFA
	movs r0, #0
	strh r0, [r2, #0x26]
_080E9EF0:
	bl sub_80EA068
	ldr r1, _080E9F04 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080E9EFA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E9F00: .4byte gUnknown_020248E0
_080E9F04: .4byte gUnknown_02024860

	thumb_func_start sub_80E9F08
sub_80E9F08: @ 0x080E9F08
	push {r4, r5, lr}
	ldr r0, _080E9F24 @ =gUnknown_02024860
	movs r2, #0x2c
	ldrsh r1, [r0, r2]
	adds r5, r0, #0
	cmp r1, #4
	bls _080E9F18
	b _080EA03C
_080E9F18:
	lsls r0, r1, #2
	ldr r1, _080E9F28 @ =_080E9F2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E9F24: .4byte gUnknown_02024860
_080E9F28: .4byte _080E9F2C
_080E9F2C: @ jump table
	.4byte _080E9F40 @ case 0
	.4byte _080E9F96 @ case 1
	.4byte _080E9FE4 @ case 2
	.4byte _080E9FFC @ case 3
	.4byte _080EA030 @ case 4
_080E9F40:
	ldr r0, _080E9F74 @ =gUnknown_020248E0
	ldr r3, _080E9F78 @ =0x00000754
	adds r0, r0, r3
	movs r4, #1
	strh r4, [r0]
	ldr r0, _080E9F7C @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_80DB03C
	ldr r2, _080E9F80 @ =gUnknown_08B204E4
	ldr r0, _080E9F84 @ =gUnknown_03005378
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	cmp r0, #3
	beq _080E9F90
_080E9F6C:
	ldr r1, _080E9F88 @ =gUnknown_02024860
	ldr r0, _080E9F8C @ =0x0000FFFF
	strh r0, [r1, #0x2c]
	b _080EA03C
	.align 2, 0
_080E9F74: .4byte gUnknown_020248E0
_080E9F78: .4byte 0x00000754
_080E9F7C: .4byte gUnknown_0300538C
_080E9F80: .4byte gUnknown_08B204E4
_080E9F84: .4byte gUnknown_03005378
_080E9F88: .4byte gUnknown_02024860
_080E9F8C: .4byte 0x0000FFFF
_080E9F90:
	ldr r0, _080E9FAC @ =gUnknown_02024860
	strh r4, [r0, #0x2c]
	adds r5, r0, #0
_080E9F96:
	ldr r0, _080E9FB0 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r1, [r0]
	cmp r1, #1
	beq _080E9FB8
	cmp r1, #2
	beq _080E9FD0
	ldr r0, _080E9FB4 @ =0x0000FFFF
	strh r0, [r5, #0x2c]
	b _080EA03C
	.align 2, 0
_080E9FAC: .4byte gUnknown_02024860
_080E9FB0: .4byte gUnknown_03005390
_080E9FB4: .4byte 0x0000FFFF
_080E9FB8:
	ldr r0, [r5]
	movs r4, #2
	orrs r0, r4
	str r0, [r5]
	ldr r0, _080E9FCC @ =gUnknown_08060A5D
	bl sub_80DB168
	strh r4, [r5, #0x2c]
	b _080EA03C
	.align 2, 0
_080E9FCC: .4byte gUnknown_08060A5D
_080E9FD0:
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080E9FE0 @ =gUnknown_08060A85
	bl sub_80DB168
	movs r0, #3
	b _080EA032
	.align 2, 0
_080E9FE0: .4byte gUnknown_08060A85
_080E9FE4:
	ldr r0, _080E9FF4 @ =gUnknown_020248E0
	ldr r1, _080E9FF8 @ =0x00000756
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
	bl sub_80EA044
	b _080E9F6C
	.align 2, 0
_080E9FF4: .4byte gUnknown_020248E0
_080E9FF8: .4byte 0x00000756
_080E9FFC:
	ldr r2, _080EA028 @ =gUnknown_03005390
	ldr r1, [r2]
	adds r1, #0x67
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080EA030
	ldr r0, [r2]
	adds r0, #0x65
	strb r1, [r0]
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080EA02C @ =gUnknown_08060A1C
	bl sub_80DB168
	movs r0, #4
	b _080EA032
	.align 2, 0
_080EA028: .4byte gUnknown_03005390
_080EA02C: .4byte gUnknown_08060A1C
_080EA030:
	ldr r0, _080EA038 @ =0x0000FFFF
_080EA032:
	strh r0, [r5, #0x2c]
	movs r0, #1
	b _080EA03E
	.align 2, 0
_080EA038: .4byte 0x0000FFFF
_080EA03C:
	movs r0, #0
_080EA03E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80EA044
sub_80EA044: @ 0x080EA044
	push {lr}
	ldr r2, _080EA060 @ =gUnknown_0300538C
	ldr r3, [r2]
	ldr r1, _080EA064 @ =gUnknown_03005390
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	movs r0, #0
	bl sub_80DB04C
	bl sub_80DAE00
	pop {r0}
	bx r0
	.align 2, 0
_080EA060: .4byte gUnknown_0300538C
_080EA064: .4byte gUnknown_03005390

	thumb_func_start sub_80EA068
sub_80EA068: @ 0x080EA068
	push {r4, r5, lr}
	ldr r1, _080EA0B4 @ =gUnknown_020248E0
	ldr r2, _080EA0B8 @ =0x00000754
	adds r0, r1, r2
	movs r5, #0
	strh r5, [r0]
	ldr r0, _080EA0BC @ =0x00000756
	adds r4, r1, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080EA0D2
	bl sub_80EA044
	ldr r2, _080EA0C0 @ =gUnknown_03005390
	ldr r1, [r2]
	adds r1, #0x67
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080EA0D0
	ldr r0, [r2]
	adds r0, #0x65
	movs r1, #0
	strb r1, [r0]
	ldr r4, _080EA0C4 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA0C8 @ =gUnknown_08060A1C
	bl sub_80DB168
	ldr r0, _080EA0CC @ =sub_80EA0DC
	str r0, [r4, #0x6c]
	b _080EA0D2
	.align 2, 0
_080EA0B4: .4byte gUnknown_020248E0
_080EA0B8: .4byte 0x00000754
_080EA0BC: .4byte 0x00000756
_080EA0C0: .4byte gUnknown_03005390
_080EA0C4: .4byte gUnknown_02024860
_080EA0C8: .4byte gUnknown_08060A1C
_080EA0CC: .4byte sub_80EA0DC
_080EA0D0:
	strh r5, [r4]
_080EA0D2:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EA0DC
sub_80EA0DC: @ 0x080EA0DC
	ldr r0, _080EA0F0 @ =gUnknown_020248E0
	ldr r1, _080EA0F4 @ =0x00000756
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080EA0F8 @ =gUnknown_02024860
	str r1, [r0, #0x6c]
	movs r0, #0
	bx lr
	.align 2, 0
_080EA0F0: .4byte gUnknown_020248E0
_080EA0F4: .4byte 0x00000756
_080EA0F8: .4byte gUnknown_02024860

	thumb_func_start sub_80EA0FC
sub_80EA0FC: @ 0x080EA0FC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080EA118 @ =gUnknown_02024860
	movs r0, #0x1e
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080EA14C
	cmp r4, #1
	bgt _080EA11C
	cmp r4, #0
	beq _080EA126
	b _080EA1D8
	.align 2, 0
_080EA118: .4byte gUnknown_02024860
_080EA11C:
	cmp r4, #2
	beq _080EA164
	cmp r4, #3
	beq _080EA1A8
	b _080EA1D8
_080EA126:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA146
	movs r2, #0x2c
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA140
	strh r4, [r5, #0x2c]
	b _080EA1D4
_080EA140:
	movs r0, #1
	strh r0, [r5, #0x1e]
	b _080EA1D8
_080EA146:
	movs r0, #2
	strh r0, [r5, #0x1e]
	b _080EA1D8
_080EA14C:
	bl sub_80E9F08
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA1D8
	movs r0, #0
	strh r0, [r5, #0x2c]
	strh r4, [r5, #0x1a]
	b _080EA1D8
_080EA164:
	bl sub_80E9F08
	movs r2, #0x2c
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA1D8
	movs r0, #0
	strh r0, [r5, #0x2c]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E2434
	ldr r1, _080EA1A0 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _080EA1A4 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x7c
	ldrb r1, [r1]
	bl sub_80E8634
	movs r0, #3
	strh r0, [r5, #0x1e]
	b _080EA1D8
	.align 2, 0
_080EA1A0: .4byte gUnknown_020248E0
_080EA1A4: .4byte gUnknown_03005390
_080EA1A8:
	ldr r0, _080EA1E0 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, _080EA1E4 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x7c
	ldrb r1, [r1]
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA1D8
	movs r0, #0
	strh r0, [r5, #0x26]
	bl sub_80EA068
_080EA1D4:
	movs r0, #1
	strh r0, [r5, #0x1a]
_080EA1D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EA1E0: .4byte gUnknown_020248E0
_080EA1E4: .4byte gUnknown_03005390

	thumb_func_start sub_80EA1E8
sub_80EA1E8: @ 0x080EA1E8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _080EA204 @ =gUnknown_02024860
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	cmp r0, #5
	bls _080EA1FA
	b _080EA362
_080EA1FA:
	lsls r0, r0, #2
	ldr r1, _080EA208 @ =_080EA20C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EA204: .4byte gUnknown_02024860
_080EA208: .4byte _080EA20C
_080EA20C: @ jump table
	.4byte _080EA224 @ case 0
	.4byte _080EA23C @ case 1
	.4byte _080EA26C @ case 2
	.4byte _080EA28C @ case 3
	.4byte _080EA2D8 @ case 4
	.4byte _080EA358 @ case 5
_080EA224:
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA230
	b _080EA35C
_080EA230:
	ldr r1, _080EA238 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
	b _080EA362
	.align 2, 0
_080EA238: .4byte gUnknown_02024860
_080EA23C:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA260
	ldr r2, _080EA25C @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080EA27E
	movs r0, #2
	strh r0, [r2, #0x1c]
	b _080EA362
	.align 2, 0
_080EA25C: .4byte gUnknown_02024860
_080EA260:
	ldr r1, _080EA268 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x1c]
	b _080EA362
	.align 2, 0
_080EA268: .4byte gUnknown_02024860
_080EA26C:
	bl sub_80E9F08
	ldr r2, _080EA288 @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA362
_080EA27E:
	movs r0, #0
	strh r0, [r2, #0x2c]
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _080EA362
	.align 2, 0
_080EA288: .4byte gUnknown_02024860
_080EA28C:
	bl sub_80E9F08
	ldr r4, _080EA2CC @ =gUnknown_02024860
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA362
	movs r0, #0
	strh r0, [r4, #0x2c]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	bl sub_80E2434
	ldr r1, _080EA2D0 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r1, _080EA2D4 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x7a
	ldrb r1, [r1]
	bl sub_80E8634
	movs r0, #4
	strh r0, [r4, #0x1c]
	b _080EA362
	.align 2, 0
_080EA2CC: .4byte gUnknown_02024860
_080EA2D0: .4byte gUnknown_020248E0
_080EA2D4: .4byte gUnknown_03005390
_080EA2D8:
	ldr r0, _080EA348 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r6, r0, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	ldr r5, _080EA34C @ =gUnknown_03005390
	ldr r1, [r5]
	adds r1, #0x7c
	ldrb r1, [r1]
	bl sub_80E8634
	ldr r4, _080EA350 @ =gUnknown_02024860
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA362
	movs r0, #0
	strh r0, [r4, #0x26]
	ldr r0, [r5]
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080EA358
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _080EA358
	movs r0, #0x64
	bl sub_80E2394
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bgt _080EA358
	ldr r0, [r5]
	movs r1, #2
	movs r2, #4
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA358
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA354 @ =gUnknown_0806052B
	bl sub_80DB168
	movs r0, #5
	strh r0, [r4, #0x1c]
	b _080EA362
	.align 2, 0
_080EA348: .4byte gUnknown_020248E0
_080EA34C: .4byte gUnknown_03005390
_080EA350: .4byte gUnknown_02024860
_080EA354: .4byte gUnknown_0806052B
_080EA358:
	bl sub_80EA068
_080EA35C:
	ldr r1, _080EA368 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080EA362:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EA368: .4byte gUnknown_02024860

	thumb_func_start sub_80EA36C
sub_80EA36C: @ 0x080EA36C
	push {lr}
	ldr r0, _080EA380 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA384
	movs r0, #0
	b _080EA396
	.align 2, 0
_080EA380: .4byte gUnknown_03005390
_080EA384:
	ldr r2, _080EA39C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EA3A0 @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
_080EA396:
	pop {r1}
	bx r1
	.align 2, 0
_080EA39C: .4byte gUnknown_02024860
_080EA3A0: .4byte gUnknown_080601A4

	thumb_func_start sub_80EA3A4
sub_80EA3A4: @ 0x080EA3A4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _080EA3C8 @ =gUnknown_02024860
	movs r3, #0x1e
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0x29
	bls _080EA3BC
	b _080EA744
_080EA3BC:
	lsls r0, r1, #2
	ldr r1, _080EA3CC @ =_080EA3D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EA3C8: .4byte gUnknown_02024860
_080EA3CC: .4byte _080EA3D0
_080EA3D0: @ jump table
	.4byte _080EA478 @ case 0
	.4byte _080EA4C6 @ case 1
	.4byte _080EA4E4 @ case 2
	.4byte _080EA4FE @ case 3
	.4byte _080EA5D8 @ case 4
	.4byte _080EA648 @ case 5
	.4byte _080EA690 @ case 6
	.4byte _080EA6BC @ case 7
	.4byte _080EA6E2 @ case 8
	.4byte _080EA70C @ case 9
	.4byte _080EA744 @ case 10
	.4byte _080EA744 @ case 11
	.4byte _080EA744 @ case 12
	.4byte _080EA744 @ case 13
	.4byte _080EA744 @ case 14
	.4byte _080EA744 @ case 15
	.4byte _080EA744 @ case 16
	.4byte _080EA744 @ case 17
	.4byte _080EA744 @ case 18
	.4byte _080EA744 @ case 19
	.4byte _080EA744 @ case 20
	.4byte _080EA744 @ case 21
	.4byte _080EA744 @ case 22
	.4byte _080EA744 @ case 23
	.4byte _080EA744 @ case 24
	.4byte _080EA744 @ case 25
	.4byte _080EA744 @ case 26
	.4byte _080EA744 @ case 27
	.4byte _080EA744 @ case 28
	.4byte _080EA744 @ case 29
	.4byte _080EA744 @ case 30
	.4byte _080EA744 @ case 31
	.4byte _080EA744 @ case 32
	.4byte _080EA744 @ case 33
	.4byte _080EA744 @ case 34
	.4byte _080EA744 @ case 35
	.4byte _080EA744 @ case 36
	.4byte _080EA744 @ case 37
	.4byte _080EA744 @ case 38
	.4byte _080EA744 @ case 39
	.4byte _080EA744 @ case 40
	.4byte _080EA634 @ case 41
_080EA478:
	ldr r0, _080EA4D4 @ =gUnknown_020248E0
	ldr r4, _080EA4D8 @ =0x0000092E
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
	adds r5, r0, #0
_080EA484:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80E2748
	cmp r0, #0
	beq _080EA498
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
_080EA498:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080EA484
	ldr r3, _080EA4D4 @ =gUnknown_020248E0
	ldr r0, _080EA4D8 @ =0x0000092E
	adds r2, r3, r0
	ldrh r0, [r2]
	lsls r1, r0, #6
	strh r1, [r2]
	lsls r0, r0, #0x16
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080EA4BC
	movs r0, #0xff
	strh r0, [r2]
_080EA4BC:
	ldr r1, _080EA4DC @ =0x00000934
	adds r0, r3, r1
	ldr r1, _080EA4E0 @ =gUnknown_0300534C
	ldr r1, [r1]
	str r1, [r0]
_080EA4C6:
	ldr r0, _080EA4D4 @ =gUnknown_020248E0
	movs r2, #0x93
	lsls r2, r2, #4
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0]
	b _080EA4FE
	.align 2, 0
_080EA4D4: .4byte gUnknown_020248E0
_080EA4D8: .4byte 0x0000092E
_080EA4DC: .4byte 0x00000934
_080EA4E0: .4byte gUnknown_0300534C
_080EA4E4:
	ldr r0, _080EA574 @ =gUnknown_020248E0
	movs r4, #0x93
	lsls r4, r4, #4
	adds r0, r0, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080EA4FA
	b _080EA744
_080EA4FA:
	movs r0, #0
	strh r0, [r3, #0x2c]
_080EA4FE:
	ldr r4, _080EA578 @ =gUnknown_0300534C
	ldr r0, _080EA574 @ =gUnknown_020248E0
	ldr r1, _080EA57C @ =0x00000934
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	bl sub_80DD784
	ldr r0, [r4]
	cmp r0, #0
	bne _080EA516
	b _080EA744
_080EA516:
	bl sub_80E26BC
	str r0, [r4]
	movs r5, #0
_080EA51E:
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80E2748
	cmp r0, #0
	bne _080EA538
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080EA51E
_080EA538:
	ldr r2, _080EA580 @ =gUnknown_03005390
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x94
	muls r0, r1, r0
	ldr r1, _080EA584 @ =gUnknown_02020C70
	adds r0, r0, r1
	str r0, [r2]
	bl sub_80DAE00
	ldr r0, _080EA574 @ =gUnknown_020248E0
	ldr r2, _080EA588 @ =0x0000092E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA5B4
	cmp r6, #0x78
	bne _080EA594
	ldr r2, _080EA58C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EA590 @ =gUnknown_0805CEDF
	bl sub_80DB168
	b _080EA5A4
	.align 2, 0
_080EA574: .4byte gUnknown_020248E0
_080EA578: .4byte gUnknown_0300534C
_080EA57C: .4byte 0x00000934
_080EA580: .4byte gUnknown_03005390
_080EA584: .4byte gUnknown_02020C70
_080EA588: .4byte 0x0000092E
_080EA58C: .4byte gUnknown_02024860
_080EA590: .4byte gUnknown_0805CEDF
_080EA594:
	ldr r2, _080EA5AC @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EA5B0 @ =gUnknown_0805CEF7
	bl sub_80DB168
_080EA5A4:
	ldr r1, _080EA5AC @ =gUnknown_02024860
	movs r0, #4
	strh r0, [r1, #0x1e]
	b _080EA750
	.align 2, 0
_080EA5AC: .4byte gUnknown_02024860
_080EA5B0: .4byte gUnknown_0805CEF7
_080EA5B4:
	ldr r4, _080EA5CC @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA5D0 @ =gUnknown_0805CF17
	bl sub_80DB168
	ldr r0, _080EA5D4 @ =sub_80EA760
	str r0, [r4, #0x6c]
	b _080EA750
	.align 2, 0
_080EA5CC: .4byte gUnknown_02024860
_080EA5D0: .4byte gUnknown_0805CF17
_080EA5D4: .4byte sub_80EA760
_080EA5D8:
	bl sub_80EF7E4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA5E4
	b _080EA750
_080EA5E4:
	ldr r4, _080EA628 @ =gUnknown_02024860
	movs r2, #0
	movs r0, #5
	strh r0, [r4, #0x1e]
	ldr r1, _080EA62C @ =gUnknown_03005390
	ldr r0, [r1]
	adds r0, #0x91
	strb r2, [r0]
	ldr r1, [r1]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA648
	adds r0, r1, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xc5
	bl sub_80EC414
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA648
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA630 @ =gUnknown_08060AE4
	bl sub_80DB168
	movs r0, #0x29
	strh r0, [r4, #0x1e]
	b _080EA750
	.align 2, 0
_080EA628: .4byte gUnknown_02024860
_080EA62C: .4byte gUnknown_03005390
_080EA630: .4byte gUnknown_08060AE4
_080EA634:
	ldr r0, _080EA674 @ =gUnknown_020248E0
	ldr r4, _080EA678 @ =0x00000756
	adds r0, r0, r4
	movs r1, #1
	strh r1, [r0]
	bl sub_80EA044
	ldr r1, _080EA67C @ =gUnknown_02024860
	movs r0, #5
	strh r0, [r1, #0x1e]
_080EA648:
	ldr r0, _080EA680 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x65
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080EA662
	adds r1, #0x67
	movs r0, #1
	strb r0, [r1]
_080EA662:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EA684
	ldr r1, _080EA67C @ =gUnknown_02024860
	movs r0, #6
	strh r0, [r1, #0x1e]
	b _080EA750
	.align 2, 0
_080EA674: .4byte gUnknown_020248E0
_080EA678: .4byte 0x00000756
_080EA67C: .4byte gUnknown_02024860
_080EA680: .4byte gUnknown_03005390
_080EA684:
	ldr r1, _080EA68C @ =gUnknown_02024860
	movs r0, #8
	strh r0, [r1, #0x1e]
	b _080EA750
	.align 2, 0
_080EA68C: .4byte gUnknown_02024860
_080EA690:
	bl sub_80E9F08
	ldr r4, _080EA704 @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA750
	movs r0, #0
	strh r0, [r4, #0x2c]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E23B8
	ldr r1, _080EA708 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r0, #7
	strh r0, [r4, #0x1e]
_080EA6BC:
	ldr r0, _080EA708 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080EA704 @ =gUnknown_02024860
	movs r0, #0x26
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA750
	movs r0, #0
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
_080EA6E2:
	bl sub_80E9F08
	ldr r4, _080EA704 @ =gUnknown_02024860
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA750
	movs r0, #0
	strh r0, [r4, #0x2c]
	bl sub_80EA068
	movs r0, #9
	strh r0, [r4, #0x1e]
	b _080EA750
	.align 2, 0
_080EA704: .4byte gUnknown_02024860
_080EA708: .4byte gUnknown_020248E0
_080EA70C:
	movs r0, #0
	bl sub_80E27D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA744
	movs r0, #1
	bl sub_80E27D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA744
	ldr r1, _080EA73C @ =gUnknown_020248E0
	movs r3, #0x93
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _080EA740 @ =gUnknown_02024860
	movs r0, #2
	strh r0, [r1, #0x1e]
	b _080EA750
	.align 2, 0
_080EA73C: .4byte gUnknown_020248E0
_080EA740: .4byte gUnknown_02024860
_080EA744:
	ldr r1, _080EA758 @ =gUnknown_0300534C
	movs r0, #0
	str r0, [r1]
	ldr r1, _080EA75C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
_080EA750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EA758: .4byte gUnknown_0300534C
_080EA75C: .4byte gUnknown_02024860

	thumb_func_start sub_80EA760
sub_80EA760: @ 0x080EA760
	push {r4, lr}
	ldr r4, _080EA784 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA788 @ =gUnknown_08060E3F
	bl sub_80DB168
	movs r1, #0
	movs r0, #9
	strh r0, [r4, #0x1e]
	str r1, [r4, #0x6c]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080EA784: .4byte gUnknown_02024860
_080EA788: .4byte gUnknown_08060E3F

	thumb_func_start sub_80EA78C
sub_80EA78C: @ 0x080EA78C
	push {r4, lr}
	ldr r1, _080EA7A4 @ =gUnknown_02024860
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r1, #0
	cmp r0, #4
	bhi _080EA87C
	lsls r0, r0, #2
	ldr r1, _080EA7A8 @ =_080EA7AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EA7A4: .4byte gUnknown_02024860
_080EA7A8: .4byte _080EA7AC
_080EA7AC: @ jump table
	.4byte _080EA7C0 @ case 0
	.4byte _080EA7E0 @ case 1
	.4byte _080EA804 @ case 2
	.4byte _080EA828 @ case 3
	.4byte _080EA870 @ case 4
_080EA7C0:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA7D4
	ldr r1, _080EA7D0 @ =gUnknown_02024860
	movs r0, #1
	b _080EA87E
	.align 2, 0
_080EA7D0: .4byte gUnknown_02024860
_080EA7D4:
	ldr r1, _080EA7DC @ =gUnknown_02024860
	movs r0, #2
	b _080EA83E
	.align 2, 0
_080EA7DC: .4byte gUnknown_02024860
_080EA7E0:
	bl sub_80E9F08
	ldr r2, _080EA7FC @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA880
	movs r0, #0
	strh r0, [r2, #0x2c]
	ldr r0, _080EA800 @ =0x0000FFFF
	strh r0, [r2, #0x2e]
	b _080EA880
	.align 2, 0
_080EA7FC: .4byte gUnknown_02024860
_080EA800: .4byte 0x0000FFFF
_080EA804:
	bl sub_80E9F08
	ldr r2, _080EA81C @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080EA820
	movs r0, #1
	b _080EA882
	.align 2, 0
_080EA81C: .4byte gUnknown_02024860
_080EA820:
	movs r0, #0
	strh r0, [r2, #0x2c]
	movs r0, #3
	strh r0, [r2, #0x2e]
_080EA828:
	ldr r0, _080EA844 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x7b
	ldrb r0, [r0]
	bl sub_80E24B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA850
	ldr r1, _080EA848 @ =gUnknown_02024860
	ldr r0, _080EA84C @ =0x0000FFFF
_080EA83E:
	strh r0, [r1, #0x2e]
	movs r0, #1
	b _080EA882
	.align 2, 0
_080EA844: .4byte gUnknown_03005390
_080EA848: .4byte gUnknown_02024860
_080EA84C: .4byte 0x0000FFFF
_080EA850:
	ldr r4, _080EA868 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EA86C @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #4
	strh r0, [r4, #0x2e]
	b _080EA880
	.align 2, 0
_080EA868: .4byte gUnknown_02024860
_080EA86C: .4byte gUnknown_080601A4
_080EA870:
	ldr r0, _080EA878 @ =0x0000FFFF
	strh r0, [r2, #0x2e]
	b _080EA880
	.align 2, 0
_080EA878: .4byte 0x0000FFFF
_080EA87C:
	ldr r0, _080EA888 @ =0x0000FFFF
_080EA87E:
	strh r0, [r1, #0x2e]
_080EA880:
	movs r0, #0
_080EA882:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080EA888: .4byte 0x0000FFFF

	thumb_func_start sub_80EA88C
sub_80EA88C: @ 0x080EA88C
	push {lr}
	ldr r2, _080EA8B4 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EA8B8 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #3
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA8C0
	ldr r0, _080EA8BC @ =gUnknown_0806057E
	bl sub_80DB168
	b _080EA8C6
	.align 2, 0
_080EA8B4: .4byte gUnknown_02024860
_080EA8B8: .4byte gUnknown_03005390
_080EA8BC: .4byte gUnknown_0806057E
_080EA8C0:
	ldr r0, _080EA8CC @ =gUnknown_080601A4
	bl sub_80DB168
_080EA8C6:
	pop {r0}
	bx r0
	.align 2, 0
_080EA8CC: .4byte gUnknown_080601A4

	thumb_func_start sub_80EA8D0
sub_80EA8D0: @ 0x080EA8D0
	push {lr}
	ldr r2, _080EA8F4 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EA8F8 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r2, #2
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA900
	ldr r0, _080EA8FC @ =gUnknown_080604F1
	bl sub_80DB168
	b _080EA906
	.align 2, 0
_080EA8F4: .4byte gUnknown_02024860
_080EA8F8: .4byte gUnknown_03005390
_080EA8FC: .4byte gUnknown_080604F1
_080EA900:
	ldr r0, _080EA90C @ =gUnknown_080601A4
	bl sub_80DB168
_080EA906:
	pop {r0}
	bx r0
	.align 2, 0
_080EA90C: .4byte gUnknown_080601A4

	thumb_func_start sub_80EA910
sub_80EA910: @ 0x080EA910
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, _080EA928 @ =gUnknown_02024860
	movs r2, #0x30
	ldrsh r0, [r6, r2]
	cmp r0, #0
	beq _080EA92C
	cmp r0, #1
	beq _080EA9B4
	b _080EA9B8
	.align 2, 0
_080EA928: .4byte gUnknown_02024860
_080EA92C:
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _080EA9A2
	adds r0, r5, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080EA994
	lsls r4, r1, #0x10
	lsrs r7, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x4a
	asrs r4, r4, #0x10
	ldrh r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_80E9BF8
	adds r0, r5, #0
	adds r0, #0x4c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r4, r0
	blt _080EA97C
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080EA978 @ =gUnknown_08060301
	bl sub_80DB168
	b _080EA9A2
	.align 2, 0
_080EA978: .4byte gUnknown_08060301
_080EA97C:
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080EA990 @ =gUnknown_0806031B
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
	b _080EA9A2
	.align 2, 0
_080EA990: .4byte gUnknown_0806031B
_080EA994:
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080EA9AC @ =gUnknown_080601D0
	bl sub_80DB168
_080EA9A2:
	ldr r1, _080EA9B0 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x30]
	b _080EA9B8
	.align 2, 0
_080EA9AC: .4byte gUnknown_080601D0
_080EA9B0: .4byte gUnknown_02024860
_080EA9B4:
	ldr r0, _080EA9C0 @ =0x0000FFFF
	strh r0, [r6, #0x30]
_080EA9B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EA9C0: .4byte 0x0000FFFF

	thumb_func_start sub_80EA9C4
sub_80EA9C4: @ 0x080EA9C4
	push {lr}
	ldr r0, _080EA9F0 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	bl sub_80EA910
	ldr r2, _080EA9F4 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EA9EA
	movs r0, #1
	strh r0, [r2, #0x1a]
_080EA9EA:
	pop {r0}
	bx r0
	.align 2, 0
_080EA9F0: .4byte gUnknown_03005390
_080EA9F4: .4byte gUnknown_02024860

	thumb_func_start sub_80EA9F8
sub_80EA9F8: @ 0x080EA9F8
	push {lr}
	ldr r0, _080EAA24 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x4c
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x13
	bl sub_80EA910
	ldr r2, _080EAA28 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EAA1E
	movs r0, #1
	strh r0, [r2, #0x1a]
_080EAA1E:
	pop {r0}
	bx r0
	.align 2, 0
_080EAA24: .4byte gUnknown_03005390
_080EAA28: .4byte gUnknown_02024860

	thumb_func_start sub_80EAA2C
sub_80EAA2C: @ 0x080EAA2C
	push {lr}
	ldr r0, _080EAA60 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x4c
	ldr r1, _080EAA64 @ =gUnknown_0300538C
	ldr r2, [r1]
	adds r2, #0x4a
	ldrh r1, [r3]
	ldrh r2, [r2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80EA910
	ldr r2, _080EAA68 @ =gUnknown_02024860
	movs r0, #0x30
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EAA5C
	movs r0, #1
	strh r0, [r2, #0x1a]
_080EAA5C:
	pop {r0}
	bx r0
	.align 2, 0
_080EAA60: .4byte gUnknown_03005390
_080EAA64: .4byte gUnknown_0300538C
_080EAA68: .4byte gUnknown_02024860

	thumb_func_start sub_80EAA6C
sub_80EAA6C: @ 0x080EAA6C
	push {r4, lr}
	movs r1, #0
	ldr r4, _080EAA80 @ =gUnknown_02024860
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080EAA84
	cmp r0, #1
	beq _080EAA98
	b _080EAAB6
	.align 2, 0
_080EAA80: .4byte gUnknown_02024860
_080EAA84:
	movs r0, #5
	bl sub_80E23B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080EAA94
	movs r1, #1
_080EAA94:
	movs r0, #1
	strh r0, [r4, #0x1c]
_080EAA98:
	ldr r0, _080EAABC @ =gUnknown_03005390
	ldr r0, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80EAAC4
	ldr r2, _080EAAC0 @ =gUnknown_02024860
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EAAB6
	movs r0, #1
	strh r0, [r2, #0x1a]
_080EAAB6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAABC: .4byte gUnknown_03005390
_080EAAC0: .4byte gUnknown_02024860

	thumb_func_start sub_80EAAC4
sub_80EAAC4: @ 0x080EAAC4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _080EAADC @ =gUnknown_02024860
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EAAE0
	cmp r0, #1
	beq _080EAB50
	b _080EAB54
	.align 2, 0
_080EAADC: .4byte gUnknown_02024860
_080EAAE0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #1
	bne _080EAB40
	adds r0, r4, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080EAB40
	adds r3, r4, #0
	adds r3, #0x50
	movs r5, #0
	ldrsh r1, [r3, r5]
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	adds r1, r1, r0
	movs r6, #0x52
	adds r6, r6, r4
	movs r5, #0
	ldrsh r0, [r6, r5]
	cmp r1, r0
	blt _080EAB1A
	ldrh r0, [r6]
	ldrh r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _080EAB1C
_080EAB1A:
	lsrs r5, r2, #0x10
_080EAB1C:
	asrs r1, r2, #0x10
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80E9C78
	ldr r2, _080EAB48 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EAB4C @ =gUnknown_08060336
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_80DB1FC
_080EAB40:
	ldr r1, _080EAB48 @ =gUnknown_02024860
	movs r0, #1
	b _080EAB52
	.align 2, 0
_080EAB48: .4byte gUnknown_02024860
_080EAB4C: .4byte gUnknown_08060336
_080EAB50:
	ldr r0, _080EAB5C @ =0x0000FFFF
_080EAB52:
	strh r0, [r1, #0x32]
_080EAB54:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EAB5C: .4byte 0x0000FFFF

	thumb_func_start sub_80EAB60
sub_80EAB60: @ 0x080EAB60
	push {r4, r5, lr}
	ldr r5, _080EAB74 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080EAB78
	cmp r4, #1
	beq _080EABA2
	b _080EABC0
	.align 2, 0
_080EAB74: .4byte gUnknown_02024860
_080EAB78:
	ldr r0, _080EAB98 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x5f
	ldrb r4, [r0]
	cmp r4, #1
	bne _080EAB9C
	subs r0, #0x13
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_80EABCC
	strh r4, [r5, #0x1c]
	b _080EABC0
	.align 2, 0
_080EAB98: .4byte gUnknown_03005390
_080EAB9C:
	movs r0, #1
	strh r0, [r5, #0x1a]
	b _080EABC0
_080EABA2:
	ldr r0, _080EABC8 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x4c
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_80EABCC
	movs r3, #0x36
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EABC0
	strh r4, [r5, #0x1a]
_080EABC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EABC8: .4byte gUnknown_03005390

	thumb_func_start sub_80EABCC
sub_80EABCC: @ 0x080EABCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080EABF0 @ =gUnknown_02024860
	movs r2, #0x36
	ldrsh r1, [r0, r2]
	adds r5, r0, #0
	cmp r1, #5
	bls _080EABE6
	b _080EAE06
_080EABE6:
	lsls r0, r1, #2
	ldr r1, _080EABF4 @ =_080EABF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EABF0: .4byte gUnknown_02024860
_080EABF4: .4byte _080EABF8
_080EABF8: @ jump table
	.4byte _080EAC10 @ case 0
	.4byte _080EAC28 @ case 1
	.4byte _080EACF0 @ case 2
	.4byte _080EAD84 @ case 3
	.4byte _080EAD96 @ case 4
	.4byte _080EADF0 @ case 5
_080EAC10:
	ldr r0, [r5]
	movs r1, #2
	orrs r0, r1
	str r0, [r5]
	ldr r0, _080EAC24 @ =gUnknown_080608FB
	bl sub_80DB168
	movs r0, #1
	strh r0, [r5, #0x36]
	b _080EAE06
	.align 2, 0
_080EAC24: .4byte gUnknown_080608FB
_080EAC28:
	adds r0, r4, #0
	adds r0, #0x65
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #0x19
	movs r5, #0
	strh r1, [r0]
	adds r0, #0x15
	movs r3, #1
	mov r8, r3
	mov r1, r8
	strb r1, [r0]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80E9BF8
	adds r0, r4, #0
	adds r0, #0x5c
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080EACCE
	ldr r2, _080EACE0 @ =m2_character_info
	adds r3, r4, #0
	adds r3, #0x5e
	ldrb r0, [r3]
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x46
	strh r7, [r0]
	ldrb r0, [r3]
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x4a
	mov r7, r8
	strh r7, [r0]
	ldrb r0, [r3]
	muls r0, r1, r0
	adds r1, r0, r2
	adds r0, r1, #0
	adds r0, #0x5a
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	subs r0, #1
	strb r5, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080EACBC
	ldrb r0, [r3]
	bl sub_80D6AF8
_080EACBC:
	bl sub_80D6844
	ldr r0, _080EACE4 @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080EACCE
	bl sub_80D1D84
_080EACCE:
	ldr r2, _080EACE8 @ =0x0000FFFF
	ldrh r0, [r6]
	cmp r0, #1
	beq _080EACF0
	ldr r1, _080EACEC @ =gUnknown_02024860
	ldrh r0, [r1, #0x36]
	orrs r2, r0
	strh r2, [r1, #0x36]
	b _080EAE06
	.align 2, 0
_080EACE0: .4byte m2_character_info
_080EACE4: .4byte gUnknown_03005344
_080EACE8: .4byte 0x0000FFFF
_080EACEC: .4byte gUnknown_02024860
_080EACF0:
	ldr r1, _080EAE14 @ =gUnknown_02020C70
	movs r2, #0
	adds r3, r4, #0
	adds r3, #0x91
	movs r4, #0
_080EACFA:
	adds r0, r1, #0
	adds r0, #0x91
	strb r4, [r0]
	adds r1, #0x94
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080EACFA
	movs r0, #1
	strb r0, [r3]
	movs r2, #1
	ldr r3, _080EAE18 @ =gUnknown_020251F8
	ldr r7, _080EAE1C @ =0xFFFFF828
	adds r5, r3, r7
	movs r4, #0
_080EAD20:
	ldr r0, [r3]
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	lsls r0, r0, #4
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	strh r4, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xf
	ble _080EAD20
	movs r0, #0xa
	bl sub_80EF7D0
	movs r2, #1
	ldr r5, _080EAE18 @ =gUnknown_020251F8
_080EAD4E:
	ldr r0, [r5]
	adds r0, #0x40
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #4
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x1f
	movs r2, #0x1f
	movs r3, #0x1f
	bl sub_80EF5EC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080EAD4E
	movs r0, #0xa
	bl sub_80E2850
	ldr r1, _080EAE20 @ =gUnknown_02024860
	movs r0, #3
	strh r0, [r1, #0x36]
_080EAD84:
	ldr r1, _080EAE20 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x56
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne _080EAE06
	movs r0, #4
	strh r0, [r1, #0x36]
_080EAD96:
	movs r0, #0x14
	bl sub_80EF7D0
	movs r2, #1
	ldr r6, _080EAE24 @ =gUnknown_020248E0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r7, r6, r0
	movs r5, #0x1f
_080EADA8:
	ldr r1, _080EAE28 @ =0x00000918
	adds r0, r6, r1
	ldr r0, [r0]
	adds r0, #0x40
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #4
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r1
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r3, [r1]
	movs r1, #0x1f
	ands r1, r3
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x15
	ands r2, r5
	lsrs r3, r3, #0x1a
	ands r3, r5
	bl sub_80EF5EC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080EADA8
	movs r0, #0x14
	bl sub_80E2850
	ldr r1, _080EAE20 @ =gUnknown_02024860
	movs r0, #5
	strh r0, [r1, #0x36]
_080EADF0:
	ldr r2, _080EAE20 @ =gUnknown_02024860
	adds r0, r2, #0
	adds r0, #0x56
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r1, #0
	bne _080EAE06
	ldr r0, _080EAE2C @ =gUnknown_03005384
	strh r1, [r0]
	ldr r0, _080EAE30 @ =0x0000FFFF
	strh r0, [r2, #0x36]
_080EAE06:
	movs r0, #1
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080EAE14: .4byte gUnknown_02020C70
_080EAE18: .4byte gUnknown_020251F8
_080EAE1C: .4byte 0xFFFFF828
_080EAE20: .4byte gUnknown_02024860
_080EAE24: .4byte gUnknown_020248E0
_080EAE28: .4byte 0x00000918
_080EAE2C: .4byte gUnknown_03005384
_080EAE30: .4byte 0x0000FFFF

	thumb_func_start sub_80EAE34
sub_80EAE34: @ 0x080EAE34
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EAE76
	ldr r2, _080EAE64 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EAE68 @ =gUnknown_03005390
	ldr r0, [r0]
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EAE70
	ldr r0, _080EAE6C @ =gUnknown_0806059A
	bl sub_80DB168
	b _080EAE76
	.align 2, 0
_080EAE64: .4byte gUnknown_02024860
_080EAE68: .4byte gUnknown_03005390
_080EAE6C: .4byte gUnknown_0806059A
_080EAE70:
	ldr r0, _080EAE80 @ =gUnknown_080601A4
	bl sub_80DB168
_080EAE76:
	ldr r1, _080EAE84 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080EAE80: .4byte gUnknown_080601A4
_080EAE84: .4byte gUnknown_02024860

	thumb_func_start sub_80EAE88
sub_80EAE88: @ 0x080EAE88
	push {lr}
	bl sub_80EA36C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EAECA
	ldr r2, _080EAEB8 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EAEBC @ =gUnknown_03005390
	ldr r0, [r0]
	movs r1, #3
	movs r2, #1
	bl sub_80E9D28
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EAEC4
	ldr r0, _080EAEC0 @ =gUnknown_0806057E
	bl sub_80DB168
	b _080EAECA
	.align 2, 0
_080EAEB8: .4byte gUnknown_02024860
_080EAEBC: .4byte gUnknown_03005390
_080EAEC0: .4byte gUnknown_0806057E
_080EAEC4:
	ldr r0, _080EAED4 @ =gUnknown_080601A4
	bl sub_80DB168
_080EAECA:
	ldr r1, _080EAED8 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	pop {r0}
	bx r0
	.align 2, 0
_080EAED4: .4byte gUnknown_080601A4
_080EAED8: .4byte gUnknown_02024860

	thumb_func_start sub_80EAEDC
sub_80EAEDC: @ 0x080EAEDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080EAF00 @ =gUnknown_02024860
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	cmp r0, #6
	bls _080EAEF6
	b _080EB280
_080EAEF6:
	lsls r0, r0, #2
	ldr r1, _080EAF04 @ =_080EAF08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EAF00: .4byte gUnknown_02024860
_080EAF04: .4byte _080EAF08
_080EAF08: @ jump table
	.4byte _080EAF24 @ case 0
	.4byte _080EAF68 @ case 1
	.4byte _080EAFA0 @ case 2
	.4byte _080EB150 @ case 3
	.4byte _080EB1A4 @ case 4
	.4byte _080EB1FC @ case 5
	.4byte _080EB234 @ case 6
_080EAF24:
	ldr r5, _080EAF5C @ =gUnknown_020248E0
	movs r3, #0x91
	lsls r3, r3, #4
	adds r1, r5, r3
	ldr r4, _080EAF60 @ =0x00000914
	adds r0, r5, r4
	movs r6, #0
	str r6, [r0]
	str r6, [r1]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl sub_80E23B8
	movs r7, #0x92
	lsls r7, r7, #4
	adds r5, r5, r7
	strh r0, [r5]
	ldr r4, _080EAF64 @ =gUnknown_02024860
	strh r6, [r4, #0x26]
	strh r6, [r4, #0x28]
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r4, #0x38]
	b _080EB280
	.align 2, 0
_080EAF5C: .4byte gUnknown_020248E0
_080EAF60: .4byte 0x00000914
_080EAF64: .4byte gUnknown_02024860
_080EAF68:
	ldr r0, _080EAF98 @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080EAF9C @ =gUnknown_02024860
	movs r4, #0x26
	ldrsh r1, [r2, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080EAF8A
	b _080EB280
_080EAF8A:
	movs r0, #0
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x28]
	movs r0, #2
	strh r0, [r2, #0x38]
	b _080EB280
	.align 2, 0
_080EAF98: .4byte gUnknown_020248E0
_080EAF9C: .4byte gUnknown_02024860
_080EAFA0:
	ldr r0, _080EB03C @ =gUnknown_03005390
	ldr r3, [r0]
	adds r1, r3, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	mov sl, r0
	cmp r1, #0
	bne _080EB054
	movs r5, #0
	ldr r0, _080EB040 @ =gUnknown_03005350
	ldrb r2, [r0]
	adds r3, #0x42
	movs r7, #0
	ldrsh r1, [r3, r7]
	ldr r4, _080EB044 @ =gUnknown_020248E0
	mov r8, r4
	adds r4, r0, #0
	cmp r2, r1
	beq _080EB004
	adds r2, r1, #0
	adds r6, r4, #0
_080EAFCA:
	lsls r7, r5, #0x10
	cmp r2, #0xa7
	bne _080EAFDA
	asrs r0, r7, #0x10
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0xf
	beq _080EB004
_080EAFDA:
	cmp r2, #0xa8
	bne _080EAFE8
	asrs r0, r7, #0x10
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _080EB004
_080EAFE8:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bgt _080EB004
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bne _080EAFCA
_080EB004:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _080EB01C
	movs r2, #0x91
	lsls r2, r2, #4
	add r2, r8
	movs r0, #0x94
	muls r0, r3, r0
	ldr r1, _080EB048 @ =gUnknown_02020BDC
	adds r0, r0, r1
	str r0, [r2]
_080EB01C:
	adds r0, r3, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #3
	bls _080EB028
	b _080EB128
_080EB028:
	ldr r2, _080EB044 @ =gUnknown_020248E0
	ldr r0, _080EB04C @ =0x00000914
	adds r2, r2, r0
	movs r0, #0x94
	muls r0, r3, r0
	ldr r1, _080EB050 @ =gUnknown_02020C70 + 0x94
	adds r0, r0, r1
	str r0, [r2]
	b _080EB128
	.align 2, 0
_080EB03C: .4byte gUnknown_03005390
_080EB040: .4byte gUnknown_03005350
_080EB044: .4byte gUnknown_020248E0
_080EB048: .4byte gUnknown_02020BDC
_080EB04C: .4byte 0x00000914
_080EB050: .4byte gUnknown_02020C70 + 0x94
_080EB054:
	movs r5, #8
	ldr r1, _080EB0D8 @ =gUnknown_020251F0
	mov r8, r1
	movs r2, #4
	add r2, r8
	mov sb, r2
_080EB060:
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x94
	muls r1, r0, r1
	ldr r0, _080EB0DC @ =gUnknown_02020C70
	adds r6, r1, r0
	ldr r0, _080EB0E0 @ =gUnknown_03005390
	ldr r3, [r0]
	adds r7, r2, #0
	cmp r6, r3
	beq _080EB11A
	adds r0, r6, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080EB11A
	adds r0, r6, #0
	adds r0, #0x5e
	adds r1, r3, #0
	adds r1, #0x5e
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080EB11A
	adds r2, r6, #0
	adds r2, #0x89
	adds r1, r3, #0
	adds r1, #0x89
	ldrb r0, [r2]
	ldrb r4, [r1]
	cmp r0, r4
	bhs _080EB0E4
	ldrb r5, [r1]
	subs r5, r5, r0
	adds r0, r3, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80DA6FC
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_80DA6FC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, #8
	cmp r5, r4
	bgt _080EB11A
	mov r3, r8
	str r6, [r3]
	b _080EB11A
	.align 2, 0
_080EB0D8: .4byte gUnknown_020251F0
_080EB0DC: .4byte gUnknown_02020C70
_080EB0E0: .4byte gUnknown_03005390
_080EB0E4:
	ldrb r5, [r2]
	ldrb r0, [r1]
	subs r5, r5, r0
	adds r0, r3, #0
	adds r0, #0x44
	movs r4, #0
	ldrsh r0, [r0, r4]
	bl sub_80DA6FC
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80DA6FC
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r4, #8
	cmp r5, r4
	bgt _080EB11A
	mov r2, sb
	str r6, [r2]
_080EB11A:
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r7, r3
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080EB060
_080EB128:
	ldr r0, _080EB144 @ =gUnknown_020248E0
	ldr r4, _080EB148 @ =0x0000090C
	adds r0, r0, r4
	mov r7, sl
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, _080EB14C @ =gUnknown_02024860
	movs r2, #0
	movs r0, #3
	strh r0, [r1, #0x38]
	strh r2, [r1, #0x26]
	strh r2, [r1, #0x28]
	b _080EB280
	.align 2, 0
_080EB144: .4byte gUnknown_020248E0
_080EB148: .4byte 0x0000090C
_080EB14C: .4byte gUnknown_02024860
_080EB150:
	ldr r4, _080EB194 @ =gUnknown_020248E0
	movs r1, #0x91
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _080EB1A4
	ldr r0, _080EB198 @ =gUnknown_03005390
	str r1, [r0]
	bl sub_80DAE00
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r4, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	bl sub_80E23B8
	ldr r7, _080EB19C @ =0x00000922
	adds r1, r4, r7
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080EB1A0 @ =gUnknown_02024860
	movs r0, #5
	strh r0, [r1, #0x38]
	b _080EB280
	.align 2, 0
_080EB194: .4byte gUnknown_020248E0
_080EB198: .4byte gUnknown_03005390
_080EB19C: .4byte 0x00000922
_080EB1A0: .4byte gUnknown_02024860
_080EB1A4:
	ldr r1, _080EB1E8 @ =gUnknown_020248E0
	ldr r3, _080EB1EC @ =0x00000914
	adds r0, r1, r3
	ldr r3, [r0]
	mov r8, r1
	cmp r3, #0
	beq _080EB258
	ldr r0, _080EB1F0 @ =gUnknown_03005390
	str r3, [r0]
	bl sub_80DAE00
	movs r0, #0x92
	lsls r0, r0, #4
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	bl sub_80E23B8
	ldr r1, _080EB1F4 @ =0x00000922
	add r1, r8
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080EB1F8 @ =gUnknown_02024860
	movs r0, #6
	strh r0, [r1, #0x38]
	b _080EB280
	.align 2, 0
_080EB1E8: .4byte gUnknown_020248E0
_080EB1EC: .4byte 0x00000914
_080EB1F0: .4byte gUnknown_03005390
_080EB1F4: .4byte 0x00000922
_080EB1F8: .4byte gUnknown_02024860
_080EB1FC:
	ldr r0, _080EB228 @ =gUnknown_020248E0
	ldr r1, _080EB22C @ =0x00000922
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080EB230 @ =gUnknown_02024860
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB280
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0x38]
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x28]
	b _080EB1A4
	.align 2, 0
_080EB228: .4byte gUnknown_020248E0
_080EB22C: .4byte 0x00000922
_080EB230: .4byte gUnknown_02024860
_080EB234:
	ldr r4, _080EB290 @ =gUnknown_020248E0
	ldr r7, _080EB294 @ =0x00000922
	adds r0, r4, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r2, _080EB298 @ =gUnknown_02024860
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r4
	cmp r1, r0
	bne _080EB280
	movs r0, #0
	strh r0, [r2, #0x26]
_080EB258:
	ldr r1, _080EB29C @ =gUnknown_03005390
	ldr r0, _080EB2A0 @ =0x0000090C
	add r0, r8
	ldr r0, [r0]
	str r0, [r1]
	bl sub_80DAE00
	movs r2, #0x91
	lsls r2, r2, #4
	add r2, r8
	ldr r1, _080EB2A4 @ =0x00000914
	add r1, r8
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	ldr r1, _080EB298 @ =gUnknown_02024860
	ldr r0, _080EB2A8 @ =0x0000FFFF
	strh r0, [r1, #0x38]
	movs r0, #1
	strh r0, [r1, #0x1a]
_080EB280:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EB290: .4byte gUnknown_020248E0
_080EB294: .4byte 0x00000922
_080EB298: .4byte gUnknown_02024860
_080EB29C: .4byte gUnknown_03005390
_080EB2A0: .4byte 0x0000090C
_080EB2A4: .4byte 0x00000914
_080EB2A8: .4byte 0x0000FFFF

	thumb_func_start sub_80EB2AC
sub_80EB2AC: @ 0x080EB2AC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080EB2C8 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #1
	beq _080EB310
	cmp r4, #1
	bgt _080EB2CC
	cmp r4, #0
	beq _080EB2D2
	b _080EB35A
	.align 2, 0
_080EB2C8: .4byte gUnknown_02024860
_080EB2CC:
	cmp r4, #2
	beq _080EB340
	b _080EB35A
_080EB2D2:
	bl sub_80E9F08
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB340
	movs r2, #0x2c
	ldrsh r1, [r5, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB35A
	strh r4, [r5, #0x2c]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E2434
	ldr r1, _080EB30C @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #1
	strh r0, [r5, #0x1c]
	b _080EB35A
	.align 2, 0
_080EB30C: .4byte gUnknown_020248E0
_080EB310:
	ldr r0, _080EB33C @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB35A
	movs r0, #0
	strh r0, [r5, #0x26]
	bl sub_80EA068
	strh r4, [r5, #0x1a]
	b _080EB35A
	.align 2, 0
_080EB33C: .4byte gUnknown_020248E0
_080EB340:
	bl sub_80E9F08
	ldr r2, _080EB360 @ =gUnknown_02024860
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB35A
	movs r0, #0
	strh r0, [r2, #0x2c]
	movs r0, #1
	strh r0, [r2, #0x1a]
_080EB35A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EB360: .4byte gUnknown_02024860

	thumb_func_start sub_80EB364
sub_80EB364: @ 0x080EB364
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	adds r3, r2, #0
	adds r3, #0x65
	ldrb r0, [r3]
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bne _080EB392
	adds r1, r2, #0
	adds r1, #0x67
	ldrb r0, [r1]
	adds r0, #3
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080EB38E
	movs r0, #8
	strb r0, [r1]
_080EB38E:
	movs r0, #1
	b _080EB39E
_080EB392:
	strb r4, [r3]
	adds r1, r2, #0
	adds r1, #0x67
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
_080EB39E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80EB3A4
sub_80EB3A4: @ 0x080EB3A4
	push {lr}
	adds r1, r0, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r0, #0
	beq _080EB3BC
	adds r0, r2, r0
	b _080EB3BE
_080EB3BC:
	adds r0, r2, #1
_080EB3BE:
	adds r2, r1, #0
	adds r2, #0x68
	strh r0, [r2]
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r0, #0
	asrs r1, r1, #2
	cmp r3, r1
	ble _080EB3DC
	strh r1, [r2]
_080EB3DC:
	pop {r0}
	bx r0

	thumb_func_start sub_80EB3E0
sub_80EB3E0: @ 0x080EB3E0
	push {lr}
	movs r0, #0x28
	bl sub_80E2394
	ldr r1, _080EB400 @ =gUnknown_03005390
	ldr r1, [r1]
	adds r1, #0x70
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	blt _080EB404
	movs r0, #1
	b _080EB406
	.align 2, 0
_080EB400: .4byte gUnknown_03005390
_080EB404:
	movs r0, #0
_080EB406:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EB40C
sub_80EB40C: @ 0x080EB40C
	push {lr}
	adds r1, r0, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r0, #0
	beq _080EB424
	subs r0, r2, r0
	b _080EB426
_080EB424:
	subs r0, r2, #1
_080EB426:
	adds r2, r1, #0
	adds r2, #0x68
	strh r0, [r2]
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x74
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r0, #0
	asrs r1, r1, #2
	cmp r3, r1
	bge _080EB444
	strh r1, [r2]
_080EB444:
	pop {r0}
	bx r0

	thumb_func_start sub_80EB448
sub_80EB448: @ 0x080EB448
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r2, r0, #0
	adds r2, #0x48
	str r2, [sp]
	ldrh r2, [r2]
	str r2, [sp, #4]
	adds r2, r0, #0
	adds r2, #0x4e
	str r2, [sp, #8]
	ldrh r2, [r2]
	str r2, [sp, #0xc]
	adds r2, r0, #0
	adds r2, #0x4a
	str r2, [sp, #0x10]
	ldrh r2, [r2]
	str r2, [sp, #0x14]
	adds r6, r0, #0
	adds r6, #0x50
	ldrh r2, [r6]
	str r2, [sp, #0x18]
	adds r5, r0, #0
	adds r5, #0x4c
	ldrh r2, [r5]
	str r2, [sp, #0x1c]
	movs r2, #0x52
	adds r2, r2, r0
	mov r8, r2
	ldrh r2, [r2]
	str r2, [sp, #0x20]
	adds r4, r0, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	str r2, [sp, #0x24]
	movs r2, #0x5e
	adds r2, r2, r0
	mov sb, r2
	ldrb r2, [r2]
	str r2, [sp, #0x28]
	movs r2, #0x42
	adds r2, r2, r0
	mov sl, r2
	ldrh r2, [r2]
	str r2, [sp, #0x2c]
	adds r7, r0, #0
	adds r7, #0x5b
	ldrb r2, [r7]
	str r2, [sp, #0x30]
	movs r2, #0x94
	bl memcpy
	mov r0, sp
	ldrh r1, [r0, #4]
	ldr r0, [sp]
	strh r1, [r0]
	mov r2, sp
	ldrh r0, [r2, #0xc]
	ldr r2, [sp, #8]
	strh r0, [r2]
	mov r1, sp
	ldrh r2, [r1, #0x14]
	ldr r1, [sp, #0x10]
	strh r2, [r1]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r6]
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r5]
	mov r2, sp
	ldrh r0, [r2, #0x20]
	mov r2, r8
	strh r0, [r2]
	add r1, sp, #0x24
	ldrb r1, [r1]
	strb r1, [r4]
	add r2, sp, #0x28
	ldrb r0, [r2]
	mov r2, sb
	strb r0, [r2]
	mov r0, sp
	ldrh r1, [r0, #0x2c]
	mov r0, sl
	strh r1, [r0]
	add r2, sp, #0x30
	ldrb r2, [r2]
	strb r2, [r7]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80EB510
sub_80EB510: @ 0x080EB510
	push {lr}
	adds r1, r0, #0
	adds r0, #0x6a
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	cmp r0, #0
	beq _080EB528
	adds r0, r2, r0
	b _080EB52A
_080EB528:
	adds r0, r2, #1
_080EB52A:
	adds r2, r1, #0
	adds r2, #0x6a
	strh r0, [r2]
	movs r0, #0
	ldrsh r3, [r2, r0]
	adds r0, r1, #0
	adds r0, #0x75
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r1, r0, #0
	asrs r1, r1, #2
	cmp r3, r1
	ble _080EB548
	strh r1, [r2]
_080EB548:
	pop {r0}
	bx r0

	thumb_func_start sub_80EB54C
sub_80EB54C: @ 0x080EB54C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _080EB578 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x6c
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _080EB57C @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x6c
	lsls r1, r1, #0x11
	asrs r1, r1, #0x10
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	blt _080EB580
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EB582
	.align 2, 0
_080EB578: .4byte gUnknown_03005390
_080EB57C: .4byte gUnknown_0300538C
_080EB580:
	movs r4, #0
_080EB582:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl sub_80E2394
	lsls r0, r0, #0x10
	lsls r1, r4, #0x10
	cmp r0, r1
	bge _080EB596
	movs r0, #0
	b _080EB598
_080EB596:
	movs r0, #1
_080EB598:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EB5A0
sub_80EB5A0: @ 0x080EB5A0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r5, _080EB5B8 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080EB5BC
	cmp r4, #1
	beq _080EB650
	b _080EB674
	.align 2, 0
_080EB5B8: .4byte gUnknown_02024860
_080EB5BC:
	ldr r0, _080EB628 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r2, r0, r3
	strh r4, [r2]
	movs r5, #0
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r4, r1
	bge _080EB5F4
	adds r4, r2, #0
_080EB5D4:
	movs r0, #0x64
	bl sub_80EB54C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EB5E6
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
_080EB5E6:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, r6
	blt _080EB5D4
_080EB5F4:
	ldr r0, _080EB628 @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r4, r0, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080EB630
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #0x13
	asrs r0, r0, #0x10
	bl sub_80E2434
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xff
	bl sub_80E8634
	ldr r1, _080EB62C @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1c]
	b _080EB674
	.align 2, 0
_080EB628: .4byte gUnknown_020248E0
_080EB62C: .4byte gUnknown_02024860
_080EB630:
	ldr r4, _080EB648 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EB64C @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080EB674
	.align 2, 0
_080EB648: .4byte gUnknown_02024860
_080EB64C: .4byte gUnknown_080601A4
_080EB650:
	ldr r0, _080EB67C @ =gUnknown_020248E0
	movs r3, #0x92
	lsls r3, r3, #4
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0xff
	bl sub_80E8634
	movs r3, #0x26
	ldrsh r1, [r5, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB674
	movs r0, #0
	strh r0, [r5, #0x26]
	strh r4, [r5, #0x1a]
_080EB674:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EB67C: .4byte gUnknown_020248E0

	thumb_func_start sub_80EB680
sub_80EB680: @ 0x080EB680
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080EB698 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080EB69C
	cmp r4, #1
	beq _080EB710
	b _080EB734
	.align 2, 0
_080EB698: .4byte gUnknown_02024860
_080EB69C:
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EB6F0
	ldr r0, _080EB6E8 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080EB6F0
	adds r0, r1, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80E2840
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #1
	bne _080EB6F0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E23B8
	ldr r1, _080EB6EC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	strh r4, [r5, #0x1c]
	b _080EB734
	.align 2, 0
_080EB6E8: .4byte gUnknown_03005390
_080EB6EC: .4byte gUnknown_020248E0
_080EB6F0:
	ldr r4, _080EB708 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EB70C @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080EB734
	.align 2, 0
_080EB708: .4byte gUnknown_02024860
_080EB70C: .4byte gUnknown_080601A4
_080EB710:
	ldr r0, _080EB73C @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB734
	movs r0, #0
	strh r0, [r5, #0x26]
	strh r4, [r5, #0x1a]
_080EB734:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EB73C: .4byte gUnknown_020248E0

	thumb_func_start sub_80EB740
sub_80EB740: @ 0x080EB740
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, _080EB758 @ =gUnknown_02024860
	movs r0, #0x1c
	ldrsh r4, [r5, r0]
	cmp r4, #0
	beq _080EB75C
	cmp r4, #1
	beq _080EB7D0
	b _080EB7F4
	.align 2, 0
_080EB758: .4byte gUnknown_02024860
_080EB75C:
	bl sub_80E3B6C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EB7B0
	ldr r0, _080EB7A8 @ =gUnknown_03005390
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x5c
	ldrb r4, [r0]
	cmp r4, #1
	bne _080EB7B0
	subs r0, #0x1a
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80E2840
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _080EB7B0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E23B8
	ldr r1, _080EB7AC @ =gUnknown_020248E0
	movs r2, #0x92
	lsls r2, r2, #4
	adds r1, r1, r2
	strh r0, [r1]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xff
	bl sub_80E8634
	strh r4, [r5, #0x1c]
	b _080EB7F4
	.align 2, 0
_080EB7A8: .4byte gUnknown_03005390
_080EB7AC: .4byte gUnknown_020248E0
_080EB7B0:
	ldr r4, _080EB7C8 @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #2
	orrs r0, r1
	str r0, [r4]
	ldr r0, _080EB7CC @ =gUnknown_080601A4
	bl sub_80DB168
	movs r0, #1
	strh r0, [r4, #0x1a]
	b _080EB7F4
	.align 2, 0
_080EB7C8: .4byte gUnknown_02024860
_080EB7CC: .4byte gUnknown_080601A4
_080EB7D0:
	ldr r0, _080EB7FC @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB7F4
	movs r0, #0
	strh r0, [r5, #0x26]
	strh r4, [r5, #0x1a]
_080EB7F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EB7FC: .4byte gUnknown_020248E0

	thumb_func_start sub_80EB800
sub_80EB800: @ 0x080EB800
	ldr r0, _080EB80C @ =m2_character_info
	ldr r1, _080EB810 @ =0x00000232
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080EB80C: .4byte m2_character_info
_080EB810: .4byte 0x00000232

	thumb_func_start sub_80EB814
sub_80EB814: @ 0x080EB814
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080EB834 @ =m2_character_info
	ldr r3, _080EB838 @ =0x00000232
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #3
	beq _080EB82E
	movs r0, #3
	strb r0, [r1]
	ldr r0, _080EB83C @ =gUnknown_03005338
	strh r2, [r0]
_080EB82E:
	pop {r0}
	bx r0
	.align 2, 0
_080EB834: .4byte m2_character_info
_080EB838: .4byte 0x00000232
_080EB83C: .4byte gUnknown_03005338

	thumb_func_start sub_80EB840
sub_80EB840: @ 0x080EB840
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, _080EB8A0 @ =gUnknown_02020C70 + 8*0x94
	movs r1, #0x89
	adds r1, r1, r4
	mov r8, r1
	ldrb r6, [r1]
	adds r7, r4, #0
	adds r7, #0x8a
	ldrb r5, [r7]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xdb
	bne _080EB876
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080EB8A4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080EB8A8 @ =0x06010000
	str r0, [r1, #4]
	ldr r0, _080EB8AC @ =0x81001000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080EB876:
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_80DA29C
	adds r0, r4, #0
	adds r0, #0x59
	movs r1, #1
	strb r1, [r0]
	mov r0, r8
	strb r6, [r0]
	strb r5, [r7]
	adds r0, r4, #0
	adds r0, #0x5b
	strb r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EB8A0: .4byte gUnknown_02020C70 + 8*0x94
_080EB8A4: .4byte 0x040000D4
_080EB8A8: .4byte 0x06010000
_080EB8AC: .4byte 0x81001000

	thumb_func_start sub_80EB8B0
sub_80EB8B0: @ 0x080EB8B0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, _080EB8CC @ =gUnknown_02024860
	movs r0, #0x3e
	ldrsh r5, [r4, r0]
	cmp r5, #1
	beq _080EB8E6
	cmp r5, #1
	bgt _080EB8D0
	cmp r5, #0
	beq _080EB8DA
	b _080EB97A
	.align 2, 0
_080EB8CC: .4byte gUnknown_02024860
_080EB8D0:
	cmp r5, #2
	beq _080EB938
	cmp r5, #3
	beq _080EB964
	b _080EB97A
_080EB8DA:
	movs r0, #0x3c
	bl sub_80E2850
	movs r0, #1
	strh r0, [r4, #0x3e]
	b _080EB97A
_080EB8E6:
	adds r0, r4, #0
	adds r0, #0x56
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080EB97A
	movs r0, #2
	strh r0, [r4, #0x3e]
	ldr r1, _080EB924 @ =gUnknown_03005390
	ldr r0, _080EB928 @ =gUnknown_02020C70 + 8*0x94
	str r0, [r1]
	bl sub_80DAE00
	ldr r4, _080EB92C @ =gUnknown_020248E0
	ldr r3, _080EB930 @ =0x000008EC
	adds r1, r4, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r1, _080EB934 @ =0x0000074E
	adds r0, r4, r1
	strh r5, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	bl sub_80E2434
	movs r3, #0x92
	lsls r3, r3, #4
	adds r4, r4, r3
	strh r0, [r4]
	b _080EB97A
	.align 2, 0
_080EB924: .4byte gUnknown_03005390
_080EB928: .4byte gUnknown_02020C70 + 8*0x94
_080EB92C: .4byte gUnknown_020248E0
_080EB930: .4byte 0x000008EC
_080EB934: .4byte 0x0000074E
_080EB938:
	ldr r0, _080EB980 @ =gUnknown_020248E0
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r1, #0xff
	bl sub_80E8634
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EB97A
	movs r0, #0
	strh r0, [r4, #0x26]
	movs r0, #0x3c
	bl sub_80E2850
	movs r0, #3
	strh r0, [r4, #0x3e]
_080EB964:
	ldr r2, _080EB984 @ =gUnknown_02024860
	adds r0, r2, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bne _080EB97A
	ldr r0, _080EB988 @ =0x0000FFFF
	strh r0, [r2, #0x3e]
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x28]
_080EB97A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EB980: .4byte gUnknown_020248E0
_080EB984: .4byte gUnknown_02024860
_080EB988: .4byte 0x0000FFFF

	thumb_func_start sub_80EB98C
sub_80EB98C: @ 0x080EB98C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
	ldr r0, _080EB9D0 @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080EB9B2
	ldr r0, _080EB9D4 @ =0x000001E3
	cmp r5, r0
	beq _080EB9B2
	ldr r0, _080EB9D8 @ =gUnknown_03000ABC
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080EB9B4
_080EB9B2:
	movs r4, #1
_080EB9B4:
	ldr r0, _080EB9DC @ =gUnknown_02024860
	adds r1, r0, #0
	adds r1, #0x62
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, r0, #0
	cmp r1, #5
	bls _080EB9C6
	b _080EBB96
_080EB9C6:
	lsls r0, r1, #2
	ldr r1, _080EB9E0 @ =_080EB9E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EB9D0: .4byte gUnknown_03005344
_080EB9D4: .4byte 0x000001E3
_080EB9D8: .4byte gUnknown_03000ABC
_080EB9DC: .4byte gUnknown_02024860
_080EB9E0: .4byte _080EB9E4
_080EB9E4: @ jump table
	.4byte _080EB9FC @ case 0
	.4byte _080EBA2E @ case 1
	.4byte _080EBA64 @ case 2
	.4byte _080EBAE4 @ case 3
	.4byte _080EBB1C @ case 4
	.4byte _080EBB80 @ case 5
_080EB9FC:
	ldr r0, _080EBA14 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	beq _080EBA06
	b _080EBB96
_080EBA06:
	cmp r4, #0
	beq _080EBA1C
	ldr r0, _080EBA18 @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #2
	strh r1, [r0]
	b _080EBA64
	.align 2, 0
_080EBA14: .4byte gUnknown_03002A40
_080EBA18: .4byte gUnknown_02024860
_080EBA1C:
	movs r0, #6
	movs r1, #1
	movs r2, #0x1e
	bl sub_80EFF40
	ldr r0, _080EBABC @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #1
	strh r1, [r0]
_080EBA2E:
	bl sub_80EFF94
	cmp r0, #0
	beq _080EBA38
	b _080EBB96
_080EBA38:
	ldr r0, _080EBAC0 @ =0x04000050
	movs r2, #0xff
	strh r2, [r0]
	adds r0, #4
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _080EBAC4 @ =gUnknown_030050EC
	strh r2, [r0]
	ldr r0, _080EBAC8 @ =gUnknown_03005340
	strh r1, [r0]
	ldr r0, _080EBABC @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #1
	strh r1, [r0]
	ldr r0, _080EBACC @ =gUnknown_02020C70
	ldr r2, _080EBAD0 @ =0x0000058E
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #2
	bne _080EBA64
	movs r0, #0
	strb r0, [r1]
_080EBA64:
	ldr r0, _080EBAD4 @ =gEnemyGroup
	strh r5, [r0]
	ldr r3, _080EBAD8 @ =gUnknown_08B2A220
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r1, r2, #2
	adds r1, r1, r3
	ldr r0, _080EBADC @ =gUnknown_08B29300
	lsls r2, r2, #3
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r3, #2
	ldrsh r1, [r1, r3]
	ldrb r2, [r2, #7]
	bl sub_80D985C
	bl sub_80D9084
	ldr r1, _080EBAE0 @ =gUnknown_03005344
	movs r0, #1
	strh r0, [r1]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080EBA9C
	bl PlaySongSetupPlayer
_080EBA9C:
	ldr r0, _080EBABC @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #3
	strh r1, [r0]
	ldr r0, _080EBAC0 @ =0x04000050
	movs r2, #0xff
	strh r2, [r0]
	adds r0, #4
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _080EBAC4 @ =gUnknown_030050EC
	strh r2, [r0]
	ldr r0, _080EBAC8 @ =gUnknown_03005340
	strh r1, [r0]
	b _080EBB96
	.align 2, 0
_080EBABC: .4byte gUnknown_02024860
_080EBAC0: .4byte 0x04000050
_080EBAC4: .4byte gUnknown_030050EC
_080EBAC8: .4byte gUnknown_03005340
_080EBACC: .4byte gUnknown_02020C70
_080EBAD0: .4byte 0x0000058E
_080EBAD4: .4byte gEnemyGroup
_080EBAD8: .4byte gUnknown_08B2A220
_080EBADC: .4byte gUnknown_08B29300
_080EBAE0: .4byte gUnknown_03005344
_080EBAE4:
	ldr r0, _080EBB00 @ =gUnknown_03000AC0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080EBAF2
	bl sub_80D3E28
_080EBAF2:
	cmp r4, #0
	beq _080EBB04
	movs r0, #0
	movs r1, #8
	bl sub_80D8098
	b _080EBB14
	.align 2, 0
_080EBB00: .4byte gUnknown_03000AC0
_080EBB04:
	ldr r0, _080EBB60 @ =0x000001E3
	cmp r5, r0
	beq _080EBB14
	movs r0, #6
	movs r1, #0
	movs r2, #5
	bl sub_80EFF40
_080EBB14:
	ldr r0, _080EBB64 @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #4
	strh r1, [r0]
_080EBB1C:
	bl sub_80EFF94
	cmp r0, #0
	bne _080EBB96
	ldr r0, _080EBB68 @ =gUnknown_03002A40
	ldr r1, [r0]
	cmp r1, #0
	bne _080EBB96
	ldr r0, _080EBB6C @ =gUnknown_03005394
	strb r1, [r0]
	ldr r2, _080EBB70 @ =gUnknown_030053C0
	ldrb r1, [r2, #6]
	movs r0, #0xf9
	ands r0, r1
	strb r0, [r2, #6]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080EBB74 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080EBB78 @ =0x0400000A
	ldr r2, _080EBB7C @ =0x00001F01
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _080EBB64 @ =gUnknown_02024860
	adds r0, #0x62
	movs r1, #5
	strh r1, [r0]
	movs r0, #0x3c
	bl sub_80E2850
	b _080EBB96
	.align 2, 0
_080EBB60: .4byte 0x000001E3
_080EBB64: .4byte gUnknown_02024860
_080EBB68: .4byte gUnknown_03002A40
_080EBB6C: .4byte gUnknown_03005394
_080EBB70: .4byte gUnknown_030053C0
_080EBB74: .4byte 0x0000FDFF
_080EBB78: .4byte 0x0400000A
_080EBB7C: .4byte 0x00001F01
_080EBB80:
	adds r0, r2, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bne _080EBB96
	adds r0, r2, #0
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0
	b _080EBB9A
_080EBB96:
	movs r0, #1
	rsbs r0, r0, #0
_080EBB9A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80EBBA0
sub_80EBBA0: @ 0x080EBBA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, _080EBBC8 @ =gUnknown_02024860
	adds r0, r1, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r4, r1, #0
	cmp r0, #0x42
	bls _080EBBBE
	b _080EBF04
_080EBBBE:
	lsls r0, r0, #2
	ldr r1, _080EBBCC @ =_080EBBD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EBBC8: .4byte gUnknown_02024860
_080EBBCC: .4byte _080EBBD0
_080EBBD0: @ jump table
	.4byte _080EBCDC @ case 0
	.4byte _080EBCF8 @ case 1
	.4byte _080EBD64 @ case 2
	.4byte _080EBD7C @ case 3
	.4byte _080EBDA4 @ case 4
	.4byte _080EBDB8 @ case 5
	.4byte _080EBDD8 @ case 6
	.4byte _080EBEEC @ case 7
	.4byte _080EBF04 @ case 8
	.4byte _080EBF04 @ case 9
	.4byte _080EBF04 @ case 10
	.4byte _080EBF04 @ case 11
	.4byte _080EBF04 @ case 12
	.4byte _080EBF04 @ case 13
	.4byte _080EBF04 @ case 14
	.4byte _080EBF04 @ case 15
	.4byte _080EBF04 @ case 16
	.4byte _080EBF04 @ case 17
	.4byte _080EBF04 @ case 18
	.4byte _080EBF04 @ case 19
	.4byte _080EBF04 @ case 20
	.4byte _080EBF04 @ case 21
	.4byte _080EBF04 @ case 22
	.4byte _080EBF04 @ case 23
	.4byte _080EBF04 @ case 24
	.4byte _080EBF04 @ case 25
	.4byte _080EBF04 @ case 26
	.4byte _080EBF04 @ case 27
	.4byte _080EBF04 @ case 28
	.4byte _080EBF04 @ case 29
	.4byte _080EBF04 @ case 30
	.4byte _080EBF04 @ case 31
	.4byte _080EBF04 @ case 32
	.4byte _080EBF04 @ case 33
	.4byte _080EBF04 @ case 34
	.4byte _080EBF04 @ case 35
	.4byte _080EBF04 @ case 36
	.4byte _080EBF04 @ case 37
	.4byte _080EBF04 @ case 38
	.4byte _080EBF04 @ case 39
	.4byte _080EBF04 @ case 40
	.4byte _080EBF04 @ case 41
	.4byte _080EBF04 @ case 42
	.4byte _080EBF04 @ case 43
	.4byte _080EBF04 @ case 44
	.4byte _080EBF04 @ case 45
	.4byte _080EBF04 @ case 46
	.4byte _080EBF04 @ case 47
	.4byte _080EBF04 @ case 48
	.4byte _080EBF04 @ case 49
	.4byte _080EBF04 @ case 50
	.4byte _080EBF04 @ case 51
	.4byte _080EBF04 @ case 52
	.4byte _080EBF04 @ case 53
	.4byte _080EBF04 @ case 54
	.4byte _080EBF04 @ case 55
	.4byte _080EBF04 @ case 56
	.4byte _080EBF04 @ case 57
	.4byte _080EBF04 @ case 58
	.4byte _080EBF04 @ case 59
	.4byte _080EBF04 @ case 60
	.4byte _080EBF04 @ case 61
	.4byte _080EBF04 @ case 62
	.4byte _080EBF04 @ case 63
	.4byte _080EBF04 @ case 64
	.4byte _080EBF04 @ case 65
	.4byte _080EBE24 @ case 66
_080EBCDC:
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	movs r0, #1
	movs r1, #8
	bl sub_80D8098
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strh r0, [r1]
	b _080EBF04
_080EBCF8:
	ldr r0, _080EBD4C @ =gUnknown_03002A40
	ldr r2, [r0]
	cmp r2, #0
	beq _080EBD02
	b _080EBF04
_080EBD02:
	ldr r1, _080EBD50 @ =gWindowPointers
	ldr r0, [r1, #8]
	movs r4, #0
	strh r2, [r0, #0x2a]
	ldr r0, [r1, #8]
	strh r2, [r0, #0x2c]
	ldr r0, [r1, #8]
	str r2, [r0, #0x18]
	movs r0, #0
	bl sub_80BDE74
	ldr r1, _080EBD54 @ =gUnknown_030053D8
	movs r0, #1
	strb r0, [r1]
	ldr r2, _080EBD58 @ =gUnknown_03000AC2
	ldr r1, _080EBD5C @ =gUnknown_030053F0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r4, [r1]
	movs r0, #2
	bl AddSpecialMusicEffect
	bl sub_80EBF38
	movs r0, #0xbf
	bl PlaySongSetupPlayer
	movs r0, #2
	movs r1, #8
	bl sub_80D8098
	ldr r0, _080EBD60 @ =gUnknown_02024860
	adds r0, #0x40
	movs r1, #2
	strh r1, [r0]
	b _080EBF04
	.align 2, 0
_080EBD4C: .4byte gUnknown_03002A40
_080EBD50: .4byte gWindowPointers
_080EBD54: .4byte gUnknown_030053D8
_080EBD58: .4byte gUnknown_03000AC2
_080EBD5C: .4byte gUnknown_030053F0
_080EBD60: .4byte gUnknown_02024860
_080EBD64:
	ldr r0, _080EBD9C @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	beq _080EBD6E
	b _080EBF04
_080EBD6E:
	movs r0, #0x14
	bl sub_80E2850
	ldr r0, _080EBDA0 @ =gUnknown_02024860
	adds r0, #0x40
	movs r1, #3
	strh r1, [r0]
_080EBD7C:
	ldr r4, _080EBDA0 @ =gUnknown_02024860
	adds r0, r4, #0
	adds r0, #0x56
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080EBD8C
	b _080EBF04
_080EBD8C:
	adds r0, r6, #0
	bl sub_80DB168
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #4
	strh r0, [r1]
	b _080EBF04
	.align 2, 0
_080EBD9C: .4byte gUnknown_03002A40
_080EBDA0: .4byte gUnknown_02024860
_080EBDA4:
	movs r0, #0x14
	bl sub_80E2850
	ldr r0, _080EBDB4 @ =gUnknown_02024860
	adds r0, #0x40
	movs r1, #5
	strh r1, [r0]
	b _080EBF04
	.align 2, 0
_080EBDB4: .4byte gUnknown_02024860
_080EBDB8:
	adds r0, r4, #0
	adds r0, #0x56
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	beq _080EBDC6
	b _080EBF04
_080EBDC6:
	movs r0, #3
	movs r1, #8
	bl sub_80D8098
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #6
	strh r0, [r1]
	b _080EBF04
_080EBDD8:
	ldr r0, _080EBE14 @ =gUnknown_03002A40
	ldr r2, [r0]
	cmp r2, #0
	beq _080EBDE2
	b _080EBF04
_080EBDE2:
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x42
	strh r0, [r1]
	ldr r4, _080EBE18 @ =gWindowPointers
	ldr r0, [r4, #8]
	strh r2, [r0, #0x2a]
	ldr r0, [r4, #8]
	strh r2, [r0, #0x2c]
	ldr r0, [r4, #8]
	str r2, [r0, #0x18]
	movs r0, #1
	bl sub_80BDE74
	ldr r0, [r4, #8]
	ldr r1, _080EBE1C @ =m2_character_info
	ldr r2, _080EBE20 @ =0x0000069C
	adds r1, r1, r2
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r1, #0
	bl m2_initwindow
	b _080EBF04
	.align 2, 0
_080EBE14: .4byte gUnknown_03002A40
_080EBE18: .4byte gWindowPointers
_080EBE1C: .4byte m2_character_info
_080EBE20: .4byte 0x0000069C
_080EBE24:
	movs r0, #2
	bl AddSpecialMusicEffect
	ldr r0, _080EBED4 @ =gUnknown_020248E0
	ldr r6, _080EBED8 @ =0x00000882
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r5, r5, #0x10
	mov r8, r5
	cmp r0, #0xc
	bne _080EBEB0
	movs r2, #0
	ldr r0, _080EBEDC @ =gUnknown_02020C70
	mov ip, r0
	ldr r7, _080EBEE0 @ =m2_character_info
	movs r5, #1
_080EBE44:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x94
	muls r0, r1, r0
	mov r1, ip
	adds r3, r0, r1
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EBEA2
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBEA2
	adds r0, r3, #0
	adds r0, #0x5f
	ldrb r0, [r0]
	cmp r0, #1
	beq _080EBEA2
	adds r0, r3, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EBEA2
	adds r0, r3, #0
	adds r0, #0x5e
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r1, r0, r7
	adds r4, r1, #0
	adds r4, #0x4a
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _080EBEA2
	adds r0, r3, #0
	adds r0, #0x48
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, r1, #0
	adds r0, #0x46
	strh r5, [r0]
	strh r5, [r4]
_080EBEA2:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080EBE44
_080EBEB0:
	bl sub_80D3C50
	mov r2, r8
	asrs r0, r2, #0x10
	bl PlaySongSetupPlayer
	movs r0, #0
	movs r1, #8
	bl sub_80D8098
	ldr r0, _080EBEE4 @ =gUnknown_02024860
	adds r0, #0x40
	movs r2, #0
	movs r1, #7
	strh r1, [r0]
	ldr r0, _080EBEE8 @ =gUnknown_030053D8
	strb r2, [r0]
	b _080EBF04
	.align 2, 0
_080EBED4: .4byte gUnknown_020248E0
_080EBED8: .4byte 0x00000882
_080EBEDC: .4byte gUnknown_02020C70
_080EBEE0: .4byte m2_character_info
_080EBEE4: .4byte gUnknown_02024860
_080EBEE8: .4byte gUnknown_030053D8
_080EBEEC:
	ldr r0, _080EBF00 @ =gUnknown_03002A40
	ldr r2, [r0]
	cmp r2, #0
	bne _080EBF04
	adds r0, r4, #0
	adds r0, #0x40
	strh r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	b _080EBF06
	.align 2, 0
_080EBF00: .4byte gUnknown_03002A40
_080EBF04:
	movs r0, #0
_080EBF06:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80EBF10
sub_80EBF10: @ 0x080EBF10
	push {r4, r5, lr}
	ldr r3, _080EBF30 @ =gUnknown_02024860
	str r0, [r3, #0x64]
	adds r4, r3, #0
	adds r4, #0x68
	movs r5, #0
	strh r1, [r4]
	adds r3, #0x6a
	strh r2, [r3]
	bl sub_80A2190
	ldr r0, _080EBF34 @ =gUnknown_0300521C
	strb r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EBF30: .4byte gUnknown_02024860
_080EBF34: .4byte gUnknown_0300521C

	thumb_func_start sub_80EBF38
sub_80EBF38: @ 0x080EBF38
	push {r4, r5, lr}
	movs r0, #0
	ldr r5, _080EBF78 @ =gWindowPointers
_080EBF3E:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_80CA904
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa
	ble _080EBF3E
	ldr r4, _080EBF7C @ =gUnknown_02024860
	ldr r0, [r4]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080EBF68
	bl sub_80D3E28
_080EBF68:
	ldr r0, [r4]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EBF78: .4byte gWindowPointers
_080EBF7C: .4byte gUnknown_02024860

	thumb_func_start sub_80EBF80
sub_80EBF80: @ 0x080EBF80
	push {r4, lr}
	movs r2, #0
	ldr r3, _080EBFB0 @ =gUnknown_08739D1C
	ldr r0, _080EBFB4 @ =gUnknown_02020C70
	adds r1, r0, #0
	adds r1, #0x42
_080EBF8C:
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _080EBFB8
	ldrb r0, [r1, #0x1a]
	cmp r0, #1
	bne _080EBFB8
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #6
	adds r0, r0, r3
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _080EBFB8
	movs r0, #0
	b _080EBFCC
	.align 2, 0
_080EBFB0: .4byte gUnknown_08739D1C
_080EBFB4: .4byte gUnknown_02020C70
_080EBFB8:
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #0x94
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080EBF8C
	movs r0, #1
_080EBFCC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EBFD4
sub_80EBFD4: @ 0x080EBFD4
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _080EC000 @ =gUnknown_03005220
	ldr r0, [r5]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r1, r2, #0
	adds r2, r4, #0
	bl memcpy
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	adds r4, #1
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EC000: .4byte gUnknown_03005220

	thumb_func_start sub_80EC004
sub_80EC004: @ 0x080EC004
	ldr r0, _080EC00C @ =gUnknown_03005220
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080EC00C: .4byte gUnknown_03005220

	thumb_func_start sub_80EC010
sub_80EC010: @ 0x080EC010
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r5, _080EC040 @ =gUnknown_03005220
	ldr r0, [r5]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r0, #0x10
	adds r1, r2, #0
	adds r2, r4, #0
	bl memcpy
	ldr r0, [r5]
	adds r0, #0x10
	adds r0, r0, r4
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0x11]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EC040: .4byte gUnknown_03005220

	thumb_func_start sub_80EC044
sub_80EC044: @ 0x080EC044
	ldr r0, _080EC04C @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x10
	bx lr
	.align 2, 0
_080EC04C: .4byte gUnknown_03005220

	thumb_func_start sub_80EC050
sub_80EC050: @ 0x080EC050
	ldr r1, _080EC05C @ =gUnknown_03005220
	ldr r1, [r1]
	adds r1, #0x21
	strb r0, [r1]
	bx lr
	.align 2, 0
_080EC05C: .4byte gUnknown_03005220

	thumb_func_start sub_80EC060
sub_80EC060: @ 0x080EC060
	ldr r0, _080EC06C @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x21
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080EC06C: .4byte gUnknown_03005220

	thumb_func_start sub_80EC070
sub_80EC070: @ 0x080EC070
	ldr r1, _080EC078 @ =gUnknown_03005220
	ldr r1, [r1]
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_080EC078: .4byte gUnknown_03005220

	thumb_func_start sub_80EC07C
sub_80EC07C: @ 0x080EC07C
	ldr r0, _080EC084 @ =gUnknown_03005220
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0
_080EC084: .4byte gUnknown_03005220

	thumb_func_start sub_80EC088
sub_80EC088: @ 0x080EC088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r2, r2, r0
	lsrs r6, r2, #0x10
	ldr r0, _080EC0C8 @ =m2_selected_person
	ldrh r1, [r0]
	mov sl, r1
	strh r4, [r0]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _080EC0CC @ =gUnknown_03001D54
	adds r5, r1, r0
	lsls r1, r6, #0x10
	asrs r0, r1, #0xf
	subs r0, #2
	adds r0, r5, r0
	ldrh r3, [r0]
	b _080EC0E4
	.align 2, 0
_080EC0C8: .4byte m2_selected_person
_080EC0CC: .4byte gUnknown_03001D54
_080EC0D0:
	asrs r1, r1, #0x10
	subs r2, r1, #1
	lsls r2, r2, #1
	adds r2, r5, r2
	lsls r0, r1, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	strh r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
_080EC0E4:
	lsrs r2, r1, #0x10
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0xd
	bgt _080EC0F8
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080EC0D0
_080EC0F8:
	lsls r0, r2, #0x10
	asrs r0, r0, #0xf
	subs r0, #2
	adds r0, r5, r0
	movs r1, #0
	strh r1, [r0]
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	str r2, [sp]
	bl sub_80EC2F0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r2, r0
	bne _080EC212
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	adds r6, r5, #0
	adds r6, #0x61
	ldrb r0, [r6]
	cmp r4, r0
	bne _080EC156
	adds r0, r2, #0
	bl sub_80EC2C0
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x62
	ldrb r0, [r1]
	cmp r4, r0
	bge _080EC142
	subs r0, #1
	strb r0, [r1]
_080EC142:
	adds r1, r5, #0
	adds r1, #0x63
	ldrb r0, [r1]
	cmp r4, r0
	bge _080EC150
	subs r0, #1
	strb r0, [r1]
_080EC150:
	adds r1, r5, #0
	adds r1, #0x64
	b _080EC1DC
_080EC156:
	adds r7, r5, #0
	adds r7, #0x62
	ldrb r3, [r7]
	cmp r4, r3
	bne _080EC186
	adds r0, r2, #0
	bl sub_80EC2C0
	strb r0, [r7]
	ldrb r0, [r6]
	cmp r4, r0
	bge _080EC172
	subs r0, #1
	strb r0, [r6]
_080EC172:
	adds r1, r5, #0
	adds r1, #0x63
	ldrb r0, [r1]
	cmp r4, r0
	bge _080EC180
	subs r0, #1
	strb r0, [r1]
_080EC180:
	adds r1, r5, #0
	adds r1, #0x64
	b _080EC1DC
_080EC186:
	movs r1, #0x63
	adds r1, r1, r5
	mov r8, r1
	ldrb r3, [r1]
	cmp r4, r3
	bne _080EC1B6
	adds r0, r2, #0
	bl sub_80EC2C0
	mov r1, r8
	strb r0, [r1]
	ldrb r0, [r6]
	cmp r4, r0
	bge _080EC1A6
	subs r0, #1
	strb r0, [r6]
_080EC1A6:
	ldrb r0, [r7]
	cmp r4, r0
	bge _080EC1B0
	subs r0, #1
	strb r0, [r7]
_080EC1B0:
	adds r1, r5, #0
	adds r1, #0x64
	b _080EC1DC
_080EC1B6:
	adds r5, #0x64
	ldrb r3, [r5]
	cmp r4, r3
	bne _080EC1E8
	adds r0, r2, #0
	bl sub_80EC2C0
	strb r0, [r5]
	ldrb r0, [r6]
	cmp r4, r0
	bge _080EC1D0
	subs r0, #1
	strb r0, [r6]
_080EC1D0:
	ldrb r0, [r7]
	cmp r4, r0
	bge _080EC1DA
	subs r0, #1
	strb r0, [r7]
_080EC1DA:
	mov r1, r8
_080EC1DC:
	ldrb r0, [r1]
	cmp r4, r0
	bge _080EC2A4
	subs r0, #1
	strb r0, [r1]
	b _080EC2A4
_080EC1E8:
	cmp r4, r0
	bge _080EC1F0
	subs r0, #1
	strb r0, [r6]
_080EC1F0:
	ldrb r0, [r7]
	cmp r4, r0
	bge _080EC1FA
	subs r0, #1
	strb r0, [r7]
_080EC1FA:
	mov r2, r8
	ldrb r0, [r2]
	cmp r4, r0
	bge _080EC206
	subs r0, #1
	strb r0, [r2]
_080EC206:
	ldrb r0, [r5]
	cmp r4, r0
	bge _080EC2A4
	subs r0, #1
	strb r0, [r5]
	b _080EC2A4
_080EC212:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x61
	mov sb, r0
	mov r8, r1
	ldrb r3, [r1]
	cmp r2, r3
	bne _080EC234
	movs r0, #0
	bl sub_80BBF64
	adds r7, r5, #0
	adds r7, #0x62
	adds r6, r5, #0
	adds r6, #0x63
	b _080EC25E
_080EC234:
	adds r0, r5, #0
	adds r0, #0x62
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r2, r0
	bne _080EC24C
	movs r0, #0
	bl sub_80BBF98
	adds r6, r5, #0
	adds r6, #0x63
	b _080EC25E
_080EC24C:
	adds r0, r5, #0
	adds r0, #0x63
	adds r6, r0, #0
	ldrb r1, [r6]
	cmp r2, r1
	bne _080EC264
	movs r0, #0
	bl sub_80BBFCC
_080EC25E:
	adds r4, r5, #0
	adds r4, #0x64
	b _080EC276
_080EC264:
	adds r0, r5, #0
	adds r0, #0x64
	adds r4, r0, #0
	ldrb r3, [r4]
	cmp r2, r3
	bne _080EC276
	movs r0, #0
	bl sub_80BC000
_080EC276:
	mov r0, sb
	asrs r1, r0, #0x10
	mov r2, r8
	ldrb r0, [r2]
	cmp r1, r0
	bge _080EC286
	subs r0, #1
	strb r0, [r2]
_080EC286:
	ldrb r0, [r7]
	cmp r1, r0
	bge _080EC290
	subs r0, #1
	strb r0, [r7]
_080EC290:
	ldrb r0, [r6]
	cmp r1, r0
	bge _080EC29A
	subs r0, #1
	strb r0, [r6]
_080EC29A:
	ldrb r0, [r4]
	cmp r1, r0
	bge _080EC2A4
	subs r0, #1
	strb r0, [r4]
_080EC2A4:
	ldr r0, _080EC2BC @ =m2_selected_person
	mov r3, sl
	strh r3, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EC2BC: .4byte m2_selected_person

	thumb_func_start sub_80EC2C0
sub_80EC2C0: @ 0x080EC2C0
	push {lr}
	movs r3, #0
	ldr r2, _080EC2D4 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r2, #0x14
	adds r1, r0, r2
	b _080EC2E0
	.align 2, 0
_080EC2D4: .4byte m2_character_info
_080EC2D8:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	bgt _080EC2E6
_080EC2E0:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080EC2D8
_080EC2E6:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EC2F0
sub_80EC2F0: @ 0x080EC2F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080EC350
	movs r2, #0
	ldr r0, _080EC344 @ =m2_character_info
	ldr r4, _080EC348 @ =0x000001CB
	adds r3, r0, r4
	ldrb r4, [r3]
	cmp r2, r4
	bge _080EC340
	adds r7, r0, #0
	mov r8, r3
	lsls r6, r1, #0x10
_080EC316:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r5, r4, r0
	ldrb r0, [r5]
	asrs r1, r6, #0x10
	bl sub_80EC368
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC34C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	ldrb r3, [r3]
	cmp r0, r3
	blt _080EC316
_080EC340:
	movs r0, #0
	b _080EC35C
	.align 2, 0
_080EC344: .4byte m2_character_info
_080EC348: .4byte 0x000001CB
_080EC34C:
	ldrb r0, [r5]
	b _080EC35C
_080EC350:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80EC368
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080EC35C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EC368
sub_80EC368: @ 0x080EC368
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r3, #0
	ldr r4, _080EC3B8 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x6c
	ldr r7, _080EC3BC @ =gUnknown_08B1D62C
	adds r2, r6, #0
	muls r2, r0, r2
_080EC37E:
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r2, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080EC3C0
	strh r5, [r1]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r4, r1, r7
	ldrb r0, [r4, #2]
	cmp r0, #4
	bne _080EC3A2
	bl sub_80ED67C
_080EC3A2:
	ldrb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EC3B4
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_80EE884
_080EC3B4:
	adds r0, r6, #0
	b _080EC3CA
	.align 2, 0
_080EC3B8: .4byte m2_character_info
_080EC3BC: .4byte gUnknown_08B1D62C
_080EC3C0:
	adds r2, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080EC37E
	movs r0, #0
_080EC3CA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80EC3D0
sub_80EC3D0: @ 0x080EC3D0
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	movs r3, #0
	ldr r2, _080EC3FC @ =m2_character_info
	ldr r4, _080EC400 @ =0xFFFF0000
	adds r0, r0, r4
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	asrs r1, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	asrs r4, r0, #0x10
	movs r0, #0x6c
	muls r0, r1, r0
	adds r2, #0x14
	adds r1, r0, r2
_080EC3F2:
	ldrh r0, [r1]
	cmp r0, r5
	bne _080EC404
	adds r0, r4, #0
	b _080EC40E
	.align 2, 0
_080EC3FC: .4byte m2_character_info
_080EC400: .4byte 0xFFFF0000
_080EC404:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080EC3F2
	movs r0, #0
_080EC40E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80EC414
sub_80EC414: @ 0x080EC414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080EC478
	movs r2, #0
	ldr r0, _080EC46C @ =m2_character_info
	ldr r4, _080EC470 @ =0x000001CB
	adds r3, r0, r4
	ldrb r4, [r3]
	cmp r2, r4
	bge _080EC466
	adds r7, r0, #0
	mov r8, r3
	lsls r6, r1, #0x10
_080EC43A:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r5, r4, r0
	ldrb r0, [r5]
	adds r0, #1
	asrs r1, r6, #0x10
	bl sub_80EC3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EC474
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	ldrb r3, [r3]
	cmp r0, r3
	blt _080EC43A
_080EC466:
	movs r0, #0
	b _080EC48A
	.align 2, 0
_080EC46C: .4byte m2_character_info
_080EC470: .4byte 0x000001CB
_080EC474:
	ldrb r0, [r5]
	b _080EC48A
_080EC478:
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80EC3D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080EC48A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80EC494
sub_80EC494: @ 0x080EC494
	push {r4, lr}
	movs r3, #0
	ldr r1, _080EC4B8 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	asrs r4, r0, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r1, #0x14
	adds r1, r0, r1
_080EC4AE:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080EC4BC
	adds r0, r4, #0
	b _080EC4C6
	.align 2, 0
_080EC4B8: .4byte m2_character_info
_080EC4BC:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080EC4AE
	movs r0, #0
_080EC4C6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80EC4CC
sub_80EC4CC: @ 0x080EC4CC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080EC520
	movs r1, #0
	ldr r0, _080EC514 @ =m2_character_info
	ldr r3, _080EC518 @ =0x000001CB
	adds r2, r0, r3
	ldrb r3, [r2]
	cmp r1, r3
	bge _080EC510
	adds r5, r0, #0
	adds r6, r2, #0
_080EC4E8:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	bl sub_80EC494
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080EC51C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r6]
	cmp r0, r2
	blt _080EC4E8
_080EC510:
	movs r0, #0
	b _080EC528
	.align 2, 0
_080EC514: .4byte m2_character_info
_080EC518: .4byte 0x000001CB
_080EC51C:
	lsls r0, r1, #0x10
	b _080EC526
_080EC520:
	bl sub_80EC494
	lsls r0, r0, #0x10
_080EC526:
	asrs r0, r0, #0x10
_080EC528:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EC530
sub_80EC530: @ 0x080EC530
	ldr r2, _080EC554 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r1, r0, r2
	adds r2, r1, #0
	adds r2, #0x62
	adds r0, r1, #0
	adds r0, #0x73
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r1, #0x69
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080EC554: .4byte m2_character_info

	thumb_func_start sub_80EC558
sub_80EC558: @ 0x080EC558
	push {r4, lr}
	ldr r4, _080EC5B4 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r0, r1, r4
	mov ip, r0
	adds r0, #0x5e
	ldrb r3, [r0]
	mov r0, ip
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC594
	ldr r2, _080EC5B8 @ =gUnknown_08B1D62C
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
_080EC594:
	mov r0, ip
	adds r0, #0x70
	ldrb r0, [r0]
	adds r3, r3, r0
	movs r1, #0
	cmp r3, #0
	blt _080EC5A4
	adds r1, r3, #0
_080EC5A4:
	mov r0, ip
	adds r0, #0x65
	strb r1, [r0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080EC5B4: .4byte m2_character_info
_080EC5B8: .4byte gUnknown_08B1D62C

	thumb_func_start sub_80EC5BC
sub_80EC5BC: @ 0x080EC5BC
	push {r4, lr}
	ldr r4, _080EC618 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r0, r1, r4
	mov ip, r0
	adds r0, #0x5f
	ldrb r3, [r0]
	mov r0, ip
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC5F8
	ldr r2, _080EC61C @ =gUnknown_08B1D62C
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
_080EC5F8:
	mov r0, ip
	adds r0, #0x71
	ldrb r0, [r0]
	adds r3, r3, r0
	movs r1, #0
	cmp r3, #0
	blt _080EC608
	adds r1, r3, #0
_080EC608:
	mov r0, ip
	adds r0, #0x66
	strb r1, [r0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080EC618: .4byte m2_character_info
_080EC61C: .4byte gUnknown_08B1D62C

	thumb_func_start sub_80EC620
sub_80EC620: @ 0x080EC620
	push {r4, r5, lr}
	ldr r5, _080EC6A8 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r4, r0, #0
	muls r4, r1, r4
	adds r0, r4, r5
	mov ip, r0
	adds r0, #0x60
	ldrb r3, [r0]
	mov r0, ip
	adds r0, #0x77
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC65E
	ldr r2, _080EC6AC @ =gUnknown_08B1D62C
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r1, r5, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
_080EC65E:
	mov r0, ip
	adds r0, #0x78
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EC686
	ldr r2, _080EC6AC @ =gUnknown_08B1D62C
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r1, r5, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	adds r3, r3, r0
_080EC686:
	mov r0, ip
	adds r0, #0x74
	ldrb r0, [r0]
	adds r3, r3, r0
	movs r1, #0
	cmp r3, #0
	blt _080EC696
	adds r1, r3, #0
_080EC696:
	mov r0, ip
	adds r0, #0x67
	strb r1, [r0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080EC6A8: .4byte m2_character_info
_080EC6AC: .4byte gUnknown_08B1D62C

	thumb_func_start sub_80EC6B0
sub_80EC6B0: @ 0x080EC6B0
	ldr r2, _080EC6D4 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r1, r0, r2
	adds r2, r1, #0
	adds r2, #0x61
	adds r0, r1, #0
	adds r0, #0x72
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	adds r1, #0x68
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080EC6D4: .4byte m2_character_info

	thumb_func_start sub_80EC6D8
sub_80EC6D8: @ 0x080EC6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _080EC708 @ =gUnknown_02024860
	adds r7, r0, #0
	adds r7, #0x4e
	movs r1, #0
	ldrsh r6, [r7, r1]
	mov sb, r0
	cmp r6, #1
	beq _080EC72E
	cmp r6, #1
	bgt _080EC70C
	cmp r6, #0
	beq _080EC712
	b _080EC820
	.align 2, 0
_080EC708: .4byte gUnknown_02024860
_080EC70C:
	cmp r6, #2
	beq _080EC7B0
	b _080EC820
_080EC712:
	ldr r2, _080EC790 @ =m2_character_info
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r2, #0x30
	adds r2, r0, r2
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r2]
	ldr r1, _080EC794 @ =0x0098967F
	cmp r0, r1
	ble _080EC72E
	str r1, [r2]
_080EC72E:
	mov r1, sb
	adds r1, #0x4e
	movs r0, #2
	strh r0, [r1]
	ldr r2, _080EC790 @ =m2_character_info
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	movs r0, #0x6c
	adds r3, r4, #0
	muls r3, r0, r3
	adds r0, r3, r2
	adds r5, r0, #0
	adds r5, #0x40
	movs r6, #0
	ldrsh r0, [r5, r6]
	adds r6, r1, #0
	cmp r0, #0x62
	bgt _080EC7A0
	adds r2, #0x30
	adds r2, r3, r2
	ldr r3, _080EC798 @ =gUnknown_08B1EC20
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r2]
	ldr r0, [r1]
	cmp r2, r0
	blt _080EC7A0
	mov r1, r8
	cmp r1, #0
	beq _080EC780
	movs r0, #6
	bl PlaySongSetupPlayer
_080EC780:
	ldr r0, _080EC79C @ =gUnknown_03000AC4
	movs r1, #0
	strh r1, [r0]
	asrs r0, r6, #0x10
	mov r1, r8
	bl sub_80EC8A8
	b _080EC820
	.align 2, 0
_080EC790: .4byte m2_character_info
_080EC794: .4byte 0x0098967F
_080EC798: .4byte gUnknown_08B1EC20
_080EC79C: .4byte gUnknown_03000AC4
_080EC7A0:
	mov r1, sb
	adds r1, #0x4e
	ldr r0, _080EC7AC @ =0x0000FFFF
	strh r0, [r1]
	b _080EC820
	.align 2, 0
_080EC7AC: .4byte 0x0000FFFF
_080EC7B0:
	lsls r3, r3, #0x10
	mov sb, r3
	asrs r4, r3, #0x10
	adds r0, r4, #0
	mov r1, r8
	bl sub_80EC8A8
	ldr r0, _080EC810 @ =gUnknown_03000AC4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080EC820
	ldr r0, _080EC814 @ =0x0000FFFF
	strh r0, [r7]
	ldr r2, _080EC818 @ =m2_character_info
	movs r0, #0x6c
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, r2
	adds r5, r0, #0
	adds r5, #0x40
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0x62
	bgt _080EC820
	adds r2, #0x30
	adds r2, r1, r2
	ldr r3, _080EC81C @ =gUnknown_08B1EC20
	adds r1, r0, #0
	adds r1, #1
	lsls r1, r1, #2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r2, [r2]
	ldr r0, [r1]
	cmp r2, r0
	blt _080EC820
	strh r6, [r7]
	mov r6, sb
	b _080EC780
	.align 2, 0
_080EC810: .4byte gUnknown_03000AC4
_080EC814: .4byte 0x0000FFFF
_080EC818: .4byte m2_character_info
_080EC81C: .4byte gUnknown_08B1EC20
_080EC820:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80EC82C
sub_80EC82C: @ 0x080EC82C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xff
	bl RandomNumber
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #1
	adds r1, r4, #0
	bl __umodsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80EC850
sub_80EC850: @ 0x080EC850
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	muls r1, r4, r1
	subs r2, #2
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	subs r5, r1, r0
	cmp r5, #0
	bgt _080EC870
	movs r0, #0
	b _080EC89C
_080EC870:
	movs r0, #3
	bl sub_80EC82C
	ldr r3, _080EC8A4 @ =gUnknown_08B24368
	adds r2, r4, #1
	adds r1, r2, #0
	cmp r2, #0
	bge _080EC882
	adds r1, r4, #4
_080EC882:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r2, r1
	adds r1, r1, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r1]
	adds r0, r0, r1
	subs r0, #1
	muls r0, r5, r0
	movs r1, #0x32
	bl __divsi3
_080EC89C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080EC8A4: .4byte gUnknown_08B24368

	thumb_func_start sub_80EC8A8
sub_80EC8A8: @ 0x080EC8A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, _080EC8D0 @ =gUnknown_03000AC4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0xb
	bls _080EC8C6
	b _080ECFFE
_080EC8C6:
	lsls r0, r1, #2
	ldr r1, _080EC8D4 @ =_080EC8D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080EC8D0: .4byte gUnknown_03000AC4
_080EC8D4: .4byte _080EC8D8
_080EC8D8: @ jump table
	.4byte _080EC908 @ case 0
	.4byte _080EC988 @ case 1
	.4byte _080ECA08 @ case 2
	.4byte _080ECA88 @ case 3
	.4byte _080ECB08 @ case 4
	.4byte _080ECB88 @ case 5
	.4byte _080ECC40 @ case 6
	.4byte _080ECCF8 @ case 7
	.4byte _080ECD78 @ case 8
	.4byte _080ECE24 @ case 9
	.4byte _080ECF08 @ case 10
	.4byte _080ECFF4 @ case 11
_080EC908:
	ldr r1, _080EC970 @ =m2_character_info
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r0, r0, r1
	adds r4, r0, #0
	adds r4, #0x40
	ldr r0, _080EC974 @ =m2_selected_person
	strh r7, [r0]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #1
	strh r0, [r3]
	mov r3, r8
	cmp r3, #0
	beq _080EC988
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #6
	bl sub_80EC010
	movs r3, #0
	ldrsh r0, [r4, r3]
	bl sub_80EC070
	ldr r4, _080EC978 @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080EC97C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080EC980 @ =gUnknown_08061E7C
_080EC95E:
	bl sub_80DB168
	ldr r2, [r4, #8]
	ldr r0, [r2]
	ldr r1, _080EC984 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
	b _080ECFFE
	.align 2, 0
_080EC970: .4byte m2_character_info
_080EC974: .4byte m2_selected_person
_080EC978: .4byte gWindowPointers
_080EC97C: .4byte gUnknown_02024860
_080EC980: .4byte gUnknown_08061E7C
_080EC984: .4byte 0xFFFFFEFF
_080EC988:
	ldr r3, _080EC9F0 @ =m2_character_info
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r1, r2, #0
	adds r1, #0x40
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r5, r1, #1
	ldr r1, _080EC9F4 @ =gUnknown_08B1F260
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r4, r2, #0
	adds r4, #0x5c
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_80EC850
	adds r5, r0, #0
	ldr r1, _080EC9F8 @ =gUnknown_03000AC4
	movs r0, #2
	strh r0, [r1]
	cmp r5, #0
	ble _080ECA08
	ldrb r0, [r4]
	adds r0, r0, r5
	strb r0, [r4]
	bl sub_80BC034
	mov r0, r8
	cmp r0, #0
	beq _080ECA08
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080EC9FC @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECA00 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECA04 @ =gUnknown_08061E90
	b _080EC95E
	.align 2, 0
_080EC9F0: .4byte m2_character_info
_080EC9F4: .4byte gUnknown_08B1F260
_080EC9F8: .4byte gUnknown_03000AC4
_080EC9FC: .4byte gWindowPointers
_080ECA00: .4byte gUnknown_02024860
_080ECA04: .4byte gUnknown_08061E90
_080ECA08:
	ldr r3, _080ECA70 @ =m2_character_info
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r2, r2, r3
	adds r1, r2, #0
	adds r1, #0x40
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r5, r1, #1
	ldr r1, _080ECA74 @ =gUnknown_08B1F260
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	adds r4, r2, #0
	adds r4, #0x5d
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_80EC850
	adds r5, r0, #0
	ldr r1, _080ECA78 @ =gUnknown_03000AC4
	movs r0, #3
	strh r0, [r1]
	cmp r5, #0
	ble _080ECA88
	ldrb r0, [r4]
	adds r0, r0, r5
	strb r0, [r4]
	bl sub_80BC0CC
	mov r0, r8
	cmp r0, #0
	beq _080ECA88
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECA7C @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECA80 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECA84 @ =gUnknown_08061EA8
	b _080EC95E
	.align 2, 0
_080ECA70: .4byte m2_character_info
_080ECA74: .4byte gUnknown_08B1F260
_080ECA78: .4byte gUnknown_03000AC4
_080ECA7C: .4byte gWindowPointers
_080ECA80: .4byte gUnknown_02024860
_080ECA84: .4byte gUnknown_08061EA8
_080ECA88:
	ldr r2, _080ECAF0 @ =m2_character_info
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x6c
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r0, #1
	ldr r2, _080ECAF4 @ =gUnknown_03000AC4
	movs r0, #4
	strh r0, [r2]
	ldr r0, _080ECAF8 @ =gUnknown_08B1F260
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #2]
	adds r4, r3, #0
	adds r4, #0x5e
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_80EC850
	adds r5, r0, #0
	cmp r5, #0
	ble _080ECB08
	ldrb r0, [r4]
	adds r0, r0, r5
	strb r0, [r4]
	bl sub_80BC1C4
	mov r3, r8
	cmp r3, #0
	beq _080ECB08
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECAFC @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECB00 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECB04 @ =gUnknown_08061EC1
	b _080EC95E
	.align 2, 0
_080ECAF0: .4byte m2_character_info
_080ECAF4: .4byte gUnknown_03000AC4
_080ECAF8: .4byte gUnknown_08B1F260
_080ECAFC: .4byte gWindowPointers
_080ECB00: .4byte gUnknown_02024860
_080ECB04: .4byte gUnknown_08061EC1
_080ECB08:
	ldr r2, _080ECB70 @ =m2_character_info
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x6c
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r0, #1
	ldr r2, _080ECB74 @ =gUnknown_03000AC4
	movs r0, #5
	strh r0, [r2]
	ldr r0, _080ECB78 @ =gUnknown_08B1F260
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #3]
	adds r4, r3, #0
	adds r4, #0x5f
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_80EC850
	adds r5, r0, #0
	cmp r5, #0
	ble _080ECB88
	ldrb r0, [r4]
	adds r0, r0, r5
	strb r0, [r4]
	bl sub_80BC234
	mov r3, r8
	cmp r3, #0
	beq _080ECB88
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECB7C @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECB80 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECB84 @ =gUnknown_08061ED8
	b _080EC95E
	.align 2, 0
_080ECB70: .4byte m2_character_info
_080ECB74: .4byte gUnknown_03000AC4
_080ECB78: .4byte gUnknown_08B1F260
_080ECB7C: .4byte gWindowPointers
_080ECB80: .4byte gUnknown_02024860
_080ECB84: .4byte gUnknown_08061ED8
_080ECB88:
	ldr r1, _080ECBCC @ =m2_character_info
	lsls r2, r7, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x6c
	muls r0, r3, r0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r5, r0, #1
	ldr r1, _080ECBD0 @ =gUnknown_03000AC4
	movs r0, #6
	strh r0, [r1]
	adds r6, r2, #0
	cmp r5, #9
	bgt _080ECBD8
	ldr r1, _080ECBD4 @ =gUnknown_08B1F260
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0x61
	ldrb r2, [r1]
	subs r2, #2
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	b _080ECBEC
	.align 2, 0
_080ECBCC: .4byte m2_character_info
_080ECBD0: .4byte gUnknown_03000AC4
_080ECBD4: .4byte gUnknown_08B1F260
_080ECBD8:
	ldr r1, _080ECC2C @ =gUnknown_08B1F260
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x61
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_80EC850
_080ECBEC:
	adds r5, r0, #0
	cmp r5, #0
	ble _080ECC40
	ldr r2, _080ECC30 @ =m2_character_info
	asrs r1, r6, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0x61
	ldrb r0, [r1]
	adds r0, r0, r5
	strb r0, [r1]
	bl sub_80BC344
	mov r2, r8
	cmp r2, #0
	beq _080ECC40
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECC34 @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECC38 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECC3C @ =gUnknown_08061EEE
	b _080EC95E
	.align 2, 0
_080ECC2C: .4byte gUnknown_08B1F260
_080ECC30: .4byte m2_character_info
_080ECC34: .4byte gWindowPointers
_080ECC38: .4byte gUnknown_02024860
_080ECC3C: .4byte gUnknown_08061EEE
_080ECC40:
	ldr r1, _080ECC84 @ =m2_character_info
	lsls r2, r7, #0x10
	asrs r3, r2, #0x10
	movs r0, #0x6c
	muls r0, r3, r0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r5, r0, #1
	ldr r1, _080ECC88 @ =gUnknown_03000AC4
	movs r0, #7
	strh r0, [r1]
	adds r6, r2, #0
	cmp r5, #9
	bgt _080ECC90
	ldr r1, _080ECC8C @ =gUnknown_08B1F260
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0x62
	ldrb r2, [r1]
	subs r2, #2
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #1
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	b _080ECCA4
	.align 2, 0
_080ECC84: .4byte m2_character_info
_080ECC88: .4byte gUnknown_03000AC4
_080ECC8C: .4byte gUnknown_08B1F260
_080ECC90:
	ldr r1, _080ECCE4 @ =gUnknown_08B1F260
	lsls r0, r3, #3
	adds r0, r0, r1
	ldrb r1, [r0, #5]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r2, [r0]
	adds r0, r5, #0
	bl sub_80EC850
_080ECCA4:
	adds r5, r0, #0
	cmp r5, #0
	ble _080ECCF8
	ldr r2, _080ECCE8 @ =m2_character_info
	asrs r1, r6, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r1, r1, r2
	adds r1, #0x62
	ldrb r0, [r1]
	adds r0, r0, r5
	strb r0, [r1]
	bl sub_80BC374
	mov r2, r8
	cmp r2, #0
	beq _080ECCF8
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECCEC @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECCF0 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECCF4 @ =gUnknown_08061F07
	b _080EC95E
	.align 2, 0
_080ECCE4: .4byte gUnknown_08B1F260
_080ECCE8: .4byte m2_character_info
_080ECCEC: .4byte gWindowPointers
_080ECCF0: .4byte gUnknown_02024860
_080ECCF4: .4byte gUnknown_08061F07
_080ECCF8:
	ldr r2, _080ECD60 @ =m2_character_info
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x6c
	adds r3, r1, #0
	muls r3, r0, r3
	adds r3, r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r0, #1
	ldr r2, _080ECD64 @ =gUnknown_03000AC4
	movs r0, #8
	strh r0, [r2]
	ldr r0, _080ECD68 @ =gUnknown_08B1F260
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrb r1, [r1, #6]
	adds r4, r3, #0
	adds r4, #0x60
	ldrb r2, [r4]
	adds r0, r5, #0
	bl sub_80EC850
	adds r5, r0, #0
	cmp r5, #0
	ble _080ECD78
	ldrb r0, [r4]
	adds r0, r0, r5
	strb r0, [r4]
	bl sub_80BC2A4
	mov r3, r8
	cmp r3, #0
	beq _080ECD78
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECD6C @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECD70 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECD74 @ =gUnknown_08061F1C
	b _080EC95E
	.align 2, 0
_080ECD60: .4byte m2_character_info
_080ECD64: .4byte gUnknown_03000AC4
_080ECD68: .4byte gUnknown_08B1F260
_080ECD6C: .4byte gWindowPointers
_080ECD70: .4byte gUnknown_02024860
_080ECD74: .4byte gUnknown_08061F1C
_080ECD78:
	ldr r3, _080ECDB4 @ =m2_character_info
	lsls r4, r7, #0x10
	asrs r1, r4, #0x10
	movs r0, #0x6c
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r2, r3
	ldr r1, _080ECDB8 @ =gUnknown_03000AC4
	movs r0, #9
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	adds r2, #0x44
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r5, r0, r1
	adds r6, r4, #0
	cmp r5, #1
	bgt _080ECDBC
	movs r0, #2
	bl sub_80EC82C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	b _080ECDBE
	.align 2, 0
_080ECDB4: .4byte m2_character_info
_080ECDB8: .4byte gUnknown_03000AC4
_080ECDBC:
	adds r0, r5, #0
_080ECDBE:
	adds r5, r0, #0
	ldr r2, _080ECE10 @ =m2_character_info
	asrs r1, r6, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r1, r1, r2
	adds r2, r1, #0
	adds r2, #0x44
	ldrh r0, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, #0x46
	ldrh r0, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r3, _080ECE14 @ =0x000003E7
	cmp r0, r3
	ble _080ECDEA
	strh r3, [r2]
	strh r3, [r1]
_080ECDEA:
	mov r0, r8
	cmp r0, #0
	beq _080ECE24
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECE18 @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECE1C @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECE20 @ =gUnknown_08061F32
	b _080EC95E
	.align 2, 0
_080ECE10: .4byte m2_character_info
_080ECE14: .4byte 0x000003E7
_080ECE18: .4byte gWindowPointers
_080ECE1C: .4byte gUnknown_02024860
_080ECE20: .4byte gUnknown_08061F32
_080ECE24:
	ldr r4, _080ECE58 @ =m2_character_info
	lsls r2, r7, #0x10
	asrs r3, r2, #0x10
	ldr r1, _080ECE5C @ =gUnknown_03000AC4
	movs r0, #0xa
	strh r0, [r1]
	ldr r0, _080ECE60 @ =gUnknown_02024860
	adds r0, #0x50
	movs r1, #1
	strh r1, [r0]
	adds r6, r2, #0
	cmp r3, #2
	beq _080ECF08
	cmp r3, #0
	bne _080ECE64
	movs r0, #0x4a
	bl sub_80262A8
	cmp r0, #0
	beq _080ECE64
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	lsls r5, r0, #1
	adds r3, r4, #0
	b _080ECE74
	.align 2, 0
_080ECE58: .4byte m2_character_info
_080ECE5C: .4byte gUnknown_03000AC4
_080ECE60: .4byte gUnknown_02024860
_080ECE64:
	ldr r2, _080ECE98 @ =m2_character_info
	asrs r1, r6, #0x10
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x69
	ldrb r5, [r0]
	adds r3, r2, #0
_080ECE74:
	lsls r1, r5, #2
	adds r1, r1, r5
	asrs r2, r6, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r0, r0, r3
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r5, r1, r0
	cmp r5, #1
	bgt _080ECE9C
	movs r0, #2
	bl sub_80EC82C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080ECE9E
	.align 2, 0
_080ECE98: .4byte m2_character_info
_080ECE9C:
	adds r0, r5, #0
_080ECE9E:
	adds r5, r0, #0
	cmp r5, #0
	beq _080ECF08
	ldr r2, _080ECEF4 @ =m2_character_info
	asrs r1, r6, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r1, r1, r2
	adds r2, r1, #0
	adds r2, #0x4c
	ldrh r0, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, #0x4e
	ldrh r0, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r3, _080ECEF8 @ =0x000003E7
	cmp r0, r3
	ble _080ECECE
	strh r3, [r2]
	strh r3, [r1]
_080ECECE:
	mov r0, r8
	cmp r0, #0
	bne _080ECED6
	b _080ECFE4
_080ECED6:
	adds r0, r5, #0
	bl sub_80EC070
	ldr r4, _080ECEFC @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r2, _080ECF00 @ =gUnknown_02024860
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
	ldr r0, _080ECF04 @ =gUnknown_08061F4B
	b _080EC95E
	.align 2, 0
_080ECEF4: .4byte m2_character_info
_080ECEF8: .4byte 0x000003E7
_080ECEFC: .4byte gWindowPointers
_080ECF00: .4byte gUnknown_02024860
_080ECF04: .4byte gUnknown_08061F4B
_080ECF08:
	mov r1, r8
	cmp r1, #0
	beq _080ECFE4
	ldr r1, _080ECF30 @ =m2_character_info
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x40
	movs r3, #0
	ldrsh r5, [r0, r3]
	cmp r2, #1
	beq _080ECF9C
	cmp r2, #1
	bgt _080ECF34
	cmp r2, #0
	beq _080ECF3A
	b _080ECFE4
	.align 2, 0
_080ECF30: .4byte m2_character_info
_080ECF34:
	cmp r2, #3
	beq _080ECFC0
	b _080ECFE4
_080ECF3A:
	ldr r0, _080ECF88 @ =gUnknown_08B2A9B0
	ldr r6, _080ECF8C @ =gUnknown_02024860
	adds r7, r6, #0
	adds r7, #0x50
	movs r2, #0
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ECFF4
	ldrb r0, [r1, #6]
_080ECF52:
	cmp r0, r5
	bne _080ECF7E
	ldrb r0, [r7]
	bl sub_80EC050
	ldr r4, _080ECF90 @ =gWindowPointers
	ldr r1, [r4, #8]
	ldrh r0, [r1, #0x2c]
	adds r0, #2
	strh r0, [r1, #0x2c]
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	ldr r0, _080ECF94 @ =gUnknown_08061F64
	bl sub_80DB168
	ldr r2, [r4, #8]
	ldr r0, [r2]
	ldr r1, _080ECF98 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2]
_080ECF7E:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	b _080ECFFE
	.align 2, 0
_080ECF88: .4byte gUnknown_08B2A9B0
_080ECF8C: .4byte gUnknown_02024860
_080ECF90: .4byte gWindowPointers
_080ECF94: .4byte gUnknown_08061F64
_080ECF98: .4byte 0xFFFFFEFF
_080ECF9C:
	ldr r0, _080ECFB8 @ =gUnknown_08B2A9B0
	ldr r6, _080ECFBC @ =gUnknown_02024860
	adds r7, r6, #0
	adds r7, #0x50
	movs r3, #0
	ldrsh r1, [r7, r3]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ECFF4
	ldrb r0, [r1, #7]
	b _080ECF52
	.align 2, 0
_080ECFB8: .4byte gUnknown_08B2A9B0
_080ECFBC: .4byte gUnknown_02024860
_080ECFC0:
	ldr r0, _080ECFDC @ =gUnknown_08B2A9B0
	ldr r6, _080ECFE0 @ =gUnknown_02024860
	adds r7, r6, #0
	adds r7, #0x50
	movs r2, #0
	ldrsh r1, [r7, r2]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ECFF4
	ldrb r0, [r1, #8]
	b _080ECF52
	.align 2, 0
_080ECFDC: .4byte gUnknown_08B2A9B0
_080ECFE0: .4byte gUnknown_02024860
_080ECFE4:
	ldr r1, _080ECFF0 @ =gUnknown_03000AC4
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r3, #0
	b _080ECFFC
	.align 2, 0
_080ECFF0: .4byte gUnknown_03000AC4
_080ECFF4:
	ldr r1, _080ED00C @ =gUnknown_03000AC4
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
_080ECFFC:
	strh r0, [r1]
_080ECFFE:
	movs r0, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ED00C: .4byte gUnknown_03000AC4

	thumb_func_start sub_80ED010
sub_80ED010: @ 0x080ED010
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _080ED108 @ =m2_character_info
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r3, r0, r1
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #1
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x5c
	movs r1, #2
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x44
	movs r0, #0x1e
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	movs r1, #0
	cmp r2, #2
	beq _080ED06E
	movs r1, #0xa
_080ED06E:
	adds r0, r3, #0
	adds r0, #0x4c
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r0, _080ED10C @ =m2_selected_person
	mov r1, r8
	strh r1, [r0]
	bl sub_80BC034
	bl sub_80BC0CC
	bl sub_80BC1C4
	bl sub_80BC234
	bl sub_80BC2A4
	bl sub_80BC344
	bl sub_80BC374
	subs r4, #1
	cmp r4, #0
	beq _080ED0C4
	ldr r6, _080ED110 @ =gUnknown_03000AC4
	movs r7, #1
	rsbs r7, r7, #0
_080ED0AA:
	movs r0, #0
	strh r0, [r6]
	subs r4, #1
_080ED0B0:
	asrs r0, r5, #0x10
	movs r1, #0
	bl sub_80EC8A8
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, r7
	bne _080ED0B0
	cmp r4, #0
	bne _080ED0AA
_080ED0C4:
	mov r5, sb
	cmp r5, #0
	beq _080ED0FA
	ldr r1, _080ED108 @ =m2_character_info
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r3, r1, #0
	adds r3, #0x30
	adds r3, r0, r3
	ldr r4, _080ED114 @ =gUnknown_08B1EC20
	adds r0, r0, r1
	adds r0, #0x40
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r1, r1, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r1]
	str r0, [r3]
_080ED0FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080ED108: .4byte m2_character_info
_080ED10C: .4byte m2_selected_person
_080ED110: .4byte gUnknown_03000AC4
_080ED114: .4byte gUnknown_08B1EC20

	thumb_func_start sub_80ED118
sub_80ED118: @ 0x080ED118
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _080ED17C @ =gUnknown_08B1D62C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	ldrb r1, [r1, #2]
	movs r0, #0x3c
	ands r0, r1
	cmp r0, #0x20
	bne _080ED1A0
	ldr r0, _080ED180 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x42
	movs r3, #0
	ldr r2, _080ED184 @ =m2_character_info
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r0, #0x6c
	muls r1, r0, r1
	adds r2, #0x14
	adds r0, r1, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _080ED1A0
	adds r6, r4, #0
	adds r4, r1, #0
	adds r5, r2, #0
_080ED154:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #1
	adds r0, r0, r4
	adds r0, r0, r5
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #2]
	movs r0, #0x3c
	ands r0, r1
	cmp r0, #0x28
	bne _080ED188
	adds r0, r3, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080ED1A2
	.align 2, 0
_080ED17C: .4byte gUnknown_08B1D62C
_080ED180: .4byte gUnknown_0300538C
_080ED184: .4byte m2_character_info
_080ED188:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bgt _080ED1A0
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r0, r0, r5
	ldrh r0, [r0]
	cmp r0, #0
	bne _080ED154
_080ED1A0:
	movs r0, #0
_080ED1A2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80ED1A8
sub_80ED1A8: @ 0x080ED1A8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080ED1D8
	cmp r0, #1
	bgt _080ED1C2
	cmp r0, #0
	beq _080ED1C8
	b _080ED1F8
_080ED1C2:
	cmp r0, #3
	beq _080ED1E8
	b _080ED1F8
_080ED1C8:
	ldr r1, _080ED1D4 @ =gUnknown_08B2A9B0
	lsls r0, r2, #0x10
	asrs r0, r0, #0xc
	adds r0, r0, r1
	ldrb r3, [r0, #6]
	b _080ED1FA
	.align 2, 0
_080ED1D4: .4byte gUnknown_08B2A9B0
_080ED1D8:
	ldr r1, _080ED1E4 @ =gUnknown_08B2A9B0
	lsls r0, r2, #0x10
	asrs r0, r0, #0xc
	adds r0, r0, r1
	ldrb r3, [r0, #7]
	b _080ED1FA
	.align 2, 0
_080ED1E4: .4byte gUnknown_08B2A9B0
_080ED1E8:
	ldr r1, _080ED1F4 @ =gUnknown_08B2A9B0
	lsls r0, r2, #0x10
	asrs r0, r0, #0xc
	adds r0, r0, r1
	ldrb r3, [r0, #8]
	b _080ED1FA
	.align 2, 0
_080ED1F4: .4byte gUnknown_08B2A9B0
_080ED1F8:
	movs r3, #0
_080ED1FA:
	cmp r3, #0
	beq _080ED220
	movs r4, #0
	ldr r2, _080ED21C @ =m2_character_info
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x40
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r3, r0
	bgt _080ED222
	movs r4, #1
	b _080ED222
	.align 2, 0
_080ED21C: .4byte m2_character_info
_080ED220:
	movs r4, #0
_080ED222:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED22C
sub_80ED22C: @ 0x080ED22C
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	ldr r0, _080ED264 @ =gUnknown_03001D94
	adds r1, r1, r0
	movs r3, #0
	ldr r4, _080ED268 @ =gUnknown_08B2436C
_080ED23E:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080ED26C
	adds r2, r0, #0
	subs r2, #1
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080ED27E
	movs r0, #0
	b _080ED280
	.align 2, 0
_080ED264: .4byte gUnknown_03001D94
_080ED268: .4byte gUnknown_08B2436C
_080ED26C:
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r1, #1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _080ED23E
_080ED27E:
	movs r0, #1
_080ED280:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED288
sub_80ED288: @ 0x080ED288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r1, r0, #0x10
	asrs r5, r1, #0x10
	cmp r5, #2
	bne _080ED2AA
	b _080ED3BC
_080ED2AA:
	movs r4, #0
	movs r3, #1
	ldr r6, _080ED2E0 @ =gUnknown_08B2A9B0
	ldrb r0, [r6, #0x10]
	mov sb, r1
	cmp r0, #0
	beq _080ED34A
	adds r2, r5, #0
	adds r5, r6, #0
	ldr r1, _080ED2E4 @ =m2_character_info
	mov r6, ip
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #0x6c
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x40
	mov sl, r0
_080ED2D0:
	cmp r2, #1
	beq _080ED2FA
	cmp r2, #1
	bgt _080ED2E8
	cmp r2, #0
	beq _080ED2F0
	lsls r3, r3, #0x10
	b _080ED30E
	.align 2, 0
_080ED2E0: .4byte gUnknown_08B2A9B0
_080ED2E4: .4byte m2_character_info
_080ED2E8:
	cmp r2, #3
	beq _080ED304
	lsls r3, r3, #0x10
	b _080ED30E
_080ED2F0:
	lsls r1, r3, #0x10
	asrs r0, r1, #0xc
	adds r0, r0, r5
	ldrb r4, [r0, #6]
	b _080ED30C
_080ED2FA:
	lsls r1, r3, #0x10
	asrs r0, r1, #0xc
	adds r0, r0, r5
	ldrb r4, [r0, #7]
	b _080ED30C
_080ED304:
	lsls r1, r3, #0x10
	asrs r0, r1, #0xc
	adds r0, r0, r5
	ldrb r4, [r0, #8]
_080ED30C:
	adds r3, r1, #0
_080ED30E:
	cmp r4, #0
	beq _080ED338
	asrs r0, r3, #0xc
	adds r1, r0, r5
	ldrb r0, [r1, #3]
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _080ED338
	mov r6, sl
	movs r7, #0
	ldrsh r0, [r6, r7]
	cmp r0, r4
	blt _080ED338
	ldrb r1, [r1, #2]
	ldr r6, [sp]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _080ED3B0
_080ED338:
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r3, r7
	lsrs r3, r0, #0x10
	asrs r0, r0, #0xc
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080ED2D0
_080ED34A:
	mov r0, sb
	cmp r0, #0
	bne _080ED37C
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080ED37C
	ldr r0, _080ED3B4 @ =m2_character_info
	ldr r6, _080ED3B8 @ =0x0000022A
	adds r0, r0, r6
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080ED37C
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080ED3B0
_080ED37C:
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #3
	bne _080ED3BC
	mov r6, ip
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080ED3BC
	ldr r0, _080ED3B4 @ =m2_character_info
	ldr r7, _080ED3B8 @ =0x0000022A
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080ED3BC
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ED3BC
_080ED3B0:
	movs r0, #1
	b _080ED3BE
	.align 2, 0
_080ED3B4: .4byte m2_character_info
_080ED3B8: .4byte 0x0000022A
_080ED3BC:
	movs r0, #0
_080ED3BE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED3D0
sub_80ED3D0: @ 0x080ED3D0
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r7, #0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #2
	beq _080ED408
	adds r0, r4, #0
	bl sub_80ED22C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ED408
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_80ED288
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
_080ED408:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80ED410
sub_80ED410: @ 0x080ED410
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	movs r2, #0xf
	bl sub_80ED3D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED428
sub_80ED428: @ 0x080ED428
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	ldr r0, _080ED460 @ =m2_character_info
	ldr r3, _080ED464 @ =0x000001CB
	adds r2, r0, r3
	ldrb r3, [r2]
	cmp r1, r3
	bge _080ED476
	adds r6, r0, #0
	adds r7, r2, #0
_080ED43C:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r4, r5, r0
	ldrb r0, [r4]
	movs r1, #1
	movs r2, #0xf
	bl sub_80ED3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ED468
	ldrb r0, [r4]
	adds r0, #1
	b _080ED478
	.align 2, 0
_080ED460: .4byte m2_character_info
_080ED464: .4byte 0x000001CB
_080ED468:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r7]
	cmp r0, r2
	blt _080ED43C
_080ED476:
	movs r0, #0
_080ED478:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED480
sub_80ED480: @ 0x080ED480
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	movs r1, #0
	ldr r0, _080ED4D4 @ =m2_character_info
	ldr r3, _080ED4D8 @ =0x000001CB
	adds r2, r0, r3
	ldrb r3, [r2]
	cmp r5, r3
	bge _080ED4CA
	adds r6, r0, #0
	adds r7, r2, #0
_080ED496:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r4, r0
	ldrb r0, [r0]
	movs r1, #1
	movs r2, #0xf
	bl sub_80ED3D0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ED4BC
	lsls r0, r5, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r5, r0, #0x10
_080ED4BC:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r3, [r7]
	cmp r0, r3
	blt _080ED496
_080ED4CA:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ED4D4: .4byte m2_character_info
_080ED4D8: .4byte 0x000001CB

	thumb_func_start sub_80ED4DC
sub_80ED4DC: @ 0x080ED4DC
	bx lr
	.align 2, 0

	thumb_func_start sub_80ED4E0
sub_80ED4E0: @ 0x080ED4E0
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _080ED514
	cmp r0, #2
	bgt _080ED4F4
	cmp r0, #1
	beq _080ED4FE
	b _080ED54A
_080ED4F4:
	cmp r0, #3
	beq _080ED528
	cmp r0, #4
	beq _080ED53C
	b _080ED54A
_080ED4FE:
	ldr r0, _080ED50C @ =m2_character_info
	ldr r1, _080ED510 @ =0x0000022A
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #1
	b _080ED546
	.align 2, 0
_080ED50C: .4byte m2_character_info
_080ED510: .4byte 0x0000022A
_080ED514:
	ldr r0, _080ED520 @ =m2_character_info
	ldr r1, _080ED524 @ =0x0000022A
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	b _080ED546
	.align 2, 0
_080ED520: .4byte m2_character_info
_080ED524: .4byte 0x0000022A
_080ED528:
	ldr r0, _080ED534 @ =m2_character_info
	ldr r1, _080ED538 @ =0x0000022A
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #4
	b _080ED546
	.align 2, 0
_080ED534: .4byte m2_character_info
_080ED538: .4byte 0x0000022A
_080ED53C:
	ldr r0, _080ED550 @ =m2_character_info
	ldr r1, _080ED554 @ =0x0000022A
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #8
_080ED546:
	orrs r1, r2
	strb r1, [r0]
_080ED54A:
	pop {r0}
	bx r0
	.align 2, 0
_080ED550: .4byte m2_character_info
_080ED554: .4byte 0x0000022A

	thumb_func_start sub_80ED558
sub_80ED558: @ 0x080ED558
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	ldr r2, _080ED584 @ =m2_character_info
	lsrs r5, r1, #0x10
	asrs r1, r1, #0xf
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0x6c
	muls r0, r4, r0
	adds r1, r1, r0
	adds r2, #0x14
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	bl sub_80ED59C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED588
	movs r0, #0
	b _080ED596
	.align 2, 0
_080ED584: .4byte m2_character_info
_080ED588:
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_80BC6C8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080ED596:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80ED59C
sub_80ED59C: @ 0x080ED59C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	movs r2, #0
	ldr r5, _080ED5B8 @ =gUnknown_03001FA4
	lsrs r4, r0, #0x10
	asrs r3, r0, #0x10
_080ED5A8:
	adds r1, r2, r5
	ldrb r0, [r1]
	cmp r0, #0
	bne _080ED5BC
	strb r4, [r1]
	adds r0, r3, #0
	b _080ED5C4
	.align 2, 0
_080ED5B8: .4byte gUnknown_03001FA4
_080ED5BC:
	adds r2, #1
	cmp r2, #0x23
	ble _080ED5A8
	movs r0, #0
_080ED5C4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED5CC
sub_80ED5CC: @ 0x080ED5CC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _080ED628 @ =m2_character_info
	lsls r2, r3, #0x10
	asrs r4, r2, #0x10
	movs r0, #0x99
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r0, r4, r5
	ldrb r6, [r0]
	adds r7, r1, #0
	cmp r6, #0
	beq _080ED60E
	cmp r4, #0x23
	bgt _080ED60E
	adds r4, r5, #0
_080ED5EE:
	asrs r0, r2, #0x10
	adds r2, r0, r4
	adds r0, #1
	adds r1, r0, r4
	ldrb r1, [r1]
	strb r1, [r2]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r3, #0x10
	asrs r1, r2, #0x10
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080ED60E
	cmp r1, #0x23
	ble _080ED5EE
_080ED60E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x99
	lsls r2, r2, #2
	adds r1, r7, r2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080ED628: .4byte m2_character_info

	thumb_func_start sub_80ED62C
sub_80ED62C: @ 0x080ED62C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80ED5CC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80EC2F0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED654
sub_80ED654: @ 0x080ED654
	push {lr}
	movs r1, #0
	ldr r3, _080ED66C @ =gUnknown_03001F04
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
_080ED65E:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _080ED670
	adds r0, #1
	b _080ED678
	.align 2, 0
_080ED66C: .4byte gUnknown_03001F04
_080ED670:
	adds r1, #1
	cmp r1, #5
	ble _080ED65E
	movs r0, #0
_080ED678:
	pop {r1}
	bx r1

	thumb_func_start sub_80ED67C
sub_80ED67C: @ 0x080ED67C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
	movs r3, #0
	ldr r0, _080ED740 @ =m2_character_info
	ldr r2, _080ED744 @ =0x000001CB
	adds r1, r0, r2
	ldrb r1, [r1]
	cmp r5, r1
	bhs _080ED70A
	movs r7, #0xe2
	lsls r7, r7, #1
	adds r7, r7, r0
	mov sl, r7
	adds r0, #0x14
	mov sb, r0
	mov r8, r1
_080ED6A6:
	mov r1, sl
	adds r0, r3, r1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	add r0, sb
	str r0, [sp]
	movs r4, #0
	ldrb r2, [r0]
	adds r3, #1
	mov ip, r3
	cmp r2, #0
	beq _080ED700
	ldr r6, _080ED748 @ =gUnknown_08B1D62C
_080ED6C2:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r6
	ldrb r0, [r3, #2]
	cmp r0, #4
	bne _080ED6EA
	cmp r5, #0
	beq _080ED6E8
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r7, #0xa
	ldrsh r1, [r0, r7]
	movs r7, #0xa
	ldrsh r0, [r3, r7]
	cmp r1, r0
	ble _080ED6EA
_080ED6E8:
	adds r5, r2, #0
_080ED6EA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xd
	bhi _080ED700
	lsls r0, r4, #1
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r2, [r0]
	cmp r2, #0
	bne _080ED6C2
_080ED700:
	mov r2, ip
	lsls r0, r2, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r8
	blo _080ED6A6
_080ED70A:
	cmp r5, #0
	beq _080ED74C
	ldr r1, _080ED748 @ =gUnknown_08B1D62C
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	movs r7, #6
	ldrsh r0, [r4, r7]
	bl sub_80ED654
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080ED75C
	movs r0, #0xf
	movs r1, #0
	bl sub_80D1860
	movs r0, #0x10
	movs r1, #0
	bl sub_80D1860
	ldrb r0, [r4, #6]
	bl sub_80D1310
	b _080ED75C
	.align 2, 0
_080ED740: .4byte m2_character_info
_080ED744: .4byte 0x000001CB
_080ED748: .4byte gUnknown_08B1D62C
_080ED74C:
	movs r0, #0xf
	movs r1, #0
	bl sub_80D1860
	movs r0, #0x10
	movs r1, #0
	bl sub_80D1860
_080ED75C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80ED770
sub_80ED770: @ 0x080ED770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r4, #0
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	cmp r0, #0xbf
	bls _080ED796
	bl sub_080EE054
_080ED796:
	cmp r0, #0x5f
	bls _080ED7B4
	ldr r0, _080ED7AC @ =gUnknown_08B244C7
	ldrb r1, [r2]
	subs r1, #0x60
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _080ED7B0 @ =gUnknown_08B2456F
	b _080ED7C2
	.align 2, 0
_080ED7AC: .4byte gUnknown_08B244C7
_080ED7B0: .4byte gUnknown_08B2456F
_080ED7B4:
	ldr r0, _080ED930 @ =gUnknown_08B243CE
	ldr r3, [sp, #8]
	ldrb r1, [r3]
	adds r0, r1, r0
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, _080ED934 @ =gUnknown_08B24474
_080ED7C2:
	adds r1, r1, r0
	ldrb r1, [r1]
	str r1, [sp, #0x1c]
	movs r1, #7
	ldr r4, [sp, #0x18]
	ands r1, r4
	lsls r1, r1, #6
	lsrs r0, r4, #3
	lsls r0, r0, #0xa
	adds r1, r1, r0
	ldr r2, _080ED938 @ =gUnknown_08B08BC4
	adds r6, r1, r2
	ldr r1, _080ED93C @ =gUnknown_03005220
	ldr r5, [r1]
	ldr r3, _080ED940 @ =0x000004BA
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _080ED7EC
	adds r0, #7
_080ED7EC:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, #0x38
	adds r0, r5, r0
	str r0, [sp, #0xc]
	ldr r1, _080ED944 @ =0x000004BC
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r1, r0
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080ED814
	adds r0, r1, #7
_080ED814:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	ldr r3, [sp, #4]
	movs r1, #0x2a
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bne _080ED85C
	mov r0, sp
	ldr r2, _080ED948 @ =0x00004444
	adds r3, r2, #0
	strh r3, [r0]
	ldr r0, _080ED94C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x38
	str r1, [r0, #4]
	ldr r2, _080ED950 @ =0x81000120
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r1, r5, r3
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_080ED85C:
	movs r5, #0
	str r5, [sp, #0x14]
	lsls r0, r7, #0x10
	str r0, [sp, #0x60]
	lsls r4, r4, #0x10
	str r4, [sp, #0x64]
	ldr r1, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0x68]
	str r4, [sp, #0x20]
	asrs r2, r4, #0x10
	str r2, [sp, #0x24]
_080ED874:
	movs r4, #0
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	mov sl, r3
_080ED87C:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	beq _080ED954
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x20]
	asrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, sb
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080ED89E
	adds r0, r3, #3
_080ED89E:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080ED8FC
	adds r0, r2, #3
_080ED8FC:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080ED98E
	.align 2, 0
_080ED930: .4byte gUnknown_08B243CE
_080ED934: .4byte gUnknown_08B24474
_080ED938: .4byte gUnknown_08B08BC4
_080ED93C: .4byte gUnknown_03005220
_080ED940: .4byte 0x000004BA
_080ED944: .4byte 0x000004BC
_080ED948: .4byte 0x00004444
_080ED94C: .4byte 0x040000D4
_080ED950: .4byte 0x81000120
_080ED954:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080ED968
	adds r1, r3, #3
_080ED968:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080ED98E:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080ED9A2
	b _080ED87C
_080ED9A2:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080ED9B8
	b _080ED874
_080ED9B8:
	ldr r3, [sp, #0x68]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x1c]
	cmp r4, #8
	bhi _080ED9C4
	b _080EDAEE
_080ED9C4:
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x28]
	asrs r1, r0, #0x10
	str r1, [sp, #0x2c]
_080ED9D0:
	movs r4, #0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	mov sl, r2
_080ED9D8:
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _080EDA8C
	mov r5, sl
	asrs r1, r5, #0x10
	ldr r0, [sp, #0x28]
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, sb
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080ED9FA
	adds r0, r3, #3
_080ED9FA:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080EDA58
	adds r0, r2, #3
_080EDA58:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EDAC6
_080EDA8C:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x2c]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EDAA0
	adds r1, r3, #3
_080EDAA0:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EDAC6:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080EDADA
	b _080ED9D8
_080EDADA:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080EDAEC
	b _080ED9D0
_080EDAEC:
	b _080EDBF0
_080EDAEE:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x30]
	asrs r2, r1, #0x10
	str r2, [sp, #0x34]
_080EDAFA:
	movs r4, #0
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	mov sl, r3
_080EDB02:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	beq _080EDB94
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x30]
	asrs r2, r2, #0x10
	mov ip, r2
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	adds r3, r2, r5
	adds r0, r3, #0
	cmp r3, #0
	bge _080EDB20
	adds r0, r3, #3
_080EDB20:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r7, r1, r4
	adds r0, r0, r7
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x40
	mov sb, r0
	adds r0, r1, #0
	mov r1, sb
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r8, r0
	add r2, r8
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r4, #0x40
	adds r0, r1, #0
	orrs r0, r4
	strb r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	mov r1, ip
	adds r2, r1, r3
	adds r0, r2, #0
	cmp r2, #0
	bge _080EDB72
	adds r0, r2, #3
_080EDB72:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	adds r0, r0, r7
	adds r0, r0, r1
	strb r4, [r0]
	movs r1, #0x44
	strb r1, [r0]
	add r0, r8
	mov r4, sb
	strb r4, [r0]
	strb r1, [r0]
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EDBCE
_080EDB94:
	mov r0, sl
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x34]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EDBA8
	adds r1, r3, #3
_080EDBA8:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EDBCE:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080EDB02
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080EDAFA
_080EDBF0:
	ldr r6, _080EDC18 @ =gUnknown_03005220
	ldr r1, [r6]
	ldr r0, _080EDC1C @ =0x000004BC
	adds r2, r1, r0
	ldrh r0, [r2]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	strh r0, [r2]
	ldr r4, _080EDC20 @ =0x000004BA
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
	ldr r5, [sp, #8]
	ldrb r0, [r5]
	cmp r0, #0x5f
	bls _080EDC28
	ldr r1, _080EDC24 @ =gUnknown_08B2451B
	subs r0, #0x60
	b _080EDC2E
	.align 2, 0
_080EDC18: .4byte gUnknown_03005220
_080EDC1C: .4byte 0x000004BC
_080EDC20: .4byte 0x000004BA
_080EDC24: .4byte gUnknown_08B2451B
_080EDC28:
	ldr r1, _080EDD78 @ =gUnknown_08B24421
	ldr r6, [sp, #8]
	ldrb r0, [r6]
_080EDC2E:
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _080EDC3E
	bl _080EE558
_080EDC3E:
	movs r1, #6
	str r1, [sp, #0x10]
	cmp r0, #0x3a
	bne _080EDC4A
	movs r2, #4
	str r2, [sp, #0x10]
_080EDC4A:
	movs r0, #7
	ldr r3, [sp, #0x18]
	ands r0, r3
	lsls r0, r0, #6
	lsrs r1, r3, #3
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r4, _080EDD7C @ =gUnknown_08B08BC4
	adds r6, r0, r4
	ldr r5, _080EDD80 @ =gUnknown_03005220
	ldr r1, [r5]
	ldr r2, _080EDD84 @ =0x000004BA
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bge _080EDC6E
	adds r0, #7
_080EDC6E:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, #0x38
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r4, _080EDD88 @ =0x000004BC
	adds r0, r1, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r1, r0
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080EDC96
	adds r0, r1, #7
_080EDC96:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r1, r7, #0x10
	str r1, [sp, #0x60]
	ldr r2, [sp, #0xc]
	adds r2, #0x20
	str r2, [sp, #0x68]
	lsls r4, r4, #0x10
	str r4, [sp, #0x64]
	asrs r3, r4, #0x10
	str r3, [sp, #0x38]
_080EDCBE:
	movs r4, #0
	ldr r5, [sp, #0x14]
	lsls r5, r5, #0x10
	mov sl, r5
_080EDCC6:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080EDD8C
	mov r2, sl
	asrs r1, r2, #0x10
	ldr r3, [sp, #0x64]
	asrs r3, r3, #0x10
	mov sb, r3
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080EDCE6
	adds r0, r3, #3
_080EDCE6:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080EDD44
	adds r0, r2, #3
_080EDD44:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EDDC6
	.align 2, 0
_080EDD78: .4byte gUnknown_08B24421
_080EDD7C: .4byte gUnknown_08B08BC4
_080EDD80: .4byte gUnknown_03005220
_080EDD84: .4byte 0x000004BA
_080EDD88: .4byte 0x000004BC
_080EDD8C:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x38]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EDDA0
	adds r1, r3, #3
_080EDDA0:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EDDC6:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080EDDDA
	b _080EDCC6
_080EDDDA:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080EDDF0
	b _080EDCBE
_080EDDF0:
	ldr r3, [sp, #0x68]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x1c]
	cmp r4, #8
	bhi _080EDDFC
	b _080EDF26
_080EDDFC:
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x3c]
	asrs r1, r0, #0x10
	str r1, [sp, #0x40]
_080EDE08:
	movs r4, #0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	mov sl, r2
_080EDE10:
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _080EDEC4
	mov r5, sl
	asrs r1, r5, #0x10
	ldr r0, [sp, #0x3c]
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, sb
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080EDE32
	adds r0, r3, #3
_080EDE32:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080EDE90
	adds r0, r2, #3
_080EDE90:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EDEFE
_080EDEC4:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x40]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EDED8
	adds r1, r3, #3
_080EDED8:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EDEFE:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080EDF12
	b _080EDE10
_080EDF12:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080EDF24
	b _080EDE08
_080EDF24:
	b _080EE028
_080EDF26:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x44]
	asrs r2, r1, #0x10
	str r2, [sp, #0x48]
_080EDF32:
	movs r4, #0
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	mov sl, r3
_080EDF3A:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	beq _080EDFCC
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x44]
	asrs r2, r2, #0x10
	mov ip, r2
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	adds r3, r2, r5
	adds r0, r3, #0
	cmp r3, #0
	bge _080EDF58
	adds r0, r3, #3
_080EDF58:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r7, r1, r4
	adds r0, r0, r7
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x40
	mov sb, r0
	adds r0, r1, #0
	mov r1, sb
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r8, r0
	add r2, r8
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r4, #0x40
	adds r0, r1, #0
	orrs r0, r4
	strb r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	mov r1, ip
	adds r2, r1, r3
	adds r0, r2, #0
	cmp r2, #0
	bge _080EDFAA
	adds r0, r2, #3
_080EDFAA:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	adds r0, r0, r7
	adds r0, r0, r1
	strb r4, [r0]
	movs r1, #0x44
	strb r1, [r0]
	add r0, r8
	mov r4, sb
	strb r4, [r0]
	strb r1, [r0]
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EE006
_080EDFCC:
	mov r0, sl
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x48]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EDFE0
	adds r1, r3, #3
_080EDFE0:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EE006:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080EDF3A
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080EDF32
_080EE028:
	ldr r6, _080EE048 @ =gUnknown_03005220
	ldr r2, [r6]
	ldr r0, _080EE04C @ =0x000004BC
	adds r3, r2, r0
	ldrh r0, [r3]
	ldr r4, [sp, #0x10]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r3]
	ldr r5, _080EE050 @ =0x000004BA
	adds r2, r2, r5
	ldrh r0, [r2]
	adds r1, r1, r0
	strh r1, [r2]
	b _080EE558
	.align 2, 0
_080EE048: .4byte gUnknown_03005220
_080EE04C: .4byte 0x000004BC
_080EE050: .4byte 0x000004BA

	thumb_func_start sub_080EE054
sub_080EE054: @ 0x080EE054
	ldr r6, [sp, #8]
	ldrb r1, [r6]
	cmp r1, #0xf4
	beq _080EE074
	cmp r1, #0xf4
	bgt _080EE066
	cmp r1, #0xef
	beq _080EE070
	b _080EE092
_080EE066:
	cmp r1, #0xf5
	beq _080EE07E
	cmp r1, #0xfd
	beq _080EE088
	b _080EE092
_080EE070:
	movs r0, #0x39
	b _080EE08A
_080EE074:
	movs r2, #0x2e
	str r2, [sp, #0x18]
	movs r3, #0xb
	str r3, [sp, #0x1c]
	b _080EE0C2
_080EE07E:
	movs r5, #0x2f
	str r5, [sp, #0x18]
	movs r6, #0xb
	str r6, [sp, #0x1c]
	b _080EE0C2
_080EE088:
	movs r0, #0x3d
_080EE08A:
	str r0, [sp, #0x18]
	movs r1, #8
	str r1, [sp, #0x1c]
	b _080EE0C2
_080EE092:
	movs r4, #1
	movs r2, #8
	str r2, [sp, #0x1c]
	ldr r1, _080EE230 @ =gUnknown_03005220
	ldr r0, [r1]
	ldr r3, _080EE234 @ =0x000004BA
	adds r0, r0, r3
	movs r5, #0
	ldrsh r3, [r0, r5]
	adds r0, r3, #0
	cmp r3, #0
	bge _080EE0AC
	adds r0, r3, #7
_080EE0AC:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r1, r3, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	ble _080EE0C2
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
_080EE0C2:
	ldr r6, [sp, #4]
	movs r1, #0x2a
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _080EE0FA
	mov r0, sp
	ldr r2, _080EE238 @ =0x00004444
	adds r3, r2, #0
	strh r3, [r0]
	ldr r1, _080EE23C @ =0x040000D4
	str r0, [r1]
	ldr r5, _080EE230 @ =gUnknown_03005220
	ldr r0, [r5]
	adds r0, #0x38
	str r0, [r1, #4]
	ldr r2, _080EE240 @ =0x81000120
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	strh r3, [r0]
	str r0, [r1]
	ldr r0, [r5]
	movs r6, #0x9e
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_080EE0FA:
	cmp r4, #0
	beq _080EE100
	b _080EE510
_080EE100:
	movs r1, #7
	ldr r0, [sp, #0x18]
	ands r1, r0
	lsls r1, r1, #6
	lsrs r0, r0, #3
	lsls r0, r0, #0xa
	adds r1, r1, r0
	ldr r0, _080EE244 @ =gUnknown_08B08BC4
	adds r6, r1, r0
	ldr r2, _080EE230 @ =gUnknown_03005220
	ldr r1, [r2]
	ldr r3, _080EE234 @ =0x000004BA
	adds r0, r1, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bge _080EE124
	adds r0, #7
_080EE124:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r0, #0x38
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r5, _080EE248 @ =0x000004BC
	adds r0, r1, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r0, r0, #1
	subs r0, r1, r0
	lsls r0, r0, #0x12
	lsrs r7, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080EE14C
	adds r0, r1, #7
_080EE14C:
	asrs r0, r0, #3
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	lsls r1, r1, #0xf
	lsrs r4, r1, #0x10
	movs r3, #0
	str r3, [sp, #0x14]
	lsls r5, r7, #0x10
	str r5, [sp, #0x60]
	ldr r0, [sp, #0xc]
	adds r0, #0x20
	str r0, [sp, #0x68]
	lsls r4, r4, #0x10
	str r4, [sp, #0x64]
	asrs r1, r4, #0x10
	str r1, [sp, #0x4c]
_080EE174:
	movs r4, #0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	mov sl, r2
_080EE17C:
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _080EE24C
	mov r5, sl
	asrs r1, r5, #0x10
	ldr r0, [sp, #0x64]
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, sb
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080EE19E
	adds r0, r3, #3
_080EE19E:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080EE1FC
	adds r0, r2, #3
_080EE1FC:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EE286
	.align 2, 0
_080EE230: .4byte gUnknown_03005220
_080EE234: .4byte 0x000004BA
_080EE238: .4byte 0x00004444
_080EE23C: .4byte 0x040000D4
_080EE240: .4byte 0x81000120
_080EE244: .4byte gUnknown_08B08BC4
_080EE248: .4byte 0x000004BC
_080EE24C:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EE260
	adds r1, r3, #3
_080EE260:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EE286:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080EE29A
	b _080EE17C
_080EE29A:
	ldr r5, [sp, #0x14]
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080EE2B0
	b _080EE174
_080EE2B0:
	ldr r3, [sp, #0x68]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x1c]
	cmp r4, #8
	bhi _080EE2BC
	b _080EE3E6
_080EE2BC:
	movs r5, #0
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x64]
	str r0, [sp, #0x50]
	asrs r1, r0, #0x10
	str r1, [sp, #0x54]
_080EE2C8:
	movs r4, #0
	ldr r2, [sp, #0x14]
	lsls r2, r2, #0x10
	mov sl, r2
_080EE2D0:
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _080EE384
	mov r5, sl
	asrs r1, r5, #0x10
	ldr r0, [sp, #0x50]
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	mov r3, sb
	add r3, ip
	adds r0, r3, #0
	cmp r3, #0
	bge _080EE2F2
	adds r0, r3, #3
_080EE2F2:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r1, r1, r4
	mov r8, r1
	add r0, r8
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	ldrb r0, [r6]
	movs r5, #0x10
	rsbs r5, r5, #0
	adds r7, r5, #0
	lsls r0, r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r5, r6, r3
	ldrb r0, [r5]
	lsls r0, r0, #4
	ands r0, r7
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, sb
	adds r2, r0, r4
	adds r0, r2, #0
	cmp r2, #0
	bge _080EE350
	adds r0, r2, #3
_080EE350:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	add r0, r8
	adds r1, r0, r1
	movs r3, #0x40
	strb r3, [r1]
	ldrb r0, [r6]
	lsrs r0, r0, #4
	orrs r0, r3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
	strb r3, [r1]
	ldrb r0, [r5]
	lsrs r0, r0, #4
	movs r2, #0xf
	ands r0, r2
	orrs r0, r3
	strb r0, [r1]
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EE3BE
_080EE384:
	mov r3, sl
	asrs r5, r3, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x54]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EE398
	adds r1, r3, #3
_080EE398:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EE3BE:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bgt _080EE3D2
	b _080EE2D0
_080EE3D2:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	bgt _080EE3E4
	b _080EE2C8
_080EE3E4:
	b _080EE4E8
_080EE3E6:
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x58]
	asrs r2, r1, #0x10
	str r2, [sp, #0x5c]
_080EE3F2:
	movs r4, #0
	ldr r3, [sp, #0x14]
	lsls r3, r3, #0x10
	mov sl, r3
_080EE3FA:
	ldr r5, [sp, #0x60]
	cmp r5, #0
	beq _080EE48C
	mov r0, sl
	asrs r1, r0, #0x10
	ldr r2, [sp, #0x58]
	asrs r2, r2, #0x10
	mov ip, r2
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	adds r3, r2, r5
	adds r0, r3, #0
	cmp r3, #0
	bge _080EE418
	adds r0, r3, #3
_080EE418:
	asrs r0, r0, #2
	lsls r2, r0, #2
	subs r2, r3, r2
	lsls r0, r0, #5
	lsls r1, r1, #2
	ldr r4, [sp, #0xc]
	adds r7, r1, r4
	adds r0, r0, r7
	adds r2, r0, r2
	ldrb r0, [r2]
	movs r4, #0xf
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r0, #0x40
	mov sb, r0
	adds r0, r1, #0
	mov r1, sb
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x90
	lsls r0, r0, #2
	mov r8, r0
	add r2, r8
	ldrb r0, [r2]
	adds r1, r4, #0
	ands r1, r0
	strb r1, [r2]
	movs r4, #0x40
	adds r0, r1, #0
	orrs r0, r4
	strb r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	mov r1, ip
	adds r2, r1, r3
	adds r0, r2, #0
	cmp r2, #0
	bge _080EE46A
	adds r0, r2, #3
_080EE46A:
	asrs r0, r0, #2
	lsls r1, r0, #2
	subs r1, r2, r1
	lsls r0, r0, #5
	adds r0, r0, r7
	adds r0, r0, r1
	strb r4, [r0]
	movs r1, #0x44
	strb r1, [r0]
	add r0, r8
	mov r4, sb
	strb r4, [r0]
	strb r1, [r0]
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080EE4C6
_080EE48C:
	mov r0, sl
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x5c]
	adds r3, r1, r0
	adds r1, r3, #0
	cmp r3, #0
	bge _080EE4A0
	adds r1, r3, #3
_080EE4A0:
	asrs r1, r1, #2
	lsls r2, r1, #2
	subs r2, r3, r2
	lsls r1, r1, #5
	lsls r0, r5, #2
	ldr r5, [sp, #0xc]
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r6]
	strb r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r1, [r1]
	strb r1, [r0]
_080EE4C6:
	adds r6, #1
	lsls r0, r4, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080EE3FA
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r5, r0, #0x10
	str r5, [sp, #0x14]
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080EE3F2
_080EE4E8:
	ldr r6, _080EE504 @ =gUnknown_03005220
	ldr r1, [r6]
	ldr r0, _080EE508 @ =0x000004BC
	adds r2, r1, r0
	ldrh r0, [r2]
	ldr r3, [sp, #0x1c]
	adds r0, r3, r0
	strh r0, [r2]
	ldr r4, _080EE50C @ =0x000004BA
	adds r1, r1, r4
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
	b _080EE558
	.align 2, 0
_080EE504: .4byte gUnknown_03005220
_080EE508: .4byte 0x000004BC
_080EE50C: .4byte 0x000004BA
_080EE510:
	ldr r5, _080EE550 @ =gUnknown_03005220
	ldr r2, [r5]
	ldr r6, _080EE554 @ =0x000004BC
	adds r1, r2, r6
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x10]
	adds r0, r3, r4
	ldrh r5, [r1]
	adds r0, r0, r5
	strh r0, [r1]
	subs r6, #2
	adds r1, r2, r6
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080EE53C
	adds r0, #7
_080EE53C:
	asrs r0, r0, #3
	ldr r4, [sp, #4]
	strh r0, [r4, #0x2a]
	ldrh r0, [r1]
	ldr r5, [sp, #0x1c]
	adds r0, r5, r0
	strh r0, [r1]
	movs r0, #1
	b _080EE86A
	.align 2, 0
_080EE550: .4byte gUnknown_03005220
_080EE554: .4byte 0x000004BC
_080EE558:
	ldr r6, [sp, #4]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	movs r2, #0x2c
	ldrsh r1, [r6, r2]
	adds r0, r0, r1
	lsls r0, r0, #6
	ldr r3, _080EE5A0 @ =gUnknown_03005270
	ldr r2, [r3]
	adds r2, r2, r0
	movs r4, #0x22
	ldrsh r0, [r6, r4]
	movs r5, #0x2a
	ldrsh r1, [r6, r5]
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r7, r2, r0
	ldr r6, _080EE5A4 @ =gUnknown_03005220
	ldr r4, [r6]
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r0, [r0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080EE628
	cmp r0, #1
	bgt _080EE5A8
	cmp r0, #0
	beq _080EE5B0
	b _080EE786
	.align 2, 0
_080EE5A0: .4byte gUnknown_03005270
_080EE5A4: .4byte gUnknown_03005220
_080EE5A8:
	cmp r0, #2
	bne _080EE5AE
	b _080EE724
_080EE5AE:
	b _080EE786
_080EE5B0:
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r3, [sp, #4]
	ldrh r3, [r3, #0x2a]
	adds r1, r1, r3
	ldr r3, _080EE614 @ =tile_offset
	ldrh r0, [r3]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r2, _080EE618 @ =0x040000D4
	adds r0, r4, #0
	adds r0, #0x38
	str r0, [r2]
	ldr r6, _080EE61C @ =gUnknown_0300522C
	movs r4, #0
	ldrsh r1, [r6, r4]
	lsls r1, r1, #0xe
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #5
	movs r4, #0xb0
	lsls r4, r4, #7
	adds r0, r0, r4
	adds r1, r1, r0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	str r1, [r2, #4]
	ldr r4, _080EE620 @ =0x80000120
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _080EE624 @ =gUnknown_03005220
	ldr r0, [r1]
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0xe
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #5
	movs r3, #0xb8
	lsls r3, r3, #7
	b _080EE77A
	.align 2, 0
_080EE614: .4byte tile_offset
_080EE618: .4byte 0x040000D4
_080EE61C: .4byte gUnknown_0300522C
_080EE620: .4byte 0x80000120
_080EE624: .4byte gUnknown_03005220
_080EE628:
	ldr r4, [sp, #4]
	ldrh r2, [r4, #0x2a]
	movs r5, #0x2a
	ldrsh r0, [r4, r5]
	cmp r0, #0xd
	bgt _080EE64C
	ldr r1, _080EE648 @ =tile_offset
	movs r6, #0xb0
	lsls r6, r6, #2
	adds r0, r6, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	adds r0, r2, r0
	adds r0, #0x12
	b _080EE654
	.align 2, 0
_080EE648: .4byte tile_offset
_080EE64C:
	ldr r1, _080EE700 @ =tile_offset
	ldrh r0, [r1]
	adds r0, r2, r0
	subs r0, #0x8e
_080EE654:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r6, r1, #0
	ldr r2, _080EE704 @ =0x040000D4
	ldr r4, _080EE708 @ =gUnknown_03005220
	ldr r0, [r4]
	adds r0, #0x38
	str r0, [r2]
	ldr r4, _080EE70C @ =gUnknown_0300522C
	movs r5, #0
	ldrsh r1, [r4, r5]
	lsls r1, r1, #0xe
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	ldr r5, _080EE710 @ =0x00005A40
	adds r0, r0, r5
	adds r1, r1, r0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r0, _080EE714 @ =0x800000E0
	mov r8, r0
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _080EE708 @ =gUnknown_03005220
	ldr r0, [r1]
	movs r5, #0x9e
	lsls r5, r5, #2
	adds r0, r0, r5
	str r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0xe
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #5
	ldr r5, _080EE718 @ =0x00005E40
	adds r0, r0, r5
	adds r1, r1, r0
	adds r1, r1, r3
	str r1, [r2, #4]
	mov r0, r8
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _080EE708 @ =gUnknown_03005220
	ldr r0, [r1]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r0, r0, r5
	str r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0xe
	movs r5, #0
	ldrsh r0, [r6, r5]
	subs r0, #0x80
	lsls r0, r0, #5
	adds r1, r1, r0
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r5, _080EE71C @ =0x80000040
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _080EE708 @ =gUnknown_03005220
	ldr r0, [r1]
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0xe
	movs r4, #0
	ldrsh r0, [r6, r4]
	lsls r0, r0, #5
	ldr r6, _080EE720 @ =0xFFFFF400
	adds r0, r0, r6
	adds r1, r1, r0
	adds r1, r1, r3
	str r1, [r2, #4]
	str r5, [r2, #8]
	b _080EE784
	.align 2, 0
_080EE700: .4byte tile_offset
_080EE704: .4byte 0x040000D4
_080EE708: .4byte gUnknown_03005220
_080EE70C: .4byte gUnknown_0300522C
_080EE710: .4byte 0x00005A40
_080EE714: .4byte 0x800000E0
_080EE718: .4byte 0x00005E40
_080EE71C: .4byte 0x80000040
_080EE720: .4byte 0xFFFFF400
_080EE724:
	ldr r3, _080EE81C @ =tile_offset
	ldrh r0, [r3]
	ldr r1, [sp, #4]
	ldrh r1, [r1, #0x2a]
	adds r0, r0, r1
	subs r0, #0x7c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r2, _080EE820 @ =0x040000D4
	adds r0, r4, #0
	adds r0, #0x38
	str r0, [r2]
	ldr r6, _080EE824 @ =gUnknown_0300522C
	movs r4, #0
	ldrsh r1, [r6, r4]
	lsls r1, r1, #0xe
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #5
	ldr r4, _080EE828 @ =0xFFFFF080
	adds r0, r0, r4
	adds r1, r1, r0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	str r1, [r2, #4]
	ldr r4, _080EE82C @ =0x80000120
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _080EE830 @ =gUnknown_03005220
	ldr r0, [r1]
	movs r1, #0x9e
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r1, r1, #0xe
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #5
	ldr r3, _080EE834 @ =0xFFFFF480
_080EE77A:
	adds r0, r0, r3
	adds r1, r1, r0
	adds r1, r1, r5
	str r1, [r2, #4]
	str r4, [r2, #8]
_080EE784:
	ldr r0, [r2, #8]
_080EE786:
	ldr r4, _080EE838 @ =palette_mask
	ldrh r0, [r4]
	ldr r5, [sp, #0x18]
	orrs r5, r0
	str r5, [sp, #0x18]
	strh r5, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	strh r0, [r1]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _080EE830 @ =gUnknown_03005220
	ldr r2, [r1]
	ldr r3, _080EE83C @ =0x000004BA
	adds r0, r2, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r1, #0
	cmp r1, #0
	bge _080EE7B4
	adds r0, r1, #7
_080EE7B4:
	asrs r3, r0, #3
	lsls r0, r3, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080EE7C4
	movs r5, #1
	str r5, [sp, #0x10]
_080EE7C4:
	ldr r6, [sp, #0x10]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	adds r0, r3, r0
	ldr r3, [sp, #4]
	movs r4, #0x2a
	ldrsh r1, [r3, r4]
	cmp r0, r1
	ble _080EE868
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r7, #2
	ldrh r0, [r3, #0x2a]
	adds r4, r0, #1
	strh r4, [r3, #0x2a]
	movs r5, #0x97
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrb r0, [r0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080EE858
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bgt _080EE840
	ldr r1, _080EE81C @ =tile_offset
	movs r6, #0xb0
	lsls r6, r6, #2
	adds r0, r6, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, r4, r0
	adds r0, #0x12
	b _080EE848
	.align 2, 0
_080EE81C: .4byte tile_offset
_080EE820: .4byte 0x040000D4
_080EE824: .4byte gUnknown_0300522C
_080EE828: .4byte 0xFFFFF080
_080EE82C: .4byte 0x80000120
_080EE830: .4byte gUnknown_03005220
_080EE834: .4byte 0xFFFFF480
_080EE838: .4byte palette_mask
_080EE83C: .4byte 0x000004BA
_080EE840:
	ldr r0, _080EE87C @ =tile_offset
	ldrh r0, [r0]
	adds r0, r4, r0
	subs r0, #0x8e
_080EE848:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r1, _080EE880 @ =palette_mask
	ldrh r0, [r1]
	ldr r2, [sp, #0x18]
	orrs r2, r0
	str r2, [sp, #0x18]
_080EE858:
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r7]
	adds r1, r7, #0
	adds r1, #0x40
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	strh r0, [r1]
_080EE868:
	movs r0, #0
_080EE86A:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080EE87C: .4byte tile_offset
_080EE880: .4byte palette_mask

	thumb_func_start sub_80EE884
sub_80EE884: @ 0x080EE884
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0
	ldr r1, _080EE890 @ =gUnknown_08B1EC00
	b _080EE8B2
	.align 2, 0
_080EE890: .4byte gUnknown_08B1EC00
_080EE894:
	ldrb r0, [r1]
	cmp r0, r2
	bne _080EE8AE
	adds r0, r4, #0
	bl sub_80EE994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EE8B8
	adds r0, r4, #0
	bl sub_80EE9B8
	b _080EE8B8
_080EE8AE:
	adds r1, #8
	adds r4, #1
_080EE8B2:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080EE894
_080EE8B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80EE8C0
sub_80EE8C0: @ 0x080EE8C0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r5, #0
	ldr r1, _080EE8CC @ =gUnknown_08B1EC00
	b _080EE8D4
	.align 2, 0
_080EE8CC: .4byte gUnknown_08B1EC00
_080EE8D0:
	adds r1, #8
	adds r5, #1
_080EE8D4:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080EE8DE
	cmp r0, r4
	bne _080EE8D0
_080EE8DE:
	adds r0, r5, #0
	bl sub_80EEA10
	movs r2, #0
	ldr r0, _080EE914 @ =m2_character_info
	ldr r3, _080EE918 @ =0x000001CB
	adds r1, r0, r3
	ldrb r3, [r1]
	cmp r2, r3
	bge _080EE94A
	mov ip, r0
	mov r7, ip
	adds r7, #0x14
	adds r6, r1, #0
_080EE8FA:
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	movs r1, #0xe2
	lsls r1, r1, #1
	add r1, ip
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r1, r0, r7
	movs r3, #0
	b _080EE932
	.align 2, 0
_080EE914: .4byte m2_character_info
_080EE918: .4byte 0x000001CB
_080EE91C:
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080EE92A
	adds r0, r5, #0
	bl sub_80EE9B8
	b _080EE94A
_080EE92A:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	bgt _080EE93A
_080EE932:
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EE91C
_080EE93A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r3, [r6]
	cmp r0, r3
	blt _080EE8FA
_080EE94A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80EE950
sub_80EE950: @ 0x080EE950
	push {r4, r5, lr}
	ldr r1, _080EE974 @ =gUnknown_08B1EC00
	ldrb r0, [r1]
	cmp r0, #0
	beq _080EE98A
	movs r5, #0
_080EE95C:
	adds r4, r5, r1
	ldrb r1, [r4]
	movs r0, #0xff
	bl sub_80EC414
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EE978
	ldrb r0, [r4]
	bl sub_80EE884
	b _080EE97E
	.align 2, 0
_080EE974: .4byte gUnknown_08B1EC00
_080EE978:
	ldrb r0, [r4]
	bl sub_80EE8C0
_080EE97E:
	adds r5, #8
	ldr r1, _080EE990 @ =gUnknown_08B1EC00
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EE95C
_080EE98A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EE990: .4byte gUnknown_08B1EC00

	thumb_func_start sub_80EE994
sub_80EE994: @ 0x080EE994
	push {lr}
	movs r2, #0
	ldr r1, _080EE9B4 @ =gUnknown_02025250
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _080EE9AA
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080EE9AC
_080EE9AA:
	movs r2, #1
_080EE9AC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080EE9B4: .4byte gUnknown_02025250

	thumb_func_start sub_80EE9B8
sub_80EE9B8: @ 0x080EE9B8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_80EE994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EE9D4
	ldr r1, _080EEA00 @ =gUnknown_030053A8
	movs r0, #0x3c
	strb r0, [r1]
	ldr r1, _080EEA04 @ =gUnknown_030053A4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080EE9D4:
	lsls r4, r5, #2
	ldr r0, _080EEA08 @ =gUnknown_02025250
	adds r4, r4, r0
	ldr r0, _080EEA0C @ =gUnknown_08B1EC00
	lsls r5, r5, #3
	adds r5, r5, r0
	ldrb r0, [r5, #1]
	strb r0, [r4]
	ldrb r0, [r5, #2]
	strb r0, [r4, #1]
	movs r0, #2
	bl sub_80EC82C
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	subs r0, #1
	strb r0, [r4, #2]
	ldrh r0, [r5, #4]
	strb r0, [r4, #3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EEA00: .4byte gUnknown_030053A8
_080EEA04: .4byte gUnknown_030053A4
_080EEA08: .4byte gUnknown_02025250
_080EEA0C: .4byte gUnknown_08B1EC00

	thumb_func_start sub_80EEA10
sub_80EEA10: @ 0x080EEA10
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80EE994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EEA32
	ldr r1, _080EEA38 @ =gUnknown_030053A4
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, _080EEA3C @ =gUnknown_02025250
	lsls r0, r4, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #1]
	strb r1, [r0, #3]
_080EEA32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EEA38: .4byte gUnknown_030053A4
_080EEA3C: .4byte gUnknown_02025250

	thumb_func_start sub_80EEA40
sub_80EEA40: @ 0x080EEA40
	push {r4, r5, r6, r7, lr}
	ldr r0, _080EEAF8 @ =gUnknown_03004EA0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080EEAF2
	ldr r0, _080EEAFC @ =gUnknown_03001304
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EEAF2
	ldr r0, _080EEB00 @ =gUnknown_0300130C
	ldr r0, [r0]
	cmp r0, #0
	bne _080EEAF2
	ldr r0, _080EEB04 @ =gUnknown_03005214
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EEAF2
	ldr r0, _080EEB08 @ =gUnknown_03003984
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EEAF2
	ldr r1, _080EEB0C @ =gUnknown_030053A8
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080EEAF2
	movs r0, #0x3c
	strb r0, [r1]
	ldr r5, _080EEB10 @ =gUnknown_02025250
	movs r7, #1
	movs r4, #0
_080EEA86:
	cmp r7, #0
	beq _080EEAB8
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080EEAB8
	ldrb r0, [r5, #2]
	subs r0, #1
	strb r0, [r5, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080EEAB8
	movs r0, #2
	bl sub_80EC82C
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	subs r0, #1
	strb r0, [r5, #2]
	ldrb r0, [r5]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	bl m2_play_soundeffect
	movs r7, #0
_080EEAB8:
	ldrb r0, [r5, #3]
	lsls r6, r4, #0x10
	cmp r0, #0
	beq _080EEAE2
	subs r0, #1
	strb r0, [r5, #3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080EEAE2
	ldr r0, _080EEB14 @ =gUnknown_08B1EC00
	asrs r4, r6, #0xd
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xff
	bl sub_80BC874
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4, #3]
	bl sub_80EC2F0
_080EEAE2:
	adds r5, #4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080EEA86
_080EEAF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EEAF8: .4byte gUnknown_03004EA0
_080EEAFC: .4byte gUnknown_03001304
_080EEB00: .4byte gUnknown_0300130C
_080EEB04: .4byte gUnknown_03005214
_080EEB08: .4byte gUnknown_03003984
_080EEB0C: .4byte gUnknown_030053A8
_080EEB10: .4byte gUnknown_02025250
_080EEB14: .4byte gUnknown_08B1EC00

	thumb_func_start m2_handle_controlcode_CC_67_FF
m2_handle_controlcode_CC_67_FF: @ 0x080EEB18
	push {r4, lr}
	movs r4, #0
	ldr r1, _080EEB68 @ =m2_character_info
	ldr r2, _080EEB6C @ =0x00000203
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080EEB46
	ldr r0, _080EEB70 @ =0x00000202
	adds r1, r1, r0
_080EEB2C:
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	bgt _080EEB46
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080EEB2C
_080EEB46:
	bl ScriptGetSecondaryMemory
	lsls r1, r4, #0x10
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _080EEB78
	bl ScriptGetSecondaryMemory
	ldr r1, _080EEB68 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, _080EEB74 @ =0x00000201
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	b _080EEB7A
	.align 2, 0
_080EEB68: .4byte m2_character_info
_080EEB6C: .4byte 0x00000203
_080EEB70: .4byte 0x00000202
_080EEB74: .4byte 0x00000201
_080EEB78:
	movs r0, #0
_080EEB7A:
	adds r3, r0, #0
	cmp r3, #0
	bne _080EEB90
	ldr r0, _080EEB8C @ =gUnknown_03005220
	ldr r1, [r0]
	adds r1, #0x30
	movs r2, #0xf2
	b _080EEB98
	.align 2, 0
_080EEB8C: .4byte gUnknown_03005220
_080EEB90:
	ldr r0, _080EEBB8 @ =gUnknown_03005220
	ldr r1, [r0]
	subs r2, r3, #1
	adds r1, #0x30
_080EEB98:
	strb r2, [r1]
	adds r2, r0, #0
	ldr r0, [r2]
	adds r0, #0x31
	movs r1, #0
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x32
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r3, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EEBB8: .4byte gUnknown_03005220

	thumb_func_start sub_80EEBBC
sub_80EEBBC: @ 0x080EEBBC
	push {lr}
	ldr r2, _080EEBE8 @ =gUnknown_03002A30
	ldr r0, _080EEBEC @ =gCurrentProc
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r2, [r1, #8]
	cmp r2, #0
	bne _080EEBF8
	ldr r0, _080EEBF0 @ =gUnknown_030053D8
	strb r2, [r0]
	strh r2, [r1, #0x10]
	ldr r1, _080EEBF4 @ =gUnknown_030053DC
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	b _080EEC08
	.align 2, 0
_080EEBE8: .4byte gUnknown_03002A30
_080EEBEC: .4byte gCurrentProc
_080EEBF0: .4byte gUnknown_030053D8
_080EEBF4: .4byte gUnknown_030053DC
_080EEBF8:
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	beq _080EEC04
	bl sub_80EEC10
	b _080EEC08
_080EEC04:
	bl end_current_proc
_080EEC08:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EEC10
sub_80EEC10: @ 0x080EEC10
	push {r4, r5, r6, lr}
	ldr r0, _080EEC80 @ =gUnknown_02024860
	adds r1, r0, #0
	adds r1, #0x56
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EEC26
	subs r0, r2, #1
	strh r0, [r1]
_080EEC26:
	ldr r1, _080EEC84 @ =gUnknown_020248E0
	ldr r4, _080EEC88 @ =0x000008FA
	adds r3, r1, r4
	ldrh r0, [r3]
	cmp r0, #0
	beq _080EEC5A
	ldr r0, _080EEC8C @ =0x000008FC
	adds r2, r1, r0
	ldr r1, _080EEC90 @ =0xFFFFFAAB
	adds r0, r1, #0
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080EEC94 @ =0x5FFF0000
	cmp r0, r1
	bhi _080EEC52
	movs r0, #0xc0
	lsls r0, r0, #7
	strh r0, [r2]
	movs r0, #0
	strh r0, [r3]
_080EEC52:
	ldrh r0, [r2]
	lsrs r0, r0, #8
	bl sub_80EF958
_080EEC5A:
	ldr r0, _080EEC84 @ =gUnknown_020248E0
	ldr r2, _080EEC98 @ =0x000008F4
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EECA8
	subs r0, r2, #1
	strh r0, [r1]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EECA0
	ldr r0, _080EEC9C @ =0x0000FFFF
	bl sub_80EF958
	b _080EECA8
	.align 2, 0
_080EEC80: .4byte gUnknown_02024860
_080EEC84: .4byte gUnknown_020248E0
_080EEC88: .4byte 0x000008FA
_080EEC8C: .4byte 0x000008FC
_080EEC90: .4byte 0xFFFFFAAB
_080EEC94: .4byte 0x5FFF0000
_080EEC98: .4byte 0x000008F4
_080EEC9C: .4byte 0x0000FFFF
_080EECA0:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_80EF958
_080EECA8:
	ldr r1, _080EECF0 @ =gUnknown_020248E0
	ldr r4, _080EECF4 @ =0x000008F6
	adds r2, r1, r4
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080EED00
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r1, r1, r4
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #2
	beq _080EECD2
	cmp r0, #3
	bne _080EECD2
	movs r0, #0xf8
	lsls r0, r0, #2
	strh r0, [r1]
_080EECD2:
	ldr r0, _080EECF0 @ =gUnknown_020248E0
	ldr r4, _080EECF4 @ =0x000008F6
	adds r0, r0, r4
	ldrh r1, [r0]
	subs r1, #1
	strh r1, [r0]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080EECF8
	movs r0, #0
	bl sub_80EF958
	b _080EED00
	.align 2, 0
_080EECF0: .4byte gUnknown_020248E0
_080EECF4: .4byte 0x000008F6
_080EECF8:
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_80EF958
_080EED00:
	ldr r4, _080EED24 @ =gUnknown_020248E0
	ldr r0, _080EED28 @ =0x000008D8
	adds r5, r4, r0
	ldrh r6, [r5]
	movs r1, #0
	ldrsh r2, [r5, r1]
	cmp r2, #0
	bne _080EED38
	ldr r3, _080EED2C @ =0x000008E4
	adds r0, r4, r3
	strh r2, [r0]
	ldr r1, _080EED30 @ =0x000008E6
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _080EED34 @ =gUnknown_030012D8
	str r2, [r0]
	b _080EED7A
	.align 2, 0
_080EED24: .4byte gUnknown_020248E0
_080EED28: .4byte 0x000008D8
_080EED2C: .4byte 0x000008E4
_080EED30: .4byte 0x000008E6
_080EED34: .4byte gUnknown_030012D8
_080EED38:
	ldr r3, _080EEDF8 @ =gUnknown_030012D8
	ldr r2, _080EEDFC @ =gUnknown_08B245C4
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x3c
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r1, [r0]
	ldr r2, _080EEE00 @ =0x000008E4
	adds r0, r4, r2
	strh r1, [r0]
	str r1, [r3]
	movs r0, #0x3c
	subs r0, r0, r6
	ldr r3, _080EEE04 @ =0x000008E6
	adds r1, r4, r3
	strh r0, [r1]
	subs r0, r6, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EED7A
	ldr r0, _080EEE08 @ =0x000008DA
	adds r1, r4, r0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EED7A
	subs r0, r2, #1
	strh r0, [r1]
	movs r0, #0xa
	strh r0, [r5]
_080EED7A:
	ldr r1, _080EEE0C @ =gUnknown_020248E0
	ldr r4, _080EEE10 @ =0x000008E2
	adds r6, r1, r4
	movs r0, #0
	strh r0, [r6]
	ldr r0, _080EEE14 @ =0x000008DE
	adds r4, r1, r0
	ldrh r0, [r4]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	beq _080EEDCE
	subs r0, #1
	strh r0, [r4]
	adds r0, r1, #0
	movs r1, #0x48
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	movs r1, #0x48
	bl __divsi3
	ldr r5, _080EEE18 @ =gUnknown_03001D34
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC888
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080EEDBC
	adds r0, #3
_080EEDBC:
	asrs r0, r0, #2
	strh r0, [r6]
	str r0, [r5]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne _080EEDCE
	bl sub_80F07F0
_080EEDCE:
	ldr r1, _080EEE0C @ =gUnknown_020248E0
	movs r4, #0x8e
	lsls r4, r4, #4
	adds r2, r1, r4
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r4, r1, #0
	cmp r0, #0
	beq _080EEE48
	subs r0, r3, #1
	strh r0, [r2]
	movs r0, #3
	ands r0, r3
	cmp r0, #1
	beq _080EEE34
	cmp r0, #1
	bgt _080EEE1C
	cmp r0, #0
	beq _080EEE26
	b _080EEE48
	.align 2, 0
_080EEDF8: .4byte gUnknown_030012D8
_080EEDFC: .4byte gUnknown_08B245C4
_080EEE00: .4byte 0x000008E4
_080EEE04: .4byte 0x000008E6
_080EEE08: .4byte 0x000008DA
_080EEE0C: .4byte gUnknown_020248E0
_080EEE10: .4byte 0x000008E2
_080EEE14: .4byte 0x000008DE
_080EEE18: .4byte gUnknown_03001D34
_080EEE1C:
	cmp r0, #2
	beq _080EEE26
	cmp r0, #3
	beq _080EEE40
	b _080EEE48
_080EEE26:
	ldr r0, _080EEE30 @ =0x000008E2
	adds r1, r4, r0
	movs r0, #0
	b _080EEE46
	.align 2, 0
_080EEE30: .4byte 0x000008E2
_080EEE34:
	ldr r2, _080EEE3C @ =0x000008E2
	adds r1, r4, r2
	movs r0, #2
	b _080EEE46
	.align 2, 0
_080EEE3C: .4byte 0x000008E2
_080EEE40:
	ldr r3, _080EEE6C @ =0x000008E2
	adds r1, r4, r3
	ldr r0, _080EEE70 @ =0x0000FFFE
_080EEE46:
	strh r0, [r1]
_080EEE48:
	ldr r0, _080EEE74 @ =gUnknown_030053B0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _080EEE88
	ldr r1, _080EEE78 @ =gRamBG0HOFS
	ldr r2, _080EEE6C @ =0x000008E2
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080EEE7C @ =gRamBG0VOFS
	ldr r3, _080EEE80 @ =0x000008E4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _080EEE84 @ =gUnknown_03005344
	b _080EEEA8
	.align 2, 0
_080EEE6C: .4byte 0x000008E2
_080EEE70: .4byte 0x0000FFFE
_080EEE74: .4byte gUnknown_030053B0
_080EEE78: .4byte gRamBG0HOFS
_080EEE7C: .4byte gRamBG0VOFS
_080EEE80: .4byte 0x000008E4
_080EEE84: .4byte gUnknown_03005344
_080EEE88:
	ldr r0, _080EEF30 @ =gUnknown_03005344
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0
	beq _080EEEA8
	ldr r1, _080EEF34 @ =gRamBG0HOFS
	ldr r2, _080EEF38 @ =0x000008E2
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080EEF3C @ =gRamBG0VOFS
	adds r2, #2
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
_080EEEA8:
	ldr r5, _080EEF40 @ =gUnknown_020248E0
	ldr r4, _080EEF44 @ =0x000008DC
	adds r1, r5, r4
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _080EEEBC
	subs r0, r2, #1
	strh r0, [r1]
_080EEEBC:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080EEEC8
	bl sub_80DB2E4
_080EEEC8:
	ldr r4, _080EEF48 @ =gUnknown_030053B0
	ldr r0, [r4]
	movs r1, #0
	bl sub_80EF078
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080EEEE2
	adds r0, r1, #0
	movs r1, #1
	bl sub_80EF078
_080EEEE2:
	bl sub_80F04EC
	ldr r2, _080EEF4C @ =0x000008EE
	adds r1, r5, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EEF84
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc
	bl __divsi3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EEF64
	ldr r0, _080EEF50 @ =gUnknown_03005394
	strb r1, [r0]
	ldr r1, _080EEF54 @ =0x0400000A
	ldr r4, _080EEF58 @ =0x00001F03
	adds r0, r4, #0
	strh r0, [r1]
	movs r0, #0x1f
	movs r1, #0
	movs r2, #4
	bl sub_80F1DE0
	ldr r0, _080EEF5C @ =0x00002E6E
	ldr r1, _080EEF60 @ =0x00000E0E
	bl sub_80F1E04
	movs r0, #2
	bl sub_80F086C
	b _080EEF84
	.align 2, 0
_080EEF30: .4byte gUnknown_03005344
_080EEF34: .4byte gRamBG0HOFS
_080EEF38: .4byte 0x000008E2
_080EEF3C: .4byte gRamBG0VOFS
_080EEF40: .4byte gUnknown_020248E0
_080EEF44: .4byte 0x000008DC
_080EEF48: .4byte gUnknown_030053B0
_080EEF4C: .4byte 0x000008EE
_080EEF50: .4byte gUnknown_03005394
_080EEF54: .4byte 0x0400000A
_080EEF58: .4byte 0x00001F03
_080EEF5C: .4byte 0x00002E6E
_080EEF60: .4byte 0x00000E0E
_080EEF64:
	ldr r1, _080EEFD0 @ =gUnknown_03005394
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80F1DE0
	ldr r0, _080EEFD4 @ =gUnknown_0300536C
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80F1DAC
	movs r0, #0
	bl sub_80F086C
_080EEF84:
	ldr r0, _080EEFD8 @ =gUnknown_020248E0
	ldr r2, _080EEFDC @ =0x000008EC
	adds r1, r0, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EF010
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc
	bl __divsi3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EEFF0
	ldr r0, _080EEFD0 @ =gUnknown_03005394
	strb r1, [r0]
	ldr r1, _080EEFE0 @ =0x0400000A
	ldr r4, _080EEFE4 @ =0x00001F03
	adds r0, r4, #0
	strh r0, [r1]
	movs r0, #0
	movs r1, #0x1f
	movs r2, #4
	bl sub_80F1DE0
	ldr r0, _080EEFE8 @ =0x00002E6E
	ldr r1, _080EEFEC @ =0x00000E0E
	bl sub_80F1E04
	movs r0, #1
	bl sub_80F086C
	b _080EF010
	.align 2, 0
_080EEFD0: .4byte gUnknown_03005394
_080EEFD4: .4byte gUnknown_0300536C
_080EEFD8: .4byte gUnknown_020248E0
_080EEFDC: .4byte 0x000008EC
_080EEFE0: .4byte 0x0400000A
_080EEFE4: .4byte 0x00001F03
_080EEFE8: .4byte 0x00002E6E
_080EEFEC: .4byte 0x00000E0E
_080EEFF0:
	ldr r1, _080EF048 @ =gUnknown_03005394
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80F1DE0
	ldr r0, _080EF04C @ =gUnknown_0300536C
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80F1DAC
	movs r0, #0
	bl sub_80F086C
_080EF010:
	ldr r4, _080EF050 @ =gUnknown_020248E0
	movs r2, #0x8f
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080EF064
	subs r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl __divsi3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EF058
	ldr r1, _080EF054 @ =0x000008F2
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_80D4308
	b _080EF064
	.align 2, 0
_080EF048: .4byte gUnknown_03005394
_080EF04C: .4byte gUnknown_0300536C
_080EF050: .4byte gUnknown_020248E0
_080EF054: .4byte 0x000008F2
_080EF058:
	ldr r3, _080EF074 @ =0x000008F2
	adds r0, r4, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	bl sub_80D44A0
_080EF064:
	bl sub_80EFFB8
	bl sub_80EF80C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080EF074: .4byte 0x000008F2

	thumb_func_start sub_80EF078
sub_80EF078: @ 0x080EF078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	ldrb r0, [r6, #1]
	mov sl, r0
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq _080EF098
	b _080EF400
_080EF098:
	ldrb r0, [r6, #0xc]
	ldr r1, _080EF0C4 @ =gUnknown_020248E0
	mov ip, r1
	cmp r0, #0
	bne _080EF0A4
	b _080EF21C
_080EF0A4:
	subs r0, #1
	strb r0, [r6, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080EF0B0
	b _080EF21C
_080EF0B0:
	ldrb r0, [r6, #0xb]
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #4]
	cmp r0, #2
	beq _080EF0CE
	cmp r0, #2
	bgt _080EF0C8
	cmp r0, #1
	beq _080EF13C
	b _080EF21C
	.align 2, 0
_080EF0C4: .4byte gUnknown_020248E0
_080EF0C8:
	cmp r0, #3
	beq _080EF1A4
	b _080EF21C
_080EF0CE:
	ldrb r0, [r6, #8]
	ldrb r1, [r6, #7]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r4, r7, #0x10
	movs r5, #0
	cmp r4, #0
	ble _080EF126
_080EF0E2:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	ldrb r1, [r6, #0xa]
	adds r2, r0, #0
	cmp r3, r1
	bge _080EF0F6
	asrs r0, r4, #0x10
	adds r0, r3, r0
	subs r0, r0, r1
	b _080EF0F8
_080EF0F6:
	subs r0, r5, r1
_080EF0F8:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #7]
	asrs r2, r2, #0x10
	adds r3, r1, r2
	ldr r0, [r6, #0x50]
	lsls r3, r3, #1
	adds r3, r3, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r0, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r4, r7, #0x10
	cmp r2, r4
	blt _080EF0E2
_080EF126:
	ldrb r1, [r6, #0xa]
	adds r1, #1
	strb r1, [r6, #0xa]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080EF13C
	movs r0, #0
	strb r0, [r6, #0xa]
_080EF13C:
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #5]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r4, r7, #0x10
	movs r5, #0
	cmp r4, #0
	ble _080EF194
_080EF150:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	ldrb r1, [r6, #9]
	adds r2, r0, #0
	cmp r3, r1
	bge _080EF164
	asrs r0, r4, #0x10
	adds r0, r3, r0
	subs r0, r0, r1
	b _080EF166
_080EF164:
	subs r0, r5, r1
_080EF166:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrb r1, [r6, #5]
	asrs r2, r2, #0x10
	adds r3, r1, r2
	ldr r0, [r6, #0x50]
	lsls r3, r3, #1
	adds r3, r3, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r0, #0xe
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r4, r7, #0x10
	cmp r2, r4
	blt _080EF150
_080EF194:
	ldrb r1, [r6, #9]
	adds r1, #1
	strb r1, [r6, #9]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	b _080EF214
_080EF1A4:
	ldrb r0, [r6, #6]
	ldrb r1, [r6, #5]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r7, #0x10
	movs r5, #0
	cmp r2, #0
	ble _080EF206
_080EF1B8:
	ldrb r0, [r6, #9]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	cmp r0, r1
	blt _080EF1CE
	subs r0, r0, r1
	b _080EF1D6
_080EF1CE:
	cmp r0, r2
	blt _080EF1DA
	adds r0, #1
	subs r0, r1, r0
_080EF1D6:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080EF1DA:
	ldrb r2, [r6, #5]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r3, r2, r1
	ldr r0, [r6, #0x50]
	lsls r3, r3, #1
	adds r3, r3, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r0, r6, #0
	adds r0, #0xe
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r7, #0x10
	cmp r1, r2
	blt _080EF1B8
_080EF206:
	ldrb r1, [r6, #9]
	adds r1, #1
	strb r1, [r6, #9]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0xf
_080EF214:
	cmp r1, r0
	blt _080EF21C
	movs r0, #0
	strb r0, [r6, #9]
_080EF21C:
	ldr r0, _080EF2E4 @ =0x00000882
	add r0, ip
	ldrh r0, [r0]
	ldr r1, _080EF2E8 @ =0x0000FFFF
	cmp r0, r1
	bne _080EF22A
	b _080EF562
_080EF22A:
	adds r7, r6, #0
	adds r7, #0x5a
	ldrh r0, [r7]
	adds r4, r6, #0
	adds r4, #0x60
	adds r3, r6, #0
	adds r3, #0x62
	movs r2, #0x64
	adds r2, r2, r6
	mov r8, r2
	movs r2, #0x66
	adds r2, r2, r6
	mov sb, r2
	cmp r0, #0
	beq _080EF2AA
	subs r0, #1
	strh r0, [r7]
	ands r0, r1
	cmp r0, #0
	bne _080EF2AA
	adds r2, r6, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x54
	adds r0, r1, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080EF278
	movs r0, #0
	strb r0, [r2]
	ldrb r5, [r1]
	cmp r5, #0
	beq _080EF2AA
_080EF278:
	ldr r1, _080EF2EC @ =gUnknown_08B2311C
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r7]
	ldrh r1, [r0, #2]
	adds r4, r6, #0
	adds r4, #0x60
	strh r1, [r4]
	ldrh r1, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x62
	strh r1, [r3]
	ldrh r1, [r0, #6]
	adds r2, r6, #0
	adds r2, #0x64
	strh r1, [r2]
	ldrh r0, [r0, #8]
	adds r1, r6, #0
	adds r1, #0x66
	strh r0, [r1]
	mov r8, r2
	mov sb, r1
_080EF2AA:
	adds r5, r6, #0
	adds r5, #0x5c
	mov r0, r8
	ldrh r1, [r0]
	ldrh r2, [r4]
	adds r1, r1, r2
	strh r1, [r4]
	ldrh r0, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	adds r2, r6, #0
	adds r2, #0x5e
	mov r0, sb
	ldrh r1, [r0]
	ldrh r0, [r3]
	adds r1, r1, r0
	strh r1, [r3]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	mov r0, sl
	cmp r0, #2
	beq _080EF33C
	cmp r0, #2
	bgt _080EF2F0
	cmp r0, #1
	beq _080EF2FA
	b _080EF3DC
	.align 2, 0
_080EF2E4: .4byte 0x00000882
_080EF2E8: .4byte 0x0000FFFF
_080EF2EC: .4byte gUnknown_08B2311C
_080EF2F0:
	cmp r0, #3
	beq _080EF37C
	cmp r0, #4
	beq _080EF3A8
	b _080EF3DC
_080EF2FA:
	ldr r3, _080EF32C @ =gRamBG0HOFS
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080EF306
	adds r0, #0xff
_080EF306:
	ldr r1, _080EF330 @ =0x000008E2
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r3, _080EF334 @ =gRamBG0VOFS
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080EF31E
	adds r0, #0xff
_080EF31E:
	ldr r1, _080EF338 @ =0x000008E4
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	b _080EF3DA
	.align 2, 0
_080EF32C: .4byte gRamBG0HOFS
_080EF330: .4byte 0x000008E2
_080EF334: .4byte gRamBG0VOFS
_080EF338: .4byte 0x000008E4
_080EF33C:
	ldr r3, _080EF36C @ =gUnknown_03001D30
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080EF348
	adds r0, #0xff
_080EF348:
	ldr r1, _080EF370 @ =0x000008E2
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	ldr r3, _080EF374 @ =gRamBG1VOFS
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080EF360
	adds r0, #0xff
_080EF360:
	ldr r1, _080EF378 @ =0x000008E4
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	b _080EF3DA
	.align 2, 0
_080EF36C: .4byte gUnknown_03001D30
_080EF370: .4byte 0x000008E2
_080EF374: .4byte gRamBG1VOFS
_080EF378: .4byte 0x000008E4
_080EF37C:
	ldr r3, _080EF39C @ =gRamBG2HOFS
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080EF388
	adds r0, #0xff
_080EF388:
	ldr r1, _080EF3A0 @ =0x000008E2
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #8
	strh r0, [r3]
	ldr r3, _080EF3A4 @ =gRamBG2VOFS
	b _080EF3C4
	.align 2, 0
_080EF39C: .4byte gRamBG2HOFS
_080EF3A0: .4byte 0x000008E2
_080EF3A4: .4byte gRamBG2VOFS
_080EF3A8:
	ldr r3, _080EF3EC @ =gRamBG3HOFS
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080EF3B4
	adds r0, #0xff
_080EF3B4:
	ldr r1, _080EF3F0 @ =0x000008E2
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #8
	strh r0, [r3]
	ldr r3, _080EF3F4 @ =gRamBG3VOFS
_080EF3C4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080EF3CE
	adds r0, #0xff
_080EF3CE:
	ldr r1, _080EF3F8 @ =0x000008E4
	add r1, ip
	asrs r0, r0, #8
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #0x10
_080EF3DA:
	strh r0, [r3]
_080EF3DC:
	ldr r0, _080EF3FC @ =gUnknown_030053D8
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EF400
	bl sub_80F1C1C
	b _080EF562
	.align 2, 0
_080EF3EC: .4byte gRamBG3HOFS
_080EF3F0: .4byte 0x000008E2
_080EF3F4: .4byte gRamBG3VOFS
_080EF3F8: .4byte 0x000008E4
_080EF3FC: .4byte gUnknown_030053D8
_080EF400:
	adds r3, r6, #0
	adds r3, #0x6e
	ldrh r0, [r3]
	adds r4, r6, #0
	adds r4, #0x70
	cmp r0, #0
	beq _080EF4CC
	subs r0, #1
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EF4CC
	adds r2, r6, #0
	adds r2, #0x6c
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	adds r1, r6, #0
	adds r1, #0x68
	adds r0, r1, r0
	ldrb r5, [r0]
	cmp r5, #0
	bne _080EF43E
	movs r0, #0
	strb r0, [r2]
	ldrb r5, [r1]
	cmp r5, #0
	beq _080EF4CC
_080EF43E:
	ldr r1, _080EF4B4 @ =gUnknown_08B236BC
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r3]
	ldrb r1, [r0, #2]
	adds r3, r6, #0
	adds r3, #0x70
	strb r1, [r3]
	ldrh r1, [r0, #4]
	adds r2, r6, #0
	adds r2, #0x72
	strh r1, [r2]
	ldrh r2, [r0, #6]
	adds r1, r6, #0
	adds r1, #0x74
	strh r2, [r1]
	ldrb r1, [r0, #8]
	adds r2, r6, #0
	adds r2, #0x76
	strb r1, [r2]
	ldrh r2, [r0, #0xa]
	adds r1, r6, #0
	adds r1, #0x78
	strh r2, [r1]
	ldrh r1, [r0, #0xc]
	adds r2, r6, #0
	adds r2, #0x7a
	strh r1, [r2]
	ldrh r2, [r0, #0xe]
	adds r1, r6, #0
	adds r1, #0x7c
	strh r2, [r1]
	ldrb r1, [r0, #0x10]
	adds r2, r6, #0
	adds r2, #0x7e
	strb r1, [r2]
	ldrh r1, [r0, #0x12]
	adds r0, r6, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrb r0, [r3]
	adds r4, r3, #0
	cmp r0, #3
	bne _080EF4B8
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	asrs r0, r0, #0x10
	mov r1, sl
	adds r1, #4
	bl sub_80F101C
	b _080EF4CC
	.align 2, 0
_080EF4B4: .4byte gUnknown_08B236BC
_080EF4B8:
	ldr r2, [sp]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r1, #0xa0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	asrs r0, r0, #0x10
	mov r1, sl
	bl sub_80F101C
_080EF4CC:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080EF55E
	movs r2, #0x72
	adds r2, r2, r6
	mov sb, r2
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	movs r2, #0x74
	adds r2, r2, r6
	mov r8, r2
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r7, r6, #0
	adds r7, #0x76
	adds r0, r6, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	ldrb r2, [r7]
	adds r0, r0, r2
	strb r0, [r7]
	adds r5, r6, #0
	adds r5, #0x78
	adds r0, r6, #0
	adds r0, #0x80
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r0, [r4]
	subs r0, #1
	mov r1, sl
	ldr r2, [sp]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r2, r4, #0
	bl sub_80F1060
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl sub_80F107C
	ldr r0, _080EF574 @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, r4
	beq _080EF54C
	ldr r0, _080EF578 @ =gUnknown_020248E0
	ldr r2, _080EF57C @ =0x0000091E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	bne _080EF55E
_080EF54C:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r2, r8
	ldrh r1, [r2]
	lsrs r1, r1, #8
	ldrb r2, [r7]
	bl sub_80F1088
_080EF55E:
	bl sub_80F1C1C
_080EF562:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EF574: .4byte gUnknown_03005220
_080EF578: .4byte gUnknown_020248E0
_080EF57C: .4byte 0x0000091E

	thumb_func_start sub_80EF580
sub_80EF580: @ 0x080EF580
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x84
	bl memset
	ldrb r0, [r4, #2]
	movs r5, #0
	strb r0, [r6, #2]
	ldrb r0, [r4, #3]
	strb r0, [r6, #4]
	ldrb r0, [r4, #4]
	strb r0, [r6, #5]
	ldrb r0, [r4, #5]
	strb r0, [r6, #6]
	ldrb r0, [r4, #6]
	strb r0, [r6, #7]
	ldrb r0, [r4, #7]
	strb r0, [r6, #8]
	ldrb r0, [r4, #8]
	strb r0, [r6, #0xb]
	adds r1, r4, #0
	adds r1, #9
	adds r0, r6, #0
	adds r0, #0x54
	movs r2, #4
	bl memcpy
	adds r4, #0xd
	adds r0, r6, #0
	adds r0, #0x68
	adds r1, r4, #0
	movs r2, #4
	bl memcpy
	adds r2, r6, #0
	adds r2, #0x5a
	movs r1, #1
	movs r0, #1
	strh r0, [r2]
	adds r2, #0x14
	strh r0, [r2]
	strb r1, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0x5c
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80EF5EC
sub_80EF5EC: @ 0x080EF5EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	str r5, [sp]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	ldr r7, _080EF670 @ =gUnknown_02000188
	ldr r1, _080EF674 @ =gUnknown_02000308
	mov sl, r1
	ldr r4, _080EF678 @ =gUnknown_020248E0
	lsrs r2, r0, #0x10
	mov r8, r2
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _080EF622
	adds r0, #0xf
_080EF622:
	asrs r0, r0, #4
	lsls r0, r0, #1
	movs r3, #0xe8
	lsls r3, r3, #3
	adds r1, r4, r3
	adds r0, r0, r1
	adds r3, #0xa
	adds r1, r4, r3
	ldrh r1, [r1]
	strh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x80
	lsls r0, r0, #1
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r4, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0x1f
	movs r3, #0x1f
	ands r3, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	ands r4, r1
	lsrs r6, r0, #0x1a
	ands r6, r1
	cmp r5, r3
	bls _080EF67C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	mov r1, sl
	adds r2, r0, r1
	subs r1, r5, r3
	strh r1, [r2]
	adds r0, r0, r7
	movs r1, #1
	b _080EF6A4
	.align 2, 0
_080EF670: .4byte gUnknown_02000188
_080EF674: .4byte gUnknown_02000308
_080EF678: .4byte gUnknown_020248E0
_080EF67C:
	cmp r5, r3
	bne _080EF68C
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	b _080EF6A4
_080EF68C:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	mov r5, sl
	adds r2, r0, r5
	ldr r5, [sp]
	subs r1, r3, r5
	strh r1, [r2]
	adds r0, r0, r7
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
_080EF6A4:
	strh r1, [r0]
	cmp ip, r4
	bls _080EF6C6
	mov r5, r8
	lsls r3, r5, #0x10
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, sl
	adds r2, r0, r1
	mov r5, ip
	subs r1, r5, r4
	strh r1, [r2, #2]
	adds r0, r0, r7
	movs r1, #0x20
	b _080EF6FE
_080EF6C6:
	cmp ip, r4
	bne _080EF6E0
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	strh r1, [r0, #2]
	adds r3, r2, #0
	b _080EF700
_080EF6E0:
	mov r1, r8
	lsls r3, r1, #0x10
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r5, sl
	adds r2, r0, r5
	mov r5, ip
	subs r1, r4, r5
	strh r1, [r2, #2]
	adds r0, r0, r7
	movs r2, #0x20
	rsbs r2, r2, #0
	adds r1, r2, #0
_080EF6FE:
	strh r1, [r0, #2]
_080EF700:
	cmp sb, r6
	bls _080EF71E
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r4, sl
	adds r2, r0, r4
	mov r5, sb
	subs r1, r5, r6
	strh r1, [r2, #4]
	adds r0, r0, r7
	movs r2, #0x80
	lsls r2, r2, #3
	b _080EF748
_080EF71E:
	cmp sb, r6
	bne _080EF732
	asrs r0, r3, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r7
	movs r0, #0
	strh r0, [r1, #4]
	b _080EF74C
_080EF732:
	asrs r1, r3, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r4, sl
	adds r2, r0, r4
	mov r5, sb
	subs r1, r6, r5
	strh r1, [r2, #4]
	adds r0, r0, r7
	ldr r2, _080EF770 @ =0xFFFFFC00
_080EF748:
	adds r1, r2, #0
	strh r1, [r0, #4]
_080EF74C:
	asrs r0, r3, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r3, _080EF774 @ =gUnknown_02000008
	adds r1, r1, r3
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EF770: .4byte 0xFFFFFC00
_080EF774: .4byte gUnknown_02000008

	thumb_func_start sub_80EF778
sub_80EF778: @ 0x080EF778
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, _080EF7C0 @ =gUnknown_02000188
	ldr r6, _080EF7C4 @ =gUnknown_02000008
	ldr r2, _080EF7C8 @ =gUnknown_020248E0
	ldr r4, _080EF7CC @ =0x0000074A
	adds r3, r2, r4
	strh r0, [r3]
	lsls r3, r1, #1
	subs r4, #0xa
	adds r2, r2, r4
	adds r2, r3, r2
	strh r0, [r2]
	movs r4, #0
	adds r3, r3, r1
	lsls r3, r3, #4
	movs r5, #0
_080EF7A0:
	adds r1, r3, r4
	lsls r1, r1, #1
	adds r2, r1, r7
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r1, r1, r6
	strh r5, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x2f
	bls _080EF7A0
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EF7C0: .4byte gUnknown_02000188
_080EF7C4: .4byte gUnknown_02000008
_080EF7C8: .4byte gUnknown_020248E0
_080EF7CC: .4byte 0x0000074A

	thumb_func_start sub_80EF7D0
sub_80EF7D0: @ 0x080EF7D0
	ldr r1, _080EF7DC @ =gUnknown_020248E0
	ldr r2, _080EF7E0 @ =0x0000074A
	adds r1, r1, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080EF7DC: .4byte gUnknown_020248E0
_080EF7E0: .4byte 0x0000074A

	thumb_func_start sub_80EF7E4
sub_80EF7E4: @ 0x080EF7E4
	push {lr}
	ldr r0, _080EF7FC @ =gUnknown_030053E0
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EF7F8
	ldr r0, _080EF800 @ =gUnknown_030053C0
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080EF804
_080EF7F8:
	movs r0, #1
	b _080EF806
	.align 2, 0
_080EF7FC: .4byte gUnknown_030053E0
_080EF800: .4byte gUnknown_030053C0
_080EF804:
	movs r0, #0
_080EF806:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EF80C
sub_80EF80C: @ 0x080EF80C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r1, #0
_080EF818:
	lsls r4, r1, #1
	ldr r0, _080EF940 @ =gUnknown_020248E0
	movs r2, #0xe8
	lsls r2, r2, #3
	adds r5, r0, r2
	adds r2, r4, r5
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	adds r7, r1, #1
	mov sl, r7
	cmp r0, #0
	beq _080EF926
	subs r0, r3, #1
	strh r0, [r2]
	adds r0, r4, r1
	lsls r0, r0, #5
	adds r0, #6
	ldr r2, _080EF944 @ =gUnknown_02000188
	adds r3, r2, r0
	ldr r4, _080EF948 @ =gUnknown_02000008
	adds r2, r4, r0
	ldr r7, _080EF94C @ =gUnknown_02000308
	adds r6, r7, r0
	lsls r1, r1, #5
	ldr r4, _080EF940 @ =gUnknown_020248E0
	ldr r7, _080EF950 @ =0x00000242
	adds r0, r4, r7
	adds r4, r1, r0
	movs r1, #1
	ldr r0, _080EF954 @ =gUnknown_0202502A
	mov ip, r0
_080EF858:
	movs r5, #0
	ldrsh r0, [r3, r5]
	adds r7, r4, #2
	mov r8, r7
	adds r1, #1
	mov sb, r1
	cmp r0, #0
	beq _080EF898
	ldrh r0, [r6]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	mov r5, ip
	movs r7, #0
	ldrsh r0, [r5, r7]
	cmp r1, r0
	blt _080EF898
	ldr r5, _080EF954 @ =gUnknown_0202502A
_080EF87E:
	ldrh r1, [r2]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r3]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r5, r7]
	cmp r1, r0
	bge _080EF87E
_080EF898:
	adds r3, #2
	adds r2, #2
	adds r6, #2
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080EF8D6
	ldrh r0, [r6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	ldrh r1, [r2]
	mov r7, ip
	movs r5, #0
	ldrsh r0, [r7, r5]
	cmp r1, r0
	blt _080EF8D6
	ldr r5, _080EF954 @ =gUnknown_0202502A
_080EF8BC:
	ldrh r1, [r2]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r3]
	ldrh r7, [r4]
	adds r0, r0, r7
	strh r0, [r4]
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r5, r7]
	cmp r1, r0
	bge _080EF8BC
_080EF8D6:
	adds r3, #2
	adds r2, #2
	adds r6, #2
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080EF914
	ldrh r0, [r6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	ldrh r1, [r2]
	mov r7, ip
	movs r5, #0
	ldrsh r0, [r7, r5]
	cmp r1, r0
	blt _080EF914
	ldr r5, _080EF954 @ =gUnknown_0202502A
_080EF8FA:
	ldrh r1, [r2]
	ldrh r0, [r5]
	subs r1, r1, r0
	strh r1, [r2]
	ldrh r0, [r3]
	ldrh r7, [r4]
	adds r0, r0, r7
	strh r0, [r4]
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r5, r7]
	cmp r1, r0
	bge _080EF8FA
_080EF914:
	adds r3, #2
	adds r2, #2
	adds r6, #2
	mov r4, r8
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xf
	bls _080EF858
_080EF926:
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bhi _080EF932
	b _080EF818
_080EF932:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EF940: .4byte gUnknown_020248E0
_080EF944: .4byte gUnknown_02000188
_080EF948: .4byte gUnknown_02000008
_080EF94C: .4byte gUnknown_02000308
_080EF950: .4byte 0x00000242
_080EF954: .4byte gUnknown_0202502A

	thumb_func_start sub_80EF958
sub_80EF958: @ 0x080EF958
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080EF988 @ =gUnknown_030053B0
	ldr r0, [r2]
	ldrb r0, [r0, #2]
	cmp r0, #4
	bne _080EF98C
	movs r1, #1
_080EF96A:
	ldr r0, _080EF988 @ =gUnknown_030053B0
	ldr r0, [r0]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80EF9BC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080EF96A
	b _080EF9B4
	.align 2, 0
_080EF988: .4byte gUnknown_030053B0
_080EF98C:
	movs r1, #1
	adds r6, r2, #0
_080EF990:
	ldr r0, [r6]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80EF9BC
	ldr r0, [r6, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_80EF9BC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080EF990
_080EF9B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80EF9BC
sub_80EF9BC: @ 0x080EF9BC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	ldr r4, _080EF9EC @ =0x0000FFFF
	cmp r5, r4
	beq _080EF9D2
	cmp r5, #0
	bne _080EF9F0
_080EF9D2:
	lsls r1, r1, #0x10
	ldr r2, [r6, #0x50]
	asrs r1, r1, #0xf
	adds r2, r1, r2
	adds r0, r6, #0
	adds r0, #0xe
	adds r0, r0, r1
	strh r5, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ands r0, r4
	strh r0, [r2]
	b _080EFA6E
	.align 2, 0
_080EF9EC: .4byte 0x0000FFFF
_080EF9F0:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r5, r0
	bne _080EFA1A
	lsls r1, r1, #0x10
	ldr r3, [r6, #0x50]
	asrs r1, r1, #0xf
	adds r3, r1, r3
	adds r2, r6, #0
	adds r2, #0xe
	adds r2, r2, r1
	adds r0, r6, #0
	adds r0, #0x2e
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r2]
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r3]
	b _080EFA6E
_080EFA1A:
	lsls r0, r1, #0x10
	asrs r7, r0, #0xf
	adds r0, r6, #0
	adds r0, #0x2e
	adds r0, r0, r7
	ldrh r0, [r0]
	movs r2, #0x1f
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	ands r4, r2
	lsrs r3, r0, #0x1a
	ands r3, r2
	muls r1, r5, r1
	lsrs r1, r1, #8
	mov ip, r1
	adds r0, r4, #0
	muls r0, r5, r0
	cmp r0, #0
	bge _080EFA46
	adds r0, #0xff
_080EFA46:
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	adds r0, r3, #0
	muls r0, r5, r0
	cmp r0, #0
	bge _080EFA54
	adds r0, #0xff
_080EFA54:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	adds r2, r6, #0
	adds r2, #0xe
	adds r2, r2, r7
	lsls r1, r4, #5
	add r1, ip
	lsls r0, r3, #0xa
	adds r1, r1, r0
	strh r1, [r2]
	ldr r0, [r6, #0x50]
	adds r0, r7, r0
	strh r1, [r0]
_080EFA6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80EFA74
sub_80EFA74: @ 0x080EFA74
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0
	ldr r2, _080EFADC @ =gUnknown_02021EF0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r0, r6, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	movs r2, #0x1f
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	ands r4, r2
	lsrs r3, r0, #0x1a
	ands r3, r2
	adds r0, r1, #0
	muls r0, r5, r0
	lsrs r1, r0, #8
	adds r0, r4, #0
	muls r0, r5, r0
	cmp r0, #0
	bge _080EFAA8
	adds r0, #0xff
_080EFAA8:
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	adds r0, r3, #0
	muls r0, r7, r0
	cmp r0, #0
	bge _080EFAB6
	adds r0, #0xff
_080EFAB6:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	ldr r0, _080EFAE0 @ =gUnknown_020248E0
	adds r2, r6, #0
	adds r2, #0xd0
	lsls r2, r2, #1
	movs r5, #0xa8
	lsls r5, r5, #3
	adds r0, r0, r5
	adds r2, r2, r0
	lsls r0, r4, #5
	adds r0, r1, r0
	lsls r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EFADC: .4byte gUnknown_02021EF0
_080EFAE0: .4byte gUnknown_020248E0

	thumb_func_start sub_80EFAE4
sub_80EFAE4: @ 0x080EFAE4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r7, r5, #0
	ldr r0, _080EFB48 @ =gUnknown_020248E0
	mov ip, r0
	lsls r1, r1, #0x10
	asrs r6, r1, #0xf
	movs r0, #0xd0
	lsls r0, r0, #2
	add r0, ip
	adds r0, r6, r0
	ldrh r0, [r0]
	movs r2, #0x1f
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	ands r4, r2
	lsrs r3, r0, #0x1a
	ands r3, r2
	adds r0, r1, #0
	muls r0, r5, r0
	lsrs r1, r0, #8
	adds r0, r4, #0
	muls r0, r5, r0
	cmp r0, #0
	bge _080EFB1E
	adds r0, #0xff
_080EFB1E:
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	adds r0, r3, #0
	muls r0, r7, r0
	cmp r0, #0
	bge _080EFB2C
	adds r0, #0xff
_080EFB2C:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	add r2, ip
	adds r2, r6, r2
	lsls r0, r4, #5
	adds r0, r1, r0
	lsls r1, r3, #0xa
	adds r0, r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EFB48: .4byte gUnknown_020248E0

	thumb_func_start sub_80EFB4C
sub_80EFB4C: @ 0x080EFB4C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, _080EFB90 @ =gUnknown_03000AC8
	ldr r0, _080EFB94 @ =gUnknown_03005340
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080EFB98 @ =gUnknown_03005390
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x5c
	ldrb r1, [r0]
	cmp r1, #0
	bne _080EFBA0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r2, r0, #1
	cmp r0, #0
	beq _080EFB86
	ldr r0, _080EFB9C @ =gUnknown_030053E0
	ldr r0, [r0]
	adds r0, #0x44
	strh r1, [r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl sub_80EFBD8
_080EFB86:
	movs r0, #0
	bl ScriptSetWorkingMemory
	movs r0, #0
	b _080EFBCE
	.align 2, 0
_080EFB90: .4byte gUnknown_03000AC8
_080EFB94: .4byte gUnknown_03005340
_080EFB98: .4byte gUnknown_03005390
_080EFB9C: .4byte gUnknown_030053E0
_080EFBA0:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r3, r0, #1
	cmp r0, #0
	beq _080EFBC6
	adds r0, r2, #0
	adds r0, #0x5d
	ldrb r0, [r0]
	cmp r0, #0xd5
	beq _080EFBC6
	ldr r0, _080EFBD4 @ =gUnknown_030053E0
	ldr r0, [r0]
	adds r0, #0x44
	movs r1, #0
	strh r1, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	bl sub_80EFBD8
_080EFBC6:
	movs r0, #1
	bl ScriptSetWorkingMemory
	movs r0, #1
_080EFBCE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080EFBD4: .4byte gUnknown_030053E0

	thumb_func_start sub_80EFBD8
sub_80EFBD8: @ 0x080EFBD8
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x22
	bgt _080EFBFC
	ldr r1, _080EFBF4 @ =0x0400000A
	ldr r2, _080EFBF8 @ =0x00001F01
	adds r0, r2, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_80F020C
	b _080EFCC0
	.align 2, 0
_080EFBF4: .4byte 0x0400000A
_080EFBF8: .4byte 0x00001F01
_080EFBFC:
	cmp r4, #0x2d
	bgt _080EFC38
	bl sub_80F0718
	ldr r0, _080EFC2C @ =gUnknown_08B24604
	adds r2, r4, #0
	subs r2, #0x23
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl sub_80F1DE0
	ldr r0, _080EFC30 @ =0x0000044E
	ldr r1, _080EFC34 @ =0x00000E0E
	bl sub_80F1E04
	movs r0, #5
	movs r1, #7
	bl sub_80EFCC8
	b _080EFCC0
	.align 2, 0
_080EFC2C: .4byte gUnknown_08B24604
_080EFC30: .4byte 0x0000044E
_080EFC34: .4byte 0x00000E0E
_080EFC38:
	cmp r4, #0x30
	bgt _080EFC78
	adds r0, r4, #1
	cmp r0, #0x30
	beq _080EFC64
	cmp r0, #0x30
	bgt _080EFCC0
	cmp r0, #0x2f
	bne _080EFCC0
	ldr r0, _080EFC5C @ =gUnknown_020248E0
	ldr r1, _080EFC60 @ =0x000008DE
	adds r0, r0, r1
	movs r1, #0x90
	strh r1, [r0]
	bl sub_80F0780
	b _080EFCC0
	.align 2, 0
_080EFC5C: .4byte gUnknown_020248E0
_080EFC60: .4byte 0x000008DE
_080EFC64:
	ldr r0, _080EFC74 @ =gUnknown_020248E0
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r0, r0, r2
	movs r1, #0x96
	lsls r1, r1, #1
	strh r1, [r0]
	b _080EFCC0
	.align 2, 0
_080EFC74: .4byte gUnknown_020248E0
_080EFC78:
	cmp r4, #0x35
	bgt _080EFCC0
	bl sub_80F0718
	ldr r0, _080EFCAC @ =gUnknown_08B24630
	adds r2, r4, #0
	subs r2, #0x31
	lsls r2, r2, #2
	adds r2, r2, r0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	ldrb r2, [r2, #2]
	bl sub_80F1DE0
	ldr r0, _080EFCB0 @ =0x0000044E
	ldr r1, _080EFCB4 @ =0x00000E0E
	bl sub_80F1E04
	cmp r4, #0x34
	bgt _080EFCB8
	movs r0, #4
	movs r1, #5
	bl sub_80EFCC8
	b _080EFCC0
	.align 2, 0
_080EFCAC: .4byte gUnknown_08B24630
_080EFCB0: .4byte 0x0000044E
_080EFCB4: .4byte 0x00000E0E
_080EFCB8:
	movs r0, #2
	movs r1, #0
	bl sub_80EFCC8
_080EFCC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80EFCC8
sub_80EFCC8: @ 0x080EFCC8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r6, #0
	mov ip, r6
	ldr r3, _080EFD00 @ =gUnknown_030053C0
	mov r0, ip
	strb r0, [r3, #6]
	ldr r1, _080EFD04 @ =gUnknown_03000AC8
	ldr r2, _080EFD08 @ =gUnknown_03005340
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _080EFD0C @ =gUnknown_030053DC
	strh r7, [r0]
	adds r5, r3, #0
	mov r8, r2
	cmp r7, #4
	beq _080EFDA0
	cmp r7, #4
	bgt _080EFD10
	cmp r7, #2
	beq _080EFDBA
	b _080EFE60
	.align 2, 0
_080EFD00: .4byte gUnknown_030053C0
_080EFD04: .4byte gUnknown_03000AC8
_080EFD08: .4byte gUnknown_03005340
_080EFD0C: .4byte gUnknown_030053DC
_080EFD10:
	cmp r7, #5
	beq _080EFD1C
	cmp r7, #6
	bne _080EFD1A
	b _080EFE20
_080EFD1A:
	b _080EFE60
_080EFD1C:
	movs r3, #1
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080EFD6C
	strb r3, [r5, #7]
	ldr r1, _080EFD54 @ =0x0400000A
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080EFD58 @ =0x04000008
	ldr r0, _080EFD5C @ =gUnknown_030051E4
	ldrh r1, [r0]
	lsls r1, r1, #8
	orrs r1, r3
	ldr r0, _080EFD60 @ =gUnknown_0300522C
	ldrh r0, [r0]
	lsls r0, r0, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _080EFD64 @ =0x0000FF42
	adds r1, r0, #0
	mov r2, r8
	strh r1, [r2]
	ldr r0, _080EFD68 @ =gUnknown_030050EC
	strh r1, [r0]
	b _080EFD78
	.align 2, 0
_080EFD54: .4byte 0x0400000A
_080EFD58: .4byte 0x04000008
_080EFD5C: .4byte gUnknown_030051E4
_080EFD60: .4byte gUnknown_0300522C
_080EFD64: .4byte 0x0000FF42
_080EFD68: .4byte gUnknown_030050EC
_080EFD6C:
	ldr r1, _080EFD98 @ =0x0400000A
	ldr r2, _080EFD9C @ =0x00001F03
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, ip
	strb r0, [r5, #7]
_080EFD78:
	movs r0, #4
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov ip, r0
	cmp r4, #0
	bne _080EFD92
	ldrb r1, [r5, #6]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #6]
_080EFD92:
	movs r6, #0xb
	b _080EFE60
	.align 2, 0
_080EFD98: .4byte 0x0400000A
_080EFD9C: .4byte 0x00001F03
_080EFDA0:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080EFDAE
	movs r0, #1
	strb r0, [r5, #7]
	b _080EFDB2
_080EFDAE:
	mov r1, ip
	strb r1, [r5, #7]
_080EFDB2:
	movs r2, #0
	mov ip, r2
	movs r6, #7
	b _080EFDDA
_080EFDBA:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080EFDC6
	movs r0, #1
	b _080EFDC8
_080EFDC6:
	mov r0, ip
_080EFDC8:
	strb r0, [r5, #7]
	movs r0, #4
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov ip, r0
	movs r6, #0xa
_080EFDDA:
	ldr r1, _080EFE08 @ =0x0400000A
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080EFE0C @ =0x04000008
	ldr r0, _080EFE10 @ =gUnknown_030051E4
	ldrh r1, [r0]
	lsls r1, r1, #8
	movs r0, #1
	orrs r1, r0
	ldr r0, _080EFE14 @ =gUnknown_0300522C
	ldrh r0, [r0]
	lsls r0, r0, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _080EFE18 @ =0x0000FF42
	adds r1, r0, #0
	mov r2, r8
	strh r1, [r2]
	ldr r0, _080EFE1C @ =gUnknown_030050EC
	strh r1, [r0]
	b _080EFE60
	.align 2, 0
_080EFE08: .4byte 0x0400000A
_080EFE0C: .4byte 0x04000008
_080EFE10: .4byte gUnknown_030051E4
_080EFE14: .4byte gUnknown_0300522C
_080EFE18: .4byte 0x0000FF42
_080EFE1C: .4byte gUnknown_030050EC
_080EFE20:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080EFE2C
	movs r0, #1
	b _080EFE2E
_080EFE2C:
	mov r0, ip
_080EFE2E:
	strb r0, [r5, #7]
	movs r0, #4
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov ip, r0
	movs r6, #9
	ldr r1, _080EFE54 @ =0x0400000A
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	cmp r4, #0
	bne _080EFE58
	ldrb r1, [r5, #6]
	movs r0, #4
	b _080EFE5C
	.align 2, 0
_080EFE54: .4byte 0x0400000A
_080EFE58:
	ldrb r1, [r5, #6]
	movs r0, #6
_080EFE5C:
	orrs r0, r1
	strb r0, [r5, #6]
_080EFE60:
	ldr r2, _080EFE94 @ =gUnknown_087218D4
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r3, r0, r2
	ldr r1, [r3]
	str r1, [r5]
	adds r2, #8
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x10]
	movs r0, #0
	strb r6, [r5, #0xd]
	strb r0, [r5, #9]
	ldrh r1, [r3, #6]
	adds r2, r1, #0
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _080EFE9A
	cmp r7, #6
	beq _080EFE98
	subs r0, r2, #1
	strb r0, [r5, #9]
	b _080EFE9A
	.align 2, 0
_080EFE94: .4byte gUnknown_087218D4
_080EFE98:
	strb r1, [r5, #9]
_080EFE9A:
	ldrb r0, [r5, #9]
	ldr r1, [r5, #0x10]
	adds r0, r1, r0
	ldrb r0, [r0, #1]
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #9]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #0xb]
	mov r0, ip
	cmp r0, #0
	bne _080EFF08
	ldr r0, [r5]
	ldr r1, [r0]
	adds r1, #0xc
	adds r1, r0, r1
	ldr r2, [r0, #4]
	adds r4, r1, r2
	movs r6, #0xc0
	lsls r6, r6, #0x13
	ldr r0, [r0, #8]
	cmp r0, #0
	bge _080EFECA
	adds r0, #0x1f
_080EFECA:
	lsls r0, r0, #0xb
	movs r2, #0
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080EFF30
	ldr r5, _080EFF04 @ =0x11111111
	adds r3, r0, #0
_080EFED8:
	movs r1, #0
	lsls r2, r2, #0x10
_080EFEDC:
	ldm r4!, {r0}
	eors r0, r5
	stm r6!, {r0}
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080EFEDC
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _080EFED8
	b _080EFF30
	.align 2, 0
_080EFF04: .4byte 0x11111111
_080EFF08:
	ldr r3, _080EFF3C @ =0x040000D4
	ldr r2, [r5]
	ldr r0, [r2]
	adds r0, #0xc
	adds r0, r2, r0
	ldr r1, [r2, #4]
	adds r0, r0, r1
	str r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_080EFF30:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080EFF3C: .4byte 0x040000D4

	thumb_func_start sub_80EFF40
sub_80EFF40: @ 0x080EFF40
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80EFCC8
	ldr r0, _080EFF80 @ =gUnknown_030053C0
	strh r4, [r0, #4]
	ldr r1, _080EFF84 @ =0x0400000A
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080EFF88 @ =0x04000008
	ldr r0, _080EFF8C @ =gUnknown_030051E4
	ldrh r1, [r0]
	lsls r1, r1, #8
	movs r0, #1
	orrs r1, r0
	ldr r0, _080EFF90 @ =gUnknown_0300522C
	ldrh r0, [r0]
	lsls r0, r0, #2
	orrs r1, r0
	strh r1, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EFF80: .4byte gUnknown_030053C0
_080EFF84: .4byte 0x0400000A
_080EFF88: .4byte 0x04000008
_080EFF8C: .4byte gUnknown_030051E4
_080EFF90: .4byte gUnknown_0300522C

	thumb_func_start sub_80EFF94
sub_80EFF94: @ 0x080EFF94
	push {lr}
	ldr r1, _080EFFAC @ =gUnknown_030053C0
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne _080EFFA6
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #4
	ble _080EFFB0
_080EFFA6:
	movs r0, #1
	b _080EFFB2
	.align 2, 0
_080EFFAC: .4byte gUnknown_030053C0
_080EFFB0:
	movs r0, #0
_080EFFB2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80EFFB8
sub_80EFFB8: @ 0x080EFFB8
	push {r4, r5, lr}
	sub sp, #4
	ldr r2, _080F0088 @ =gUnknown_030053C0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	bne _080EFFC6
	b _080F01F4
_080EFFC6:
	subs r0, #1
	strb r0, [r2, #0xa]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080EFFD2
	b _080F01A8
_080EFFD2:
	ldrb r1, [r2, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080EFFF6
	ldr r0, _080F008C @ =gUnknown_03005394
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EFFF6
	movs r0, #0
	movs r1, #0
	bl sub_80F1E04
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_80F1DE0
_080EFFF6:
	ldr r3, _080F0088 @ =gUnknown_030053C0
	ldrb r0, [r3, #7]
	cmp r0, #0
	bne _080F00C4
	ldrb r1, [r3, #9]
	adds r1, #1
	strb r1, [r3, #9]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r3, #0xc]
	subs r0, #1
	cmp r1, r0
	blt _080F00D2
	ldrb r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080F0036
	ldr r0, _080F008C @ =gUnknown_03005394
	strb r1, [r0]
	ldr r1, _080F0090 @ =0x0400000A
	ldr r2, _080F0094 @ =0x00001F01
	adds r0, r2, #0
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080F0098 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
_080F0036:
	mov r1, sp
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _080F009C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _080F00A0 @ =0x0600F800
	str r0, [r1, #4]
	ldr r0, _080F00A4 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_80F07F0
	ldr r1, _080F0090 @ =0x0400000A
	ldr r2, _080F0094 @ =0x00001F01
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080F00A8 @ =0x04000008
	ldr r0, _080F00AC @ =gUnknown_030051E4
	ldrh r1, [r0]
	lsls r1, r1, #8
	ldr r0, _080F00B0 @ =gUnknown_0300522C
	ldrh r0, [r0]
	lsls r0, r0, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _080F00B4 @ =gUnknown_0300536C
	movs r3, #0
	ldrsh r0, [r0, r3]
	bl sub_80F1DAC
	ldr r1, _080F00B8 @ =gUnknown_030050EC
	ldr r0, _080F00BC @ =gUnknown_03005340
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _080F00C0 @ =gUnknown_030053DC
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	b _080F01A6
	.align 2, 0
_080F0088: .4byte gUnknown_030053C0
_080F008C: .4byte gUnknown_03005394
_080F0090: .4byte 0x0400000A
_080F0094: .4byte 0x00001F01
_080F0098: .4byte 0x0000FDFF
_080F009C: .4byte 0x040000D4
_080F00A0: .4byte 0x0600F800
_080F00A4: .4byte 0x81000400
_080F00A8: .4byte 0x04000008
_080F00AC: .4byte gUnknown_030051E4
_080F00B0: .4byte gUnknown_0300522C
_080F00B4: .4byte gUnknown_0300536C
_080F00B8: .4byte gUnknown_030050EC
_080F00BC: .4byte gUnknown_03005340
_080F00C0: .4byte gUnknown_030053DC
_080F00C4:
	ldrb r0, [r3, #9]
	subs r0, #1
	movs r4, #0
	strb r0, [r3, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F0108
_080F00D2:
	ldr r0, _080F0104 @ =gUnknown_03005394
	movs r2, #1
	strb r2, [r0]
	ldrb r0, [r3, #9]
	ldr r1, [r3, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #9]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #0xb
	adds r1, #0xc
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	ldrb r0, [r3, #6]
	orrs r0, r2
	strb r0, [r3, #6]
	b _080F01A8
	.align 2, 0
_080F0104: .4byte gUnknown_03005394
_080F0108:
	ldr r1, _080F014C @ =gUnknown_030053DC
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strh r0, [r1]
	ldrb r2, [r3, #6]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _080F0150
	ldrb r0, [r3, #9]
	ldr r1, [r3, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0xb]
	ldrb r0, [r3, #9]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	strb r0, [r3, #0xa]
	ldrb r1, [r3, #0xb]
	lsls r1, r1, #0xb
	adds r1, #0xc
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3, #0x14]
	movs r0, #1
	orrs r0, r2
	strb r0, [r3, #6]
	b _080F0202
	.align 2, 0
_080F014C: .4byte gUnknown_030053DC
_080F0150:
	ldr r0, _080F01B8 @ =gUnknown_03005394
	strb r1, [r0]
	ldr r5, _080F01BC @ =0x0400000A
	ldr r3, _080F01C0 @ =0x00001F01
	adds r4, r3, #0
	strh r4, [r5]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080F01C4 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	mov r1, sp
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _080F01C8 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080F01CC @ =0x0600F800
	str r0, [r1, #4]
	ldr r0, _080F01D0 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_80F07F0
	strh r4, [r5]
	ldr r2, _080F01D4 @ =0x04000008
	ldr r0, _080F01D8 @ =gUnknown_030051E4
	ldrh r1, [r0]
	lsls r1, r1, #8
	ldr r0, _080F01DC @ =gUnknown_0300522C
	ldrh r0, [r0]
	lsls r0, r0, #2
	orrs r1, r0
	strh r1, [r2]
	ldr r0, _080F01E0 @ =gUnknown_0300536C
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80F1DAC
	ldr r1, _080F01E4 @ =gUnknown_030050EC
	ldr r0, _080F01E8 @ =gUnknown_03005340
	ldrh r0, [r0]
_080F01A6:
	strh r0, [r1]
_080F01A8:
	ldr r1, _080F01EC @ =gUnknown_03001D30
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080F01F0 @ =gRamBG1VOFS
	movs r0, #0x28
	strh r0, [r1]
	b _080F0202
	.align 2, 0
_080F01B8: .4byte gUnknown_03005394
_080F01BC: .4byte 0x0400000A
_080F01C0: .4byte 0x00001F01
_080F01C4: .4byte 0x0000FDFF
_080F01C8: .4byte 0x040000D4
_080F01CC: .4byte 0x0600F800
_080F01D0: .4byte 0x81000400
_080F01D4: .4byte 0x04000008
_080F01D8: .4byte gUnknown_030051E4
_080F01DC: .4byte gUnknown_0300522C
_080F01E0: .4byte gUnknown_0300536C
_080F01E4: .4byte gUnknown_030050EC
_080F01E8: .4byte gUnknown_03005340
_080F01EC: .4byte gUnknown_03001D30
_080F01F0: .4byte gRamBG1VOFS
_080F01F4:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080F0202
	subs r0, r1, #1
	strh r0, [r2, #4]
_080F0202:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80F020C
sub_80F020C: @ 0x080F020C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	ldr r0, _080F033C @ =gUnknown_08B24148
	lsrs r1, r4, #0x10
	mov sb, r1
	asrs r4, r4, #0xc
	adds r4, r4, r0
	ldr r1, [r4]
	ldr r2, [r1]
	adds r2, r1, r2
	ldr r0, [r1, #4]
	adds r0, r2, r0
	adds r7, r0, #0
	adds r7, #0xc
	ldr r6, _080F0340 @ =0x040000D4
	str r7, [r6]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r6, #4]
	ldr r0, [r1, #8]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	ldr r5, _080F0344 @ =gUnknown_030053E0
	ldr r0, [r5]
	ldr r3, _080F0348 @ =gUnknown_02024E20
	mov r8, r3
	str r3, [r0, #0x30]
	adds r7, r2, #0
	adds r7, #0xc
	adds r0, #0xe
	adds r1, r7, #0
	movs r2, #8
	bl memcpy
	ldr r0, [r5]
	ldr r0, [r0, #0x30]
	adds r1, r7, #0
	movs r2, #8
	bl memcpy
	ldr r1, [r5]
	ldr r0, [r4]
	adds r0, #0xc
	str r0, [r1, #4]
	movs r3, #0
	movs r2, #1
	strb r2, [r1]
	ldr r1, [r5]
	ldrb r0, [r4, #4]
	strb r0, [r1, #1]
	ldr r1, [r5]
	ldrb r0, [r4, #8]
	strb r0, [r1, #2]
	ldr r1, [r5]
	ldrb r0, [r4, #5]
	strb r0, [r1, #0xb]
	ldr r1, [r5]
	ldrb r0, [r4, #6]
	strb r0, [r1, #8]
	ldr r1, [r5]
	ldrb r0, [r4, #7]
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r3, [r0, #0xa]
	ldr r0, [r5]
	strb r2, [r0, #0xc]
	ldr r1, [r5]
	ldrb r0, [r4, #0xa]
	strh r0, [r1, #0x34]
	ldrb r0, [r4, #0xb]
	strh r0, [r1, #0x36]
	ldrh r2, [r4, #0xc]
	movs r3, #0x1f
	movs r0, #0x1f
	ands r0, r2
	strh r0, [r1, #0x38]
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #5
	ands r0, r3
	strh r0, [r1, #0x3a]
	ldrh r0, [r4, #0xc]
	lsrs r0, r0, #0xa
	ands r0, r3
	strh r0, [r1, #0x3c]
	bl sub_80F0718
	ldr r0, _080F034C @ =0xFFFFFC00
	add r0, r8
	str r0, [r6]
	ldr r4, _080F0350 @ =0xFFFFFD00
	add r8, r4
	mov r0, r8
	str r0, [r6, #4]
	ldr r0, _080F0354 @ =0x84000040
	str r0, [r6, #8]
	ldr r0, [r6, #8]
	movs r7, #0
	ldr r3, _080F0358 @ =gUnknown_03000AD0
	movs r2, #0
_080F02E6:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _080F02E6
	ldr r1, _080F035C @ =gUnknown_03005390
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _080F030E
	b _080F04C6
_080F030E:
	adds r0, r3, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #1
	beq _080F031A
	b _080F04C6
_080F031A:
	ldr r2, _080F0360 @ =gUnknown_03000AD8
	movs r0, #8
	strh r0, [r2]
	ldr r1, _080F033C @ =gUnknown_08B24148
	mov r4, sb
	lsls r0, r4, #0x10
	asrs r0, r0, #0xc
	adds r0, r0, r1
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _080F03D8
	cmp r0, #1
	bgt _080F0368
	cmp r0, #0
	beq _080F0376
	ldr r6, _080F0364 @ =gUnknown_03000ADA
	b _080F04B4
	.align 2, 0
_080F033C: .4byte gUnknown_08B24148
_080F0340: .4byte 0x040000D4
_080F0344: .4byte gUnknown_030053E0
_080F0348: .4byte gUnknown_02024E20
_080F034C: .4byte 0xFFFFFC00
_080F0350: .4byte 0xFFFFFD00
_080F0354: .4byte 0x84000040
_080F0358: .4byte gUnknown_03000AD0
_080F035C: .4byte gUnknown_03005390
_080F0360: .4byte gUnknown_03000AD8
_080F0364: .4byte gUnknown_03000ADA
_080F0368:
	cmp r0, #2
	bne _080F036E
	b _080F0470
_080F036E:
	ldr r6, _080F03CC @ =gUnknown_03000ADA
	cmp r0, #3
	beq _080F0376
	b _080F04B4
_080F0376:
	ldr r6, _080F03D0 @ =gUnknown_03000AD8
	ldr r2, [r5]
	adds r0, r2, #0
	adds r0, #0x89
	ldrb r1, [r0]
	movs r0, #0x80
	subs r0, r0, r1
	strh r0, [r6]
	ldr r4, _080F03CC @ =gUnknown_03000ADA
	adds r0, r2, #0
	adds r0, #0x8a
	ldrb r1, [r0]
	movs r0, #0x90
	subs r0, r0, r1
	strh r0, [r4]
	adds r0, r2, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80DA750
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080F03AE
	ldrh r0, [r4]
	adds r0, #0x10
	strh r0, [r4]
_080F03AE:
	ldr r0, [r5]
	adds r0, #0x91
	movs r2, #1
	strb r2, [r0]
	ldr r1, _080F03D4 @ =gUnknown_03000AD0
	ldr r0, [r5]
	adds r0, #0x88
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r2, [r0]
	adds r2, r6, #0
	adds r6, r4, #0
	b _080F04B4
	.align 2, 0
_080F03CC: .4byte gUnknown_03000ADA
_080F03D0: .4byte gUnknown_03000AD8
_080F03D4: .4byte gUnknown_03000AD0
_080F03D8:
	ldr r2, _080F045C @ =gUnknown_03000ADA
	adds r0, r3, #0
	adds r0, #0x8a
	ldrb r1, [r0]
	movs r0, #0x90
	subs r0, r0, r1
	strh r0, [r2]
	movs r3, #0
	mov r8, r3
	movs r7, #8
	ldr r0, _080F0460 @ =gUnknown_02020C70 + 8*0x94
	adds r6, r0, #0
	adds r6, #0x88
	adds r5, r0, #0
	adds r5, #0x44
_080F03F6:
	ldrb r0, [r5, #0x16]
	cmp r0, #0
	beq _080F0436
	ldrb r4, [r5, #0x18]
	cmp r4, #1
	bne _080F0436
	ldrb r0, [r5, #0x1b]
	cmp r0, #1
	beq _080F0436
	ldr r0, _080F0464 @ =gUnknown_03005390
	ldr r0, [r0]
	adds r0, #0x8a
	ldrb r1, [r6, #2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080F0436
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl sub_80DA750
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080F042A
	movs r3, #1
	mov r8, r3
_080F042A:
	strb r4, [r6, #9]
	ldr r1, _080F0468 @ =gUnknown_03000AD0
	ldrb r0, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
_080F0436:
	adds r6, #0x94
	adds r5, #0x94
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080F03F6
	ldr r2, _080F046C @ =gUnknown_03000AD8
	ldr r6, _080F045C @ =gUnknown_03000ADA
	mov r0, r8
	cmp r0, #0
	beq _080F04B4
	ldrh r0, [r6]
	adds r0, #0x10
	strh r0, [r6]
	b _080F04B4
	.align 2, 0
_080F045C: .4byte gUnknown_03000ADA
_080F0460: .4byte gUnknown_02020C70 + 8*0x94
_080F0464: .4byte gUnknown_03005390
_080F0468: .4byte gUnknown_03000AD0
_080F046C: .4byte gUnknown_03000AD8
_080F0470:
	ldr r0, _080F04D4 @ =gUnknown_03000ADA
	movs r1, #0x30
	strh r1, [r0]
	ldr r1, _080F04D8 @ =gUnknown_02020C70 + 8*0x94
	movs r7, #8
	adds r6, r0, #0
	ldr r5, _080F04DC @ =gUnknown_03000AD0
	adds r4, r1, #0
	adds r4, #0x88
	adds r1, #0x5a
_080F0484:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F04A0
	ldrb r3, [r1, #2]
	cmp r3, #1
	bne _080F04A0
	ldrb r0, [r1, #5]
	cmp r0, #1
	beq _080F04A0
	strb r3, [r4, #9]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r5
	strh r3, [r0]
_080F04A0:
	adds r4, #0x94
	adds r1, #0x94
	lsls r0, r7, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _080F0484
_080F04B4:
	ldr r0, _080F04E0 @ =gUnknown_030053B0
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	ldr r1, _080F04E4 @ =gUnknown_03001D30
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r1, _080F04E8 @ =gRamBG1VOFS
	ldrh r0, [r6]
	strh r0, [r1]
_080F04C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F04D4: .4byte gUnknown_03000ADA
_080F04D8: .4byte gUnknown_02020C70 + 8*0x94
_080F04DC: .4byte gUnknown_03000AD0
_080F04E0: .4byte gUnknown_030053B0
_080F04E4: .4byte gUnknown_03001D30
_080F04E8: .4byte gRamBG1VOFS

	thumb_func_start sub_80F04EC
sub_80F04EC: @ 0x080F04EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r0, _080F0544 @ =gUnknown_030053E0
	ldr r3, [r0]
	ldrb r2, [r3]
	mov sb, r0
	cmp r2, #0
	bne _080F0504
	b _080F063C
_080F0504:
	subs r0, r2, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F057E
	mov r0, sb
	ldr r2, [r0]
	ldrb r3, [r2, #2]
	cmp r3, #0
	beq _080F054C
	ldr r1, _080F0548 @ =gUnknown_03005394
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r2]
	mov r2, sb
	ldr r1, [r2]
	adds r2, r1, #0
	adds r2, #0x44
	movs r0, #1
	strh r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r1, #0x40]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r1, #4]
	ldrb r0, [r1, #2]
	subs r0, #1
	strb r0, [r1, #2]
	b _080F057E
	.align 2, 0
_080F0544: .4byte gUnknown_030053E0
_080F0548: .4byte gUnknown_03005394
_080F054C:
	ldr r1, _080F05CC @ =gUnknown_03005340
	ldr r0, _080F05D0 @ =gUnknown_03000AC8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _080F05D4 @ =gUnknown_03005394
	strb r3, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080F05D8 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	bl sub_80F07F0
	mov r1, sp
	movs r0, #0xbf
	strh r0, [r1]
	ldr r1, _080F05DC @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _080F05E0 @ =0x0600F800
	str r0, [r1, #4]
	ldr r0, _080F05E4 @ =0x81000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080F057E:
	ldr r0, _080F05E8 @ =gUnknown_030053E0
	ldr r3, [r0]
	ldrb r2, [r3, #0xc]
	mov sb, r0
	cmp r2, #0
	beq _080F063C
	subs r0, r2, #1
	strb r0, [r3, #0xc]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080F063C
	mov r2, sb
	ldr r1, [r2]
	ldrb r0, [r1, #0xb]
	strb r0, [r1, #0xc]
	ldr r1, [r2]
	ldrb r0, [r1, #9]
	ldrb r1, [r1, #8]
	subs r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r5, r7, #0x10
	movs r2, #0
	cmp r5, #0
	ble _080F061E
	mov ip, sb
_080F05B4:
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	mov r3, ip
	ldr r0, [r3]
	ldrb r3, [r0, #0xa]
	adds r6, r1, #0
	cmp r4, r3
	bge _080F05EC
	asrs r0, r5, #0x10
	adds r0, r4, r0
	subs r0, r0, r3
	b _080F05EE
	.align 2, 0
_080F05CC: .4byte gUnknown_03005340
_080F05D0: .4byte gUnknown_03000AC8
_080F05D4: .4byte gUnknown_03005394
_080F05D8: .4byte 0x0000FDFF
_080F05DC: .4byte 0x040000D4
_080F05E0: .4byte 0x0600F800
_080F05E4: .4byte 0x81000400
_080F05E8: .4byte gUnknown_030053E0
_080F05EC:
	subs r0, r2, r3
_080F05EE:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, ip
	ldr r1, [r0]
	ldrb r2, [r1, #8]
	asrs r3, r6, #0x10
	adds r4, r2, r3
	ldr r0, [r1, #0x30]
	lsls r4, r4, #1
	adds r4, r4, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r1, #0xe
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r4]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r5, r7, #0x10
	cmp r3, r5
	blt _080F05B4
_080F061E:
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r0, #0xa]
	adds r1, #1
	strb r1, [r0, #0xa]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080F063C
	mov r2, sb
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1, #0xa]
_080F063C:
	mov r3, sb
	ldr r1, [r3]
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	beq _080F06B8
	subs r0, #1
	strh r0, [r1, #0x34]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F06B8
	movs r0, #0x14
	bl sub_80EF7D0
	ldr r1, _080F0704 @ =0x040000D4
	ldr r0, _080F0708 @ =gUnknown_02024A20
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r1, #4]
	ldr r0, _080F070C @ =0x84000040
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	ldr r3, _080F0710 @ =gUnknown_03000AD0
	mov r8, r3
_080F0670:
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	lsls r1, r2, #1
	add r1, r8
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r6, r0, #0
	cmp r1, #0
	beq _080F06AA
	movs r5, #1
	lsls r7, r2, #4
_080F0686:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080F0714 @ =gUnknown_030053E0
	ldr r3, [r1]
	ldrh r1, [r3, #0x38]
	ldrh r2, [r3, #0x3a]
	ldrh r3, [r3, #0x3c]
	bl sub_80EF5EC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _080F0686
_080F06AA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080F0670
_080F06B8:
	mov r2, sb
	ldr r1, [r2]
	ldrh r0, [r1, #0x36]
	cmp r0, #0
	beq _080F06F4
	subs r0, #1
	strh r0, [r1, #0x36]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F06F4
	movs r2, #0
	ldr r5, _080F0710 @ =gUnknown_03000AD0
_080F06D0:
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	lsls r0, r4, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080F06E8
	lsrs r1, r1, #0x10
	movs r0, #0x14
	bl sub_80EF778
_080F06E8:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080F06D0
_080F06F4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F0704: .4byte 0x040000D4
_080F0708: .4byte gUnknown_02024A20
_080F070C: .4byte 0x84000040
_080F0710: .4byte gUnknown_03000AD0
_080F0714: .4byte gUnknown_030053E0

	thumb_func_start sub_80F0718
sub_80F0718: @ 0x080F0718
	push {r4, r5, r6, lr}
	movs r0, #0
	ldr r6, _080F0778 @ =gUnknown_030053B0
	adds r5, r6, #0
	ldr r1, _080F077C @ =0x00003DEF
	adds r4, r1, #0
_080F0724:
	ldr r1, [r5]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #1
	adds r1, #0xe
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #1
	ands r0, r4
	strh r0, [r1]
	ldr r1, [r5, #4]
	adds r1, #0xe
	adds r1, r1, r3
	ldrh r0, [r1]
	lsrs r0, r0, #1
	ands r0, r4
	strh r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xf
	ble _080F0724
	ldr r1, [r6]
	ldr r0, [r1, #0x50]
	adds r1, #0xe
	movs r2, #0x20
	bl memcpy
	ldr r1, [r6, #4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080F0770
	ldr r0, [r1, #0x50]
	adds r1, #0xe
	movs r2, #0x20
	bl memcpy
_080F0770:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F0778: .4byte gUnknown_030053B0
_080F077C: .4byte 0x00003DEF

	thumb_func_start sub_80F0780
sub_80F0780: @ 0x080F0780
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	ldr r6, _080F07E4 @ =gUnknown_030053B0
	adds r5, r6, #0
_080F0788:
	ldr r2, [r5]
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	lsls r4, r3, #1
	adds r2, #0xe
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #2
	ldr r7, _080F07E8 @ =0x00001CE7
	adds r1, r7, #0
	ands r0, r1
	strh r0, [r2]
	ldr r2, [r5, #4]
	adds r2, #0xe
	adds r2, r2, r4
	ldrh r0, [r2]
	lsrs r0, r0, #2
	ldr r4, _080F07EC @ =0x00001DE7
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r2]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xf
	ble _080F0788
	ldr r1, [r6]
	ldr r0, [r1, #0x50]
	adds r1, #0xe
	movs r2, #0x20
	bl memcpy
	ldr r1, [r6, #4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080F07DC
	ldr r0, [r1, #0x50]
	adds r1, #0xe
	movs r2, #0x20
	bl memcpy
_080F07DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F07E4: .4byte gUnknown_030053B0
_080F07E8: .4byte 0x00001CE7
_080F07EC: .4byte 0x00001DE7

	thumb_func_start sub_80F07F0
sub_80F07F0: @ 0x080F07F0
	push {r4, lr}
	ldr r4, _080F0834 @ =gUnknown_030053B0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xe
	adds r1, #0x2e
	movs r2, #0x20
	bl memcpy
	ldr r1, [r4, #4]
	adds r0, r1, #0
	adds r0, #0xe
	adds r1, #0x2e
	movs r2, #0x20
	bl memcpy
	ldr r1, [r4]
	ldr r0, [r1, #0x50]
	adds r1, #0x2e
	movs r2, #0x20
	bl memcpy
	ldr r1, [r4, #4]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _080F082E
	ldr r0, [r1, #0x50]
	adds r1, #0x2e
	movs r2, #0x20
	bl memcpy
_080F082E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F0834: .4byte gUnknown_030053B0

	thumb_func_start sub_80F0838
sub_80F0838: @ 0x080F0838
	push {r4, lr}
	ldr r2, _080F0868 @ =gUnknown_030053B0
	ldr r0, [r2]
	adds r1, r0, #0
	adds r1, #0x68
	ldrb r4, [r1]
	adds r0, #0x6b
	ldrb r0, [r0]
	movs r3, #0
	strb r0, [r1]
	ldr r0, [r2]
	adds r0, #0x69
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, #0x6e
	movs r1, #1
	strh r1, [r0]
	ldr r0, [r2]
	adds r0, #0x6b
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F0868: .4byte gUnknown_030053B0

	thumb_func_start sub_80F086C
sub_80F086C: @ 0x080F086C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r3, _080F089C @ =gUnknown_03002A30
	ldr r1, _080F08A0 @ =gCurrentProc
	ldr r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #4
	ldr r2, [r3]
	adds r2, r2, r1
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _080F0930
	strh r3, [r2, #0x10]
	cmp r0, #1
	beq _080F08D2
	cmp r0, #1
	bgt _080F08A4
	cmp r0, #0
	beq _080F08AA
	b _080F0930
	.align 2, 0
_080F089C: .4byte gUnknown_03002A30
_080F08A0: .4byte gCurrentProc
_080F08A4:
	cmp r0, #2
	beq _080F0908
	b _080F0930
_080F08AA:
	bl sub_80BDE68
	bl sub_80D7108
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080F08C8
	ldr r0, _080F08C4 @ =m2_character_info
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	bl sub_80BDCDC
	b _080F0930
	.align 2, 0
_080F08C4: .4byte m2_character_info
_080F08C8:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_80BDCDC
	b _080F0930
_080F08D2:
	movs r1, #0xd0
	ldr r5, _080F0900 @ =gUnknown_02024E20
	ldr r4, _080F0904 @ =0x00003DEF
	movs r0, #0x9e
	lsls r0, r0, #4
	adds r3, r0, #0
_080F08DE:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r5
	ldrh r1, [r2]
	lsrs r1, r1, #1
	ands r1, r4
	adds r1, r1, r3
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080F08DE
	b _080F0930
	.align 2, 0
_080F0900: .4byte gUnknown_02024E20
_080F0904: .4byte 0x00003DEF
_080F0908:
	movs r1, #0xd0
	ldr r5, _080F0938 @ =gUnknown_02024E20
	ldr r4, _080F093C @ =0x00003DEF
	ldr r0, _080F0940 @ =0x0000080F
	adds r3, r0, #0
_080F0912:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r5
	ldrh r1, [r2]
	lsrs r1, r1, #1
	ands r1, r4
	adds r1, r1, r3
	strh r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080F0912
_080F0930:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F0938: .4byte gUnknown_02024E20
_080F093C: .4byte 0x00003DEF
_080F0940: .4byte 0x0000080F

	thumb_func_start sub_80F0944
sub_80F0944: @ 0x080F0944
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080F0984 @ =gUnknown_030012FC
	strh r0, [r1]
	ldr r0, _080F0988 @ =gUnknown_030012F4
	strb r4, [r0]
	ldr r0, _080F098C @ =gUnknown_030053E4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _080F0990 @ =gUnknown_030053EC
	strh r1, [r0]
	ldr r1, _080F0994 @ =gUnknown_030053E8
	movs r0, #0
	str r0, [r1]
	movs r0, #1
	bl sub_80D243C
	cmp r4, #3
	beq _080F0978
	movs r0, #0xd
	bl PlaySongSetupPlayer
_080F0978:
	ldr r1, _080F0998 @ =gUnknown_03004F00
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F0984: .4byte gUnknown_030012FC
_080F0988: .4byte gUnknown_030012F4
_080F098C: .4byte gUnknown_030053E4
_080F0990: .4byte gUnknown_030053EC
_080F0994: .4byte gUnknown_030053E8
_080F0998: .4byte gUnknown_03004F00

	thumb_func_start sub_80F099C
sub_80F099C: @ 0x080F099C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080F09C4 @ =gUnknown_030053EC
	strh r0, [r1]
	cmp r0, #3
	bne _080F09C0
	ldr r1, _080F09C8 @ =gUnknown_030053E4
	movs r0, #2
	strh r0, [r1]
	ldr r1, _080F09CC @ =gUnknown_030053E8
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r1]
	ldr r0, _080F09D0 @ =sub_80D2D74
	movs r1, #0
	bl create_proc
_080F09C0:
	pop {r0}
	bx r0
	.align 2, 0
_080F09C4: .4byte gUnknown_030053EC
_080F09C8: .4byte gUnknown_030053E4
_080F09CC: .4byte gUnknown_030053E8
_080F09D0: .4byte sub_80D2D74

	thumb_func_start sub_80F09D4
sub_80F09D4: @ 0x080F09D4
	bx lr
	.align 2, 0

	thumb_func_start sub_80F09D8
sub_80F09D8: @ 0x080F09D8
	push {r4, r5, lr}
	ldr r0, _080F09F4 @ =gUnknown_030053E4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #4
	bls _080F09E8
	b _080F0B5C
_080F09E8:
	lsls r0, r1, #2
	ldr r1, _080F09F8 @ =_080F09FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F09F4: .4byte gUnknown_030053E4
_080F09F8: .4byte _080F09FC
_080F09FC: @ jump table
	.4byte _080F0A10 @ case 0
	.4byte _080F0A2E @ case 1
	.4byte _080F0B00 @ case 2
	.4byte _080F0B12 @ case 3
	.4byte _080F0B58 @ case 4
_080F0A10:
	ldr r0, _080F0ADC @ =gUnknown_03005328
	ldr r0, [r0]
	movs r1, #0
	str r1, [r0, #0x50]
	ldr r0, _080F0AE0 @ =gUnknown_030053E8
	str r1, [r0]
	movs r0, #1
	strh r0, [r2]
	ldr r2, _080F0AE4 @ =gUnknown_0300130C
	ldr r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	str r0, [r2]
	bl sub_8020064
_080F0A2E:
	ldr r3, _080F0AE8 @ =0x0000FFFF
	ldr r1, _080F0AEC @ =gHeldKeys
	ldrh r2, [r1]
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r1, #0
	cmp r4, #0
	beq _080F0A44
	movs r3, #6
_080F0A44:
	movs r0, #0x20
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _080F0A52
	movs r3, #2
_080F0A52:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080F0A68
	movs r3, #4
	cmp r4, #0
	beq _080F0A62
	movs r3, #5
_080F0A62:
	cmp r1, #0
	beq _080F0A68
	movs r3, #3
_080F0A68:
	ldrh r1, [r5]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080F0A88
	movs r3, #0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F0A7E
	movs r3, #7
_080F0A7E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F0A88
	movs r3, #1
_080F0A88:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	ldr r4, _080F0ADC @ =gUnknown_03005328
	cmp r1, r0
	beq _080F0AAA
	ldr r0, [r4]
	adds r2, r0, #0
	adds r2, #0x68
	ldr r0, _080F0AF0 @ =gUnknown_08B2AE64
	adds r0, r1, r0
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _080F0AAA
	strb r3, [r2]
_080F0AAA:
	ldr r0, [r4]
	adds r0, #0x68
	ldrb r0, [r0]
	bl sub_80F0E98
	bl sub_80F0FE8
	ldr r0, _080F0AE0 @ =gUnknown_030053E8
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #8
	ble _080F0B5C
	ldr r0, _080F0AF4 @ =gUnknown_030053EC
	movs r2, #1
	strh r2, [r0]
	ldr r0, _080F0AF8 @ =gUnknown_030052D0
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bne _080F0B54
	strh r2, [r0]
	ldr r0, _080F0AFC @ =gUnknown_03001B10
	strb r1, [r0]
	b _080F0B54
	.align 2, 0
_080F0ADC: .4byte gUnknown_03005328
_080F0AE0: .4byte gUnknown_030053E8
_080F0AE4: .4byte gUnknown_0300130C
_080F0AE8: .4byte 0x0000FFFF
_080F0AEC: .4byte gHeldKeys
_080F0AF0: .4byte gUnknown_08B2AE64
_080F0AF4: .4byte gUnknown_030053EC
_080F0AF8: .4byte gUnknown_030052D0
_080F0AFC: .4byte gUnknown_03001B10
_080F0B00:
	ldr r0, _080F0B44 @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x68
	movs r1, #2
	strb r1, [r0]
	movs r0, #3
	strh r0, [r2]
	bl sub_8020158
_080F0B12:
	ldr r2, _080F0B44 @ =gUnknown_03005328
	ldr r0, [r2]
	adds r0, #0x68
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x68
	ldrb r0, [r0]
	bl sub_80F0E98
	bl sub_80F0FE8
	ldr r0, _080F0B48 @ =gUnknown_030053E8
	ldr r0, [r0]
	cmp r0, #0
	bgt _080F0B54
	ldr r1, _080F0B4C @ =gUnknown_03005310
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080F0B50 @ =gUnknown_030053E4
	movs r0, #4
	strh r0, [r1]
	movs r0, #2
	b _080F0B5E
	.align 2, 0
_080F0B44: .4byte gUnknown_03005328
_080F0B48: .4byte gUnknown_030053E8
_080F0B4C: .4byte gUnknown_03005310
_080F0B50: .4byte gUnknown_030053E4
_080F0B54:
	movs r0, #1
	b _080F0B5E
_080F0B58:
	movs r0, #3
	b _080F0B5E
_080F0B5C:
	movs r0, #0
_080F0B5E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80F0B64
sub_80F0B64: @ 0x080F0B64
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080F0B80 @ =gUnknown_030053E4
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #4
	bls _080F0B76
	b _080F0E8C
_080F0B76:
	lsls r0, r1, #2
	ldr r1, _080F0B84 @ =_080F0B88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F0B80: .4byte gUnknown_030053E4
_080F0B84: .4byte _080F0B88
_080F0B88: @ jump table
	.4byte _080F0B9C @ case 0
	.4byte _080F0C04 @ case 1
	.4byte _080F0E34 @ case 2
	.4byte _080F0E46 @ case 3
	.4byte _080F0E88 @ case 4
_080F0B9C:
	ldr r0, _080F0BC8 @ =gUnknown_03005328
	ldr r0, [r0]
	movs r5, #0
	str r5, [r0, #0x50]
	ldr r0, _080F0BCC @ =gUnknown_030053E8
	str r5, [r0]
	movs r0, #1
	strh r0, [r2]
	ldr r4, _080F0BD0 @ =gUnknown_03000AE8
	movs r0, #0xff
	bl RandomNumber
	lsls r0, r0, #8
	strh r0, [r4]
	ldr r0, _080F0BD4 @ =gUnknown_030012F4
	ldrb r0, [r0]
	cmp r0, #2
	bne _080F0BDC
	ldr r1, _080F0BD8 @ =gUnknown_03000AE4
	movs r0, #4
	str r0, [r1]
	b _080F0BE6
	.align 2, 0
_080F0BC8: .4byte gUnknown_03005328
_080F0BCC: .4byte gUnknown_030053E8
_080F0BD0: .4byte gUnknown_03000AE8
_080F0BD4: .4byte gUnknown_030012F4
_080F0BD8: .4byte gUnknown_03000AE4
_080F0BDC:
	ldr r0, _080F0CC0 @ =gUnknown_03000AE4
	movs r1, #8
	str r1, [r0]
	ldr r0, _080F0CC4 @ =gUnknown_03000AEA
	strh r5, [r0]
_080F0BE6:
	ldr r1, _080F0CC8 @ =gUnknown_03000ADC
	ldr r0, _080F0CCC @ =gUnknown_03005328
	ldr r2, [r0]
	ldr r0, [r2, #0x40]
	str r0, [r1]
	ldr r1, _080F0CD0 @ =gUnknown_03000AE0
	ldr r0, [r2, #0x44]
	str r0, [r1]
	ldr r2, _080F0CD4 @ =gUnknown_0300130C
	ldr r0, [r2]
	movs r1, #0x30
	orrs r0, r1
	str r0, [r2]
	bl sub_8020064
_080F0C04:
	ldr r0, _080F0CD8 @ =gUnknown_030053EC
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #1
	bne _080F0C10
	b _080F0D48
_080F0C10:
	ldr r0, _080F0CDC @ =gUnknown_030012F4
	ldrb r0, [r0]
	cmp r0, #4
	beq _080F0C6C
	ldr r2, _080F0CE0 @ =gHeldKeys
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F0C30
	ldr r1, _080F0CC8 @ =gUnknown_03000ADC
	ldr r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	str r0, [r1]
_080F0C30:
	ldrh r2, [r2]
	movs r0, #0x20
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _080F0C46
	ldr r1, _080F0CC8 @ =gUnknown_03000ADC
	ldr r0, [r1]
	ldr r4, _080F0CE4 @ =0xFFFF0000
	adds r0, r0, r4
	str r0, [r1]
_080F0C46:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _080F0C58
	ldr r1, _080F0CD0 @ =gUnknown_03000AE0
	ldr r0, [r1]
	ldr r3, _080F0CE4 @ =0xFFFF0000
	adds r0, r0, r3
	str r0, [r1]
_080F0C58:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080F0C6C
	ldr r1, _080F0CD0 @ =gUnknown_03000AE0
	ldr r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	str r0, [r1]
_080F0C6C:
	ldr r4, _080F0CE8 @ =gUnknown_03000AE8
	ldrh r0, [r4]
	ldr r5, _080F0CC0 @ =gUnknown_03000AE4
	ldr r1, [r5]
	add r3, sp, #4
	mov r2, sp
	bl sub_80A8F60
	ldr r0, _080F0CCC @ =gUnknown_03005328
	ldr r2, [r0]
	ldr r0, _080F0CC8 @ =gUnknown_03000ADC
	ldr r0, [r0]
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r2, #0x40]
	ldr r0, _080F0CD0 @ =gUnknown_03000AE0
	ldr r0, [r0]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [r2, #0x44]
	ldrh r0, [r4]
	lsrs r0, r0, #0xd
	adds r2, #0x68
	strb r0, [r2]
	ldr r1, _080F0CEC @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r2, _080F0CF0 @ =0x000014BC
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _080F0CDC @ =gUnknown_030012F4
	ldrb r0, [r0]
	cmp r0, #2
	bne _080F0CF4
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r0, r3, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r0, [r5]
	adds r0, #0xc
	b _080F0D06
	.align 2, 0
_080F0CC0: .4byte gUnknown_03000AE4
_080F0CC4: .4byte gUnknown_03000AEA
_080F0CC8: .4byte gUnknown_03000ADC
_080F0CCC: .4byte gUnknown_03005328
_080F0CD0: .4byte gUnknown_03000AE0
_080F0CD4: .4byte gUnknown_0300130C
_080F0CD8: .4byte gUnknown_030053EC
_080F0CDC: .4byte gUnknown_030012F4
_080F0CE0: .4byte gHeldKeys
_080F0CE4: .4byte 0xFFFF0000
_080F0CE8: .4byte gUnknown_03000AE8
_080F0CEC: .4byte gUnknown_030053E8
_080F0CF0: .4byte 0x000014BC
_080F0CF4:
	ldr r0, _080F0D20 @ =gUnknown_03000AEA
	ldrh r1, [r0]
	adds r1, #0x20
	strh r1, [r0]
	ldrh r0, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r0, [r5]
	adds r0, #0x10
_080F0D06:
	str r0, [r5]
	bl sub_80F0FE8
	ldr r0, _080F0D24 @ =gUnknown_030012F4
	ldrb r0, [r0]
	cmp r0, #2
	bne _080F0D2C
	ldr r0, _080F0D28 @ =gUnknown_03000AE4
	ldr r1, [r0]
	movs r0, #0xe0
	lsls r0, r0, #4
	b _080F0D36
	.align 2, 0
_080F0D20: .4byte gUnknown_03000AEA
_080F0D24: .4byte gUnknown_030012F4
_080F0D28: .4byte gUnknown_03000AE4
_080F0D2C:
	ldr r0, _080F0D7C @ =gUnknown_03000AEA
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xc0
	lsls r0, r0, #5
_080F0D36:
	ldr r2, _080F0D80 @ =gUnknown_030053EC
	cmp r1, r0
	ble _080F0D40
	movs r0, #1
	strh r0, [r2]
_080F0D40:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #1
	bne _080F0E24
_080F0D48:
	ldr r2, _080F0D84 @ =gUnknown_030052D0
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r1, #0
	bne _080F0D5A
	movs r0, #1
	strh r0, [r2]
	ldr r0, _080F0D88 @ =gUnknown_03001B10
	strb r1, [r0]
_080F0D5A:
	ldr r1, _080F0D8C @ =gUnknown_030053E8
	ldr r0, [r1]
	adds r0, #5
	str r0, [r1]
	ldr r2, _080F0D90 @ =gUnknown_03005328
	ldr r0, [r2]
	adds r0, #0x68
	ldrb r0, [r0]
	adds r3, r1, #0
	cmp r0, #7
	bhi _080F0E2C
	lsls r0, r0, #2
	ldr r1, _080F0D94 @ =_080F0D98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F0D7C: .4byte gUnknown_03000AEA
_080F0D80: .4byte gUnknown_030053EC
_080F0D84: .4byte gUnknown_030052D0
_080F0D88: .4byte gUnknown_03001B10
_080F0D8C: .4byte gUnknown_030053E8
_080F0D90: .4byte gUnknown_03005328
_080F0D94: .4byte _080F0D98
_080F0D98: @ jump table
	.4byte _080F0DB8 @ case 0
	.4byte _080F0DC4 @ case 1
	.4byte _080F0DCE @ case 2
	.4byte _080F0DDA @ case 3
	.4byte _080F0DEA @ case 4
	.4byte _080F0DF6 @ case 5
	.4byte _080F0E06 @ case 6
	.4byte _080F0E12 @ case 7
_080F0DB8:
	ldr r0, [r2]
	ldr r1, [r0, #0x44]
	ldr r2, [r3]
	adds r1, r1, r2
	str r1, [r0, #0x44]
	b _080F0E2C
_080F0DC4:
	ldr r1, [r2]
	ldr r0, [r1, #0x40]
	ldr r2, [r3]
	subs r0, r0, r2
	b _080F0E1A
_080F0DCE:
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	ldr r2, [r3]
	subs r1, r1, r2
	str r1, [r0, #0x40]
	b _080F0E2C
_080F0DDA:
	ldr r1, [r2]
	ldr r0, [r1, #0x40]
	ldr r2, [r3]
	subs r0, r0, r2
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x44]
	subs r0, r0, r2
	b _080F0E20
_080F0DEA:
	ldr r0, [r2]
	ldr r1, [r0, #0x44]
	ldr r2, [r3]
	subs r1, r1, r2
	str r1, [r0, #0x44]
	b _080F0E2C
_080F0DF6:
	ldr r1, [r2]
	ldr r0, [r1, #0x40]
	ldr r2, [r3]
	adds r0, r0, r2
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x44]
	subs r0, r0, r2
	b _080F0E20
_080F0E06:
	ldr r0, [r2]
	ldr r1, [r0, #0x40]
	ldr r2, [r3]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	b _080F0E2C
_080F0E12:
	ldr r1, [r2]
	ldr r0, [r1, #0x40]
	ldr r2, [r3]
	adds r0, r0, r2
_080F0E1A:
	str r0, [r1, #0x40]
	ldr r0, [r1, #0x44]
	adds r0, r0, r2
_080F0E20:
	str r0, [r1, #0x44]
	b _080F0E2C
_080F0E24:
	ldr r0, _080F0E30 @ =gUnknown_030012F4
	ldrb r0, [r0]
	cmp r0, #4
	bne _080F0E8C
_080F0E2C:
	movs r0, #1
	b _080F0E8E
	.align 2, 0
_080F0E30: .4byte gUnknown_030012F4
_080F0E34:
	ldr r0, _080F0E78 @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x68
	movs r1, #2
	strb r1, [r0]
	movs r0, #3
	strh r0, [r2]
	bl sub_8020158
_080F0E46:
	ldr r2, _080F0E78 @ =gUnknown_03005328
	ldr r0, [r2]
	adds r0, #0x68
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0x68
	ldrb r0, [r0]
	bl sub_80F0E98
	bl sub_80F0FE8
	ldr r0, _080F0E7C @ =gUnknown_030053E8
	ldr r0, [r0]
	cmp r0, #0
	bgt _080F0E2C
	ldr r1, _080F0E80 @ =gUnknown_03005310
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080F0E84 @ =gUnknown_030053E4
	movs r0, #4
	strh r0, [r1]
	movs r0, #2
	b _080F0E8E
	.align 2, 0
_080F0E78: .4byte gUnknown_03005328
_080F0E7C: .4byte gUnknown_030053E8
_080F0E80: .4byte gUnknown_03005310
_080F0E84: .4byte gUnknown_030053E4
_080F0E88:
	movs r0, #3
	b _080F0E8E
_080F0E8C:
	movs r0, #0
_080F0E8E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80F0E98
sub_80F0E98: @ 0x080F0E98
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080F0EC0 @ =gUnknown_030053EC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq _080F0ED0
	cmp r0, #3
	beq _080F0F00
	ldr r0, _080F0EC4 @ =gUnknown_03005330
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #1
	bne _080F0F24
	ldr r1, _080F0EC8 @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r3, _080F0ECC @ =0x000029FB
	b _080F0F2A
	.align 2, 0
_080F0EC0: .4byte gUnknown_030053EC
_080F0EC4: .4byte gUnknown_03005330
_080F0EC8: .4byte gUnknown_030053E8
_080F0ECC: .4byte 0x000029FB
_080F0ED0:
	ldr r0, _080F0EE4 @ =gUnknown_03005330
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _080F0EF0
	ldr r1, _080F0EE8 @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r3, _080F0EEC @ =0x0000051E
	b _080F0F2A
	.align 2, 0
_080F0EE4: .4byte gUnknown_03005330
_080F0EE8: .4byte gUnknown_030053E8
_080F0EEC: .4byte 0x0000051E
_080F0EF0:
	ldr r1, _080F0EF8 @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r3, _080F0EFC @ =0x00003333
	b _080F0F2A
	.align 2, 0
_080F0EF8: .4byte gUnknown_030053E8
_080F0EFC: .4byte 0x00003333
_080F0F00:
	ldr r0, _080F0F18 @ =gUnknown_03005330
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080F0F1C @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r3, _080F0F20 @ =0xFFFFE667
	adds r2, r0, r3
	cmp r2, #0
	bge _080F0F2C
	movs r2, #0
	b _080F0F2C
	.align 2, 0
_080F0F18: .4byte gUnknown_03005330
_080F0F1C: .4byte gUnknown_030053E8
_080F0F20: .4byte 0xFFFFE667
_080F0F24:
	ldr r1, _080F0F54 @ =gUnknown_030053E8
	ldr r0, [r1]
	ldr r3, _080F0F58 @ =0x000014BC
_080F0F2A:
	adds r2, r0, r3
_080F0F2C:
	str r2, [r1]
	ldr r1, _080F0F5C @ =gUnknown_03005328
	ldr r0, [r1]
	str r2, [r0, #0x50]
	movs r0, #1
	ands r0, r4
	adds r3, r1, #0
	cmp r0, #0
	beq _080F0F46
	asrs r2, r2, #8
	ldr r0, _080F0F60 @ =0x0000B505
	muls r2, r0, r2
	asrs r2, r2, #8
_080F0F46:
	cmp r4, #7
	bhi _080F0FE2
	lsls r0, r4, #2
	ldr r1, _080F0F64 @ =_080F0F68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F0F54: .4byte gUnknown_030053E8
_080F0F58: .4byte 0x000014BC
_080F0F5C: .4byte gUnknown_03005328
_080F0F60: .4byte 0x0000B505
_080F0F64: .4byte _080F0F68
_080F0F68: @ jump table
	.4byte _080F0F88 @ case 0
	.4byte _080F0F92 @ case 1
	.4byte _080F0F9A @ case 2
	.4byte _080F0FA4 @ case 3
	.4byte _080F0FB2 @ case 4
	.4byte _080F0FBC @ case 5
	.4byte _080F0FCA @ case 6
	.4byte _080F0FD4 @ case 7
_080F0F88:
	ldr r1, [r3]
	ldr r0, [r1, #0x44]
	adds r0, r0, r2
	str r0, [r1, #0x44]
	b _080F0FE2
_080F0F92:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	subs r1, r1, r2
	b _080F0FDA
_080F0F9A:
	ldr r1, [r3]
	ldr r0, [r1, #0x40]
	subs r0, r0, r2
	str r0, [r1, #0x40]
	b _080F0FE2
_080F0FA4:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	subs r1, r1, r2
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x44]
	subs r1, r1, r2
	b _080F0FE0
_080F0FB2:
	ldr r1, [r3]
	ldr r0, [r1, #0x44]
	subs r0, r0, r2
	str r0, [r1, #0x44]
	b _080F0FE2
_080F0FBC:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x44]
	subs r1, r1, r2
	b _080F0FE0
_080F0FCA:
	ldr r1, [r3]
	ldr r0, [r1, #0x40]
	adds r0, r0, r2
	str r0, [r1, #0x40]
	b _080F0FE2
_080F0FD4:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	adds r1, r1, r2
_080F0FDA:
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x44]
	adds r1, r1, r2
_080F0FE0:
	str r1, [r0, #0x44]
_080F0FE2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80F0FE8
sub_80F0FE8: @ 0x080F0FE8
	push {lr}
	ldr r0, _080F1014 @ =gUnknown_030053E8
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080F1008
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _080F100A
_080F1008:
	movs r2, #1
_080F100A:
	ldr r0, _080F1018 @ =gUnknown_03005310
	strh r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080F1014: .4byte gUnknown_030053E8
_080F1018: .4byte gUnknown_03005310

	thumb_func_start sub_80F101C
sub_80F101C: @ 0x080F101C
	ldr r2, _080F1030 @ =gUnknown_030053F0
	ldr r0, _080F1034 @ =gUnknown_08B2B26C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080F1030: .4byte gUnknown_030053F0
_080F1034: .4byte gUnknown_08B2B26C

	thumb_func_start sub_80F1038
sub_80F1038: @ 0x080F1038
	ldr r1, _080F1040 @ =gUnknown_030053F0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080F1040: .4byte gUnknown_030053F0

	thumb_func_start sub_80F1044
sub_80F1044: @ 0x080F1044
	ldr r2, _080F1058 @ =gUnknown_030053F0
	ldr r1, _080F105C @ =gUnknown_08B2B26C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080F1058: .4byte gUnknown_030053F0
_080F105C: .4byte gUnknown_08B2B26C

	thumb_func_start sub_80F1060
sub_80F1060: @ 0x080F1060
	ldr r3, _080F1070 @ =gUnknown_03000AEC
	strh r0, [r3]
	ldr r0, _080F1074 @ =gUnknown_03000AEE
	strh r1, [r0]
	ldr r0, _080F1078 @ =gUnknown_03000AF0
	strh r2, [r0]
	bx lr
	.align 2, 0
_080F1070: .4byte gUnknown_03000AEC
_080F1074: .4byte gUnknown_03000AEE
_080F1078: .4byte gUnknown_03000AF0

	thumb_func_start sub_80F107C
sub_80F107C: @ 0x080F107C
	ldr r1, _080F1084 @ =gUnknown_03000AF2
	strh r0, [r1]
	bx lr
	.align 2, 0
_080F1084: .4byte gUnknown_03000AF2

	thumb_func_start sub_80F1088
sub_80F1088: @ 0x080F1088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r3, #0
	mov r8, r3
	movs r6, #0
	ldr r3, _080F10DC @ =gUnknown_03000AF4
	strh r0, [r3]
	ldr r3, _080F10E0 @ =gUnknown_03000AFC
	strh r1, [r3]
	ldr r0, _080F10E4 @ =gUnknown_03000AF8
	mov r4, r8
	strh r4, [r0]
	ldr r1, _080F10E8 @ =gUnknown_03000AF6
	lsls r2, r2, #8
	strh r2, [r1]
	ldr r0, _080F10EC @ =gUnknown_03000AEC
	movs r5, #0
	ldrsh r2, [r0, r5]
	mov ip, r3
	adds r4, r1, #0
	adds r3, r0, #0
	cmp r2, #1
	ble _080F10C4
	cmp r2, #3
	beq _080F10C4
	b _080F1394
_080F10C4:
	ldr r0, _080F10F0 @ =gUnknown_03000AEE
	movs r7, #0
	ldrsh r0, [r0, r7]
	ldr r7, _080F10F4 @ =gUnknown_03000AFA
	cmp r0, #4
	bls _080F10D2
	b _080F1210
_080F10D2:
	lsls r0, r0, #2
	ldr r1, _080F10F8 @ =_080F10FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F10DC: .4byte gUnknown_03000AF4
_080F10E0: .4byte gUnknown_03000AFC
_080F10E4: .4byte gUnknown_03000AF8
_080F10E8: .4byte gUnknown_03000AF6
_080F10EC: .4byte gUnknown_03000AEC
_080F10F0: .4byte gUnknown_03000AEE
_080F10F4: .4byte gUnknown_03000AFA
_080F10F8: .4byte _080F10FC
_080F10FC: @ jump table
	.4byte _080F1110 @ case 0
	.4byte _080F1124 @ case 1
	.4byte _080F1164 @ case 2
	.4byte _080F11A4 @ case 3
	.4byte _080F11E4 @ case 4
_080F1110:
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r4]
	ldr r0, _080F1120 @ =gUnknown_03000AFA
	strh r1, [r0]
	adds r7, r0, #0
	b _080F1210
	.align 2, 0
_080F1120: .4byte gUnknown_03000AFA
_080F1124:
	ldr r2, _080F1150 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1154 @ =gRamBG0VOFS
	ldrh r0, [r0]
	mov r8, r0
	lsls r0, r0, #8
	ldrh r2, [r4]
	adds r0, r0, r2
	ldr r5, _080F1158 @ =0xFFFFFF00
	adds r1, r5, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _080F115C @ =gUnknown_03000AFA
	ldr r0, _080F1160 @ =gRamBG0HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #0
	b _080F120E
	.align 2, 0
_080F1150: .4byte gUnknown_030053F0
_080F1154: .4byte gRamBG0VOFS
_080F1158: .4byte 0xFFFFFF00
_080F115C: .4byte gUnknown_03000AFA
_080F1160: .4byte gRamBG0HOFS
_080F1164:
	ldr r2, _080F1190 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1194 @ =gRamBG1VOFS
	ldrh r0, [r0]
	mov r8, r0
	lsls r0, r0, #8
	ldrh r7, [r4]
	adds r0, r0, r7
	ldr r2, _080F1198 @ =0xFFFFFF00
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _080F119C @ =gUnknown_03000AFA
	ldr r0, _080F11A0 @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #1
	b _080F120E
	.align 2, 0
_080F1190: .4byte gUnknown_030053F0
_080F1194: .4byte gRamBG1VOFS
_080F1198: .4byte 0xFFFFFF00
_080F119C: .4byte gUnknown_03000AFA
_080F11A0: .4byte gUnknown_03001D30
_080F11A4:
	ldr r2, _080F11D0 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F11D4 @ =gRamBG2VOFS
	ldrh r0, [r0]
	mov r8, r0
	subs r0, #0x10
	lsls r0, r0, #8
	ldrh r5, [r4]
	adds r0, r0, r5
	ldr r7, _080F11D8 @ =0xFFFFFF00
	adds r1, r7, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _080F11DC @ =gUnknown_03000AFA
	ldr r0, _080F11E0 @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #2
	b _080F120E
	.align 2, 0
_080F11D0: .4byte gUnknown_030053F0
_080F11D4: .4byte gRamBG2VOFS
_080F11D8: .4byte 0xFFFFFF00
_080F11DC: .4byte gUnknown_03000AFA
_080F11E0: .4byte gRamBG2HOFS
_080F11E4:
	ldr r2, _080F1228 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F122C @ =gRamBG3VOFS
	ldrh r0, [r0]
	mov r8, r0
	subs r0, #0x10
	lsls r0, r0, #8
	ldrh r1, [r4]
	adds r0, r0, r1
	ldr r2, _080F1230 @ =0xFFFFFF00
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4]
	ldr r1, _080F1234 @ =gUnknown_03000AFA
	ldr r0, _080F1238 @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #3
_080F120E:
	adds r7, r1, #0
_080F1210:
	ldr r0, _080F123C @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1240
	movs r5, #1
	movs r1, #0
	b _080F1244
	.align 2, 0
_080F1228: .4byte gUnknown_030053F0
_080F122C: .4byte gRamBG3VOFS
_080F1230: .4byte 0xFFFFFF00
_080F1234: .4byte gUnknown_03000AFA
_080F1238: .4byte gRamBG3HOFS
_080F123C: .4byte gUnknown_03005220
_080F1240:
	movs r5, #0
	movs r1, #1
_080F1244:
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _080F12D4
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F12BC @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F12C0 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F12C4 @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F12C8 @ =gUnknown_08B2B06C
	mov sb, r5
	ldr r2, _080F12CC @ =gUnknown_03000AF6
	ldr r0, _080F12D0 @ =gUnknown_03000AF4
	mov sl, r0
_080F127C:
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	mov r4, ip
	movs r5, #0
	ldrsh r0, [r4, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r1, [r7]
	adds r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	mov r4, r8
	strh r4, [r3]
	mov r5, sl
	ldrh r0, [r5]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r3, #0xe
	lsls r0, r6, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080F127C
	b _080F1622
	.align 2, 0
_080F12BC: .4byte gUnknown_02025270
_080F12C0: .4byte 0x040000D4
_080F12C4: .4byte 0x80000500
_080F12C8: .4byte gUnknown_08B2B06C
_080F12CC: .4byte gUnknown_03000AF6
_080F12D0: .4byte gUnknown_03000AF4
_080F12D4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1374 @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1378 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F137C @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F1380 @ =gUnknown_08B2B06C
	mov ip, r5
	ldr r2, _080F1384 @ =gUnknown_03000AF6
	ldr r7, _080F1388 @ =gUnknown_03000AFC
	mov sb, r7
	ldr r0, _080F138C @ =gUnknown_03000AFA
	mov sl, r0
	ldr r4, _080F1390 @ =gUnknown_03000AF4
_080F130A:
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r1, sl
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	mov r5, r8
	strh r5, [r3]
	adds r3, #0xe
	ldrh r0, [r4]
	ldrh r7, [r2]
	adds r0, r0, r7
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	mov r5, sb
	movs r7, #0
	ldrsh r0, [r5, r7]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r5, sl
	ldrh r0, [r5]
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	mov r7, r8
	strh r7, [r3]
	adds r3, #0xe
	ldrh r0, [r4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080F130A
	b _080F1622
	.align 2, 0
_080F1374: .4byte gUnknown_02025270
_080F1378: .4byte 0x040000D4
_080F137C: .4byte 0x80000500
_080F1380: .4byte gUnknown_08B2B06C
_080F1384: .4byte gUnknown_03000AF6
_080F1388: .4byte gUnknown_03000AFC
_080F138C: .4byte gUnknown_03000AFA
_080F1390: .4byte gUnknown_03000AF4
_080F1394:
	ldr r0, _080F13A8 @ =gUnknown_03000AEE
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #4
	bhi _080F1484
	lsls r0, r0, #2
	ldr r1, _080F13AC @ =_080F13B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F13A8: .4byte gUnknown_03000AEE
_080F13AC: .4byte _080F13B0
_080F13B0: @ jump table
	.4byte _080F13C4 @ case 0
	.4byte _080F13D8 @ case 1
	.4byte _080F1408 @ case 2
	.4byte _080F1438 @ case 3
	.4byte _080F1468 @ case 4
_080F13C4:
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r4]
	ldr r0, _080F13D4 @ =gUnknown_03000AFA
	strh r1, [r0]
	b _080F1484
	.align 2, 0
_080F13D4: .4byte gUnknown_03000AFA
_080F13D8:
	ldr r2, _080F13F8 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F13FC @ =gRamBG0HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F1400 @ =gUnknown_03000AFA
	ldr r0, _080F1404 @ =gRamBG0VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #0
	b _080F1484
	.align 2, 0
_080F13F8: .4byte gUnknown_030053F0
_080F13FC: .4byte gRamBG0HOFS
_080F1400: .4byte gUnknown_03000AFA
_080F1404: .4byte gRamBG0VOFS
_080F1408:
	ldr r2, _080F1428 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F142C @ =gUnknown_03001D30
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F1430 @ =gUnknown_03000AFA
	ldr r0, _080F1434 @ =gRamBG1VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #1
	b _080F1484
	.align 2, 0
_080F1428: .4byte gUnknown_030053F0
_080F142C: .4byte gUnknown_03001D30
_080F1430: .4byte gUnknown_03000AFA
_080F1434: .4byte gRamBG1VOFS
_080F1438:
	ldr r2, _080F1458 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F145C @ =gRamBG2HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F1460 @ =gUnknown_03000AFA
	ldr r0, _080F1464 @ =gRamBG2VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #2
	b _080F1484
	.align 2, 0
_080F1458: .4byte gUnknown_030053F0
_080F145C: .4byte gRamBG2HOFS
_080F1460: .4byte gUnknown_03000AFA
_080F1464: .4byte gRamBG2VOFS
_080F1468:
	ldr r2, _080F149C @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F14A0 @ =gRamBG3HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F14A4 @ =gUnknown_03000AFA
	ldr r0, _080F14A8 @ =gRamBG3VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #3
_080F1484:
	ldr r0, _080F14AC @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F14B0
	movs r5, #1
	movs r1, #0
	b _080F14B4
	.align 2, 0
_080F149C: .4byte gUnknown_030053F0
_080F14A0: .4byte gRamBG3HOFS
_080F14A4: .4byte gUnknown_03000AFA
_080F14A8: .4byte gRamBG3VOFS
_080F14AC: .4byte gUnknown_03005220
_080F14B0:
	movs r5, #0
	movs r1, #1
_080F14B4:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #2
	bne _080F155C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F153C @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1540 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F1544 @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F1548 @ =gUnknown_03000AFA
	ldr r4, _080F154C @ =gUnknown_03000AF2
	mov sl, r4
	ldr r7, _080F1550 @ =gUnknown_08B2B06C
	mov sb, r7
	ldr r4, _080F1554 @ =gUnknown_03000AF6
_080F14EE:
	mov r1, sl
	ldrh r0, [r1]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r7, r8
	strh r7, [r3]
	adds r3, #2
	ldrh r2, [r5]
	lsrs r2, r2, #8
	str r2, [sp]
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r1, [sp]
	adds r2, r1, r0
	strh r2, [r3]
	ldr r2, _080F1558 @ =gUnknown_03000AF4
	ldrh r0, [r2]
	ldrh r7, [r4]
	adds r0, r0, r7
	strh r0, [r4]
	adds r3, #0xe
	lsls r0, r6, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080F14EE
	b _080F1622
	.align 2, 0
_080F153C: .4byte gUnknown_02025270
_080F1540: .4byte 0x040000D4
_080F1544: .4byte 0x80000500
_080F1548: .4byte gUnknown_03000AFA
_080F154C: .4byte gUnknown_03000AF2
_080F1550: .4byte gUnknown_08B2B06C
_080F1554: .4byte gUnknown_03000AF6
_080F1558: .4byte gUnknown_03000AF4
_080F155C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1634 @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1638 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F163C @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F1640 @ =gUnknown_03000AFA
	movs r2, #0xff
	mov sl, r2
	ldr r4, _080F1644 @ =gUnknown_08B2B06C
	mov sb, r4
	ldr r4, _080F1648 @ =gUnknown_03000AF6
	ldr r7, _080F164C @ =gUnknown_03000AFC
	mov ip, r7
_080F1592:
	ldr r1, _080F1650 @ =gUnknown_03000AF2
	ldrh r0, [r1]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r7, r8
	strh r7, [r3]
	adds r3, #2
	ldrh r1, [r5]
	lsrs r1, r1, #8
	mov r0, sl
	ands r1, r0
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	str r0, [sp]
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	ldr r2, [sp]
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	adds r3, #0xe
	ldr r7, _080F1654 @ =gUnknown_03000AF4
	ldrh r0, [r7]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r2, _080F1650 @ =gUnknown_03000AF2
	ldrh r0, [r2]
	ldrh r7, [r5]
	adds r0, r0, r7
	strh r0, [r5]
	mov r0, r8
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r5]
	lsrs r1, r1, #8
	mov r2, sl
	ands r1, r2
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	str r0, [sp]
	mov r7, ip
	movs r2, #0
	ldrsh r0, [r7, r2]
	ldr r7, [sp]
	muls r0, r7, r0
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r3]
	adds r3, #0xe
	ldr r1, _080F1654 @ =gUnknown_03000AF4
	ldrh r0, [r1]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	lsls r0, r6, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r0, r7
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080F1592
_080F1622:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F1634: .4byte gUnknown_02025270
_080F1638: .4byte 0x040000D4
_080F163C: .4byte 0x80000500
_080F1640: .4byte gUnknown_03000AFA
_080F1644: .4byte gUnknown_08B2B06C
_080F1648: .4byte gUnknown_03000AF6
_080F164C: .4byte gUnknown_03000AFC
_080F1650: .4byte gUnknown_03000AF2
_080F1654: .4byte gUnknown_03000AF4

	thumb_func_start sub_80F1658
sub_80F1658: @ 0x080F1658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r3, #0
	mov r8, r3
	movs r6, #0
	ldr r3, _080F16A8 @ =gUnknown_03000AF4
	strh r0, [r3]
	ldr r3, _080F16AC @ =gUnknown_03000AFC
	strh r1, [r3]
	ldr r0, _080F16B0 @ =gUnknown_03000AF8
	mov r4, r8
	strh r4, [r0]
	ldr r1, _080F16B4 @ =gUnknown_03000AF6
	lsls r2, r2, #8
	strh r2, [r1]
	ldr r0, _080F16B8 @ =gUnknown_03000AEC
	movs r5, #0
	ldrsh r2, [r0, r5]
	mov ip, r3
	adds r4, r1, #0
	adds r3, r0, #0
	cmp r2, #1
	ble _080F1690
	b _080F1950
_080F1690:
	ldr r0, _080F16BC @ =gUnknown_03000AEE
	movs r7, #0
	ldrsh r0, [r0, r7]
	ldr r7, _080F16C0 @ =gUnknown_03000AFA
	cmp r0, #4
	bls _080F169E
	b _080F17CE
_080F169E:
	lsls r0, r0, #2
	ldr r1, _080F16C4 @ =_080F16C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F16A8: .4byte gUnknown_03000AF4
_080F16AC: .4byte gUnknown_03000AFC
_080F16B0: .4byte gUnknown_03000AF8
_080F16B4: .4byte gUnknown_03000AF6
_080F16B8: .4byte gUnknown_03000AEC
_080F16BC: .4byte gUnknown_03000AEE
_080F16C0: .4byte gUnknown_03000AFA
_080F16C4: .4byte _080F16C8
_080F16C8: @ jump table
	.4byte _080F16DC @ case 0
	.4byte _080F16F0 @ case 1
	.4byte _080F172C @ case 2
	.4byte _080F1768 @ case 3
	.4byte _080F17A4 @ case 4
_080F16DC:
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r4]
	ldr r0, _080F16EC @ =gUnknown_03000AFA
	strh r1, [r0]
	adds r7, r0, #0
	b _080F17CE
	.align 2, 0
_080F16EC: .4byte gUnknown_03000AFA
_080F16F0:
	ldr r2, _080F171C @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1720 @ =gRamBG0VOFS
	ldrh r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	lsrs r0, r0, #8
	add r0, r8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r4]
	ldr r1, _080F1724 @ =gUnknown_03000AFA
	ldr r0, _080F1728 @ =gRamBG0HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #0
	b _080F17CC
	.align 2, 0
_080F171C: .4byte gUnknown_030053F0
_080F1720: .4byte gRamBG0VOFS
_080F1724: .4byte gUnknown_03000AFA
_080F1728: .4byte gRamBG0HOFS
_080F172C:
	ldr r2, _080F1758 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F175C @ =gRamBG1VOFS
	ldrh r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	lsrs r0, r0, #8
	add r0, r8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r4]
	ldr r1, _080F1760 @ =gUnknown_03000AFA
	ldr r0, _080F1764 @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #1
	b _080F17CC
	.align 2, 0
_080F1758: .4byte gUnknown_030053F0
_080F175C: .4byte gRamBG1VOFS
_080F1760: .4byte gUnknown_03000AFA
_080F1764: .4byte gUnknown_03001D30
_080F1768:
	ldr r2, _080F1794 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1798 @ =gRamBG2VOFS
	ldrh r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	lsrs r0, r0, #8
	add r0, r8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r4]
	ldr r1, _080F179C @ =gUnknown_03000AFA
	ldr r0, _080F17A0 @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #2
	b _080F17CC
	.align 2, 0
_080F1794: .4byte gUnknown_030053F0
_080F1798: .4byte gRamBG2VOFS
_080F179C: .4byte gUnknown_03000AFA
_080F17A0: .4byte gRamBG2HOFS
_080F17A4:
	ldr r2, _080F17E4 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F17E8 @ =gRamBG3VOFS
	ldrh r0, [r0]
	mov r8, r0
	ldrh r0, [r4]
	lsrs r0, r0, #8
	add r0, r8
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #8
	strh r0, [r4]
	ldr r1, _080F17EC @ =gUnknown_03000AFA
	ldr r0, _080F17F0 @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	movs r6, #3
_080F17CC:
	adds r7, r1, #0
_080F17CE:
	ldr r0, _080F17F4 @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F17F8
	movs r5, #1
	movs r1, #0
	b _080F17FC
	.align 2, 0
_080F17E4: .4byte gUnknown_030053F0
_080F17E8: .4byte gRamBG3VOFS
_080F17EC: .4byte gUnknown_03000AFA
_080F17F0: .4byte gRamBG3HOFS
_080F17F4: .4byte gUnknown_03005220
_080F17F8:
	movs r5, #0
	movs r1, #1
_080F17FC:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _080F188C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1874 @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1878 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F187C @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r4, _080F1880 @ =gUnknown_08B2AE6C
	mov sb, r4
	ldr r2, _080F1884 @ =gUnknown_03000AF6
	ldr r5, _080F1888 @ =gUnknown_03000AF4
	mov sl, r5
_080F1834:
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	movs r4, #0
	ldrsh r1, [r0, r4]
	mov r5, ip
	movs r4, #0
	ldrsh r0, [r5, r4]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldrh r5, [r7]
	adds r0, r0, r5
	strh r0, [r3]
	adds r3, #2
	mov r0, r8
	strh r0, [r3]
	mov r1, sl
	ldrh r0, [r1]
	ldrh r4, [r2]
	adds r0, r0, r4
	strh r0, [r2]
	adds r3, #0xe
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080F1834
	b _080F1BE6
	.align 2, 0
_080F1874: .4byte gUnknown_02025270
_080F1878: .4byte 0x040000D4
_080F187C: .4byte 0x80000500
_080F1880: .4byte gUnknown_08B2AE6C
_080F1884: .4byte gUnknown_03000AF6
_080F1888: .4byte gUnknown_03000AF4
_080F188C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1930 @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1934 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F1938 @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r7, _080F193C @ =gUnknown_08B2AE6C
	mov ip, r7
	ldr r2, _080F1940 @ =gUnknown_03000AF6
	ldr r0, _080F1944 @ =gUnknown_03000AFC
	mov sb, r0
	ldr r1, _080F1948 @ =gUnknown_03000AFA
	mov sl, r1
	ldr r4, _080F194C @ =gUnknown_03000AF4
_080F18C2:
	ldrh r0, [r2]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, ip
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r7, sb
	movs r5, #0
	ldrsh r0, [r7, r5]
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r7, sl
	ldrh r7, [r7]
	adds r0, r0, r7
	strh r0, [r3]
	adds r3, #2
	mov r0, r8
	strh r0, [r3]
	adds r3, #0xe
	ldrh r0, [r4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	add r0, ip
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r7, sb
	movs r5, #0
	ldrsh r0, [r7, r5]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r7, sl
	ldrh r0, [r7]
	subs r0, r0, r1
	strh r0, [r3]
	adds r3, #2
	mov r0, r8
	strh r0, [r3]
	adds r3, #0xe
	ldrh r0, [r4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	lsls r0, r6, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080F18C2
	b _080F1BE6
	.align 2, 0
_080F1930: .4byte gUnknown_02025270
_080F1934: .4byte 0x040000D4
_080F1938: .4byte 0x80000500
_080F193C: .4byte gUnknown_08B2AE6C
_080F1940: .4byte gUnknown_03000AF6
_080F1944: .4byte gUnknown_03000AFC
_080F1948: .4byte gUnknown_03000AFA
_080F194C: .4byte gUnknown_03000AF4
_080F1950:
	ldr r0, _080F1964 @ =gUnknown_03000AEE
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #4
	bhi _080F1A40
	lsls r0, r0, #2
	ldr r1, _080F1968 @ =_080F196C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F1964: .4byte gUnknown_03000AEE
_080F1968: .4byte _080F196C
_080F196C: @ jump table
	.4byte _080F1980 @ case 0
	.4byte _080F1994 @ case 1
	.4byte _080F19C4 @ case 2
	.4byte _080F19F4 @ case 3
	.4byte _080F1A24 @ case 4
_080F1980:
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r4]
	ldr r0, _080F1990 @ =gUnknown_03000AFA
	strh r1, [r0]
	b _080F1A40
	.align 2, 0
_080F1990: .4byte gUnknown_03000AFA
_080F1994:
	ldr r2, _080F19B4 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F19B8 @ =gRamBG0HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F19BC @ =gUnknown_03000AFA
	ldr r0, _080F19C0 @ =gRamBG0VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #0
	b _080F1A40
	.align 2, 0
_080F19B4: .4byte gUnknown_030053F0
_080F19B8: .4byte gRamBG0HOFS
_080F19BC: .4byte gUnknown_03000AFA
_080F19C0: .4byte gRamBG0VOFS
_080F19C4:
	ldr r2, _080F19E4 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F19E8 @ =gUnknown_03001D30
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F19EC @ =gUnknown_03000AFA
	ldr r0, _080F19F0 @ =gRamBG1VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #1
	b _080F1A40
	.align 2, 0
_080F19E4: .4byte gUnknown_030053F0
_080F19E8: .4byte gUnknown_03001D30
_080F19EC: .4byte gUnknown_03000AFA
_080F19F0: .4byte gRamBG1VOFS
_080F19F4:
	ldr r2, _080F1A14 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1A18 @ =gRamBG2HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F1A1C @ =gUnknown_03000AFA
	ldr r0, _080F1A20 @ =gRamBG2VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #2
	b _080F1A40
	.align 2, 0
_080F1A14: .4byte gUnknown_030053F0
_080F1A18: .4byte gRamBG2HOFS
_080F1A1C: .4byte gUnknown_03000AFA
_080F1A20: .4byte gRamBG2VOFS
_080F1A24:
	ldr r2, _080F1A58 @ =gUnknown_030053F0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _080F1A5C @ =gRamBG3HOFS
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, _080F1A60 @ =gUnknown_03000AFA
	ldr r0, _080F1A64 @ =gRamBG3VOFS
	ldrh r0, [r0]
	lsls r0, r0, #8
	strh r0, [r1]
	movs r6, #3
_080F1A40:
	ldr r0, _080F1A68 @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1A6C
	movs r5, #1
	movs r1, #0
	b _080F1A70
	.align 2, 0
_080F1A58: .4byte gUnknown_030053F0
_080F1A5C: .4byte gRamBG3HOFS
_080F1A60: .4byte gUnknown_03000AFA
_080F1A64: .4byte gRamBG3VOFS
_080F1A68: .4byte gUnknown_03005220
_080F1A6C:
	movs r5, #0
	movs r1, #1
_080F1A70:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #2
	bne _080F1B1C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1AFC @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1B00 @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F1B04 @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F1B08 @ =gUnknown_03000AFA
	ldr r4, _080F1B0C @ =gUnknown_03000AF2
	mov sl, r4
	ldr r7, _080F1B10 @ =gUnknown_08B2AE6C
	mov sb, r7
	ldr r4, _080F1B14 @ =gUnknown_03000AF6
_080F1AAA:
	mov r1, sl
	ldrh r0, [r1]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	mov r7, r8
	strh r7, [r3]
	adds r3, #2
	ldrh r2, [r5]
	lsrs r2, r2, #8
	str r2, [sp]
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r7, ip
	movs r2, #0
	ldrsh r0, [r7, r2]
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r7, [sp]
	adds r2, r7, r0
	strh r2, [r3]
	ldr r1, _080F1B18 @ =gUnknown_03000AF4
	ldrh r0, [r1]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	adds r3, #0xe
	lsls r0, r6, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r0, r7
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9f
	ble _080F1AAA
	b _080F1BE6
	.align 2, 0
_080F1AFC: .4byte gUnknown_02025270
_080F1B00: .4byte 0x040000D4
_080F1B04: .4byte 0x80000500
_080F1B08: .4byte gUnknown_03000AFA
_080F1B0C: .4byte gUnknown_03000AF2
_080F1B10: .4byte gUnknown_08B2AE6C
_080F1B14: .4byte gUnknown_03000AF6
_080F1B18: .4byte gUnknown_03000AF4
_080F1B1C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r2, _080F1BF8 @ =gUnknown_02025270
	adds r4, r0, r2
	adds r1, r5, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r3, r0, r2
	ldr r0, _080F1BFC @ =0x040000D4
	str r4, [r0]
	str r3, [r0, #4]
	ldr r1, _080F1C00 @ =0x80000500
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	lsls r0, r6, #2
	adds r3, r3, r0
	movs r6, #0
	ldr r5, _080F1C04 @ =gUnknown_03000AFA
	movs r0, #0xff
	mov sl, r0
	ldr r1, _080F1C08 @ =gUnknown_08B2AE6C
	mov sb, r1
	ldr r4, _080F1C0C @ =gUnknown_03000AF6
	ldr r2, _080F1C10 @ =gUnknown_03000AFC
	mov ip, r2
_080F1B52:
	ldr r7, _080F1C14 @ =gUnknown_03000AF2
	ldrh r0, [r7]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	mov r2, r8
	strh r2, [r3]
	adds r3, #2
	ldrh r1, [r5]
	lsrs r1, r1, #8
	mov r7, sl
	ands r1, r7
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	movs r7, #0
	ldrsh r2, [r0, r7]
	str r2, [sp]
	mov r2, ip
	movs r7, #0
	ldrsh r0, [r2, r7]
	ldr r2, [sp]
	muls r0, r2, r0
	asrs r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	adds r3, #0xe
	ldr r7, _080F1C18 @ =gUnknown_03000AF4
	ldrh r0, [r7]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r2, _080F1C14 @ =gUnknown_03000AF2
	ldrh r0, [r2]
	ldrh r7, [r5]
	adds r0, r0, r7
	strh r0, [r5]
	mov r0, r8
	strh r0, [r3]
	adds r3, #2
	ldrh r1, [r5]
	lsrs r1, r1, #8
	mov r2, sl
	ands r1, r2
	ldrh r0, [r4]
	lsrs r0, r0, #8
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r7, [r0, r2]
	str r7, [sp]
	mov r7, ip
	movs r2, #0
	ldrsh r0, [r7, r2]
	ldr r7, [sp]
	muls r0, r7, r0
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r3]
	adds r3, #0xe
	ldr r1, _080F1C18 @ =gUnknown_03000AF4
	ldrh r0, [r1]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	lsls r0, r6, #0x10
	movs r7, #0x80
	lsls r7, r7, #9
	adds r0, r0, r7
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	ble _080F1B52
_080F1BE6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F1BF8: .4byte gUnknown_02025270
_080F1BFC: .4byte 0x040000D4
_080F1C00: .4byte 0x80000500
_080F1C04: .4byte gUnknown_03000AFA
_080F1C08: .4byte gUnknown_08B2AE6C
_080F1C0C: .4byte gUnknown_03000AF6
_080F1C10: .4byte gUnknown_03000AFC
_080F1C14: .4byte gUnknown_03000AF2
_080F1C18: .4byte gUnknown_03000AF4

	thumb_func_start sub_80F1C1C
sub_80F1C1C: @ 0x080F1C1C
	push {r4, lr}
	ldr r0, _080F1CB0 @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080F1C32
	movs r1, #1
_080F1C32:
	adds r0, r1, #0
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, _080F1CB4 @ =gUnknown_02025270
	adds r2, r1, r0
	ldr r3, _080F1CB8 @ =gUnknown_030053F0
	movs r4, #0x9f
_080F1C42:
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F1C52
	ldr r0, _080F1CBC @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r2, #4]
_080F1C52:
	ldrb r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080F1C62
	ldr r0, _080F1CC0 @ =gRamBG1VOFS
	ldrh r0, [r0]
	strh r0, [r2, #6]
_080F1C62:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F1C72
	ldr r0, _080F1CC4 @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r2, #8]
_080F1C72:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080F1C82
	ldr r0, _080F1CC8 @ =gRamBG2VOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
_080F1C82:
	ldrb r1, [r3]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F1C92
	ldr r0, _080F1CCC @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
_080F1C92:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080F1CA2
	ldr r0, _080F1CD0 @ =gRamBG3VOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
_080F1CA2:
	subs r4, #1
	adds r2, #0x10
	cmp r4, #0
	bge _080F1C42
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F1CB0: .4byte gUnknown_03005220
_080F1CB4: .4byte gUnknown_02025270
_080F1CB8: .4byte gUnknown_030053F0
_080F1CBC: .4byte gUnknown_03001D30
_080F1CC0: .4byte gRamBG1VOFS
_080F1CC4: .4byte gRamBG2HOFS
_080F1CC8: .4byte gRamBG2VOFS
_080F1CCC: .4byte gRamBG3HOFS
_080F1CD0: .4byte gRamBG3VOFS

	thumb_func_start sub_80F1CD4
sub_80F1CD4: @ 0x080F1CD4
	push {r4, lr}
	ldr r0, _080F1D80 @ =gUnknown_03005220
	ldr r0, [r0]
	adds r0, #0x22
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, _080F1D84 @ =gUnknown_02025270
	adds r2, r1, r0
	ldr r3, _080F1D88 @ =gUnknown_030053F0
	movs r4, #0x9f
_080F1CF0:
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F1D00
	ldr r0, _080F1D8C @ =gRamBG0HOFS
	ldrh r0, [r0]
	strh r0, [r2]
_080F1D00:
	ldrb r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F1D10
	ldr r0, _080F1D90 @ =gRamBG0VOFS
	ldrh r0, [r0]
	strh r0, [r2, #2]
_080F1D10:
	ldrb r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080F1D20
	ldr r0, _080F1D94 @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r2, #4]
_080F1D20:
	ldrb r1, [r3]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080F1D30
	ldr r0, _080F1D98 @ =gRamBG1VOFS
	ldrh r0, [r0]
	strh r0, [r2, #6]
_080F1D30:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F1D40
	ldr r0, _080F1D9C @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r2, #8]
_080F1D40:
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080F1D50
	ldr r0, _080F1DA0 @ =gRamBG2VOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
_080F1D50:
	ldrb r1, [r3]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F1D60
	ldr r0, _080F1DA4 @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
_080F1D60:
	ldrb r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080F1D70
	ldr r0, _080F1DA8 @ =gRamBG3VOFS
	ldrh r0, [r0]
	strh r0, [r2, #0xe]
_080F1D70:
	subs r4, #1
	adds r2, #0x10
	cmp r4, #0
	bge _080F1CF0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F1D80: .4byte gUnknown_03005220
_080F1D84: .4byte gUnknown_02025270
_080F1D88: .4byte gUnknown_030053F0
_080F1D8C: .4byte gRamBG0HOFS
_080F1D90: .4byte gRamBG0VOFS
_080F1D94: .4byte gUnknown_03001D30
_080F1D98: .4byte gRamBG1VOFS
_080F1D9C: .4byte gRamBG2HOFS
_080F1DA0: .4byte gRamBG2VOFS
_080F1DA4: .4byte gRamBG3HOFS
_080F1DA8: .4byte gRamBG3VOFS

	thumb_func_start sub_80F1DAC
sub_80F1DAC: @ 0x080F1DAC
	ldr r2, _080F1DCC @ =gUnknown_03005340
	ldr r1, _080F1DD0 @ =gUnknown_08B2B276
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r1, r0, r1
	ldrh r3, [r1]
	strh r3, [r2]
	ldr r2, _080F1DD4 @ =gUnknown_03005358
	ldr r1, _080F1DD8 @ =gUnknown_08B2B28A
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r0, _080F1DDC @ =gUnknown_030050EC
	strh r3, [r0]
	bx lr
	.align 2, 0
_080F1DCC: .4byte gUnknown_03005340
_080F1DD0: .4byte gUnknown_08B2B276
_080F1DD4: .4byte gUnknown_03005358
_080F1DD8: .4byte gUnknown_08B2B28A
_080F1DDC: .4byte gUnknown_030050EC

	thumb_func_start sub_80F1DE0
sub_80F1DE0: @ 0x080F1DE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r3, _080F1DFC @ =gUnknown_020248E0
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r2, #6
	adds r0, r0, r2
	ldr r1, _080F1E00 @ =0x00000542
	adds r3, r3, r1
	strh r0, [r3]
	bx lr
	.align 2, 0
_080F1DFC: .4byte gUnknown_020248E0
_080F1E00: .4byte 0x00000542

	thumb_func_start sub_80F1E04
sub_80F1E04: @ 0x080F1E04
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080F1E18 @ =gUnknown_03005340
	strh r0, [r2]
	ldr r2, _080F1E1C @ =gUnknown_03005358
	strh r1, [r2]
	ldr r1, _080F1E20 @ =gUnknown_030050EC
	strh r0, [r1]
	bx lr
	.align 2, 0
_080F1E18: .4byte gUnknown_03005340
_080F1E1C: .4byte gUnknown_03005358
_080F1E20: .4byte gUnknown_030050EC

	thumb_func_start sub_80F1E24
sub_80F1E24: @ 0x080F1E24
	push {r4, lr}
	adds r3, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	lsls r2, r2, #1
	ldr r1, _080F1E3C @ =gUnknown_08B2AB20
	adds r2, r2, r1
	adds r2, r0, r2
	movs r4, #2
	b _080F1E4C
	.align 2, 0
_080F1E3C: .4byte gUnknown_08B2AB20
_080F1E40:
	strb r1, [r3]
	adds r2, #1
	adds r3, #1
	subs r4, #1
	cmp r4, #0
	beq _080F1E54
_080F1E4C:
	ldrb r1, [r2]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _080F1E40
_080F1E54:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start ConvertEnglishNameToJapanese
ConvertEnglishNameToJapanese: @ 0x080F1E5C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r6, r1, #0
_080F1E62:
	movs r5, #0
	b _080F1FE2
_080F1E66:
	ldrb r4, [r6]
	adds r6, #1
	cmp r5, #0
	beq _080F1F4E
	cmp r5, r4
	bne _080F1E78
	movs r0, #0x22
	strb r0, [r2]
	b _080F1FE0
_080F1E78:
	adds r3, r4, #0
	subs r3, #0xc0
	cmp r3, #0x14
	bhi _080F1F12
	lsls r0, r3, #2
	ldr r1, _080F1E8C @ =_080F1E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F1E8C: .4byte _080F1E90
_080F1E90: @ jump table
	.4byte _080F1EE4 @ case 0
	.4byte _080F1F12 @ case 1
	.4byte _080F1F12 @ case 2
	.4byte _080F1F12 @ case 3
	.4byte _080F1EFC @ case 4
	.4byte _080F1F12 @ case 5
	.4byte _080F1F12 @ case 6
	.4byte _080F1F12 @ case 7
	.4byte _080F1EEC @ case 8
	.4byte _080F1F12 @ case 9
	.4byte _080F1F12 @ case 10
	.4byte _080F1F12 @ case 11
	.4byte _080F1F12 @ case 12
	.4byte _080F1F12 @ case 13
	.4byte _080F1F04 @ case 14
	.4byte _080F1F12 @ case 15
	.4byte _080F1F12 @ case 16
	.4byte _080F1F12 @ case 17
	.4byte _080F1F12 @ case 18
	.4byte _080F1F12 @ case 19
	.4byte _080F1EF4 @ case 20
_080F1EE4:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #0
	b _080F1F0A
_080F1EEC:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #1
	b _080F1F0A
_080F1EF4:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #2
	b _080F1F0A
_080F1EFC:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #3
	b _080F1F0A
_080F1F04:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #4
_080F1F0A:
	bl sub_80F1E24
	adds r2, r0, #0
	b _080F1E62
_080F1F12:
	cmp r3, #0x19
	bhi _080F1F30
	cmp r5, #0xcd
	bne _080F1F22
	movs r0, #0x52
	strb r0, [r2]
	adds r2, #1
	b _080F1FDA
_080F1F22:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_80F1E24
	adds r2, r0, #0
	b _080F1FDA
_080F1F30:
	cmp r5, #0xcd
	bne _080F1F3C
	movs r0, #0x52
	strb r0, [r2]
	adds r2, #1
	b _080F1F48
_080F1F3C:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_80F1E24
	adds r2, r0, #0
_080F1F48:
	strb r4, [r2]
	adds r2, #1
	b _080F1E62
_080F1F4E:
	adds r3, r4, #0
	subs r3, #0xc0
	cmp r3, #0x14
	bhi _080F1FD6
	lsls r0, r3, #2
	ldr r1, _080F1F60 @ =_080F1F64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F1F60: .4byte _080F1F64
_080F1F64: @ jump table
	.4byte _080F1FB8 @ case 0
	.4byte _080F1FD6 @ case 1
	.4byte _080F1FD6 @ case 2
	.4byte _080F1FD6 @ case 3
	.4byte _080F1FCA @ case 4
	.4byte _080F1FD6 @ case 5
	.4byte _080F1FD6 @ case 6
	.4byte _080F1FD6 @ case 7
	.4byte _080F1FBE @ case 8
	.4byte _080F1FD6 @ case 9
	.4byte _080F1FD6 @ case 10
	.4byte _080F1FD6 @ case 11
	.4byte _080F1FD6 @ case 12
	.4byte _080F1FD6 @ case 13
	.4byte _080F1FD0 @ case 14
	.4byte _080F1FD6 @ case 15
	.4byte _080F1FD6 @ case 16
	.4byte _080F1FD6 @ case 17
	.4byte _080F1FD6 @ case 18
	.4byte _080F1FD6 @ case 19
	.4byte _080F1FC4 @ case 20
_080F1FB8:
	movs r0, #1
	strb r0, [r2]
	b _080F1FE0
_080F1FBE:
	movs r0, #3
	strb r0, [r2]
	b _080F1FE0
_080F1FC4:
	movs r0, #5
	strb r0, [r2]
	b _080F1FE0
_080F1FCA:
	movs r0, #7
	strb r0, [r2]
	b _080F1FE0
_080F1FD0:
	movs r0, #9
	strb r0, [r2]
	b _080F1FE0
_080F1FD6:
	cmp r3, #0x19
	bhi _080F1FDE
_080F1FDA:
	adds r5, r4, #0
	b _080F1FE2
_080F1FDE:
	strb r4, [r2]
_080F1FE0:
	adds r2, #1
_080F1FE2:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080F1FEA
	b _080F1E66
_080F1FEA:
	cmp r5, #0
	beq _080F2006
	cmp r5, #0xcd
	bne _080F1FFA
	movs r0, #0x52
	strb r0, [r2]
	adds r2, #1
	b _080F2006
_080F1FFA:
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_80F1E24
	adds r2, r0, #0
_080F2006:
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xff
	strb r0, [r2, #1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80F2014
sub_80F2014: @ 0x080F2014
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov sl, r0
	movs r0, #0x80
	mov r1, sl
	strh r0, [r1]
	ldr r0, _080F20E8 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, _080F20EC @ =gUnknown_03001D34
	ldr r0, _080F20F0 @ =gUnknown_030012D8
	movs r4, #0
	str r4, [r0]
	str r4, [r1]
	ldr r3, _080F20F4 @ =gRamBG0HOFS
	mov sb, r3
	ldr r0, _080F20F8 @ =gRamBG0VOFS
	mov r8, r0
	ldr r6, _080F20FC @ =gUnknown_03001D30
	ldr r5, _080F2100 @ =gRamBG1VOFS
	ldr r3, _080F2104 @ =gRamBG2HOFS
	ldr r2, _080F2108 @ =gRamBG2VOFS
	ldr r1, _080F210C @ =gRamBG3HOFS
	ldr r0, _080F2110 @ =gRamBG3VOFS
	strh r4, [r0]
	strh r4, [r1]
	strh r4, [r2]
	strh r4, [r3]
	strh r4, [r5]
	strh r4, [r6]
	mov r1, r8
	strh r4, [r1]
	mov r3, sb
	strh r4, [r3]
	bl m2_init_heap
	bl InitPadState
	movs r5, #8
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_80BD918
	ldr r2, _080F2114 @ =0x04000208
	strh r4, [r2]
	ldr r1, _080F2118 @ =0x04000200
	ldr r3, _080F211C @ =0x00002001
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080F2120 @ =0x04000004
	strh r5, [r0]
	movs r0, #1
	strh r0, [r2]
	bl VBlankIntrWait
	movs r1, #0x88
	lsls r1, r1, #5
	adds r0, r1, #0
	mov r3, sl
	strh r0, [r3]
	ldr r0, _080F2124 @ =gUnknown_03000B00
	strh r4, [r0]
	bl sub_80006B0
	movs r0, #1
	bl sub_8001164
	ldr r0, _080F2128 @ =sub_80B7700
	movs r1, #0
	bl create_proc
	ldr r0, _080F212C @ =sub_80F2168
	movs r1, #0
	bl sub_800077C
	subs r4, #1
_080F20DA:
	bl next_proc
	cmp r0, r4
	bne _080F2130
	bl sub_8000DD8
	b _080F20DA
	.align 2, 0
_080F20E8: .4byte 0x04000010
_080F20EC: .4byte gUnknown_03001D34
_080F20F0: .4byte gUnknown_030012D8
_080F20F4: .4byte gRamBG0HOFS
_080F20F8: .4byte gRamBG0VOFS
_080F20FC: .4byte gUnknown_03001D30
_080F2100: .4byte gRamBG1VOFS
_080F2104: .4byte gRamBG2HOFS
_080F2108: .4byte gRamBG2VOFS
_080F210C: .4byte gRamBG3HOFS
_080F2110: .4byte gRamBG3VOFS
_080F2114: .4byte 0x04000208
_080F2118: .4byte 0x04000200
_080F211C: .4byte 0x00002001
_080F2120: .4byte 0x04000004
_080F2124: .4byte gUnknown_03000B00
_080F2128: .4byte sub_80B7700
_080F212C: .4byte sub_80F2168
_080F2130:
	cmp r0, #3
	bne _080F20DA
	bl sub_8000754
	bl DisableM4A
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	bl sub_80BE0CC
	ldr r1, _080F2160 @ =MainCallback
	ldr r0, _080F2164 @ =sub_8000E58
	str r0, [r1]
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080F2160: .4byte MainCallback
_080F2164: .4byte sub_8000E58

	thumb_func_start sub_80F2168
sub_80F2168: @ 0x080F2168
	push {lr}
	sub sp, #4
	ldr r0, _080F2190 @ =gCurrentProc
	ldr r1, [r0]
	ldr r0, _080F2194 @ =gUnknown_03002A30
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080F2184
	b _080F2294
_080F2184:
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _080F2198
	bl end_current_proc
	b _080F2298
	.align 2, 0
_080F2190: .4byte gCurrentProc
_080F2194: .4byte gUnknown_03002A30
_080F2198:
	bl m4aSoundMain
	bl VBlankIntrWait
	ldr r1, _080F2250 @ =0x04000010
	ldr r0, _080F2254 @ =gRamBG0HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F2258 @ =gRamBG0VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F225C @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F2260 @ =gRamBG1VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F2264 @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F2268 @ =gRamBG2VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F226C @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F2270 @ =gRamBG3VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xb6
	ldr r2, _080F2274 @ =gOamBuffer
	str r2, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080F2278 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa0
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _080F227C @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080F2280 @ =gUnknown_03003390
	movs r1, #0
	str r1, [r0]
	ldr r0, _080F2284 @ =gUnknown_03003394
	str r1, [r0]
	bl sub_80CAF0C
	ldr r0, _080F2288 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F2230
	ldr r1, _080F228C @ =gUnknown_03000B00
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080F223A
	movs r0, #1
	strh r0, [r1]
	movs r0, #1
	bl sub_80011C8
_080F2230:
	ldr r0, _080F228C @ =gUnknown_03000B00
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080F2294
_080F223A:
	ldr r0, _080F2290 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080F2294
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	b _080F229A
	.align 2, 0
_080F2250: .4byte 0x04000010
_080F2254: .4byte gRamBG0HOFS
_080F2258: .4byte gRamBG0VOFS
_080F225C: .4byte gUnknown_03001D30
_080F2260: .4byte gRamBG1VOFS
_080F2264: .4byte gRamBG2HOFS
_080F2268: .4byte gRamBG2VOFS
_080F226C: .4byte gRamBG3HOFS
_080F2270: .4byte gRamBG3VOFS
_080F2274: .4byte gOamBuffer
_080F2278: .4byte 0x84000100
_080F227C: .4byte 0x85000100
_080F2280: .4byte gUnknown_03003390
_080F2284: .4byte gUnknown_03003394
_080F2288: .4byte gNewKeys
_080F228C: .4byte gUnknown_03000B00
_080F2290: .4byte gUnknown_03002A40
_080F2294:
	bl UpdatePadState
_080F2298:
	movs r0, #0
_080F229A:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_80F22A0
sub_80F22A0: @ 0x080F22A0
	push {r4, lr}
	sub sp, #4
	ldr r0, _080F2368 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xc2
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080F236C @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	subs r1, #8
	ldr r2, _080F2370 @ =0x00002001
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080F2374 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	bl m2_init_heap
	bl InitPadState
	bl sub_80087C8
	movs r0, #0xa0
	str r0, [sp]
	ldr r1, _080F2378 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _080F237C @ =gOamBuffer
	str r2, [r1, #4]
	ldr r0, _080F2380 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080F2384 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r4, #0
	str r4, [sp]
	mov r2, sp
	str r2, [r1]
	ldr r0, _080F2388 @ =gUnknown_03002F10
	str r0, [r1, #4]
	ldr r0, _080F238C @ =0x85000120
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080F2390 @ =gUnknown_03003390
	str r4, [r0]
	ldr r0, _080F2394 @ =gUnknown_03003394
	str r4, [r0]
	bl VBlankIntrWait
	ldr r2, _080F2398 @ =gUnknown_0300130C
	ldr r0, [r2]
	cmp r0, #0
	bne _080F232C
	ldr r1, _080F239C @ =gUnknown_03004EA0
	movs r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	str r0, [r2]
_080F232C:
	bl sub_80D8788
	bl VBlankIntrWait
	ldr r0, _080F23A0 @ =gUnknown_03000B00
	strh r4, [r0]
	bl sub_80006B0
	ldr r0, _080F23A4 @ =sub_8008CCC
	movs r1, #0
	bl create_proc
	ldr r0, _080F23A8 @ =sub_80F23D0
	movs r1, #0
	bl create_proc
	ldr r0, _080F23AC @ =sub_80F25C8
	movs r1, #0
	bl sub_800077C
	movs r4, #1
	rsbs r4, r4, #0
_080F2358:
	bl next_proc
	cmp r0, r4
	bne _080F23B0
	bl sub_8000DD8
	b _080F2358
	.align 2, 0
_080F2368: .4byte 0x04000050
_080F236C: .4byte 0x04000208
_080F2370: .4byte 0x00002001
_080F2374: .4byte 0x04000004
_080F2378: .4byte 0x040000D4
_080F237C: .4byte gOamBuffer
_080F2380: .4byte 0x85000100
_080F2384: .4byte 0x84000100
_080F2388: .4byte gUnknown_03002F10
_080F238C: .4byte 0x85000120
_080F2390: .4byte gUnknown_03003390
_080F2394: .4byte gUnknown_03003394
_080F2398: .4byte gUnknown_0300130C
_080F239C: .4byte gUnknown_03004EA0
_080F23A0: .4byte gUnknown_03000B00
_080F23A4: .4byte sub_8008CCC
_080F23A8: .4byte sub_80F23D0
_080F23AC: .4byte sub_80F25C8
_080F23B0:
	cmp r0, #3
	bne _080F2358
	bl sub_8000754
	bl DisableM4A
	bl sub_80BE0CC
	bl sub_80DA6E4
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80F23D0
sub_80F23D0: @ 0x080F23D0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r2, _080F24A0 @ =gUnknown_03002A30
	ldr r0, _080F24A4 @ =gCurrentProc
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080F24C4
	movs r5, #0
	ldr r4, _080F24A8 @ =gWindowPointers
_080F23F2:
	movs r0, #1
	bl sub_80BE204
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #2
	adds r1, r1, r4
	str r0, [r1]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0xa
	ble _080F23F2
	ldr r5, _080F24A8 @ =gWindowPointers
	ldr r0, [r5, #0xc]
	movs r1, #4
	str r1, [sp]
	movs r1, #9
	movs r2, #3
	movs r3, #0x14
	bl m2_setup_window
	ldr r0, [r5, #0xc]
	str r6, [r0, #0x10]
	ldr r0, _080F24AC @ =gUnknown_08B1A2F0
	ldr r1, _080F24B0 @ =gUnknown_08B19AD0
	ldr r2, _080F24B4 @ =gUnknown_02020C70 + 8*0x94
	adds r2, #0x42
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl m2_strlookup
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	movs r4, #0
	str r4, [sp]
	movs r2, #8
	movs r3, #0
	bl m2_printstr
	add r0, sp, #4
	strb r4, [r0, #3]
	adds r1, r0, #0
	movs r0, #0xff
	strb r0, [r1, #4]
	ldr r6, _080F24B8 @ =gUnknown_03004EA0
	ldrh r0, [r6, #4]
	movs r2, #3
	bl m2_convert_number_to_decimal_string
	ldr r0, [r5, #0xc]
	str r4, [sp]
	add r1, sp, #4
	movs r2, #3
	movs r3, #0
	bl m2_printstr
	ldr r2, _080F24BC @ =gUnknown_08B2B3A4
	ldr r1, _080F24C0 @ =gUnknown_08B1F674
	ldrh r0, [r6, #4]
	lsls r0, r0, #4
	adds r0, r0, r1
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	add r1, sp, #4
	bl sub_80BE2F4
	ldr r0, [r5, #0xc]
	str r4, [sp]
	add r1, sp, #4
	movs r2, #8
	movs r3, #1
	bl m2_printstr
	movs r0, #0
	movs r1, #0xf0
	movs r2, #0x14
	movs r3, #2
	bl sub_8000364
	movs r0, #0
	b _080F25C0
	.align 2, 0
_080F24A0: .4byte gUnknown_03002A30
_080F24A4: .4byte gCurrentProc
_080F24A8: .4byte gWindowPointers
_080F24AC: .4byte gUnknown_08B1A2F0
_080F24B0: .4byte gUnknown_08B19AD0
_080F24B4: .4byte gUnknown_02020C70 + 8*0x94
_080F24B8: .4byte gUnknown_03004EA0
_080F24BC: .4byte gUnknown_08B2B3A4
_080F24C0: .4byte gUnknown_08B1F674
_080F24C4:
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _080F251C
	bl sub_80D3E28
	movs r5, #0
	ldr r6, _080F2518 @ =gWindowPointers
_080F24D2:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl sub_80CA904
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa
	ble _080F24D2
	movs r5, #0
	ldr r6, _080F2518 @ =gWindowPointers
_080F24F0:
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	lsls r5, r4, #2
	adds r5, r5, r6
	ldr r0, [r5]
	bl sub_80BE240
	ldr r0, [r5]
	bl m2_free
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xa
	ble _080F24F0
	bl end_current_proc
	movs r0, #0
	b _080F25C0
	.align 2, 0
_080F2518: .4byte gWindowPointers
_080F251C:
	ldr r0, _080F254C @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080F2558
	ldr r1, _080F2550 @ =gUnknown_03004EA0
	movs r3, #1
	ldr r2, _080F2554 @ =gUnknown_08B1F674
_080F252E:
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xe6
	bls _080F253E
	strh r3, [r1, #4]
_080F253E:
	ldrh r0, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _080F252E
	b _080F25BC
	.align 2, 0
_080F254C: .4byte gNewKeys
_080F2550: .4byte gUnknown_03004EA0
_080F2554: .4byte gUnknown_08B1F674
_080F2558:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080F2594
	ldr r1, _080F2588 @ =gUnknown_03004EA0
	ldr r4, _080F258C @ =0x0000FFFF
	ldr r3, _080F2590 @ =gUnknown_08B1F674
	movs r2, #0xe6
_080F2568:
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r4
	bne _080F2578
	strh r2, [r1, #4]
_080F2578:
	ldrh r0, [r1, #4]
	lsls r0, r0, #4
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _080F2568
	b _080F25BC
	.align 2, 0
_080F2588: .4byte gUnknown_03004EA0
_080F258C: .4byte 0x0000FFFF
_080F2590: .4byte gUnknown_08B1F674
_080F2594:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080F25BC
	ldr r0, _080F25B8 @ =gUnknown_02020C70 + 8*0x94
	adds r1, r0, #0
	adds r1, #0x89
	ldrb r1, [r1]
	str r1, [r0, #0x24]
	adds r1, r0, #0
	adds r1, #0x8a
	ldrb r1, [r1]
	str r1, [r0, #0x28]
	movs r1, #0
	bl sub_8008C54
	movs r0, #0
	b _080F25C0
	.align 2, 0
_080F25B8: .4byte gUnknown_02020C70 + 8*0x94
_080F25BC:
	movs r0, #1
	rsbs r0, r0, #0
_080F25C0:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80F25C8
sub_80F25C8: @ 0x080F25C8
	push {lr}
	sub sp, #4
	ldr r0, _080F25F0 @ =gCurrentProc
	ldr r1, [r0]
	ldr r0, _080F25F4 @ =gUnknown_03002A30
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _080F25EC
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _080F25F8
	bl end_current_proc
_080F25EC:
	movs r0, #0
	b _080F2688
	.align 2, 0
_080F25F0: .4byte gCurrentProc
_080F25F4: .4byte gUnknown_03002A30
_080F25F8:
	bl VBlankIntrWait
	ldr r0, _080F2690 @ =gUnknown_03001D34
	movs r3, #0
	str r3, [r0]
	ldr r0, _080F2694 @ =gUnknown_030012D8
	str r3, [r0]
	ldr r1, _080F2698 @ =0x04000010
	ldr r0, _080F269C @ =gRamBG0HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26A0 @ =gRamBG0VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26A4 @ =gUnknown_03001D30
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26A8 @ =gRamBG1VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26AC @ =gRamBG2HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26B0 @ =gRamBG2VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26B4 @ =gRamBG3HOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080F26B8 @ =gRamBG3VOFS
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xb6
	ldr r2, _080F26BC @ =gOamBuffer
	str r2, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080F26C0 @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0xa0
	str r0, [sp]
	mov r0, sp
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _080F26C4 @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _080F26C8 @ =gUnknown_03003390
	str r3, [r0]
	ldr r0, _080F26CC @ =gUnknown_03003394
	str r3, [r0]
	bl sub_80CAF0C
	bl UpdatePadState
	ldr r0, _080F26D0 @ =gNewKeys
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F25EC
	movs r0, #1
	rsbs r0, r0, #0
_080F2688:
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_080F2690: .4byte gUnknown_03001D34
_080F2694: .4byte gUnknown_030012D8
_080F2698: .4byte 0x04000010
_080F269C: .4byte gRamBG0HOFS
_080F26A0: .4byte gRamBG0VOFS
_080F26A4: .4byte gUnknown_03001D30
_080F26A8: .4byte gRamBG1VOFS
_080F26AC: .4byte gRamBG2HOFS
_080F26B0: .4byte gRamBG2VOFS
_080F26B4: .4byte gRamBG3HOFS
_080F26B8: .4byte gRamBG3VOFS
_080F26BC: .4byte gOamBuffer
_080F26C0: .4byte 0x84000100
_080F26C4: .4byte 0x85000100
_080F26C8: .4byte gUnknown_03003390
_080F26CC: .4byte gUnknown_03003394
_080F26D0: .4byte gNewKeys

	thumb_func_start umul3232H32
umul3232H32: @ 0x080F26D4
	add r2, pc, #0x0 @ =sub_080F26D8
	bx r2

	arm_func_start sub_080F26D8
sub_080F26D8: @ 0x080F26D8
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr

	thumb_func_start SoundMain
SoundMain: @ 0x080F26E4
	ldr r0, _080F2750 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	ldr r2, _080F2754 @ =0x68736D53
	ldr r3, [r0]
	cmp r2, r3
	beq _080F26F2
	bx lr
_080F26F2:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _080F2716
	ldr r2, _080F275C @ =0x04000006
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _080F2714
	adds r2, #0xe4
_080F2714:
	adds r1, r1, r2
_080F2716:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _080F2726
	ldr r0, [r0, #0x24]
	bl .call_r3
	ldr r0, [sp, #0x18]
_080F2726:
	ldr r3, [r0, #0x28]
	bl .call_r3
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080F2760 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080F2746
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080F2746:
	str r5, [sp, #8]
	ldr r6, _080F2764 @ =0x00000630
	ldr r3, _080F2758 @ =gUnknown_03000F51
	bx r3
	.align 2, 0
_080F2750: .4byte SOUND_AREA_ADR
_080F2754: .4byte 0x68736D53
_080F2758: .4byte gUnknown_03000F51
_080F275C: .4byte 0x04000006
_080F2760: .4byte 0x00000350
_080F2764: .4byte 0x00000630

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x080F2768
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq sub_080F27B4
	add r1, pc, #0x4 @ =sub_080F2774
	bx r1
	.align 2, 0

	arm_func_start sub_080F2774
sub_080F2774: @ 0x080F2774
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_080F2784:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _080F2784
	add r0, pc, #0x1F @ =sub_080F27D2
	bx r0

	thumb_func_start sub_080F27B4
sub_080F27B4: @ 0x080F27B4
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _080F27BE
	stm r5!, {r0}
_080F27BE:
	lsrs r1, r1, #1
	blo _080F27C6
	stm r5!, {r0}
	stm r5!, {r0}
_080F27C6:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _080F27C6

	non_word_aligned_thumb_func_start sub_080F27D2
sub_080F27D2: @ 0x080F27D2
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_080F27DC:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _080F27FC
	ldr r1, _080F27F8 @ =0x04000006
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _080F27F0
	adds r1, #0xe4
_080F27F0:
	cmp r1, r0
	blo _080F27FC
	b _080F2A7E
	.align 2, 0
_080F27F8: .4byte 0x04000006
_080F27FC:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _080F2806
	b sub_080F2A74
_080F2806:
	movs r0, #0x80
	tst r0, r6
	beq _080F2836
	movs r0, #0x40
	tst r0, r6
	bne _080F2846
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _080F288E
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _080F288E
_080F2836:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080F284C
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _080F289C
_080F2846:
	movs r0, #0
	strb r0, [r4]
	b sub_080F2A74
_080F284C:
	movs r0, #0x40
	tst r0, r6
	beq _080F286C
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _080F289C
_080F285E:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080F2846
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _080F289C
_080F286C:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _080F288A
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _080F289C
	adds r5, r0, #0
	beq _080F285E
	subs r6, #1
	strb r6, [r4]
	b _080F289C
_080F288A:
	cmp r2, #3
	bne _080F289C
_080F288E:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _080F289C
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_080F289C:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _080F28CC
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_080F28CC:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4 @ =sub_080F28D8
	bx r0
	.align 2, 0

	arm_func_start sub_080F28D8
sub_080F28D8: @ 0x080F28D8
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _080F29E0
_080F28F0:
	cmp r2, #4
	ble _080F294C
	subs r2, r2, r8
	movgt lr, #0
	bgt _080F291C
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_080F291C:
	ldr r6, [r5]
_080F2920:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _080F2920
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080F291C
	adds r8, r8, lr
	beq _080F2A60
_080F294C:
	ldr r6, [r5]
_080F2950:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _080F29B0
_080F2968:
	adds r5, r5, #0x40000000
	blo _080F2950
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080F28F0
	b _080F2A60
_080F2980:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _080F29A4
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_080F2994:
	adds r2, r0, r2
	bgt _080F2A34
	sub sb, sb, r0
	b _080F2994
_080F29A4:
	pop {r4, ip}
	mov r2, #0
	b _080F29C0
_080F29B0:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _080F2968
_080F29C0:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _080F2A68
_080F29E0:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080F29FC:
	ldr r6, [r5]
_080F2A00:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _080F2A40
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _080F2980
	subs sb, sb, #1
	addeq r0, r0, r1
_080F2A34:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_080F2A40:
	adds r5, r5, #0x40000000
	blo _080F2A00
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _080F29FC
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_080F2A60:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_080F2A68:
	ldr r8, [sp]
	add r0, pc, #0x1 @ =sub_080F2A74
	bx r0

	thumb_func_start sub_080F2A74
sub_080F2A74: @ 0x080F2A74
	ldr r0, [sp, #4]
	subs r0, #1
	ble _080F2A7E
	adds r4, #0x40
	b _080F27DC
_080F2A7E:
	ldr r0, [sp, #0x18]
	ldr r3, _080F2A94 @ =0x68736D53
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start .call_r3
.call_r3: @ 0x080F2A92
	bx r3
	.align 2, 0
_080F2A94: .4byte 0x68736D53

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x080F2A98
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	thumb_func_start ClearChain
ClearChain: @ 0x080F2AB0
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080F2ACE
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080F2AC2
	str r1, [r2, #0x34]
	b _080F2AC4
_080F2AC2:
	str r1, [r3, #0x20]
_080F2AC4:
	cmp r1, #0
	beq _080F2ACA
	str r2, [r1, #0x30]
_080F2ACA:
	movs r1, #0
	str r1, [r0, #0x2c]
_080F2ACE:
	bx lr

    thumb_func_start ply_fine
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080F2AF4
_080F2ADA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080F2AE8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080F2AE8:
	adds r0, r4, #0
	bl ClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080F2ADA
_080F2AF4:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlyJmpTblCopy
MPlyJmpTblCopy: @ 0x080F2B00
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080F2B30 @ =MPlyJmpTbl
_080F2B06:
	ldr r3, [r2]
	bl _080F2B1A
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080F2B06
	bx ip
	.align 2, 0

	thumb_func_start ldrb_r3_r2
ldrb_r3_r2: @ 0x080F2B18
	ldrb r3, [r2]
_080F2B1A:
	push {r0}
	lsrs r0, r2, #0x19
	bne _080F2B2C
	ldr r0, _080F2B30 @ =MPlyJmpTbl
	cmp r2, r0
	blo _080F2B2A
	lsrs r0, r2, #0xe
	beq _080F2B2C
_080F2B2A:
	movs r3, #0
_080F2B2C:
	pop {r0}
	bx lr
	.align 2, 0
_080F2B30: .4byte MPlyJmpTbl

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x080F2B34
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start ld_r3_r2_i_sub
ld_r3_r2_i_sub: @ 0x080F2B36
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b _080F2B1A

    thumb_func_start ply_goto
ply_goto:
	push {lr}
_080F2B42:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	thumb_func_start ply_patt
ply_patt: @ 0x080F2B60
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080F2B78
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_080F2B78:
	b ply_fine
	.align 2, 0

	thumb_func_start ply_pend
ply_pend: @ 0x080F2B7C
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _080F2B8E
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_080F2B8E:
	bx lr

	thumb_func_start ply_rept
ply_rept: @ 0x080F2B90
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _080F2BA0
	adds r2, #1
	str r2, [r1, #0x40]
	b _080F2B42
_080F2BA0:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _080F2BB2
	b _080F2B42
_080F2BB2:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ply_prio
ply_prio: @ 0x080F2BC0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	thumb_func_start ply_tempo
ply_tempo: @ 0x080F2BCC
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	thumb_func_start ply_keysh
ply_keysh: @ 0x080F2BE0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_voice
ply_voice: @ 0x080F2BF4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl _080F2B1A
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl _080F2B1A
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl _080F2B1A
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	thumb_func_start ply_vol
ply_vol: @ 0x080F2C24
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_pan
ply_pan: @ 0x080F2C38
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bend
ply_bend: @ 0x080F2C4C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_bendr
ply_bendr: @ 0x080F2C60
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x080F2C74
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	thumb_func_start ply_modt
ply_modt: @ 0x080F2C80
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080F2C96
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_080F2C96:
	bx ip

	thumb_func_start ply_tune
ply_tune: @ 0x080F2C98
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	thumb_func_start ply_port
ply_port: @ 0x080F2CAC
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _080F2CC0 @ =0x04000060
	adds r0, r0, r3
	bl ld_r3_r2_i_sub
	strb r3, [r0]
	bx ip
	.align 2, 0
_080F2CC0: .4byte 0x04000060

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x080F2CC4
	ldr r0, _080F2F60 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	ldr r2, _080F2F64 @ =0x68736D53
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080F2CF6
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080F2CF6
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _080F2CF8 @ =0x040000BC
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _080F2CEA
	ldr r1, _080F2CFC @ =0x84400004
	str r1, [r2, #8]
_080F2CEA:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_080F2CF6:
	bx lr
	.align 2, 0
_080F2CF8: .4byte 0x040000BC
_080F2CFC: .4byte 0x84400004

	thumb_func_start MPlayMain
MPlayMain: @ 0x080F2D00
	ldr r2, _080F2F64 @ =0x68736D53
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _080F2D0A
	bx lr
_080F2D0A:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _080F2D1C
	ldr r0, [r0, #0x3c]
	bl .call_r3_rev
_080F2D1C:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080F2D34
	b _080F2F48
_080F2D34:
	ldr r0, _080F2F60 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody_rev01
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _080F2D48
	b _080F2F48
_080F2D48:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _080F2E98
_080F2D50:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_080F2D58:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _080F2D62
	b _080F2E74
_080F2D62:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080F2D96
_080F2D6E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080F2D8A
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080F2D90
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _080F2D90
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _080F2D90
_080F2D8A:
	adds r0, r4, #0
	bl ClearChain_rev
_080F2D90:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080F2D6E
_080F2D96:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _080F2E14
	adds r0, r5, #0
	bl Clear64byte_rev
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _080F2E14
_080F2DBC:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _080F2DC8
	ldrb r1, [r5, #7]
	b _080F2DD2
_080F2DC8:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _080F2DD2
	strb r1, [r5, #7]
_080F2DD2:
	cmp r1, #0xcf
	blo _080F2DE8
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl .call_r3_rev
	b _080F2E14
_080F2DE8:
	cmp r1, #0xb0
	bls _080F2E0A
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl .call_r3_rev
	ldrb r0, [r5]
	cmp r0, #0
	beq _080F2E70
	b _080F2E14
_080F2E0A:
	ldr r0, _080F2F5C @ =clock_tbl_rev01
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_080F2E14:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080F2DBC
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _080F2E70
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _080F2E70
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080F2E36
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _080F2E70
_080F2E36:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _080F2E4A
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _080F2E4E
_080F2E4A:
	movs r0, #0x80
	subs r2, r0, r1
_080F2E4E:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _080F2E70
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _080F2E6A
	movs r1, #0xc
	b _080F2E6C
_080F2E6A:
	movs r1, #3
_080F2E6C:
	orrs r0, r1
	strb r0, [r5]
_080F2E70:
	mov r3, sl
	mov r4, fp
_080F2E74:
	subs r6, #1
	ble _080F2E80
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _080F2D58
_080F2E80:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _080F2E92
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _080F2F48
_080F2E92:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_080F2E98:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _080F2EA0
	b _080F2D50
_080F2EA0:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_080F2EA4:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _080F2F3E
	movs r1, #0xf
	tst r1, r0
	beq _080F2F3E
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080F2F34
_080F2EC2:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _080F2ED2
	adds r0, r4, #0
	bl ClearChain_rev
	b _080F2F2E
_080F2ED2:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _080F2EF0
	bl ChnVolSetAsm
	cmp r6, #0
	beq _080F2EF0
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080F2EF0:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _080F2F2E
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _080F2F04
	movs r2, #0
_080F2F04:
	cmp r6, #0
	beq _080F2F22
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl .call_r3_rev
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080F2F2E
_080F2F22:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKey2fr
	str r0, [r4, #0x20]
_080F2F2E:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080F2EC2
_080F2F34:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_080F2F3E:
	subs r2, #1
	ble _080F2F48
	movs r0, #0x50
	adds r5, r5, r0
	bgt _080F2EA4
_080F2F48:
	ldr r0, _080F2F64 @ =0x68736D53
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	thumb_func_start .call_r3_rev
.call_r3_rev: @ 0x080F2F58
	bx r3
	.align 2, 0
_080F2F5C: .4byte clock_tbl_rev01
_080F2F60: .4byte SOUND_AREA_ADR
_080F2F64: .4byte 0x68736D53

	thumb_func_start TrackStop_rev01
TrackStop_rev01: @ 0x080F2F68
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _080F2FA0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080F2F9E
	movs r6, #0
_080F2F7C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080F2F96
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _080F2F94
	ldr r3, _080F2FA8 @ =SOUND_AREA_ADR
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl .call_r3_rev
_080F2F94:
	strb r6, [r4]
_080F2F96:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080F2F7C
_080F2F9E:
	str r4, [r5, #0x20]
_080F2FA0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F2FA8: .4byte SOUND_AREA_ADR

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x080F2FAC
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080F2FC4
	movs r0, #0xff
_080F2FC4:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _080F2FD8
	movs r0, #0xff
_080F2FD8:
	strb r0, [r4, #3]
	bx lr

	thumb_func_start ply_note_rev01
ply_note_rev01: @ 0x080F2FDC
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080F31D4 @ =SOUND_AREA_ADR
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080F31D8 @ =clock_tbl_rev01
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080F3022
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080F3020
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _080F3020
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_080F3020:
	str r3, [r5, #0x40]
_080F3022:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _080F3074
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _080F3042
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _080F3044
_080F3042:
	adds r0, r3, #0
_080F3044:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _080F305C
	b _080F31C2
_080F305C:
	movs r0, #0x80
	tst r0, r2
	beq _080F3078
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _080F3070
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_080F3070:
	ldrb r3, [r6, #1]
	b _080F3078
_080F3074:
	mov sb, r4
	ldrb r3, [r5, #5]
_080F3078:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _080F3088
	movs r0, #0xff
_080F3088:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _080F30C8
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _080F30A0
	b _080F31C2
_080F30A0:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080F311C
	movs r0, #0x40
	tst r0, r1
	bne _080F311C
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _080F311C
	beq _080F30C0
	b _080F31C2
_080F30C0:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _080F311C
	b _080F31C2
_080F30C8:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_080F30D6:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080F311C
	movs r0, #0x40
	tst r0, r1
	beq _080F30F0
	cmp r2, #0
	bne _080F30F4
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _080F310E
_080F30F0:
	cmp r2, #0
	bne _080F3110
_080F30F4:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _080F3100
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _080F310E
_080F3100:
	bhi _080F3110
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _080F310C
	adds r7, r0, #0
	b _080F310E
_080F310C:
	blo _080F3110
_080F310E:
	mov r8, r4
_080F3110:
	adds r4, #0x40
	subs r3, #1
	bgt _080F30D6
	mov r4, r8
	cmp r4, #0
	beq _080F31C2
_080F311C:
	adds r0, r4, #0
	bl ClearChain_rev
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _080F3130
	str r4, [r3, #0x30]
_080F3130:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _080F3142
	adds r1, r5, #0
	bl clear_modM
_080F3142:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet_rev01
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _080F317C
	movs r3, #0
_080F317C:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _080F31AA
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _080F3196
	movs r0, #0x70
	tst r0, r1
	bne _080F3198
_080F3196:
	movs r1, #8
_080F3198:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl .call_r3_rev
	b _080F31B4
_080F31AA:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKey2fr
_080F31B4:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080F31C2:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080F31D4: .4byte SOUND_AREA_ADR
_080F31D8: .4byte clock_tbl_rev01

	thumb_func_start ply_endtie_rev01
ply_endtie_rev01: @ 0x080F31DC
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080F31EE
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080F31F0
_080F31EE:
	ldrb r3, [r1, #5]
_080F31F0:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _080F3218
	movs r4, #0x83
	movs r5, #0x40
_080F31FA:
	ldrb r2, [r1]
	tst r2, r4
	beq _080F3212
	tst r2, r5
	bne _080F3212
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080F3212
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _080F3218
_080F3212:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080F31FA
_080F3218:
	pop {r4, r5}
	bx lr

	thumb_func_start clear_modM
clear_modM: @ 0x080F321C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080F322C
	movs r2, #0xc
	b _080F322E
_080F322C:
	movs r2, #3
_080F322E:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	thumb_func_start ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x080F3238
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start ld_r3_r2_i_sub_rev
ld_r3_r2_i_sub_rev: @ 0x080F323A
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	thumb_func_start ply_lfos_rev01
ply_lfos_rev01: @ 0x080F3244
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080F3254
	bl clear_modM
_080F3254:
	bx ip
	.align 2, 0

	thumb_func_start ply_mod_rev01
ply_mod_rev01: @ 0x080F3258
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080F3268
	bl clear_modM
_080F3268:
	bx ip
	.align 2, 0

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x080F326C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _080F3280
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_080F3280:
	ldr r3, _080F32C8 @ =ScaleTable
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _080F32CC @ =FreqTable
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080F32C8: .4byte ScaleTable
_080F32CC: .4byte FreqTable

	thumb_func_start DummyFunc
DummyFunc: @ 0x080F32D0
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x080F32D4
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080F32E8 @ =0x68736D53
	cmp r3, r0
	bne _080F32E6
	ldr r0, [r2, #4]
	ldr r1, _080F32EC @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080F32E6:
	bx lr
	.align 2, 0
_080F32E8: .4byte 0x68736D53
_080F32EC: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x080F32F0
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080F330C @ =0x68736D53
	cmp r3, r0
	bne _080F3308
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080F3308:
	bx lr
	.align 2, 0
_080F330C: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x080F3310
	push {r4, r5, r6, lr}
	ldr r0, _080F3364 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080F3368 @ =SoundMainRAM_Buffer
	ldr r2, _080F336C @ =0x040000E0
	bl CpuSet
	ldr r0, _080F3370 @ =m4a_sound
	bl SoundInit_rev01
	ldr r0, _080F3374 @ =m4a_cgbchn
	bl MPlayExtender
	ldr r0, _080F3378 @ =0x0093F800
	bl SoundMode_rev01
	ldr r0, _080F337C @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080F335E
	ldr r5, _080F3380 @ =gMPlayTable
	adds r6, r0, #0
_080F3342:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _080F3384 @ =m4a_memacc_area
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _080F3342
_080F335E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F3364: .4byte SoundMainRAM
_080F3368: .4byte SoundMainRAM_Buffer
_080F336C: .4byte 0x040000E0
_080F3370: .4byte m4a_sound
_080F3374: .4byte m4a_cgbchn
_080F3378: .4byte 0x0093F800
_080F337C: .4byte 0x00000003
_080F3380: .4byte gMPlayTable
_080F3384: .4byte m4a_memacc_area

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x080F3388
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x080F3394
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080F33B8 @ =gMPlayTable
	ldr r1, _080F33BC @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_080F33B8: .4byte gMPlayTable
_080F33BC: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x080F33C0
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080F33EC @ =gMPlayTable
	ldr r1, _080F33F0 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080F33F4
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _080F3408
	.align 2, 0
_080F33EC: .4byte gMPlayTable
_080F33F0: .4byte gSongTable
_080F33F4:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080F3400
	cmp r2, #0
	bge _080F3408
_080F3400:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_080F3408:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x080F340C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080F3438 @ =gMPlayTable
	ldr r1, _080F343C @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _080F3440
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _080F345C
	.align 2, 0
_080F3438: .4byte gMPlayTable
_080F343C: .4byte gSongTable
_080F3440:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _080F3452
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _080F345C
_080F3452:
	cmp r2, #0
	bge _080F345C
	adds r0, r1, #0
	bl MPlayContinue
_080F345C:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x080F3460
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080F348C @ =gMPlayTable
	ldr r1, _080F3490 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080F3486
	adds r0, r2, #0
	bl MPlayStop_rev01
_080F3486:
	pop {r0}
	bx r0
	.align 2, 0
_080F348C: .4byte gMPlayTable
_080F3490: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x080F3494
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080F34C0 @ =gMPlayTable
	ldr r1, _080F34C4 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _080F34BA
	adds r0, r2, #0
	bl MPlayContinue
_080F34BA:
	pop {r0}
	bx r0
	.align 2, 0
_080F34C0: .4byte gMPlayTable
_080F34C4: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x080F34C8
	push {r4, r5, lr}
	ldr r0, _080F34EC @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080F34E6
	ldr r5, _080F34F0 @ =gMPlayTable
	adds r4, r0, #0
_080F34D8:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080F34D8
_080F34E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F34EC: .4byte 0x00000003
_080F34F0: .4byte gMPlayTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x080F34F4
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x080F3500
	push {r4, r5, lr}
	ldr r0, _080F3524 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080F351E
	ldr r5, _080F3528 @ =gMPlayTable
	adds r4, r0, #0
_080F3510:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080F3510
_080F351E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F3524: .4byte 0x00000003
_080F3528: .4byte gMPlayTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x080F352C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x080F353C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080F3554 @ =0x68736D53
	cmp r3, r0
	bne _080F3552
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _080F3558 @ =0x00000101
	strh r0, [r2, #0x28]
_080F3552:
	bx lr
	.align 2, 0
_080F3554: .4byte 0x68736D53
_080F3558: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x080F355C
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080F357C @ =0x68736D53
	cmp r3, r0
	bne _080F357A
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _080F3580 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_080F357A:
	bx lr
	.align 2, 0
_080F357C: .4byte 0x68736D53
_080F3580: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x080F3584
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _080F35C6
	movs r7, #0x80
_080F3590:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080F35BE
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F35BE
	adds r0, r4, #0
	bl Clear64byte_rev
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_080F35BE:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080F3590
_080F35C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x080F35CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080F3694 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _080F3698 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _080F369C @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _080F36A0 @ =SOUND_AREA_ADR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _080F36A4 @ =0x68736D53
	cmp r6, r0
	bne _080F368C
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _080F36A8 @ =ExtMPlyJmpTbl
	ldr r0, _080F36AC @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _080F36B0 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _080F36B4 @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _080F36B8 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _080F36BC @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _080F36C0 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _080F36C4 @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _080F36C8 @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _080F36CC @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _080F36D0 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _080F36D4 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _080F36D8 @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _080F36DC @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _080F36E0 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_080F368C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F3694: .4byte 0x04000084
_080F3698: .4byte 0x04000080
_080F369C: .4byte 0x04000063
_080F36A0: .4byte SOUND_AREA_ADR
_080F36A4: .4byte 0x68736D53
_080F36A8: .4byte ExtMPlyJmpTbl
_080F36AC: .4byte ply_memacc
_080F36B0: .4byte ply_lfos_rev01
_080F36B4: .4byte ply_mod_rev01
_080F36B8: .4byte ply_xcmd
_080F36BC: .4byte ply_endtie_rev01
_080F36C0: .4byte SampFreqSet_rev01
_080F36C4: .4byte TrackStop_rev01
_080F36C8: .4byte FadeOutBody_rev01
_080F36CC: .4byte TrkVolPitSet_rev01
_080F36D0: .4byte CgbSound
_080F36D4: .4byte CgbOscOff
_080F36D8: .4byte MidiKey2CgbFr
_080F36DC: .4byte 0x00000000
_080F36E0: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x080F36E4
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x080F36E8
	push {lr}
	ldr r1, _080F36F8 @ =gUnknown_03005E08
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080F36F8: .4byte gUnknown_03005E08

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x080F36FC
	push {lr}
	ldr r1, _080F370C @ =gUnknown_03005E0C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_080F370C: .4byte gUnknown_03005E0C

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x080F3710
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r2, _080F37A8 @ =0x040000C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080F372C
	ldr r0, _080F37AC @ =0x84400004
	str r0, [r2]
_080F372C:
	ldr r1, _080F37B0 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _080F37B4 @ =0x00000B0E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080F37B8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _080F37BC @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _080F37C0 @ =0x040000A0
	str r0, [r1]
	ldr r0, _080F37C4 @ =SOUND_AREA_ADR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _080F37C8 @ =0x05000260
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _080F37CC @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _080F37D0 @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _080F37D4 @ =ExtMPlyJmpTbl
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _080F37D8 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F37A8: .4byte 0x040000C4
_080F37AC: .4byte 0x84400004
_080F37B0: .4byte 0x040000C6
_080F37B4: .4byte 0x00000B0E
_080F37B8: .4byte 0x04000089
_080F37BC: .4byte 0x040000BC
_080F37C0: .4byte 0x040000A0
_080F37C4: .4byte SOUND_AREA_ADR
_080F37C8: .4byte 0x05000260
_080F37CC: .4byte ply_note_rev01
_080F37D0: .4byte DummyFunc_rev
_080F37D4: .4byte ExtMPlyJmpTbl
_080F37D8: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x080F37DC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _080F385C @ =SOUND_AREA_ADR
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _080F3860 @ =pcmVBtbl_rev
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _080F3864 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _080F3868 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _080F386C @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _080F3870 @ =0x04000102
	strh r6, [r0]
	ldr r4, _080F3874 @ =0x04000100
	ldr r0, _080F3878 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _080F387C @ =0x04000006
_080F3840:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _080F3840
	ldr r1, _080F387C @ =0x04000006
_080F3848:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _080F3848
	ldr r1, _080F3870 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F385C: .4byte SOUND_AREA_ADR
_080F3860: .4byte pcmVBtbl_rev
_080F3864: .4byte 0x00091D1B
_080F3868: .4byte 0x00001388
_080F386C: .4byte 0x00002710
_080F3870: .4byte 0x04000102
_080F3874: .4byte 0x04000100
_080F3878: .4byte 0x00044940
_080F387C: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x080F3880
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080F390C @ =SOUND_AREA_ADR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080F3910 @ =0x68736D53
	cmp r1, r0
	bne _080F3906
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080F38A2
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080F38A2:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080F38C2
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080F38B8:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080F38B8
_080F38C2:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080F38D0
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080F38D0:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080F38EE
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080F3914 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_080F38EE:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080F3902
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_080F3902:
	ldr r0, _080F3910 @ =0x68736D53
	str r0, [r5]
_080F3906:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F390C: .4byte SOUND_AREA_ADR
_080F3910: .4byte 0x68736D53
_080F3914: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x080F3918
	push {r4, r5, r6, r7, lr}
	ldr r0, _080F3964 @ =SOUND_AREA_ADR
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _080F3968 @ =0x68736D53
	cmp r1, r0
	bne _080F395E
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_080F3932:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _080F3932
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _080F395A
	movs r5, #1
	movs r7, #0
_080F3946:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _080F3946
_080F395A:
	ldr r0, _080F3968 @ =0x68736D53
	str r0, [r6]
_080F395E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F3964: .4byte SOUND_AREA_ADR
_080F3968: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x080F396C
	push {lr}
	sub sp, #4
	ldr r0, _080F39B8 @ =SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _080F39BC @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _080F39B2
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r3, _080F39C0 @ =0x040000C4
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _080F3996
	ldr r0, _080F39C4 @ =0x84400004
	str r0, [r3]
_080F3996:
	ldr r1, _080F39C8 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _080F39CC @ =0x0500018C
	mov r0, sp
	bl CpuSet
_080F39B2:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080F39B8: .4byte SOUND_AREA_ADR
_080F39BC: .4byte 0x978C92AD
_080F39C0: .4byte 0x040000C4
_080F39C4: .4byte 0x84400004
_080F39C8: .4byte 0x040000C6
_080F39CC: .4byte 0x0500018C

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x080F39D0
	push {r4, lr}
	ldr r0, _080F39FC @ =SOUND_AREA_ADR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _080F3A00 @ =0x68736D53
	cmp r3, r0
	beq _080F39F4
	ldr r1, _080F3A04 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r0, r4, #0
	strh r0, [r1]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_080F39F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F39FC: .4byte SOUND_AREA_ADR
_080F3A00: .4byte 0x68736D53
_080F3A04: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x080F3A08
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080F3A6C
	cmp r4, #0x10
	bls _080F3A1C
	movs r4, #0x10
_080F3A1C:
	ldr r0, _080F3A74 @ =SOUND_AREA_ADR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _080F3A78 @ =0x68736D53
	cmp r1, r0
	bne _080F3A6C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080F3A50
	movs r1, #0
_080F3A42:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080F3A42
_080F3A50:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080F3A60
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080F3A60:
	str r7, [r5, #0x24]
	ldr r0, _080F3A7C @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _080F3A78 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_080F3A6C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F3A74: .4byte SOUND_AREA_ADR
_080F3A78: .4byte 0x68736D53
_080F3A7C: .4byte MPlayMain

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x080F3A80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _080F3B60 @ =0x68736D53
	cmp r1, r0
	bne _080F3B56
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _080F3AC2
	ldr r0, [r5]
	cmp r0, #0
	beq _080F3AAC
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080F3AB8
_080F3AAC:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _080F3AC2
	cmp r1, #0
	blt _080F3AC2
_080F3AB8:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _080F3B56
_080F3AC2:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _080F3B22
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080F3B42
	mov r8, r6
_080F3AF6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _080F3B22
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080F3AF6
_080F3B22:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _080F3B42
	movs r1, #0
	mov r8, r1
_080F3B2C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _080F3B2C
_080F3B42:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _080F3B52
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_080F3B52:
	ldr r0, _080F3B60 @ =0x68736D53
	str r0, [r5, #0x34]
_080F3B56:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F3B60: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x080F3B64
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _080F3BA0 @ =0x68736D53
	cmp r1, r0
	bne _080F3B9A
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _080F3B96
_080F3B86:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _080F3B86
_080F3B96:
	ldr r0, _080F3BA0 @ =0x68736D53
	str r0, [r6, #0x34]
_080F3B9A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080F3BA0: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x080F3BA4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _080F3C66
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _080F3BE4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _080F3C66
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F3BE8
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _080F3C3A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _080F3C3A
	.align 2, 0
_080F3BE4: .4byte 0x0000FFFF
_080F3BE8:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080F3C3A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080F3C1A
_080F3BFE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _080F3C12
	strb r0, [r4]
_080F3C12:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080F3BFE
_080F3C1A:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _080F3C2E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080F3C32
_080F3C2E:
	movs r0, #0x80
	lsls r0, r0, #0x18
_080F3C32:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _080F3C66
_080F3C3A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _080F3C66
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_080F3C48:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080F3C5E
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_080F3C5E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _080F3C48
_080F3C66:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x080F3C6C
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080F3CD0
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _080F3C94
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_080F3C94:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _080F3CAA
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_080F3CAA:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080F3CB6
	adds r1, r0, #0
	b _080F3CBC
_080F3CB6:
	cmp r1, #0x7f
	ble _080F3CBC
	movs r1, #0x7f
_080F3CBC:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_080F3CD0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080F3D14
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _080F3D0E
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_080F3D0E:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_080F3D14:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x080F3D20
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _080F3D58
	cmp r5, #0x14
	bhi _080F3D3C
	movs r5, #0
	b _080F3D4A
_080F3D3C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _080F3D4A
	movs r5, #0x3b
_080F3D4A:
	ldr r0, _080F3D54 @ =NoiseTable
	adds r0, r5, r0
	ldrb r0, [r0]
	b _080F3DBA
	.align 2, 0
_080F3D54: .4byte NoiseTable
_080F3D58:
	cmp r5, #0x23
	bhi _080F3D64
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _080F3D76
_080F3D64:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _080F3D76
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_080F3D76:
	ldr r3, _080F3DC0 @ =CgbScTable
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _080F3DC4 @ =CgbFrTable
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_080F3DBA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080F3DC0: .4byte CgbScTable
_080F3DC4: .4byte CgbFrTable

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080F3DC8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080F3DF0
	cmp r0, #2
	bgt _080F3DDC
	cmp r0, #1
	beq _080F3DE2
	b _080F3E04
_080F3DDC:
	cmp r1, #3
	beq _080F3DF8
	b _080F3E04
_080F3DE2:
	ldr r1, _080F3DEC @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _080F3E0C
	.align 2, 0
_080F3DEC: .4byte 0x04000063
_080F3DF0:
	ldr r1, _080F3DF4 @ =0x04000069
	b _080F3E06
	.align 2, 0
_080F3DF4: .4byte 0x04000069
_080F3DF8:
	ldr r1, _080F3E00 @ =0x04000070
	movs r0, #0
	b _080F3E0E
	.align 2, 0
_080F3E00: .4byte 0x04000070
_080F3E04:
	ldr r1, _080F3E14 @ =0x04000079
_080F3E06:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_080F3E0C:
	movs r0, #0x80
_080F3E0E:
	strb r0, [r1]
	bx lr
	.align 2, 0
_080F3E14: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x080F3E18
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _080F3E38
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _080F3E44
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _080F3E52
_080F3E38:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _080F3E44
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _080F3E52
_080F3E44:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _080F3E62
_080F3E52:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _080F3E64
	movs r0, #0xf
_080F3E62:
	strb r0, [r1, #0xa]
_080F3E64:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x080F3E80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _080F3EA0 @ =SOUND_AREA_ADR
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080F3EA4
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080F3EAA
	.align 2, 0
_080F3EA0: .4byte SOUND_AREA_ADR
_080F3EA4:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080F3EAA:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080F3EB0:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _080F3EC6
	b _080F42B0
_080F3EC6:
	cmp r6, #2
	beq _080F3EF8
	cmp r6, #2
	bgt _080F3ED4
	cmp r6, #1
	beq _080F3EDA
	b _080F3F30
_080F3ED4:
	cmp r6, #3
	beq _080F3F10
	b _080F3F30
_080F3EDA:
	ldr r0, _080F3EEC @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _080F3EF0 @ =0x04000062
	ldr r2, _080F3EF4 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080F3F40
	.align 2, 0
_080F3EEC: .4byte 0x04000060
_080F3EF0: .4byte 0x04000062
_080F3EF4: .4byte 0x04000063
_080F3EF8:
	ldr r0, _080F3F04 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _080F3F08 @ =0x04000068
	ldr r2, _080F3F0C @ =0x04000069
	b _080F3F38
	.align 2, 0
_080F3F04: .4byte 0x04000061
_080F3F08: .4byte 0x04000068
_080F3F0C: .4byte 0x04000069
_080F3F10:
	ldr r0, _080F3F24 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _080F3F28 @ =0x04000072
	ldr r2, _080F3F2C @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080F3F40
	.align 2, 0
_080F3F24: .4byte 0x04000070
_080F3F28: .4byte 0x04000072
_080F3F2C: .4byte 0x04000073
_080F3F30:
	ldr r0, _080F3F90 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _080F3F94 @ =0x04000078
	ldr r2, _080F3F98 @ =0x04000079
_080F3F38:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080F3F40:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080F4036
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _080F405A
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _080F3FA8
	cmp r6, #2
	bgt _080F3F9C
	cmp r6, #1
	beq _080F3FA2
	b _080F3FFC
	.align 2, 0
_080F3F90: .4byte 0x04000071
_080F3F94: .4byte 0x04000078
_080F3F98: .4byte 0x04000079
_080F3F9C:
	cmp r6, #3
	beq _080F3FB4
	b _080F3FFC
_080F3FA2:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_080F3FA8:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _080F4008
_080F3FB4:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080F3FDC
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _080F3FF0 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_080F3FDC:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080F3FF4
	movs r0, #0xc0
	b _080F4016
	.align 2, 0
_080F3FF0: .4byte 0x04000090
_080F3FF4:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _080F4018
_080F3FFC:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_080F4008:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080F4016
	movs r0, #0x40
_080F4016:
	strb r0, [r4, #0x1a]
_080F4018:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _080F4032
	b _080F416E
_080F4032:
	strb r2, [r4, #9]
	b _080F419C
_080F4036:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080F4068
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _080F405A
	b _080F41AE
_080F405A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _080F42AC
_080F4068:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _080F40A8
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080F40A8
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080F40DA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080F419C
	ldrb r2, [r4, #7]
	mov r8, r2
	b _080F419C
_080F40A8:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080F419C
	cmp r6, #3
	bne _080F40BA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080F40BA:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _080F410E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080F410A
_080F40DA:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080F405A
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080F41AE
	movs r2, #8
	mov r8, r2
	b _080F41AE
_080F410A:
	ldrb r0, [r4, #7]
	b _080F419A
_080F410E:
	cmp r0, #1
	bne _080F411A
_080F4112:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080F419A
_080F411A:
	cmp r0, #2
	bne _080F415E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080F415A
_080F4132:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080F4142
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _080F40DA
_080F4142:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080F4112
	movs r0, #8
	mov r8, r0
	b _080F4112
_080F415A:
	ldrb r0, [r4, #5]
	b _080F419A
_080F415E:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080F4198
_080F416E:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080F4132
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080F419C
	ldrb r2, [r4, #5]
	mov r8, r2
	b _080F419C
_080F4198:
	ldrb r0, [r4, #4]
_080F419A:
	strb r0, [r4, #0xb]
_080F419C:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _080F41AE
	subs r0, #1
	str r0, [sp]
	b _080F40A8
_080F41AE:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080F4226
	cmp r6, #3
	bgt _080F41EE
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080F41EE
	ldr r0, _080F41D8 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _080F41E0
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080F41DC @ =0x000007FC
	b _080F41EA
	.align 2, 0
_080F41D8: .4byte 0x04000089
_080F41DC: .4byte 0x000007FC
_080F41E0:
	cmp r0, #0x7f
	bgt _080F41EE
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080F41FC @ =0x000007FE
_080F41EA:
	ands r0, r1
	str r0, [r4, #0x20]
_080F41EE:
	cmp r6, #4
	beq _080F4200
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _080F420E
	.align 2, 0
_080F41FC: .4byte 0x000007FE
_080F4200:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_080F420E:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080F4226:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080F42AC
	ldr r1, _080F4270 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _080F4278
	ldr r0, _080F4274 @ =Cgb3vol
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080F42AC
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080F42AC
	.align 2, 0
_080F4270: .4byte 0x04000081
_080F4274: .4byte Cgb3vol
_080F4278:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _080F42AC
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080F42AC
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_080F42AC:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080F42B0:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _080F42BA
	b _080F3EB0
_080F42BA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x080F42CC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080F42F0 @ =0x68736D53
	cmp r3, r0
	bne _080F42E8
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_080F42E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F42F0: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x080F42F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080F4358 @ =0x68736D53
	cmp r3, r0
	bne _080F434C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080F4348
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_080F4324:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080F433E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080F433E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080F433E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080F4324
_080F4348:
	ldr r0, _080F4358 @ =0x68736D53
	str r0, [r4, #0x34]
_080F434C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4358: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x080F435C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _080F43CC @ =0x68736D53
	cmp r3, r0
	bne _080F43BE
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080F43BA
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_080F4394:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _080F43B0
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _080F43B0
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_080F43B0:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080F4394
_080F43BA:
	ldr r0, _080F43CC @ =0x68736D53
	str r0, [r4, #0x34]
_080F43BE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F43CC: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x080F43D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _080F4434 @ =0x68736D53
	cmp r3, r0
	bne _080F4428
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _080F4424
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_080F4400:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _080F441A
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _080F441A
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_080F441A:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _080F4400
_080F4424:
	ldr r0, _080F4434 @ =0x68736D53
	str r0, [r4, #0x34]
_080F4428:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F4434: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x080F4438
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080F444C
	movs r0, #0xc
	b _080F444E
_080F444C:
	movs r0, #3
_080F444E:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x080F4458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080F44C8 @ =0x68736D53
	cmp r1, r0
	bne _080F44B8
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080F44B4
	mov sb, r8
_080F4488:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080F44AA
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080F44AA
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _080F44AA
	adds r0, r4, #0
	bl MP_clear_modM
_080F44AA:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080F4488
_080F44B4:
	ldr r0, _080F44C8 @ =0x68736D53
	str r0, [r6, #0x34]
_080F44B8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F44C8: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x080F44CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _080F453C @ =0x68736D53
	cmp r1, r0
	bne _080F452C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _080F4528
	mov sb, r8
_080F44FC:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _080F451E
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _080F451E
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _080F451E
	adds r0, r4, #0
	bl MP_clear_modM
_080F451E:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _080F44FC
_080F4528:
	ldr r0, _080F453C @ =0x68736D53
	str r0, [r6, #0x34]
_080F452C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080F453C: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x080F4540
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080F4564
	b _080F4692
_080F4564:
	lsls r0, r5, #2
	ldr r1, _080F4570 @ =_080F4574
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F4570: .4byte _080F4574
_080F4574: @ jump table
	.4byte _080F45BC @ case 0
	.4byte _080F45C0 @ case 1
	.4byte _080F45C8 @ case 2
	.4byte _080F45D0 @ case 3
	.4byte _080F45DA @ case 4
	.4byte _080F45E8 @ case 5
	.4byte _080F45F6 @ case 6
	.4byte _080F45FE @ case 7
	.4byte _080F4606 @ case 8
	.4byte _080F460E @ case 9
	.4byte _080F4616 @ case 10
	.4byte _080F461E @ case 11
	.4byte _080F4626 @ case 12
	.4byte _080F4634 @ case 13
	.4byte _080F4642 @ case 14
	.4byte _080F4650 @ case 15
	.4byte _080F465E @ case 16
	.4byte _080F466C @ case 17
_080F45BC:
	strb r2, [r3]
	b _080F4692
_080F45C0:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _080F4692
_080F45C8:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _080F4692
_080F45D0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _080F4692
_080F45DA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _080F4692
_080F45E8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _080F4692
_080F45F6:
	ldrb r3, [r3]
	cmp r3, r2
	beq _080F4678
	b _080F468C
_080F45FE:
	ldrb r3, [r3]
	cmp r3, r2
	bne _080F4678
	b _080F468C
_080F4606:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _080F4678
	b _080F468C
_080F460E:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _080F4678
	b _080F468C
_080F4616:
	ldrb r3, [r3]
	cmp r3, r2
	bls _080F4678
	b _080F468C
_080F461E:
	ldrb r3, [r3]
	cmp r3, r2
	blo _080F4678
	b _080F468C
_080F4626:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _080F4678
	b _080F468C
_080F4634:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _080F4678
	b _080F468C
_080F4642:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080F4678
	b _080F468C
_080F4650:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080F4678
	b _080F468C
_080F465E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _080F4678
	b _080F468C
_080F466C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _080F468C
_080F4678:
	ldr r0, _080F4688 @ =gUnknown_03005D84
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _080F4692
	.align 2, 0
_080F4688: .4byte gUnknown_03005D84
_080F468C:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080F4692:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x080F4698
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080F46B4 @ =xcmd_tbl
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080F46B4: .4byte xcmd_tbl

	thumb_func_start ply_xxx
ply_xxx: @ 0x080F46B8
	push {lr}
	ldr r2, _080F46C8 @ =ExtMPlyJmpTbl
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080F46C8: .4byte ExtMPlyJmpTbl

	thumb_func_start ply_xwave
ply_xwave: @ 0x080F46CC
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080F4704 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080F4708 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080F470C @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080F4710 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080F4704: .4byte 0xFFFFFF00
_080F4708: .4byte 0xFFFF00FF
_080F470C: .4byte 0xFF00FFFF
_080F4710: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x080F4714
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x080F4728
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x080F473C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x080F4750
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x080F4764
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x080F4778
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x080F4784
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x080F4790
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x080F47A4
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x080F47B8
	bx lr
	.align 2, 0

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
	ldr r3, _080F4800 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r3, _080F4804 @ =gUnknown_03007FFA
	movs r2, #0
	strb r2, [r3]
	subs r3, #0xfa
	mov sp, r3
	svc #1
	svc #0
	.align 2, 0
_080F4800: .4byte 0x04000208
_080F4804: .4byte gUnknown_03007FFA

	thumb_func_start ReadSram_Core
ReadSram_Core: @ 0x080F4808
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _080F4824
	movs r2, #1
	rsbs r2, r2, #0
_080F4816:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _080F4816
_080F4824:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadSram
ReadSram: @ 0x080F482C
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080F4858 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080F485C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080F4860 @ =ReadSram_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080F4864 @ =ReadSram
	ldr r1, _080F4860 @ =ReadSram_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080F4874
	.align 2, 0
_080F4858: .4byte 0x04000204
_080F485C: .4byte 0x0000FFFC
_080F4860: .4byte ReadSram_Core
_080F4864: .4byte ReadSram
_080F4868:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080F4874:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080F4868
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start WriteSram
WriteSram: @ 0x080F4890
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _080F48C8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080F48CC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	subs r3, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _080F48C0
	adds r1, r0, #0
_080F48B2:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r3, #1
	cmp r3, r1
	bne _080F48B2
_080F48C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080F48C8: .4byte 0x04000204
_080F48CC: .4byte 0x0000FFFC

	thumb_func_start VerifySram_Core
VerifySram_Core: @ 0x080F48D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _080F48F6
	movs r2, #1
	rsbs r2, r2, #0
_080F48E0:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _080F48F0
	subs r0, r3, #1
	b _080F48F8
_080F48F0:
	subs r4, #1
	cmp r4, r2
	bne _080F48E0
_080F48F6:
	movs r0, #0
_080F48F8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifySram
VerifySram: @ 0x080F4900
	push {r4, r5, r6, lr}
	sub sp, #0xc0
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _080F492C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _080F4930 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080F4934 @ =VerifySram_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _080F4938 @ =VerifySram
	ldr r1, _080F4934 @ =VerifySram_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _080F4948
	.align 2, 0
_080F492C: .4byte 0x04000204
_080F4930: .4byte 0x0000FFFC
_080F4934: .4byte VerifySram_Core
_080F4938: .4byte VerifySram
_080F493C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_080F4948:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080F493C
	mov r3, sp
	adds r3, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0xc0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start WriteSramEx
WriteSramEx: @ 0x080F4964
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	movs r7, #0
	b _080F4976
_080F4970:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080F4976:
	cmp r7, #2
	bhi _080F4994
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl WriteSram
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl VerifySram
	adds r3, r0, #0
	cmp r3, #0
	bne _080F4970
_080F4994:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x080F499C
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x080F49A0
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x080F49A4
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x080F49A8
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x080F49AC
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x080F49B0
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x080F49B4
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x080F49B8
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x080F49BC
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x080F49C0
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x080F49C4
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x080F49C8
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x080F49CC
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x080F49D0
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x080F49D4
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x080F49D8
	cmp r1, #0
	beq _080F4A60
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _080F49EE
	rsbs r1, r1, #0
_080F49EE:
	cmp r0, #0
	bpl _080F49F4
	rsbs r0, r0, #0
_080F49F4:
	cmp r0, r1
	blo _080F4A52
	movs r4, #1
	lsls r4, r4, #0x1c
_080F49FC:
	cmp r1, r4
	bhs _080F4A0A
	cmp r1, r0
	bhs _080F4A0A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080F49FC
_080F4A0A:
	lsls r4, r4, #3
_080F4A0C:
	cmp r1, r4
	bhs _080F4A1A
	cmp r1, r0
	bhs _080F4A1A
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080F4A0C
_080F4A1A:
	cmp r0, r1
	blo _080F4A22
	subs r0, r0, r1
	orrs r2, r3
_080F4A22:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080F4A2E
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080F4A2E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080F4A3A
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080F4A3A:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080F4A46
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080F4A46:
	cmp r0, #0
	beq _080F4A52
	lsrs r3, r3, #4
	beq _080F4A52
	lsrs r1, r1, #4
	b _080F4A1A
_080F4A52:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080F4A5C
	rsbs r0, r0, #0
_080F4A5C:
	pop {r4}
	mov pc, lr
_080F4A60:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __div0
__div0: @ 0x080F4A6C
	mov pc, lr
	.align 2, 0

	thumb_func_start __modsi3
__modsi3: @ 0x080F4A70
	movs r3, #1
	cmp r1, #0
	beq _080F4B34
	bpl _080F4A7A
	rsbs r1, r1, #0
_080F4A7A:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080F4A84
	rsbs r0, r0, #0
_080F4A84:
	cmp r0, r1
	blo _080F4B28
	movs r4, #1
	lsls r4, r4, #0x1c
_080F4A8C:
	cmp r1, r4
	bhs _080F4A9A
	cmp r1, r0
	bhs _080F4A9A
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080F4A8C
_080F4A9A:
	lsls r4, r4, #3
_080F4A9C:
	cmp r1, r4
	bhs _080F4AAA
	cmp r1, r0
	bhs _080F4AAA
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080F4A9C
_080F4AAA:
	movs r2, #0
	cmp r0, r1
	blo _080F4AB2
	subs r0, r0, r1
_080F4AB2:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080F4AC4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4AC4:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080F4AD6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4AD6:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080F4AE8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4AE8:
	mov ip, r3
	cmp r0, #0
	beq _080F4AF6
	lsrs r3, r3, #4
	beq _080F4AF6
	lsrs r1, r1, #4
	b _080F4AAA
_080F4AF6:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080F4B28
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080F4B0C
	lsrs r4, r1, #3
	adds r0, r0, r4
_080F4B0C:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080F4B1A
	lsrs r4, r1, #2
	adds r0, r0, r4
_080F4B1A:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080F4B28
	lsrs r4, r1, #1
	adds r0, r0, r4
_080F4B28:
	pop {r4}
	cmp r4, #0
	bpl _080F4B30
	rsbs r0, r0, #0
_080F4B30:
	pop {r4}
	mov pc, lr
_080F4B34:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x080F4B40
	cmp r1, #0
	beq _080F4BAE
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080F4BA8
	movs r4, #1
	lsls r4, r4, #0x1c
_080F4B52:
	cmp r1, r4
	bhs _080F4B60
	cmp r1, r0
	bhs _080F4B60
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080F4B52
_080F4B60:
	lsls r4, r4, #3
_080F4B62:
	cmp r1, r4
	bhs _080F4B70
	cmp r1, r0
	bhs _080F4B70
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080F4B62
_080F4B70:
	cmp r0, r1
	blo _080F4B78
	subs r0, r0, r1
	orrs r2, r3
_080F4B78:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080F4B84
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080F4B84:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080F4B90
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080F4B90:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080F4B9C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080F4B9C:
	cmp r0, #0
	beq _080F4BA8
	lsrs r3, r3, #4
	beq _080F4BA8
	lsrs r1, r1, #4
	b _080F4B70
_080F4BA8:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080F4BAE:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start __umodsi3
__umodsi3: @ 0x080F4BB8
	cmp r1, #0
	beq _080F4C6E
	movs r3, #1
	cmp r0, r1
	bhs _080F4BC4
	mov pc, lr
_080F4BC4:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080F4BCA:
	cmp r1, r4
	bhs _080F4BD8
	cmp r1, r0
	bhs _080F4BD8
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080F4BCA
_080F4BD8:
	lsls r4, r4, #3
_080F4BDA:
	cmp r1, r4
	bhs _080F4BE8
	cmp r1, r0
	bhs _080F4BE8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080F4BDA
_080F4BE8:
	movs r2, #0
	cmp r0, r1
	blo _080F4BF0
	subs r0, r0, r1
_080F4BF0:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080F4C02
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4C02:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080F4C14
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4C14:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080F4C26
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080F4C26:
	mov ip, r3
	cmp r0, #0
	beq _080F4C34
	lsrs r3, r3, #4
	beq _080F4C34
	lsrs r1, r1, #4
	b _080F4BE8
_080F4C34:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080F4C40
	pop {r4}
	mov pc, lr
_080F4C40:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080F4C4E
	lsrs r4, r1, #3
	adds r0, r0, r4
_080F4C4E:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080F4C5C
	lsrs r4, r1, #2
	adds r0, r0, r4
_080F4C5C:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080F4C6A
	lsrs r4, r1, #1
	adds r0, r0, r4
_080F4C6A:
	pop {r4}
	mov pc, lr
_080F4C6E:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	thumb_func_start memcpy
memcpy: @ 0x080F4C78
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _080F4CB8
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080F4CB8
	adds r1, r5, #0
_080F4C92:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080F4C92
	cmp r2, #3
	bls _080F4CB6
_080F4CAC:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080F4CAC
_080F4CB6:
	adds r4, r1, #0
_080F4CB8:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080F4CD2
	adds r1, r0, #0
_080F4CC4:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080F4CC4
_080F4CD2:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memset
memset: @ 0x080F4CD8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _080F4D1E
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _080F4D1E
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _080F4D12
_080F4CFE:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080F4CFE
	b _080F4D12
_080F4D0E:
	stm r1!, {r3}
	subs r2, #4
_080F4D12:
	cmp r2, #3
	bhi _080F4D0E
	adds r3, r1, #0
	b _080F4D1E
_080F4D1A:
	strb r4, [r3]
	adds r3, #1
_080F4D1E:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080F4D1A
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x080F4D2C
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _080F4D64 @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_080F4D64: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x080F4D68
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _080F4DA0 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _080F4DA4 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_080F4DA0: .4byte 0x7FFFFFFF
_080F4DA4: .4byte _impure_ptr

	thumb_func_start strlen
strlen: @ 0x080F4DA8
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080F4DE0
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _080F4DC4 @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _080F4DC8 @ =0x80808080
	b _080F4DD4
	.align 2, 0
_080F4DC4: .4byte 0xFEFEFEFF
_080F4DC8: .4byte 0x80808080
_080F4DCC:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_080F4DD4:
	ands r0, r3
	cmp r0, #0
	beq _080F4DCC
	adds r1, r2, #0
	b _080F4DE0
_080F4DDE:
	adds r1, #1
_080F4DE0:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080F4DDE
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sprint
__sprint: @ 0x080F4DEC
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _080F4E04
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _080F4E08
_080F4E04:
	str r1, [r4, #4]
	movs r0, #0
_080F4E08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x080F4E0C
	push {r4, r5, lr}
	ldr r4, _080F4E7C @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _080F4E5C
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _080F4E5C
	movs r4, #1
	rsbs r4, r4, #0
_080F4E5C:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080F4E70
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080F4E70:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_080F4E7C: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x080F4E80
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x080F4E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080F4EFC @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _080F4EC6
	ldr r0, _080F4F00 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r1, #0x54]
_080F4EC6:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080F4ED6
	adds r0, r1, #0
	bl __sinit
_080F4ED6:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080F4EEA
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _080F4F04
_080F4EEA:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _080F4F04
	movs r0, #1
	rsbs r0, r0, #0
	bl _080F5DE4
	.align 2, 0
_080F4EFC: .4byte 0xFFFFFDE0
_080F4F00: .4byte _impure_ptr
_080F4F04:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _080F4F28
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _080F4F28
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _080F5DE4
_080F4F28:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_080F4F4C:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_080F4F50:
	ldr r0, _080F4FFC @ =_impure_ptr
	ldr r0, [r0]
	ldr r1, _080F5000 @ =__mb_cur_max
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _080F4F7E
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _080F4F50
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_080F4F7E:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _080F4FB6
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F4FB0
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F4FAE
	bl _080F5DD0
_080F4FAE:
	add r5, sp, #0x28
_080F4FB0:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_080F4FB6:
	cmp r4, #0
	bgt _080F4FBE
	bl _080F5DB8
_080F4FBE:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _080F5004 @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_080F4FDA:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_080F4FE6:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _080F4FF0
	b _080F56A2
_080F4FF0:
	lsls r0, r0, #2
	ldr r1, _080F5008 @ =_080F500C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F4FFC: .4byte _impure_ptr
_080F5000: .4byte __mb_cur_max
_080F5004: .4byte 0x000001C9
_080F5008: .4byte _080F500C
_080F500C: @ jump table
	.4byte _080F5170 @ case 0
	.4byte _080F56A2 @ case 1
	.4byte _080F56A2 @ case 2
	.4byte _080F5188 @ case 3
	.4byte _080F56A2 @ case 4
	.4byte _080F56A2 @ case 5
	.4byte _080F56A2 @ case 6
	.4byte _080F56A2 @ case 7
	.4byte _080F56A2 @ case 8
	.4byte _080F56A2 @ case 9
	.4byte _080F518C @ case 10
	.4byte _080F51A6 @ case 11
	.4byte _080F56A2 @ case 12
	.4byte _080F51A2 @ case 13
	.4byte _080F51B4 @ case 14
	.4byte _080F56A2 @ case 15
	.4byte _080F5214 @ case 16
	.4byte _080F5218 @ case 17
	.4byte _080F5218 @ case 18
	.4byte _080F5218 @ case 19
	.4byte _080F5218 @ case 20
	.4byte _080F5218 @ case 21
	.4byte _080F5218 @ case 22
	.4byte _080F5218 @ case 23
	.4byte _080F5218 @ case 24
	.4byte _080F5218 @ case 25
	.4byte _080F56A2 @ case 26
	.4byte _080F56A2 @ case 27
	.4byte _080F56A2 @ case 28
	.4byte _080F56A2 @ case 29
	.4byte _080F56A2 @ case 30
	.4byte _080F56A2 @ case 31
	.4byte _080F56A2 @ case 32
	.4byte _080F56A2 @ case 33
	.4byte _080F56A2 @ case 34
	.4byte _080F56A2 @ case 35
	.4byte _080F5282 @ case 36
	.4byte _080F52D4 @ case 37
	.4byte _080F56A2 @ case 38
	.4byte _080F52D4 @ case 39
	.4byte _080F56A2 @ case 40
	.4byte _080F56A2 @ case 41
	.4byte _080F56A2 @ case 42
	.4byte _080F56A2 @ case 43
	.4byte _080F523C @ case 44
	.4byte _080F56A2 @ case 45
	.4byte _080F56A2 @ case 46
	.4byte _080F548A @ case 47
	.4byte _080F56A2 @ case 48
	.4byte _080F56A2 @ case 49
	.4byte _080F56A2 @ case 50
	.4byte _080F56A2 @ case 51
	.4byte _080F56A2 @ case 52
	.4byte _080F5522 @ case 53
	.4byte _080F56A2 @ case 54
	.4byte _080F56A2 @ case 55
	.4byte _080F555E @ case 56
	.4byte _080F56A2 @ case 57
	.4byte _080F56A2 @ case 58
	.4byte _080F56A2 @ case 59
	.4byte _080F56A2 @ case 60
	.4byte _080F56A2 @ case 61
	.4byte _080F56A2 @ case 62
	.4byte _080F56A2 @ case 63
	.4byte _080F56A2 @ case 64
	.4byte _080F56A2 @ case 65
	.4byte _080F56A2 @ case 66
	.4byte _080F5270 @ case 67
	.4byte _080F528A @ case 68
	.4byte _080F52D4 @ case 69
	.4byte _080F52D4 @ case 70
	.4byte _080F52D4 @ case 71
	.4byte _080F5240 @ case 72
	.4byte _080F528A @ case 73
	.4byte _080F56A2 @ case 74
	.4byte _080F56A2 @ case 75
	.4byte _080F5244 @ case 76
	.4byte _080F56A2 @ case 77
	.4byte _080F5444 @ case 78
	.4byte _080F5492 @ case 79
	.4byte _080F54C0 @ case 80
	.4byte _080F5266 @ case 81
	.4byte _080F56A2 @ case 82
	.4byte _080F54E0 @ case 83
	.4byte _080F56A2 @ case 84
	.4byte _080F552A @ case 85
	.4byte _080F56A2 @ case 86
	.4byte _080F56A2 @ case 87
	.4byte _080F5568 @ case 88
_080F5170:
	ldr r1, _080F5184 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F517C
	b _080F4FDA
_080F517C:
	movs r0, #0x20
	strb r0, [r1]
	b _080F4FDA
	.align 2, 0
_080F5184: .4byte 0x000001C9
_080F5188:
	movs r0, #1
	b _080F5254
_080F518C:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _080F519E
	b _080F4FDA
_080F519E:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_080F51A2:
	movs r0, #4
	b _080F5268
_080F51A6:
	ldr r1, _080F51B0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _080F4FDA
	.align 2, 0
_080F51B0: .4byte 0x000001C9
_080F51B4:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _080F51DE
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080F51DA
	b _080F4FDA
_080F51DA:
	adds r6, r0, #0
	b _080F4FDA
_080F51DE:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _080F51FE
_080F51E4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_080F51FE:
	subs r0, #0x30
	cmp r0, #9
	bls _080F51E4
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _080F5210
	b _080F4FE6
_080F5210:
	adds r6, r0, #0
	b _080F4FE6
_080F5214:
	movs r0, #0x80
	b _080F5268
_080F5218:
	movs r4, #0
_080F521A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _080F521A
	str r4, [sp, #0x1f4]
	b _080F4FE6
_080F523C:
	movs r0, #8
	b _080F5254
_080F5240:
	movs r0, #0x40
	b _080F525E
_080F5244:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _080F525C
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_080F5254:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _080F4FDA
_080F525C:
	movs r0, #0x10
_080F525E:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _080F4FDA
_080F5266:
	movs r0, #0x20
_080F5268:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _080F4FDA
_080F5270:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _080F56B0
_080F5282:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080F528A:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080F529A
	movs r4, #4
	add sl, r4
	b _080F52B6
_080F529A:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F52B2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _080F52BC
_080F52B2:
	movs r2, #4
	add sl, r2
_080F52B6:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080F52BC:
	cmp r4, #0
	bge _080F52CA
	rsbs r4, r4, #0
	ldr r1, _080F52D0 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080F52CA:
	movs r2, #1
	b _080F55B6
	.align 2, 0
_080F52D0: .4byte 0x000001C9
_080F52D4:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _080F52E0
	movs r6, #6
	b _080F52F0
_080F52E0:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080F52EA
	cmp r4, #0x47
	bne _080F52F0
_080F52EA:
	cmp r6, #0
	bne _080F52F0
	movs r6, #1
_080F52F0:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _080F5344
	ldr r3, _080F5338 @ =0x00000000
	ldr r2, _080F5334 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _080F532A
	ldr r1, _080F533C @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_080F532A:
	ldr r2, _080F5340 @ =gUnknown_082B7754
	mov r8, r2
	movs r3, #3
	b _080F56BA
	.align 2, 0
_080F5334: .4byte 0x00000000
_080F5338: .4byte 0x00000000
_080F533C: .4byte 0x000001C9
_080F5340: .4byte gUnknown_082B7754
_080F5344:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _080F535C
	ldr r4, _080F5358 @ =gUnknown_082B7758
	mov r8, r4
	movs r3, #3
	b _080F56BA
	.align 2, 0
_080F5358: .4byte gUnknown_082B7758
_080F535C:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _080F5390
	cmp r4, #0x47
	bne _080F53B2
_080F5390:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _080F53A0
	cmp r1, r6
	ble _080F53AE
_080F53A0:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _080F53AA
	movs r0, #0x65
_080F53AA:
	str r0, [sp, #0x1e8]
	b _080F53B2
_080F53AE:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_080F53B2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _080F53D8
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _080F5418
	b _080F540E
_080F53D8:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _080F5400
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _080F53FC
	adds r3, r0, #0
	cmp r6, #0
	bne _080F53F6
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F5428
_080F53F6:
	adds r0, r3, #1
	adds r3, r0, r6
	b _080F5428
_080F53FC:
	adds r3, r6, #2
	b _080F5428
_080F5400:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _080F541C
	adds r3, r1, #0
_080F540E:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080F5428
_080F5418:
	adds r3, #1
	b _080F5428
_080F541C:
	cmp r1, #0
	bgt _080F5426
	adds r0, #2
	subs r3, r0, r1
	b _080F5428
_080F5426:
	adds r3, r0, #1
_080F5428:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _080F5436
	b _080F56BE
_080F5436:
	ldr r1, _080F5440 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _080F56BE
	.align 2, 0
_080F5440: .4byte 0x000001C9
_080F5444:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080F545E
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _080F4F4C
_080F545E:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _080F547A
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _080F4F4C
_080F547A:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _080F4F4C
_080F548A:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_080F5492:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080F54B2
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F54B2
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080F54BC
_080F54B2:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080F54BC:
	movs r2, #0
	b _080F55AE
_080F54C0:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _080F54DC @ =gUnknown_082B775C
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _080F55AE
	.align 2, 0
_080F54DC: .4byte gUnknown_082B775C
_080F54E0:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _080F54F4
	ldr r4, _080F5514 @ =gUnknown_082B7770
	mov r8, r4
_080F54F4:
	cmp r6, #0
	blt _080F5518
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _080F5510
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _080F5510
	b _080F56B2
_080F5510:
	adds r3, r6, #0
	b _080F56B2
	.align 2, 0
_080F5514: .4byte gUnknown_082B7770
_080F5518:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080F56B2
_080F5522:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_080F552A:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _080F553A
	movs r0, #4
	add sl, r0
	b _080F5554
_080F553A:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F5550
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080F555A
_080F5550:
	movs r4, #4
	add sl, r4
_080F5554:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080F555A:
	movs r2, #1
	b _080F55AE
_080F555E:
	ldr r0, _080F5564 @ =gUnknown_082B7778
	str r0, [sp, #0x210]
	b _080F556C
	.align 2, 0
_080F5564: .4byte gUnknown_082B7778
_080F5568:
	ldr r1, _080F558C @ =gUnknown_082B775C
	str r1, [sp, #0x210]
_080F556C:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080F5590
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F5590
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _080F559A
	.align 2, 0
_080F558C: .4byte gUnknown_082B775C
_080F5590:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_080F559A:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F55AE
	cmp r4, #0
	beq _080F55AE
	orrs r1, r2
	str r1, [sp, #0x1ec]
_080F55AE:
	ldr r1, _080F55F8 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080F55B6:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _080F55C6
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_080F55C6:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _080F55DC
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _080F5694
_080F55DC:
	cmp r2, #1
	beq _080F563A
	cmp r2, #1
	blo _080F5600
	cmp r2, #2
	beq _080F5674
	ldr r2, _080F55FC @ =gUnknown_082B778C
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _080F56BA
	.align 2, 0
_080F55F8: .4byte 0x000001C9
_080F55FC: .4byte gUnknown_082B778C
_080F5600:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_080F5606:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _080F5606
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080F5694
	cmp r1, #0x30
	beq _080F5694
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _080F5694
_080F563A:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _080F5664
_080F5642:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _080F5642
_080F5664:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _080F5694
_080F5674:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_080F567A:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _080F567A
_080F5694:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _080F56BE
_080F56A2:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _080F56AA
	b _080F5DB8
_080F56AA:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_080F56B0:
	movs r3, #1
_080F56B2:
	ldr r1, _080F56DC @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_080F56BA:
	adds r7, r5, #0
	adds r7, #8
_080F56BE:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _080F56C8
	str r2, [sp, #0x20c]
_080F56C8:
	ldr r0, _080F56DC @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _080F56E0
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _080F56F0
	.align 2, 0
_080F56DC: .4byte 0x000001C9
_080F56E0:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F56F0
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_080F56F0:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _080F5770
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080F5770
	ldr r1, _080F579C @ =gUnknown_082B7734
	cmp r4, #0x10
	ble _080F5744
	mov r6, sb
_080F570C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F573A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F5736
	b _080F5DD0
_080F5736:
	add r5, sp, #0x28
	ldr r1, _080F579C @ =gUnknown_082B7734
_080F573A:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _080F570C
_080F5744:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080F5770
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F576E
	b _080F5DD0
_080F576E:
	add r5, sp, #0x28
_080F5770:
	ldr r1, _080F57A0 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _080F57A4
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080F57E4
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _080F57D4
	.align 2, 0
_080F579C: .4byte gUnknown_082B7734
_080F57A0: .4byte 0x000001C9
_080F57A4:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _080F57E4
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F57E4
	ldr r0, [sp, #0x1e0]
_080F57D4:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F57E2
	b _080F5DD0
_080F57E2:
	add r5, sp, #0x28
_080F57E4:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _080F5860
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080F5860
	ldr r1, _080F58FC @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F5834
	mov r6, sb
_080F5800:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F582E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F582A
	b _080F5DD0
_080F582A:
	add r5, sp, #0x28
	ldr r1, _080F58FC @ =gUnknown_082B7744
_080F582E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5800
_080F5834:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080F5860
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F585E
	b _080F5DD0
_080F585E:
	add r5, sp, #0x28
_080F5860:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _080F58CE
	ldr r1, _080F58FC @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F58A4
	mov r6, sb
_080F5870:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F589E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F589A
	b _080F5DD0
_080F589A:
	add r5, sp, #0x28
	ldr r1, _080F58FC @ =gUnknown_082B7744
_080F589E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5870
_080F58A4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F58CE
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _080F58CC
	b _080F5DD0
_080F58CC:
	add r5, sp, #0x28
_080F58CE:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _080F5900
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _080F58F6
	b _080F5D16
_080F58F6:
	ldr r0, [sp, #0x1e0]
	b _080F5D0C
	.align 2, 0
_080F58FC: .4byte gUnknown_082B7744
_080F5900:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _080F5908
	b _080F5BEC
_080F5908:
	ldr r3, _080F59D4 @ =0x00000000
	ldr r2, _080F59D0 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _080F59E0
	ldr r0, _080F59D8 @ =gUnknown_082B77A8
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080F5944
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5942
	b _080F5DD0
_080F5942:
	add r5, sp, #0x28
_080F5944:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _080F595A
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _080F595A
	b _080F5D16
_080F595A:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5982
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5980
	b _080F5DD0
_080F5980:
	add r5, sp, #0x28
_080F5982:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _080F598C
	b _080F5D16
_080F598C:
	ldr r1, _080F59DC @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F59C4
	mov r6, sb
_080F5994:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F59BE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F59BA
	b _080F5DD0
_080F59BA:
	add r5, sp, #0x28
	ldr r1, _080F59DC @ =gUnknown_082B7744
_080F59BE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5994
_080F59C4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _080F5CFA
	.align 2, 0
_080F59D0: .4byte 0x00000000
_080F59D4: .4byte 0x00000000
_080F59D8: .4byte gUnknown_082B77A8
_080F59DC: .4byte gUnknown_082B7744
_080F59E0:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _080F5AC8
	ldr r0, _080F5AC0 @ =gUnknown_082B77A8
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5A12
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5A10
	b _080F5DD0
_080F5A10:
	add r5, sp, #0x28
_080F5A12:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080F5A3C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5A3A
	b _080F5DD0
_080F5A3A:
	add r5, sp, #0x28
_080F5A3C:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _080F5AA2
	ldr r1, _080F5AC4 @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F5A7C
	mov r6, sb
_080F5A4C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F5A76
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5A72
	b _080F5DD0
_080F5A72:
	add r5, sp, #0x28
	ldr r1, _080F5AC4 @ =gUnknown_082B7744
_080F5A76:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5A4C
_080F5A7C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5AA2
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5AA0
	b _080F5DD0
_080F5AA0:
	add r5, sp, #0x28
_080F5AA2:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _080F5D04
	.align 2, 0
_080F5AC0: .4byte gUnknown_082B77A8
_080F5AC4: .4byte gUnknown_082B7744
_080F5AC8:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _080F5B84
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080F5AFA
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5AF8
	b _080F5DD0
_080F5AF8:
	add r5, sp, #0x28
_080F5AFA:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _080F5B62
	ldr r1, _080F5B7C @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F5B3C
	mov r6, sb
_080F5B0C:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F5B36
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5B32
	b _080F5DD0
_080F5B32:
	add r5, sp, #0x28
	ldr r1, _080F5B7C @ =gUnknown_082B7744
_080F5B36:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5B0C
_080F5B3C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5B62
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5B60
	b _080F5DD0
_080F5B60:
	add r5, sp, #0x28
_080F5B62:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _080F5B6E
	b _080F5D16
_080F5B6E:
	ldr r0, _080F5B80 @ =gUnknown_082B77AC
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _080F5CFA
	.align 2, 0
_080F5B7C: .4byte gUnknown_082B7744
_080F5B80: .4byte gUnknown_082B77AC
_080F5B84:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5BAC
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5BAA
	b _080F5DD0
_080F5BAA:
	add r5, sp, #0x28
_080F5BAC:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _080F5BE8 @ =gUnknown_082B77AC
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080F5BDC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5BDA
	b _080F5DD0
_080F5BDA:
	add r5, sp, #0x28
_080F5BDC:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _080F5CF2
	.align 2, 0
_080F5BE8: .4byte gUnknown_082B77AC
_080F5BEC:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _080F5BFE
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _080F5CC4
_080F5BFE:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5C36
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _080F5C34
	b _080F5DD0
_080F5C34:
	add r5, sp, #0x28
_080F5C36:
	ldr r3, _080F5C60 @ =0x00000000
	ldr r2, _080F5C5C @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _080F5C64
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _080F5CD0
	.align 2, 0
_080F5C5C: .4byte 0x00000000
_080F5C60: .4byte 0x00000000
_080F5C64:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _080F5CEC
	ldr r1, _080F5CC0 @ =gUnknown_082B7744
	cmp r4, #0x10
	ble _080F5CA4
	mov r6, sb
_080F5C74:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F5C9E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _080F5C9A
	b _080F5DD0
_080F5C9A:
	add r5, sp, #0x28
	ldr r1, _080F5CC0 @ =gUnknown_082B7744
_080F5C9E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5C74
_080F5CA4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _080F5CEC
	ldr r0, [sp, #0x1e0]
	b _080F5CE2
	.align 2, 0
_080F5CC0: .4byte gUnknown_082B7744
_080F5CC4:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_080F5CD0:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _080F5CEC
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080F5CE2:
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
	add r5, sp, #0x28
_080F5CEC:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_080F5CF2:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_080F5CFA:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_080F5D04:
	cmp r0, #7
	ble _080F5D16
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_080F5D0C:
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
	add r5, sp, #0x28
_080F5D16:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _080F5D82
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _080F5D82
	ldr r1, _080F5DB4 @ =gUnknown_082B7734
	cmp r4, #0x10
	ble _080F5D60
	mov r6, sb
_080F5D32:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _080F5D5A
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
	add r5, sp, #0x28
	ldr r1, _080F5DB4 @ =gUnknown_082B7734
_080F5D5A:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _080F5D32
_080F5D60:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _080F5D82
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
_080F5D82:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _080F5D8C
	adds r0, r4, #0
_080F5D8C:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080F5DA6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
_080F5DA6:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _080F4F4C
	.align 2, 0
_080F5DB4: .4byte gUnknown_082B7734
_080F5DB8:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080F5DCA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _080F5DD0
_080F5DCA:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_080F5DD0:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _080F5DE2
	ldr r1, [sp, #0x1f0]
_080F5DE2:
	adds r0, r1, #0
_080F5DE4:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x080F5DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _080F5E1A
	movs r7, #3
	b _080F5E2A
_080F5E1A:
	mov r0, sb
	cmp r0, #0x65
	beq _080F5E24
	cmp r0, #0x45
	bne _080F5E28
_080F5E24:
	movs r1, #1
	add r8, r1
_080F5E28:
	movs r7, #2
_080F5E2A:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _080F5E40
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_080F5E40:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _080F5E6C
	cmp r1, #0x47
	bne _080F5E74
_080F5E6C:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _080F5EC8
_080F5E74:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _080F5EA4
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _080F5E9E
	ldr r3, _080F5EE4 @ =0x00000000
	ldr r2, _080F5EE0 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _080F5E9E
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_080F5E9E:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_080F5EA4:
	ldr r3, _080F5EE4 @ =0x00000000
	ldr r2, _080F5EE0 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _080F5EB6
	str r6, [sp, #0x14]
_080F5EB6:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _080F5EC8
	movs r1, #0x30
_080F5EBE:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _080F5EBE
_080F5EC8:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F5EE0: .4byte 0x00000000
_080F5EE4: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x080F5EE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _080F5EFE
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _080F5F00
_080F5EFE:
	movs r0, #0x2b
_080F5F00:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _080F5F42
_080F5F0A:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _080F5F0A
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _080F5F50
	adds r1, r0, #0
_080F5F34:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _080F5F34
	b _080F5F50
_080F5F42:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_080F5F50:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __swsetup
__swsetup: @ 0x080F5F58
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080F5F68
	ldr r0, _080F5F94 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080F5F68:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080F5F76
	adds r0, r1, #0
	bl __sinit
_080F5F76:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080F5FD0
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080F5F98
	movs r0, #1
	rsbs r0, r0, #0
	b _080F6002
	.align 2, 0
_080F5F94: .4byte _impure_ptr
_080F5F98:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080F5FC8
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _080F5FB6
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _080F5FB4
	ldr r0, [r4, #0x54]
	bl _free_r
_080F5FB4:
	str r5, [r4, #0x30]
_080F5FB6:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_080F5FC8:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080F5FD0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _080F5FDC
	adds r0, r4, #0
	bl __smakebuf
_080F5FDC:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F5FF2
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _080F6000
_080F5FF2:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _080F5FFE
	ldr r1, [r4, #0x14]
_080F5FFE:
	str r1, [r4, #8]
_080F6000:
	movs r0, #0
_080F6002:
	pop {r4, r5, pc}

	thumb_func_start quorem
quorem: @ 0x080F6004
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _080F6020
	movs r0, #0
	b _080F6154
_080F6020:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _080F60CA
	movs r6, #0
	mov sb, r6
	ldr r0, _080F60B4 @ =0x0000FFFF
	mov ip, r0
_080F6058:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080F6058
	mov r2, sl
	cmp r2, #0
	bne _080F60CA
	ldr r4, [sp, #0x10]
	b _080F60BA
	.align 2, 0
_080F60B4: .4byte 0x0000FFFF
_080F60B8:
	subs r7, #1
_080F60BA:
	subs r5, #4
	cmp r5, r4
	bls _080F60C6
	ldr r0, [r5]
	cmp r0, #0
	beq _080F60B8
_080F60C6:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080F60CA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _080F6152
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _080F613C @ =0x0000FFFF
_080F60EC:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _080F60EC
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _080F6152
	b _080F6142
	.align 2, 0
_080F613C: .4byte 0x0000FFFF
_080F6140:
	subs r7, #1
_080F6142:
	subs r5, #4
	cmp r5, r4
	bls _080F614E
	ldr r0, [r5]
	cmp r0, #0
	beq _080F6140
_080F614E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_080F6152:
	ldr r0, [sp, #8]
_080F6154:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x080F6160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _080F6198
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_080F6198:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080F61B4
	movs r0, #1
	str r0, [r4]
	ldr r0, _080F61B0 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _080F61B6
	.align 2, 0
_080F61B0: .4byte 0x7FFFFFFF
_080F61B4:
	str r0, [r4]
_080F61B6:
	ldr r1, _080F61F8 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _080F620C
	ldr r0, _080F61FC @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080F6200 @ =gUnknown_082B77BC
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _080F61DE
	ldr r0, _080F6204 @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _080F61DE
	ldr r2, _080F6208 @ =gUnknown_082B77B0
	mov sb, r2
_080F61DE:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080F6230
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _080F61F0
	adds r1, #5
_080F61F0:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _080F6230
	.align 2, 0
_080F61F8: .4byte 0x7FF00000
_080F61FC: .4byte 0x0000270F
_080F6200: .4byte gUnknown_082B77BC
_080F6204: .4byte 0x000FFFFF
_080F6208: .4byte gUnknown_082B77B0
_080F620C:
	ldr r3, _080F623C @ =0x00000000
	ldr r2, _080F6238 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _080F6244
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _080F6240 @ =gUnknown_082B77C0
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _080F6230
	adds r0, #1
	str r0, [r1]
_080F6230:
	mov r0, sb
	bl _080F6E4A
	.align 2, 0
_080F6238: .4byte 0x00000000
_080F623C: .4byte 0x00000000
_080F6240: .4byte gUnknown_082B77C0
_080F6244:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _080F6294
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _080F6288 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _080F628C @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _080F6290 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _080F62F4
	.align 2, 0
_080F6288: .4byte 0x000FFFFF
_080F628C: .4byte 0x3FF00000
_080F6290: .4byte 0xFFFFFC01
_080F6294:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _080F62BC @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _080F62C4
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _080F62C0 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _080F62CE
	.align 2, 0
_080F62BC: .4byte 0x00000432
_080F62C0: .4byte 0x00000412
_080F62C4:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_080F62CE:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _080F62E0
	ldr r3, _080F63A4 @ =0x00000000
	ldr r2, _080F63A0 @ =0x41F00000
	bl __adddf3
_080F62E0:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _080F63A8 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _080F63AC @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_080F62F4:
	ldr r2, _080F63B0 @ =0x3FF80000
	ldr r3, _080F63B4 @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _080F63B8 @ =0x3FD287A7
	ldr r3, _080F63BC @ =0x636F4361
	bl __muldf3
	ldr r2, _080F63C0 @ =0x3FC68A28
	ldr r3, _080F63C4 @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _080F63C8 @ =0x3FD34413
	ldr r3, _080F63CC @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _080F63D0 @ =0x00000000
	ldr r3, _080F63D4 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _080F6364
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _080F6364
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_080F6364:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _080F638E
	ldr r1, _080F63D8 @ =__mprec_tens
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080F638A
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_080F638A:
	movs r0, #0
	str r0, [sp, #0x2c]
_080F638E:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _080F63DC
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _080F63E4
	.align 2, 0
_080F63A0: .4byte 0x41F00000
_080F63A4: .4byte 0x00000000
_080F63A8: .4byte 0xFE100000
_080F63AC: .4byte 0xFFFFFBCD
_080F63B0: .4byte 0x3FF80000
_080F63B4: .4byte 0x00000000
_080F63B8: .4byte 0x3FD287A7
_080F63BC: .4byte 0x636F4361
_080F63C0: .4byte 0x3FC68A28
_080F63C4: .4byte 0x8B60C8B3
_080F63C8: .4byte 0x3FD34413
_080F63CC: .4byte 0x509F79FB
_080F63D0: .4byte 0x00000000
_080F63D4: .4byte 0x00000000
_080F63D8: .4byte __mprec_tens
_080F63DC:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_080F63E4:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _080F63F8
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _080F6408
_080F63F8:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_080F6408:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _080F6412
	movs r0, #0
	str r0, [sp, #0xc]
_080F6412:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _080F6420
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_080F6420:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _080F649A
	lsls r0, r3, #2
	ldr r1, _080F6434 @ =_080F6438
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080F6434: .4byte _080F6438
_080F6438: @ jump table
	.4byte _080F6450 @ case 0
	.4byte _080F6450 @ case 1
	.4byte _080F6462 @ case 2
	.4byte _080F647E @ case 3
	.4byte _080F6466 @ case 4
	.4byte _080F6482 @ case 5
_080F6450:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _080F649A
_080F6462:
	movs r3, #0
	str r3, [sp, #0x30]
_080F6466:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _080F6470
	movs r1, #1
	str r1, [sp, #0xa4]
_080F6470:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _080F649A
_080F647E:
	movs r1, #0
	str r1, [sp, #0x30]
_080F6482:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _080F649A
	movs r3, #1
	mov r8, r3
_080F649A:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _080F64BA
	movs r1, #0
_080F64AA:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _080F64AA
	mov r3, sl
	str r1, [r3, #0x44]
_080F64BA:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _080F64D2
	b _080F6844
_080F64D2:
	cmp r5, #0
	bne _080F64D8
	b _080F6844
_080F64D8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _080F6568
	ldr r0, _080F6560 @ =__mprec_tens
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _080F6524
	ands r4, r2
	ldr r0, _080F6564 @ =__mprec_bigtens
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_080F6524:
	cmp r4, #0
	beq _080F654C
	ldr r5, _080F6564 @ =__mprec_bigtens
_080F652A:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080F6544
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_080F6544:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080F652A
_080F654C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _080F65B4
	.align 2, 0
_080F6560: .4byte __mprec_tens
_080F6564: .4byte __mprec_bigtens
_080F6568:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _080F65B4
	ldr r1, _080F665C @ =__mprec_tens
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _080F65B4
	ldr r5, _080F6660 @ =__mprec_bigtens
_080F6592:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080F65AC
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080F65AC:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _080F6592
_080F65B4:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _080F65F2
	ldr r2, _080F6664 @ =0x3FF00000
	ldr r3, _080F6668 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _080F65F2
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _080F65F2
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _080F65D8
	b _080F6830
_080F65D8:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _080F666C @ =0x40240000
	ldr r1, _080F6670 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_080F65F2:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _080F6674 @ =0x401C0000
	ldr r3, _080F6678 @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _080F667C @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _080F6688
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _080F6680 @ =0x40140000
	ldr r3, _080F6684 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _080F6640
	b _080F6BBA
_080F6640:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080F665A
	b _080F6BB2
_080F665A:
	b _080F6830
	.align 2, 0
_080F665C: .4byte __mprec_tens
_080F6660: .4byte __mprec_bigtens
_080F6664: .4byte 0x3FF00000
_080F6668: .4byte 0x00000000
_080F666C: .4byte 0x40240000
_080F6670: .4byte 0x00000000
_080F6674: .4byte 0x401C0000
_080F6678: .4byte 0x00000000
_080F667C: .4byte 0xFCC00000
_080F6680: .4byte 0x40140000
_080F6684: .4byte 0x00000000
_080F6688:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080F6758
	ldr r1, _080F66B8 @ =__mprec_tens
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _080F66BC @ =0x3FE00000
	ldr r1, _080F66C0 @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _080F66E4
	.align 2, 0
_080F66B8: .4byte __mprec_tens
_080F66BC: .4byte 0x3FE00000
_080F66C0: .4byte 0x00000000
_080F66C4:
	ldr r1, _080F674C @ =0x00000000
	ldr r0, _080F6748 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _080F674C @ =0x00000000
	ldr r0, _080F6748 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080F66E4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080F6720
	b _080F6E2A
_080F6720:
	ldr r0, _080F6750 @ =0x3FF00000
	ldr r1, _080F6754 @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _080F673A
	b _080F6944
_080F673A:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _080F66C4
	b _080F6830
	.align 2, 0
_080F6748: .4byte 0x40240000
_080F674C: .4byte 0x00000000
_080F6750: .4byte 0x3FF00000
_080F6754: .4byte 0x00000000
_080F6758:
	ldr r1, _080F6778 @ =__mprec_tens
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _080F6790
	.align 2, 0
_080F6778: .4byte __mprec_tens
_080F677C:
	movs r3, #1
	add r8, r3
	ldr r1, _080F6824 @ =0x00000000
	ldr r0, _080F6820 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080F6790:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _080F677C
	ldr r6, _080F6828 @ =0x3FE00000
	ldr r7, _080F682C @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _080F67E2
	b _080F6944
_080F67E2:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _080F6830
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080F680E
	b _080F696A
_080F680E:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _080F680E
	b _080F696A
	.align 2, 0
_080F6820: .4byte 0x40240000
_080F6824: .4byte 0x00000000
_080F6828: .4byte 0x3FE00000
_080F682C: .4byte 0x00000000
_080F6830:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_080F6844:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _080F684C
	b _080F6980
_080F684C:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _080F6854
	b _080F6980
_080F6854:
	ldr r1, _080F68A0 @ =__mprec_tens
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _080F68AC
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _080F68AC
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _080F687E
	b _080F6BB2
_080F687E:
	ldr r2, _080F68A4 @ =0x40140000
	ldr r3, _080F68A8 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _080F689C
	b _080F6BB2
_080F689C:
	b _080F6BBA
	.align 2, 0
_080F68A0: .4byte __mprec_tens
_080F68A4: .4byte 0x40140000
_080F68A8: .4byte 0x00000000
_080F68AC:
	movs r2, #1
	mov r8, r2
	b _080F68D0
_080F68B2:
	ldr r1, _080F6974 @ =0x00000000
	ldr r0, _080F6970 @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _080F6978 @ =0x00000000
	ldr r3, _080F697C @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _080F68CC
	b _080F6E2A
_080F68CC:
	movs r3, #1
	add r8, r3
_080F68D0:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _080F68B2
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _080F6944
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _080F693A
	b _080F6E2A
_080F693A:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _080F6944
	b _080F6E2A
_080F6944:
	movs r0, #0x30
_080F6946:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _080F6962
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _080F6946
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_080F6962:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080F696A:
	movs r0, #1
	add sb, r0
	b _080F6E2A
	.align 2, 0
_080F6970: .4byte 0x40240000
_080F6974: .4byte 0x00000000
_080F6978: .4byte 0x00000000
_080F697C: .4byte 0x00000000
_080F6980:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080F69F6
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _080F69B4
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _080F69AC
	ldr r3, _080F69A8 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _080F69E0
	.align 2, 0
_080F69A8: .4byte 0x00000433
_080F69AC:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _080F69DE
_080F69B4:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _080F69C2
	subs r6, r0, r4
	b _080F69D2
_080F69C2:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_080F69D2:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _080F69E0
	subs r5, r5, r3
	movs r0, #0
_080F69DE:
	mov r8, r0
_080F69E0:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_080F69F6:
	cmp r5, #0
	ble _080F6A18
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _080F6A18
	mov r8, r3
	cmp r8, r5
	ble _080F6A08
	mov r8, r5
_080F6A08:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_080F6A18:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _080F6A66
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _080F6A5A
	cmp r6, #0
	ble _080F6A4A
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_080F6A4A:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _080F6A66
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _080F6A60
_080F6A5A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_080F6A60:
	bl _pow5mult
	str r0, [sp, #0x5c]
_080F6A66:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _080F6A80
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_080F6A80:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _080F6ABC
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _080F6AB8
	ldr r0, _080F6AB0 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _080F6AB8
	ldr r0, _080F6AB4 @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _080F6AB8
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _080F6ABC
	.align 2, 0
_080F6AB0: .4byte 0x000FFFFF
_080F6AB4: .4byte 0x7FF00000
_080F6AB8:
	movs r0, #0
	str r0, [sp, #0x3c]
_080F6ABC:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080F6AE8
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _080F6AF6
_080F6AE8:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_080F6AF6:
	mov r2, r8
	cmp r2, #0
	beq _080F6B02
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_080F6B02:
	mov r3, r8
	cmp r3, #4
	ble _080F6B0E
	movs r0, #4
	rsbs r0, r0, #0
	b _080F6B16
_080F6B0E:
	mov r3, r8
	cmp r3, #3
	bgt _080F6B26
	movs r0, #0x1c
_080F6B16:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_080F6B26:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _080F6B38
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_080F6B38:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _080F6B4A
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_080F6B4A:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _080F6B88
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _080F6B88
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _080F6B84
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080F6B84:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_080F6B88:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _080F6BCC
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _080F6BCC
	cmp r1, #0
	blt _080F6BB2
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _080F6BBA
_080F6BB2:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _080F6E02
_080F6BBA:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _080F6E02
_080F6BCC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _080F6BD4
	b _080F6D4A
_080F6BD4:
	cmp r5, #0
	ble _080F6BE4
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_080F6BE4:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _080F6C16
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_080F6C16:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _080F6C6C
_080F6C24:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _080F6C4C
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _080F6C68
_080F6C4C:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_080F6C68:
	movs r1, #1
	add r8, r1
_080F6C6C:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080F6CA0
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _080F6CA2
_080F6CA0:
	movs r6, #1
_080F6CA2:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _080F6CCE
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080F6CCE
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080F6CCE
	cmp r7, #0x39
	beq _080F6D20
	cmp r4, #0
	ble _080F6CC4
	adds r7, #1
_080F6CC4:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _080F6E02
_080F6CCE:
	cmp r4, #0
	blt _080F6CE2
	cmp r4, #0
	bne _080F6D18
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080F6D18
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _080F6D18
_080F6CE2:
	cmp r6, #0
	ble _080F6D12
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _080F6D0C
	cmp r6, #0
	bne _080F6D12
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080F6D12
_080F6D0C:
	adds r7, #1
	cmp r7, #0x3a
	beq _080F6D20
_080F6D12:
	mov r2, sb
	strb r7, [r2]
	b _080F6DCA
_080F6D18:
	cmp r6, #0
	ble _080F6D38
	cmp r7, #0x39
	bne _080F6D2C
_080F6D20:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _080F6DA0
_080F6D2C:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _080F6E02
_080F6D38:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _080F6D48
	b _080F6C24
_080F6D48:
	b _080F6D7C
_080F6D4A:
	movs r0, #1
	mov r8, r0
	b _080F6D62
_080F6D50:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_080F6D62:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _080F6D50
_080F6D7C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _080F6DA0
	cmp r4, #0
	bne _080F6DE2
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080F6DE2
_080F6DA0:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _080F6DC2
_080F6DAE:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _080F6DD0
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _080F6DAE
_080F6DC2:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080F6DCA:
	movs r3, #1
	add sb, r3
	b _080F6E02
_080F6DD0:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _080F6E02
_080F6DE2:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _080F6DFE
_080F6DF0:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _080F6DF0
_080F6DFE:
	movs r2, #1
	add sb, r2
_080F6E02:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _080F6E2A
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080F6E22
	cmp r0, r3
	beq _080F6E22
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_080F6E22:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_080F6E2A:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080F6E48
	str r1, [r3]
_080F6E48:
	ldr r0, [sp, #0x74]
_080F6E4A:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start fflush
fflush: @ 0x080F6E58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _080F6E74
	ldr r0, _080F6E6C @ =_impure_ptr
	ldr r0, [r0]
	ldr r1, _080F6E70 @ =fflush
	bl _fwalk
	b _080F6EEA
	.align 2, 0
_080F6E6C: .4byte _impure_ptr
_080F6E70: .4byte fflush
_080F6E74:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _080F6E80
	ldr r0, _080F6EB4 @ =_impure_ptr
	ldr r0, [r0]
	str r0, [r4, #0x54]
_080F6E80:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _080F6E8E
	adds r0, r1, #0
	bl __sinit
_080F6E8E:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080F6EE8
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _080F6EE8
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080F6EC6
	ldr r0, [r4, #0x14]
	b _080F6EC8
	.align 2, 0
_080F6EB4: .4byte _impure_ptr
_080F6EB8:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _080F6EEA
_080F6EC6:
	movs r0, #0
_080F6EC8:
	str r0, [r4, #8]
	cmp r5, #0
	ble _080F6EE8
_080F6ECE:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _080F6EB8
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _080F6ECE
_080F6EE8:
	movs r0, #0
_080F6EEA:
	pop {r4, r5, r6, pc}

	thumb_func_start std
std: @ 0x080F6EEC
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _080F6F14 @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _080F6F18 @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _080F6F1C @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _080F6F20 @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_080F6F14: .4byte __sread
_080F6F18: .4byte __swrite
_080F6F1C: .4byte __sseek
_080F6F20: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x080F6F24
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _080F6F50
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _080F6F52
_080F6F50:
	movs r0, #0
_080F6F52:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x080F6F54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _080F6F64
	adds r0, r5, #0
	bl __sinit
_080F6F64:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _080F6F6E
_080F6F6C:
	ldr r4, [r4]
_080F6F6E:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _080F6F7E
_080F6F74:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _080F6FA0
	adds r2, #0x58
_080F6F7E:
	subs r0, #1
	cmp r0, #0
	bge _080F6F74
	ldr r0, [r4]
	cmp r0, #0
	bne _080F6F6C
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _080F6F6C
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _080F6FC0
_080F6FA0:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _080F6FC4 @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_080F6FC0:
	pop {r4, r5, pc}
	.align 2, 0
_080F6FC4: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x080F6FC8
	push {lr}
	ldr r1, _080F6FD4 @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_080F6FD4: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x080F6FD8
	push {lr}
	ldr r0, _080F6FE4 @ =_impure_ptr
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_080F6FE4: .4byte _impure_ptr

	thumb_func_start __sinit
__sinit: @ 0x080F6FE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080F7044 @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080F7044: .4byte _cleanup_r

	thumb_func_start _free_r
_free_r: @ 0x080F7048
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _080F705A
	b _080F71FE
_080F705A:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _080F70BC @ =__malloc_av_
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _080F70C8
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _080F7096
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080F7096:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _080F70C0 @ =__malloc_trim_threshold
	ldr r0, [r0]
	cmp r6, r0
	blo _080F70B2
	ldr r0, _080F70C4 @ =__malloc_top_pad
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_080F70B2:
	mov r0, sb
	bl __malloc_unlock
	b _080F71FE
	.align 2, 0
_080F70BC: .4byte __malloc_av_
_080F70C0: .4byte __malloc_trim_threshold
_080F70C4: .4byte __malloc_top_pad
_080F70C8:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080F70F4
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _080F70EC
	movs r2, #1
	mov r8, r2
	b _080F70F4
_080F70EC:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080F70F4:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080F712C
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _080F7124
	ldr r0, _080F7120 @ =gUnknown_08B2B6CC
	cmp r1, r0
	bne _080F7124
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _080F712C
	.align 2, 0
_080F7120: .4byte gUnknown_08B2B6CC
_080F7124:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_080F712C:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _080F71F8
	ldr r0, _080F715C @ =0x000001FF
	cmp r6, r0
	bhi _080F7164
	lsrs r4, r6, #3
	ldr r2, _080F7160 @ =__malloc_av_
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _080F71F0
	.align 2, 0
_080F715C: .4byte 0x000001FF
_080F7160: .4byte __malloc_av_
_080F7164:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _080F716E
	lsrs r4, r6, #3
	b _080F71B6
_080F716E:
	cmp r1, #4
	bhi _080F717A
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _080F71B6
_080F717A:
	cmp r1, #0x14
	bhi _080F7184
	adds r4, r1, #0
	adds r4, #0x5b
	b _080F71B6
_080F7184:
	cmp r1, #0x54
	bhi _080F7190
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _080F71B6
_080F7190:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080F71A0
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _080F71B6
_080F71A0:
	ldr r0, _080F71B0 @ =0x00000554
	cmp r1, r0
	bhi _080F71B4
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _080F71B6
	.align 2, 0
_080F71B0: .4byte 0x00000554
_080F71B4:
	movs r4, #0x7e
_080F71B6:
	lsls r0, r4, #3
	ldr r7, _080F71D4 @ =__malloc_av_
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _080F71D8
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080F71F0
	.align 2, 0
_080F71D4: .4byte __malloc_av_
_080F71D8:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _080F71E8
_080F71E0:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _080F71EE
	ldr r0, [r2, #4]
_080F71E8:
	ands r0, r1
	cmp r6, r0
	blo _080F71E0
_080F71EE:
	ldr r3, [r2, #0xc]
_080F71F0:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_080F71F8:
	mov r0, sb
	bl __malloc_unlock
_080F71FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x080F7208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _080F7290 @ =__malloc_av_
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _080F7294 @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _080F7286
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _080F7286
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080F72A0
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _080F7286
	ldr r1, _080F7298 @ =__malloc_current_mallinfo
	ldr r0, _080F729C @ =__malloc_sbrk_base
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_080F7286:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _080F72BC
	.align 2, 0
_080F7290: .4byte __malloc_av_
_080F7294: .4byte 0x00000FEF
_080F7298: .4byte __malloc_current_mallinfo
_080F729C: .4byte __malloc_sbrk_base
_080F72A0:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _080F72C4 @ =__malloc_current_mallinfo
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_080F72BC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F72C4: .4byte __malloc_current_mallinfo

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x080F72C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _080F72E0
	b _080F74D6
_080F72E0:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080F72F0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080F72FC
_080F72F0:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _080F72FC
	b _080F74E2
_080F72FC:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F7350
_080F730E:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _080F7324
_080F7316:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080F7316
_080F7324:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _080F7330
	adds r2, r1, #0
_080F7330:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _080F733E
	b _080F74DA
_080F733E:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080F730E
	b _080F74D6
_080F7350:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F740A
_080F7358:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _080F7370
_080F7362:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080F7362
_080F7370:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080F739E
	cmp r6, r4
	bhs _080F7384
	adds r4, r6, #0
_080F7384:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _080F73F8
_080F739E:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _080F73C6
	cmp r6, r4
	bls _080F73C6
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _080F73C4
	b _080F74DA
_080F73C4:
	b _080F73F8
_080F73C6:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _080F73E0
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080F74DA
	b _080F73F8
_080F73E0:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080F73F8:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _080F7358
	b _080F74D6
_080F740A:
	movs r2, #0
	str r2, [sp]
_080F740E:
	cmp r6, #0
	bne _080F7424
	movs r0, #0
	str r0, [sp]
_080F7416:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _080F7416
_080F7424:
	ldr r0, [sp]
	cmp r0, #0
	bne _080F7448
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _080F7440
	subs r0, r7, #1
	subs r1, r1, r0
	b _080F7442
_080F7440:
	adds r1, r6, #1
_080F7442:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_080F7448:
	mov r2, sb
	cmp sb, r6
	bls _080F7450
	adds r2, r6, #0
_080F7450:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _080F747E
	cmp r2, r4
	ble _080F747E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080F74DA
	b _080F74AE
_080F747E:
	adds r4, r1, #0
	cmp r2, r4
	blt _080F7498
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _080F74DA
	b _080F74AE
_080F7498:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_080F74AE:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _080F74C6
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _080F74DA
	movs r1, #0
	str r1, [sp]
_080F74C6:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _080F740E
_080F74D6:
	movs r0, #0
	b _080F74E6
_080F74DA:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_080F74E2:
	movs r0, #1
	rsbs r0, r0, #0
_080F74E6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _fwalk
_fwalk: @ 0x080F74F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _080F752C
_080F7508:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _080F7520
_080F750E:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080F751E
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_080F751E:
	adds r5, #0x58
_080F7520:
	subs r4, #1
	cmp r4, #0
	bge _080F750E
	ldr r6, [r6]
	cmp r6, #0
	bne _080F7508
_080F752C:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x080F7534
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _080F7568
	ldr r1, _080F755C @ =gUnknown_082B7800
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080F7564
	ldr r1, _080F7560 @ =gUnknown_082B77F8
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _080F7564
	movs r0, #0
	b _080F756A
	.align 2, 0
_080F755C: .4byte gUnknown_082B7800
_080F7560: .4byte gUnknown_082B77F8
_080F7564:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_080F7568:
	ldr r0, _080F756C @ =gUnknown_082B7800
_080F756A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080F756C: .4byte gUnknown_082B7800

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x080F7570
	ldr r0, _080F7574 @ =lconv
	bx lr
	.align 2, 0
_080F7574: .4byte lconv

	thumb_func_start setlocale
setlocale: @ 0x080F7578
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080F758C @ =_impure_ptr
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_080F758C: .4byte _impure_ptr

	thumb_func_start localeconv
localeconv: @ 0x080F7590
	push {lr}
	ldr r0, _080F759C @ =_impure_ptr
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_080F759C: .4byte _impure_ptr

	thumb_func_start __smakebuf
__smakebuf: @ 0x080F75A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _080F7636
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _080F75C8
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _080F75DA
_080F75C8:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _080F761E
_080F75DA:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _080F75EE
	movs r7, #1
_080F75EE:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080F7614
	ldr r1, [r4, #0x28]
	ldr r0, _080F7610 @ =__sseek
	cmp r1, r0
	bne _080F7614
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _080F7620
	.align 2, 0
_080F7610: .4byte __sseek
_080F7614:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_080F761E:
	strh r0, [r4, #0xc]
_080F7620:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _080F7644
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_080F7636:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _080F7672
_080F7644:
	ldr r1, [r4, #0x54]
	ldr r0, _080F7678 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _080F7672
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _080F7672
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080F7672:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F7678: .4byte _cleanup_r

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x080F767C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _080F76F0 @ =__malloc_av_
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _080F76F4 @ =__malloc_top_pad
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _080F76F8 @ =__malloc_sbrk_base
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _080F76BE
	ldr r3, _080F76FC @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _080F7700 @ =0xFFFFF000
	ands r6, r0
_080F76BE:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _080F77C0
	cmp r5, r4
	bhs _080F76D6
	ldr r0, _080F76F0 @ =__malloc_av_
	cmp r8, r0
	bne _080F77C0
_080F76D6:
	ldr r1, _080F7704 @ =__malloc_current_mallinfo
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _080F7708
	adds r2, r6, r7
	ldr r3, _080F76F0 @ =__malloc_av_
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _080F77A8
	.align 2, 0
_080F76F0: .4byte __malloc_av_
_080F76F4: .4byte __malloc_top_pad
_080F76F8: .4byte __malloc_sbrk_base
_080F76FC: .4byte 0x0000100F
_080F7700: .4byte 0xFFFFF000
_080F7704: .4byte __malloc_current_mallinfo
_080F7708:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _080F7714
	str r5, [r3]
	b _080F771A
_080F7714:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_080F771A:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _080F772E
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _080F7730
_080F772E:
	movs r4, #0
_080F7730:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080F77C0
	ldr r1, _080F7778 @ =__malloc_current_mallinfo
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _080F777C @ =__malloc_av_
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _080F77A8
	cmp r7, #0xf
	bhi _080F7780
	str r3, [r5, #4]
	b _080F77C0
	.align 2, 0
_080F7778: .4byte __malloc_current_mallinfo
_080F777C: .4byte __malloc_av_
_080F7780:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _080F77A8
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_080F77A8:
	ldr r0, _080F77CC @ =__malloc_current_mallinfo
	ldr r2, _080F77D0 @ =gUnknown_08B2BAD8
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _080F77B6
	str r1, [r2]
_080F77B6:
	ldr r2, _080F77D4 @ =gUnknown_08B2BADC
	ldr r0, [r2]
	cmp r1, r0
	bls _080F77C0
	str r1, [r2]
_080F77C0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F77CC: .4byte __malloc_current_mallinfo
_080F77D0: .4byte gUnknown_08B2BAD8
_080F77D4: .4byte gUnknown_08B2BADC

	thumb_func_start _malloc_r
_malloc_r: @ 0x080F77D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _080F77FA
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _080F77FE
_080F77FA:
	movs r3, #0x10
	mov r8, r3
_080F77FE:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _080F7844 @ =0x000001F7
	cmp r8, r0
	bhi _080F7852
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _080F7848 @ =__malloc_av_
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _080F7826
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _080F784C
_080F7826:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080F7B7E
	.align 2, 0
_080F7844: .4byte 0x000001F7
_080F7848: .4byte __malloc_av_
_080F784C:
	movs r0, #2
	add ip, r0
	b _080F78FE
_080F7852:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _080F785E
	lsrs r2, r2, #3
	b _080F78AE
_080F785E:
	cmp r1, #4
	bhi _080F786C
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _080F78B0
_080F786C:
	cmp r1, #0x14
	bhi _080F7876
	adds r1, #0x5b
	mov ip, r1
	b _080F78B0
_080F7876:
	cmp r1, #0x54
	bhi _080F7884
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _080F78B0
_080F7884:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080F7896
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _080F78B0
_080F7896:
	ldr r0, _080F78A8 @ =0x00000554
	cmp r1, r0
	bhi _080F78AC
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _080F78B0
	.align 2, 0
_080F78A8: .4byte 0x00000554
_080F78AC:
	movs r2, #0x7e
_080F78AE:
	mov ip, r2
_080F78B0:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _080F78D4 @ =__malloc_av_
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080F78FA
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080F78D8
	adds r0, #3
	add ip, r0
	b _080F78FA
	.align 2, 0
_080F78D4: .4byte __malloc_av_
_080F78D8:
	cmp r3, #0
	blt _080F78DE
	b _080F7B18
_080F78DE:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _080F78FA
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _080F78D8
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_080F78FA:
	movs r4, #1
	add ip, r4
_080F78FE:
	ldr r0, _080F793C @ =gUnknown_08B2B6CC
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _080F790A
	b _080F7A0C
_080F790A:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _080F7940
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080F7B7E
	.align 2, 0
_080F793C: .4byte gUnknown_08B2B6CC
_080F7940:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _080F7956
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080F7B7E
_080F7956:
	ldr r0, _080F7978 @ =0x000001FF
	cmp r1, r0
	bhi _080F797C
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _080F7A04
	.align 2, 0
_080F7978: .4byte 0x000001FF
_080F797C:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _080F7986
	lsrs r2, r1, #3
	b _080F79CA
_080F7986:
	cmp r2, #4
	bhi _080F7992
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _080F79CA
_080F7992:
	cmp r2, #0x14
	bhi _080F799A
	adds r2, #0x5b
	b _080F79CA
_080F799A:
	cmp r2, #0x54
	bhi _080F79A6
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _080F79CA
_080F79A6:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _080F79B6
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _080F79CA
_080F79B6:
	ldr r0, _080F79C4 @ =0x00000554
	cmp r2, r0
	bhi _080F79C8
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _080F79CA
	.align 2, 0
_080F79C4: .4byte 0x00000554
_080F79C8:
	movs r2, #0x7e
_080F79CA:
	lsls r0, r2, #3
	ldr r3, _080F79E8 @ =__malloc_av_
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _080F79EC
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _080F79E8 @ =__malloc_av_
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _080F7A04
	.align 2, 0
_080F79E8: .4byte __malloc_av_
_080F79EC:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _080F79FC
_080F79F4:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _080F7A02
	ldr r0, [r4, #4]
_080F79FC:
	ands r0, r2
	cmp r1, r0
	blo _080F79F4
_080F7A02:
	ldr r6, [r4, #0xc]
_080F7A04:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_080F7A0C:
	mov r0, ip
	cmp r0, #0
	bge _080F7A14
	adds r0, #3
_080F7A14:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _080F7A38 @ =__malloc_av_
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _080F7AD6
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080F7A4A
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _080F7A40
	.align 2, 0
_080F7A38: .4byte __malloc_av_
_080F7A3C:
	movs r3, #4
	add ip, r3
_080F7A40:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F7A3C
_080F7A4A:
	ldr r4, _080F7AC8 @ =__malloc_av_
	mov sb, r4
_080F7A4E:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_080F7A5C:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _080F7A7C
	movs r0, #4
	rsbs r0, r0, #0
_080F7A66:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _080F7B2C
	cmp r3, #0
	bge _080F7B54
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _080F7A66
_080F7A7C:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080F7A5C
_080F7A8C:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _080F7ACC
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _080F7A8C
_080F7AA2:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _080F7AD6
	cmp r6, #0
	beq _080F7AD6
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080F7A4E
_080F7AB8:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080F7AB8
	b _080F7A4E
	.align 2, 0
_080F7AC8: .4byte __malloc_av_
_080F7ACC:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _080F7AA2
_080F7AD6:
	ldr r2, _080F7B14 @ =__malloc_av_
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _080F7AEE
	cmp r3, #0xf
	bgt _080F7B68
_080F7AEE:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _080F7B14 @ =__malloc_av_
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _080F7B0A
	cmp r3, #0xf
	bgt _080F7B68
_080F7B0A:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _080F7B88
	.align 2, 0
_080F7B14: .4byte __malloc_av_
_080F7B18:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _080F7B7E
_080F7B2C:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _080F7B7E
_080F7B54:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _080F7B7E
_080F7B68:
	ldr r2, _080F7B94 @ =__malloc_av_
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_080F7B7E:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_080F7B88:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F7B94: .4byte __malloc_av_

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x080F7B98
	sub sp, #4
	cmp r1, #0
	bne _080F7BA0
	mov r1, sp
_080F7BA0:
	cmp r2, #0
	beq _080F7BBC
	cmp r3, #0
	bne _080F7BAE
	movs r0, #1
	rsbs r0, r0, #0
	b _080F7BBE
_080F7BAE:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080F7BBC
	movs r0, #1
	b _080F7BBE
_080F7BBC:
	movs r0, #0
_080F7BBE:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start memchr
memchr: @ 0x080F7BC4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _080F7C38
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080F7C38
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_080F7BE0:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _080F7BE0
	cmp r2, #3
	bls _080F7C1E
	ldr r0, _080F7C24 @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _080F7C28 @ =0x80808080
_080F7BF4:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _080F7C16
	adds r1, r4, #0
	movs r3, #0
_080F7C08:
	ldrb r0, [r1]
	cmp r0, r5
	beq _080F7C32
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _080F7C08
_080F7C16:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _080F7BF4
_080F7C1E:
	adds r1, r4, #0
	b _080F7C38
	.align 2, 0
_080F7C24: .4byte 0xFEFEFEFF
_080F7C28: .4byte 0x80808080
_080F7C2C:
	ldrb r0, [r1]
	cmp r0, r5
	bne _080F7C36
_080F7C32:
	adds r0, r1, #0
	b _080F7C42
_080F7C36:
	adds r1, #1
_080F7C38:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _080F7C2C
	movs r0, #0
_080F7C42:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start memmove
memmove: @ 0x080F7C44
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _080F7C76
	adds r0, r3, r2
	cmp r5, r0
	bhs _080F7C76
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080F7CC8
	adds r1, r0, #0
_080F7C66:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _080F7C66
	b _080F7CC8
_080F7C76:
	cmp r2, #0xf
	bls _080F7CAE
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080F7CAE
	adds r1, r3, #0
_080F7C88:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _080F7C88
	cmp r2, #3
	bls _080F7CAC
_080F7CA2:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _080F7CA2
_080F7CAC:
	adds r3, r1, #0
_080F7CAE:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080F7CC8
	adds r1, r0, #0
_080F7CBA:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _080F7CBA
_080F7CC8:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x080F7CCC
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x080F7CD0
	bx lr
	.align 2, 0

	thumb_func_start _Balloc
_Balloc: @ 0x080F7CD4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _080F7CF0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _080F7D18
_080F7CF0:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _080F7D02
	ldr r0, [r1]
	str r0, [r2]
	b _080F7D20
_080F7D02:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _080F7D1C
_080F7D18:
	movs r0, #0
	b _080F7D28
_080F7D1C:
	str r6, [r1, #4]
	str r5, [r1, #8]
_080F7D20:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_080F7D28:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x080F7D2C
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _080F7D42
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_080F7D42:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x080F7D44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _080F7DD8 @ =0x0000FFFF
	mov ip, r0
_080F7D60:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _080F7D60
	mov r2, r8
	cmp r2, #0
	beq _080F7DCE
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _080F7DBE
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_080F7DBE:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_080F7DCE:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F7DD8: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x080F7DDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _080F7E04
_080F7DFC:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _080F7DFC
_080F7E04:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _080F7E36
	adds r4, #9
_080F7E1C:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _080F7E1C
	adds r4, #1
	b _080F7E38
_080F7E36:
	adds r4, #0xa
_080F7E38:
	cmp r5, r8
	bge _080F7E56
	mov r0, r8
	subs r5, r0, r5
_080F7E40:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _080F7E40
_080F7E56:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x080F7E60
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080F7EB0 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _080F7E70
	movs r2, #0x10
	lsls r1, r1, #0x10
_080F7E70:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080F7E7E
	adds r2, #8
	lsls r1, r1, #8
_080F7E7E:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080F7E8C
	adds r2, #4
	lsls r1, r1, #4
_080F7E8C:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _080F7E9A
	adds r2, #2
	lsls r1, r1, #2
_080F7E9A:
	cmp r1, #0
	blt _080F7EB4
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _080F7EB4
	movs r0, #0x20
	b _080F7EB6
	.align 2, 0
_080F7EB0: .4byte 0xFFFF0000
_080F7EB4:
	adds r0, r2, #0
_080F7EB6:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x080F7EB8
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080F7EE8
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080F7ED0
	movs r0, #0
	b _080F7F38
_080F7ED0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080F7EE0
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _080F7F38
_080F7EE0:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _080F7F38
_080F7EE8:
	movs r2, #0
	ldr r0, _080F7F30 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _080F7EF6
	movs r2, #0x10
	lsrs r1, r1, #0x10
_080F7EF6:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _080F7F02
	adds r2, #8
	lsrs r1, r1, #8
_080F7F02:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080F7F0E
	adds r2, #4
	lsrs r1, r1, #4
_080F7F0E:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080F7F1A
	adds r2, #2
	lsrs r1, r1, #2
_080F7F1A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080F7F34
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _080F7F34
	movs r0, #0x20
	b _080F7F38
	.align 2, 0
_080F7F30: .4byte 0x0000FFFF
_080F7F34:
	str r1, [r3]
	adds r0, r2, #0
_080F7F38:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x080F7F3C
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x080F7F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _080F7F70
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_080F7F70:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080F7F86
	adds r1, #1
_080F7F86:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _080F7FBA
	movs r0, #0
_080F7FB2:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080F7FB2
_080F7FBA:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080F8082
_080F7FD4:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080F8090 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _080F802C
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_080F7FF2:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080F7FF2
	str r0, [r5]
_080F802C:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _080F8074
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080F8090 @ =0x0000FFFF
_080F8040:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _080F8040
	str r2, [r5]
_080F8074:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _080F7FD4
_080F8082:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080F80A6
	b _080F809E
	.align 2, 0
_080F8090: .4byte 0x0000FFFF
_080F8094:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080F80A6
_080F809E:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080F8094
_080F80A6:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x080F80BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _080F80E6
	ldr r0, _080F8108 @ =gUnknown_082B7804
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_080F80E6:
	asrs r6, r6, #2
	cmp r6, #0
	beq _080F814C
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _080F8128
	ldr r1, _080F810C @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _080F8128
	.align 2, 0
_080F8108: .4byte gUnknown_082B7804
_080F810C: .4byte 0x00000271
_080F8110:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _080F8126
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_080F8126:
	adds r5, r0, #0
_080F8128:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080F8146
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_080F8146:
	asrs r6, r6, #1
	cmp r6, #0
	bne _080F8110
_080F814C:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x080F8154
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080F817E
_080F8176:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080F8176
_080F817E:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080F819E
	movs r1, #0
	adds r2, r6, #0
_080F8196:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080F8196
_080F819E:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _080F81D0
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080F81B6:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080F81B6
	str r2, [r4]
	cmp r2, #0
	beq _080F81D8
	adds r7, #1
	b _080F81D8
_080F81D0:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _080F81D0
_080F81D8:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x080F81F4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _080F8230
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_080F8212:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _080F822A
	movs r1, #1
	cmp r0, r2
	bhs _080F8226
	subs r1, #2
_080F8226:
	adds r0, r1, #0
	b _080F8230
_080F822A:
	cmp r3, r4
	bhi _080F8212
	movs r0, #0
_080F8230:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x080F8234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _080F8266
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _080F8316
_080F8266:
	cmp r4, #0
	bge _080F8274
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080F8276
_080F8274:
	movs r4, #0
_080F8276:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _080F8300 @ =0x0000FFFF
	mov r8, r0
_080F82AA:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080F82AA
	cmp r6, sl
	bhs _080F830A
	ldr r2, _080F8300 @ =0x0000FFFF
_080F82E4:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _080F82E4
	b _080F830A
	.align 2, 0
_080F8300: .4byte 0x0000FFFF
_080F8304:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_080F830A:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8304
	mov r1, sb
	str r1, [r7, #0x10]
_080F8316:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x080F8324
	push {r4, lr}
	ldr r2, _080F8338 @ =0x7FF00000
	ands r2, r0
	ldr r0, _080F833C @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _080F8340
	adds r3, r2, #0
	movs r4, #0
	b _080F836A
	.align 2, 0
_080F8338: .4byte 0x7FF00000
_080F833C: .4byte 0xFCC00000
_080F8340:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _080F8354
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080F836A
_080F8354:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080F8366
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080F8368
_080F8366:
	movs r1, #1
_080F8368:
	adds r4, r1, #0
_080F836A:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080F8370
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _080F83D0
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _080F83B8 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _080F83BC
	subs r5, #4
	ldr r1, [r5]
	b _080F83BE
	.align 2, 0
_080F83B8: .4byte 0x3FF00000
_080F83BC:
	movs r1, #0
_080F83BE:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _080F841C
_080F83D0:
	cmp r5, r8
	bls _080F83DA
	subs r5, #4
	ldr r4, [r5]
	b _080F83DC
_080F83DA:
	movs r4, #0
_080F83DC:
	subs r3, #0xb
	cmp r3, #0
	beq _080F8414
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _080F8400 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _080F8404
	subs r5, #4
	ldr r2, [r5]
	b _080F8406
	.align 2, 0
_080F8400: .4byte 0x3FF00000
_080F8404:
	movs r2, #0
_080F8406:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _080F841C
_080F8414:
	ldr r0, _080F8428 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_080F841C:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F8428: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x080F842C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080F8494 @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080F8498 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080F846A
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080F846A:
	str r5, [sp]
	cmp r5, #0
	beq _080F84B4
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _080F849C
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080F84A0
	.align 2, 0
_080F8494: .4byte 0x000FFFFF
_080F8498: .4byte 0x7FFFFFFF
_080F849C:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080F84A0:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080F84AE
	movs r1, #2
_080F84AE:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _080F84C8
_080F84B4:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_080F84C8:
	cmp r7, #0
	beq _080F84E4
	ldr r3, _080F84E0 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _080F8500
	.align 2, 0
_080F84E0: .4byte 0xFFFFFBCD
_080F84E4:
	ldr r1, _080F8510 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_080F8500:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F8510: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x080F8514
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _080F8550
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _080F8554
_080F8550:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_080F8554:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080F8564
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080F8580 @ =0x00000000
	ldr r0, _080F857C @ =0x3FF00000
	cmp r4, #0x17
	bgt _080F8588
	ldr r0, _080F8584 @ =__mprec_tens
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080F859A
	.align 2, 0
_080F857C: .4byte 0x3FF00000
_080F8580: .4byte 0x00000000
_080F8584: .4byte __mprec_tens
_080F8588:
	cmp r4, #0
	ble _080F859A
_080F858C:
	ldr r3, _080F85A0 @ =0x00000000
	ldr r2, _080F859C @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _080F858C
_080F859A:
	pop {r4, pc}
	.align 2, 0
_080F859C: .4byte 0x40240000
_080F85A0: .4byte 0x00000000

	thumb_func_start isinf
isinf: @ 0x080F85A4
	ldr r3, _080F85C0 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080F85C4 @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_080F85C0: .4byte 0x7FFFFFFF
_080F85C4: .4byte 0x7FF00000

	thumb_func_start isnan
isnan: @ 0x080F85C8
	ldr r3, _080F85E0 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _080F85E4 @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080F85E0: .4byte 0x7FFFFFFF
_080F85E4: .4byte 0x7FF00000

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x080F85E8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080F8610 @ =errno
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F860A
	ldr r0, [r4]
	cmp r0, #0
	beq _080F860A
	str r0, [r5]
_080F860A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8610: .4byte errno

	thumb_func_start __sread
__sread: @ 0x080F8614
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _read_r
	adds r1, r0, #0
	cmp r1, #0
	blt _080F8636
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _080F863E
_080F8636:
	ldr r0, _080F8644 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_080F863E:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8644: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x080F8648
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080F866A
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_080F866A:
	ldr r0, _080F8684 @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_080F8684: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x080F8688
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F86B4
	ldr r0, _080F86B0 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _080F86C2
	.align 2, 0
_080F86B0: .4byte 0xFFFFEFFF
_080F86B4:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_080F86C2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x080F86C8
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

	thumb_func_start strcmp
strcmp: @ 0x080F86D8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080F871E
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _080F871E
	ldr r5, _080F8704 @ =0xFEFEFEFF
	ldr r4, _080F8708 @ =0x80808080
_080F86F4:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _080F870C
	movs r0, #0
	b _080F8730
	.align 2, 0
_080F8704: .4byte 0xFEFEFEFF
_080F8708: .4byte 0x80808080
_080F870C:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _080F86F4
	b _080F871E
_080F871A:
	adds r2, #1
	adds r3, #1
_080F871E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _080F872A
	ldrb r1, [r3]
	cmp r0, r1
	beq _080F871A
_080F872A:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_080F8730:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start findslot
findslot: @ 0x080F8734
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _080F873C @ =openfiles
	b _080F8748
	.align 2, 0
_080F873C: .4byte openfiles
_080F8740:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _080F874E
_080F8748:
	ldr r0, [r2]
	cmp r0, r3
	bne _080F8740
_080F874E:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle
remap_handle: @ 0x080F8754
	adds r2, r0, #0
	ldr r0, _080F8768 @ =_impure_ptr
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080F8770
	ldr r0, _080F876C @ =monitor_stdin
	b _080F8796
	.align 2, 0
_080F8768: .4byte _impure_ptr
_080F876C: .4byte monitor_stdin
_080F8770:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080F8784
	ldr r0, _080F8780 @ =monitor_stdout
	b _080F8796
	.align 2, 0
_080F8780: .4byte monitor_stdout
_080F8784:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _080F8794
	adds r0, r2, #0
	subs r0, #0x20
	b _080F8798
_080F8794:
	ldr r0, _080F879C @ =monitor_stderr
_080F8796:
	ldr r0, [r0]
_080F8798:
	bx lr
	.align 2, 0
_080F879C: .4byte monitor_stderr

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x080F87A0
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _080F87FC @ =gUnknown_082B7928
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _080F8800 @ =monitor_stdin
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _080F8804 @ =monitor_stdout
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _080F8808 @ =monitor_stderr
	str r2, [r0]
	str r2, [r3]
	ldr r2, _080F880C @ =openfiles
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_080F87E2:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _080F87E2
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_080F87FC: .4byte gUnknown_082B7928
_080F8800: .4byte monitor_stdin
_080F8804: .4byte monitor_stdout
_080F8808: .4byte monitor_stderr
_080F880C: .4byte openfiles

	thumb_func_start get_errno
get_errno: @ 0x080F8810
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error
error: @ 0x080F8824
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap
wrap: @ 0x080F8838
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080F8848
	adds r0, r1, #0
	b _080F884E
_080F8848:
	adds r0, r1, #0
	bl error
_080F884E:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x080F8850
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x080F8874
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle
	bl findslot
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _080F889E
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _080F88B4
_080F889E:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _080F88B2
	ldr r0, _080F88B8 @ =openfiles
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080F88B2:
	adds r0, r2, #0
_080F88B4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F88B8: .4byte openfiles

	thumb_func_start _swilseek
_swilseek: @ 0x080F88BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle
	adds r7, r0, #0
	bl findslot
	adds r6, r0, #0
	cmp r4, #1
	bne _080F88F2
	cmp r6, #0x14
	bne _080F88E4
	movs r0, #1
	rsbs r0, r0, #0
	b _080F8934
_080F88E4:
	ldr r0, _080F893C @ =openfiles
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_080F88F2:
	cmp r4, #2
	bne _080F8904
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_080F8904:
	mov r0, r8
	bl remap_handle
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _080F892A
	cmp r2, #0
	bne _080F892A
	ldr r0, _080F893C @ =openfiles
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_080F892A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _080F8934
	adds r0, r5, #0
_080F8934:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F893C: .4byte openfiles

	thumb_func_start _lseek
_lseek: @ 0x080F8940
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	thumb_func_start _swiwrite
_swiwrite: @ 0x080F894C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x080F8970
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle
	bl findslot
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _swiwrite
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080F8998
	cmp r0, r6
	bne _080F89A0
_080F8998:
	adds r0, r1, #0
	bl error
	b _080F89B6
_080F89A0:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _080F89B4
	ldr r0, _080F89B8 @ =openfiles
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080F89B4:
	adds r0, r2, #0
_080F89B6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F89B8: .4byte openfiles

	thumb_func_start _swiopen
_swiopen: @ 0x080F89BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot
	mov r8, r0
	cmp r0, #0x14
	bne _080F89DE
	adds r0, r6, #0
	b _080F8A52
_080F89DE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080F89E8
	movs r5, #2
_080F89E8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _080F89F6
	movs r0, #4
	orrs r5, r0
_080F89F6:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _080F8A04
	movs r0, #4
	orrs r5, r0
_080F8A04:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _080F8A14
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_080F8A14:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _080F8A4C
	ldr r0, _080F8A48 @ =openfiles
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _080F8A52
	.align 2, 0
_080F8A48: .4byte openfiles
_080F8A4C:
	adds r0, r3, #0
	bl error
_080F8A52:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x080F8A5C
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x080F8A70
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _080F8A90
	ldr r0, _080F8AA0 @ =openfiles
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_080F8A90:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_080F8AA0: .4byte openfiles

	thumb_func_start _close
_close: @ 0x080F8AA4
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x080F8AB0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080F8ACC @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080F8ACC: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x080F8AD0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080F8AEC @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080F8AEC: .4byte 0x00020026

	thumb_func_start _getpid
_getpid: @ 0x080F8AF0
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x080F8AF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _080F8B24 @ =gUnknown_03000E78
	ldr r0, [r4]
	cmp r0, #0
	bne _080F8B04
	ldr r0, _080F8B28 @ =gUnknown_03005FE4
	str r0, [r4]
_080F8B04:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _080F8B1A
	ldr r1, _080F8B2C @ =gUnknown_082B792C
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_080F8B1A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080F8B24: .4byte gUnknown_03000E78
_080F8B28: .4byte gUnknown_03005FE4
_080F8B2C: .4byte gUnknown_082B792C

	thumb_func_start _fstat
_fstat: @ 0x080F8B30
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _unlink
_unlink: @ 0x080F8B3C
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x080F8B44
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x080F8B48
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _080F8B66
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_080F8B66:
	cmp r3, #0
	beq _080F8B70
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_080F8B70:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x080F8B74
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _080F8B92
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_080F8B92:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write_r
_write_r: @ 0x080F8B98
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080F8BC4 @ =errno
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F8BBE
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8BBE
	str r0, [r5]
_080F8BBE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8BC4: .4byte errno

	thumb_func_start _calloc_r
_calloc_r: @ 0x080F8BC8
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _080F8BDA
	movs r0, #0
	b _080F8C1E
_080F8BDA:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _080F8C14
	adds r1, r4, #0
	cmp r2, #0x13
	bls _080F8C0A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _080F8C0A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _080F8C0A
	stm r1!, {r0}
	stm r1!, {r0}
_080F8C0A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _080F8C1C
_080F8C14:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_080F8C1C:
	adds r0, r4, #0
_080F8C1E:
	pop {r4, pc}

	thumb_func_start _close_r
_close_r: @ 0x080F8C20
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _080F8C48 @ =errno
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F8C42
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8C42
	str r0, [r5]
_080F8C42:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8C48: .4byte errno

	thumb_func_start __errno
__errno: @ 0x080F8C4C
	ldr r0, _080F8C54 @ =_impure_ptr
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080F8C54: .4byte _impure_ptr

	thumb_func_start _fstat_r
_fstat_r: @ 0x080F8C58
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _080F8C80 @ =errno
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F8C7C
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8C7C
	str r0, [r5]
_080F8C7C:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8C80: .4byte errno

	thumb_func_start abort
abort: @ 0x080F8C84
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _080F8CA0 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_080F8CA0: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x080F8CA4
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x080F8CA8
	bx lr
	.align 2, 0

	thumb_func_start _lseek_r
_lseek_r: @ 0x080F8CAC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080F8CD8 @ =errno
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F8CD2
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8CD2
	str r0, [r5]
_080F8CD2:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8CD8: .4byte errno

	thumb_func_start _read_r
_read_r: @ 0x080F8CDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _080F8D08 @ =errno
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080F8D02
	ldr r0, [r4]
	cmp r0, #0
	beq _080F8D02
	str r0, [r5]
_080F8D02:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_080F8D08: .4byte errno

	thumb_func_start __pack_d
__pack_d: @ 0x080F8D0C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _080F8D24
	movs r2, #1
_080F8D24:
	cmp r2, #0
	beq _080F8D44
	ldr r6, _080F8D38 @ =0x000007FF
	ldr r2, _080F8D3C @ =0x00000000
	ldr r3, _080F8D40 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _080F8DFC
	.align 2, 0
_080F8D38: .4byte 0x000007FF
_080F8D3C: .4byte 0x00000000
_080F8D40: .4byte 0x00080000
_080F8D44:
	movs r2, #0
	cmp r0, #4
	bne _080F8D4C
	movs r2, #1
_080F8D4C:
	cmp r2, #0
	bne _080F8D98
	movs r2, #0
	cmp r0, #2
	bne _080F8D58
	movs r2, #1
_080F8D58:
	cmp r2, #0
	beq _080F8D62
	movs r4, #0
	movs r5, #0
	b _080F8E00
_080F8D62:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080F8E00
	ldr r2, [r1, #8]
	ldr r0, _080F8D80 @ =0xFFFFFC02
	cmp r2, r0
	bge _080F8D92
	subs r2, r0, r2
	cmp r2, #0x38
	ble _080F8D84
	movs r4, #0
	movs r5, #0
	b _080F8DF2
	.align 2, 0
_080F8D80: .4byte 0xFFFFFC02
_080F8D84:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _080F8DF2
_080F8D92:
	ldr r0, _080F8DA0 @ =0x000003FF
	cmp r2, r0
	ble _080F8DA8
_080F8D98:
	ldr r6, _080F8DA4 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _080F8E00
	.align 2, 0
_080F8DA0: .4byte 0x000003FF
_080F8DA4: .4byte 0x000007FF
_080F8DA8:
	ldr r0, _080F8DD0 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080F8DD4
	cmp r2, #0
	bne _080F8DD4
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _080F8DDC
	movs r0, #0x80
	movs r1, #0
	b _080F8DD8
	.align 2, 0
_080F8DD0: .4byte 0x000003FF
_080F8DD4:
	movs r0, #0x7f
	movs r1, #0
_080F8DD8:
	adds r4, r4, r0
	adcs r5, r1
_080F8DDC:
	ldr r0, _080F8E40 @ =0x1FFFFFFF
	cmp r5, r0
	bls _080F8DF2
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_080F8DF2:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_080F8DFC:
	adds r5, r1, #0
	adds r4, r0, #0
_080F8E00:
	str r4, [sp]
	ldr r2, _080F8E44 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080F8E48 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080F8E4C @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080F8E50 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F8E40: .4byte 0x1FFFFFFF
_080F8E44: .4byte 0x000FFFFF
_080F8E48: .4byte 0xFFF00000
_080F8E4C: .4byte 0x000007FF
_080F8E50: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x080F8E54
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _080F8EC8
	orrs r1, r5
	cmp r1, #0
	bne _080F8E88
	movs r0, #2
	str r0, [r6]
	b _080F8F1C
_080F8E88:
	ldr r0, _080F8EC0 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _080F8EC4 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080F8EF8
	adds r7, r0, #0
_080F8EA6:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _080F8EA6
	b _080F8EF8
	.align 2, 0
_080F8EC0: .4byte 0xFFFFFC02
_080F8EC4: .4byte 0x0FFFFFFF
_080F8EC8:
	ldr r0, _080F8EDC @ =0x000007FF
	cmp r3, r0
	bne _080F8EFE
	orrs r1, r5
	cmp r1, #0
	bne _080F8EE0
	movs r0, #4
	str r0, [r6]
	b _080F8F1C
	.align 2, 0
_080F8EDC: .4byte 0x000007FF
_080F8EE0:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _080F8EF6
	movs r0, #1
	str r0, [r6]
	b _080F8EF8
_080F8EF6:
	str r1, [r6]
_080F8EF8:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _080F8F1C
_080F8EFE:
	ldr r1, _080F8F20 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _080F8F24 @ =0x00000000
	ldr r3, _080F8F28 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_080F8F1C:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F8F20: .4byte 0xFFFFFC01
_080F8F24: .4byte 0x00000000
_080F8F28: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x080F8F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _080F8F48
	movs r0, #1
_080F8F48:
	cmp r0, #0
	beq _080F8F50
_080F8F4C:
	adds r0, r3, #0
	b _080F9188
_080F8F50:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _080F8F5A
	movs r1, #1
_080F8F5A:
	cmp r1, #0
	bne _080F8FD2
	movs r1, #0
	cmp r2, #4
	bne _080F8F66
	movs r1, #1
_080F8F66:
	cmp r1, #0
	beq _080F8F88
	movs r1, #0
	cmp r0, #4
	bne _080F8F72
	movs r1, #1
_080F8F72:
	cmp r1, #0
	beq _080F8F4C
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _080F8F4C
	ldr r0, _080F8F84 @ =gUnknown_03000F28
	b _080F9188
	.align 2, 0
_080F8F84: .4byte gUnknown_03000F28
_080F8F88:
	movs r1, #0
	cmp r0, #4
	bne _080F8F90
	movs r1, #1
_080F8F90:
	cmp r1, #0
	bne _080F8FD2
	movs r1, #0
	cmp r0, #2
	bne _080F8F9C
	movs r1, #1
_080F8F9C:
	cmp r1, #0
	beq _080F8FC4
	movs r0, #0
	cmp r2, #2
	bne _080F8FA8
	movs r0, #1
_080F8FA8:
	cmp r0, #0
	beq _080F8F4C
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080F9186
_080F8FC4:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _080F8FCE
	movs r1, #1
_080F8FCE:
	cmp r1, #0
	beq _080F8FD6
_080F8FD2:
	adds r0, r4, #0
	b _080F9188
_080F8FD6:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _080F8FF6
	rsbs r0, r0, #0
_080F8FF6:
	cmp r0, #0x3f
	bgt _080F9074
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _080F9040
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_080F900E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _080F900E
	mov r8, sb
_080F9040:
	cmp r8, sb
	ble _080F9090
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_080F904C:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _080F904C
	mov sb, r8
	b _080F9090
_080F9074:
	cmp sb, r8
	ble _080F9082
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _080F9088
_080F9082:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_080F9088:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_080F9090:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _080F9138
	mov r2, ip
	cmp r2, #0
	beq _080F90B2
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _080F90BE
_080F90B2:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_080F90BE:
	cmp r3, #0
	blt _080F90D4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _080F90EC
_080F90D4:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080F90EC:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_080F90F8:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _080F9134 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _080F9150
	cmp r3, r0
	bne _080F910E
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _080F9150
_080F910E:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _080F90F8
	.align 2, 0
_080F9134: .4byte 0x0FFFFFFF
_080F9138:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_080F9150:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _080F9194 @ =0x1FFFFFFF
	cmp r1, r0
	bls _080F9186
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080F9186:
	mov r0, sl
_080F9188:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F9194: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x080F9198
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x080F91C8
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x080F9200
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _080F9236
	movs r0, #1
_080F9236:
	cmp r0, #0
	bne _080F929A
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F9244
	movs r2, #1
_080F9244:
	cmp r2, #0
	beq _080F924C
	ldr r0, [sp, #4]
	b _080F92BC
_080F924C:
	movs r2, #0
	cmp r1, #4
	bne _080F9254
	movs r2, #1
_080F9254:
	cmp r2, #0
	beq _080F9266
	movs r1, #0
	cmp r0, #2
	bne _080F9260
	movs r1, #1
_080F9260:
	cmp r1, #0
	bne _080F927E
	b _080F929A
_080F9266:
	movs r2, #0
	cmp r0, #4
	bne _080F926E
	movs r2, #1
_080F926E:
	cmp r2, #0
	beq _080F928E
	movs r0, #0
	cmp r1, #2
	bne _080F927A
	movs r0, #1
_080F927A:
	cmp r0, #0
	beq _080F9288
_080F927E:
	ldr r0, _080F9284 @ =gUnknown_03000F28
	b _080F9486
	.align 2, 0
_080F9284: .4byte gUnknown_03000F28
_080F9288:
	mov r1, r8
	ldr r0, [r1, #4]
	b _080F92BC
_080F928E:
	movs r2, #0
	cmp r1, #2
	bne _080F9296
	movs r2, #1
_080F9296:
	cmp r2, #0
	beq _080F92AC
_080F929A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080F9486
_080F92AC:
	movs r1, #0
	cmp r0, #2
	bne _080F92B4
	movs r1, #1
_080F92B4:
	cmp r1, #0
	beq _080F92CC
	mov r2, r8
	ldr r0, [r2, #4]
_080F92BC:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080F9486
_080F92CC:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _080F9344
	cmp r7, r3
	bne _080F934C
	cmp r6, r2
	bls _080F934C
_080F9344:
	ldr r5, _080F949C @ =0x00000001
	ldr r4, _080F9498 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080F934C:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _080F9368
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _080F9378
	cmp r0, r6
	bls _080F9378
_080F9368:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080F9378:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _080F94A0 @ =0x1FFFFFFF
	cmp r5, r0
	bls _080F93FA
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_080F93BE:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _080F93E4
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_080F93E4:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _080F93BE
	mov r0, ip
	str r0, [sp, #0x30]
_080F93FA:
	ldr r0, _080F94A4 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080F944C
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_080F940C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _080F9436
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_080F9436:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _080F940C
	mov r1, ip
	str r1, [sp, #0x30]
_080F944C:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080F947A
	cmp r2, #0
	bne _080F947A
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080F9472
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _080F947A
_080F9472:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_080F947A:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080F9486:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F9498: .4byte 0x00000000
_080F949C: .4byte 0x00000001
_080F94A0: .4byte 0x1FFFFFFF
_080F94A4: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x080F94A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080F94D2
	movs r0, #1
_080F94D2:
	cmp r0, #0
	beq _080F94DA
	mov r1, sp
	b _080F961C
_080F94DA:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _080F94E6
	movs r0, #1
_080F94E6:
	cmp r0, #0
	beq _080F94EE
	adds r1, r4, #0
	b _080F961C
_080F94EE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080F94FE
	movs r0, #1
_080F94FE:
	cmp r0, #0
	bne _080F950E
	movs r4, #0
	cmp r3, #2
	bne _080F950A
	movs r4, #1
_080F950A:
	cmp r4, #0
	beq _080F9520
_080F950E:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _080F9518
	b _080F961C
_080F9518:
	ldr r1, _080F951C @ =gUnknown_03000F28
	b _080F961C
	.align 2, 0
_080F951C: .4byte gUnknown_03000F28
_080F9520:
	movs r0, #0
	cmp r2, #4
	bne _080F9528
	movs r0, #1
_080F9528:
	cmp r0, #0
	beq _080F953A
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _080F961C
_080F953A:
	movs r0, #0
	cmp r2, #2
	bne _080F9542
	movs r0, #1
_080F9542:
	cmp r0, #0
	beq _080F954E
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _080F961A
_080F954E:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080F9572
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _080F9586
	cmp r0, r4
	bls _080F9586
_080F9572:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_080F9586:
	ldr r7, _080F962C @ =0x10000000
	ldr r6, _080F9628 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_080F9592:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080F95B6
	cmp r1, r5
	bne _080F95A2
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _080F95B6
_080F95A2:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_080F95B6:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _080F9592
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080F9610
	cmp r2, #0
	bne _080F9610
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080F9600
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080F9610
_080F9600:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_080F9610:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080F961A:
	mov r1, ip
_080F961C:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F9628: .4byte 0x00000000
_080F962C: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x080F9630
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _080F9640
	movs r0, #1
_080F9640:
	cmp r0, #0
	bne _080F9652
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080F964E
	movs r0, #1
_080F964E:
	cmp r0, #0
	beq _080F9656
_080F9652:
	movs r0, #1
	b _080F972C
_080F9656:
	movs r0, #0
	cmp r1, #4
	bne _080F965E
	movs r0, #1
_080F965E:
	cmp r0, #0
	beq _080F9676
	movs r0, #0
	cmp r2, #4
	bne _080F966A
	movs r0, #1
_080F966A:
	cmp r0, #0
	beq _080F9676
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _080F972C
_080F9676:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _080F9680
	movs r1, #1
_080F9680:
	cmp r1, #0
	bne _080F96CE
	movs r1, #0
	cmp r2, #4
	bne _080F968C
	movs r1, #1
_080F968C:
	cmp r1, #0
	beq _080F969E
_080F9690:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080F96D8
	movs r1, #1
	b _080F96D8
_080F969E:
	movs r1, #0
	cmp r0, #2
	bne _080F96A6
	movs r1, #1
_080F96A6:
	cmp r1, #0
	beq _080F96B6
	movs r1, #0
	cmp r2, #2
	bne _080F96B2
	movs r1, #1
_080F96B2:
	cmp r1, #0
	bne _080F972A
_080F96B6:
	movs r1, #0
	cmp r0, #2
	bne _080F96BE
	movs r1, #1
_080F96BE:
	cmp r1, #0
	bne _080F9690
	movs r0, #0
	cmp r2, #2
	bne _080F96CA
	movs r0, #1
_080F96CA:
	cmp r0, #0
	beq _080F96DC
_080F96CE:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _080F96D8
	subs r1, #2
_080F96D8:
	adds r0, r1, #0
	b _080F972C
_080F96DC:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _080F96EE
_080F96E4:
	movs r0, #1
	cmp r4, #0
	beq _080F972C
	subs r0, #2
	b _080F972C
_080F96EE:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _080F96E4
	cmp r1, r0
	bge _080F9706
_080F96FA:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _080F972C
	movs r0, #1
	b _080F972C
_080F9706:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _080F96E4
	cmp r3, r2
	bne _080F971A
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _080F96E4
_080F971A:
	cmp r2, r3
	bhi _080F96FA
	cmp r2, r3
	bne _080F972A
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _080F96FA
_080F972A:
	movs r0, #0
_080F972C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x080F9730
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x080F975C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F9784
	movs r1, #1
_080F9784:
	cmp r1, #0
	bne _080F9796
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F9792
	movs r1, #1
_080F9792:
	cmp r1, #0
	beq _080F979A
_080F9796:
	movs r0, #1
	b _080F97A2
_080F979A:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F97A2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x080F97A8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F97D0
	movs r1, #1
_080F97D0:
	cmp r1, #0
	bne _080F97E2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F97DE
	movs r1, #1
_080F97DE:
	cmp r1, #0
	beq _080F97E6
_080F97E2:
	movs r0, #1
	b _080F97EE
_080F97E6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F97EE:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x080F97F4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F981C
	movs r1, #1
_080F981C:
	cmp r1, #0
	bne _080F982E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F982A
	movs r1, #1
_080F982A:
	cmp r1, #0
	beq _080F9834
_080F982E:
	movs r0, #1
	rsbs r0, r0, #0
	b _080F983C
_080F9834:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F983C:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __gedf2
__gedf2: @ 0x080F9840
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F9868
	movs r1, #1
_080F9868:
	cmp r1, #0
	bne _080F987A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F9876
	movs r1, #1
_080F9876:
	cmp r1, #0
	beq _080F9880
_080F987A:
	movs r0, #1
	rsbs r0, r0, #0
	b _080F9888
_080F9880:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F9888:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x080F988C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F98B4
	movs r1, #1
_080F98B4:
	cmp r1, #0
	bne _080F98C6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F98C2
	movs r1, #1
_080F98C2:
	cmp r1, #0
	beq _080F98CA
_080F98C6:
	movs r0, #1
	b _080F98D2
_080F98CA:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F98D2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x080F98D8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080F9900
	movs r1, #1
_080F9900:
	cmp r1, #0
	bne _080F9912
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080F990E
	movs r1, #1
_080F990E:
	cmp r1, #0
	beq _080F9916
_080F9912:
	movs r0, #1
	b _080F991E
_080F9916:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_080F991E:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x080F9924
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _080F993C
	movs r0, #2
	str r0, [sp]
	b _080F9992
_080F993C:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _080F9962
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _080F995C
	ldr r1, _080F9958 @ =0x00000000
	ldr r0, _080F9954 @ =0xC1E00000
	b _080F9998
	.align 2, 0
_080F9954: .4byte 0xC1E00000
_080F9958: .4byte 0x00000000
_080F995C:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _080F9966
_080F9962:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_080F9966:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _080F999C @ =0x0FFFFFFF
	cmp r0, r1
	bhi _080F9992
	adds r5, r1, #0
	ldr r4, [sp, #8]
_080F9976:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _080F9976
	str r4, [sp, #8]
_080F9992:
	mov r0, sp
	bl __pack_d
_080F9998:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_080F999C: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x080F99A0
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080F99BA
	movs r1, #1
_080F99BA:
	cmp r1, #0
	bne _080F99EE
	movs r1, #0
	cmp r0, #1
	bhi _080F99C6
	movs r1, #1
_080F99C6:
	cmp r1, #0
	bne _080F99EE
	movs r1, #0
	cmp r0, #4
	bne _080F99D2
	movs r1, #1
_080F99D2:
	cmp r1, #0
	beq _080F99E8
_080F99D6:
	ldr r0, [sp, #4]
	ldr r1, _080F99E4 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080F9A0C
	adds r1, #1
	b _080F9A0C
	.align 2, 0
_080F99E4: .4byte 0x7FFFFFFF
_080F99E8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _080F99F2
_080F99EE:
	movs r0, #0
	b _080F9A0E
_080F99F2:
	cmp r0, #0x1e
	bgt _080F99D6
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080F9A0C
	rsbs r1, r1, #0
_080F9A0C:
	adds r0, r1, #0
_080F9A0E:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x080F9A14
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080F9A2E
	movs r1, #1
_080F9A2E:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_dp
__make_dp: @ 0x080F9A3C
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x080F9A64
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _080F9AA4 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _080F9A94
	movs r0, #1
	orrs r5, r0
_080F9A94:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_080F9AA4: .4byte 0x3FFFFFFF

	thumb_func_start __pack_f
__pack_f: @ 0x080F9AA8
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _080F9ABA
	movs r1, #1
_080F9ABA:
	cmp r1, #0
	beq _080F9AC8
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _080F9B2E
_080F9AC8:
	movs r1, #0
	cmp r3, #4
	bne _080F9AD0
	movs r1, #1
_080F9AD0:
	cmp r1, #0
	bne _080F9B04
	movs r1, #0
	cmp r3, #2
	bne _080F9ADC
	movs r1, #1
_080F9ADC:
	cmp r1, #0
	beq _080F9AE4
	movs r2, #0
	b _080F9B2E
_080F9AE4:
	cmp r2, #0
	beq _080F9B2E
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _080F9B00
	subs r0, r3, r0
	cmp r0, #0x19
	ble _080F9AFC
	movs r2, #0
	b _080F9B2C
_080F9AFC:
	lsrs r2, r0
	b _080F9B2C
_080F9B00:
	cmp r0, #0x7f
	ble _080F9B0A
_080F9B04:
	movs r5, #0xff
	movs r2, #0
	b _080F9B2E
_080F9B0A:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _080F9B22
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080F9B24
	adds r2, #0x40
	b _080F9B24
_080F9B22:
	adds r2, #0x3f
_080F9B24:
	cmp r2, #0
	bge _080F9B2C
	lsrs r2, r2, #1
	adds r5, #1
_080F9B2C:
	lsrs r2, r2, #7
_080F9B2E:
	ldr r0, _080F9B50 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _080F9B54 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _080F9B58 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _080F9B5C @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080F9B50: .4byte 0x007FFFFF
_080F9B54: .4byte 0xFF800000
_080F9B58: .4byte 0x807FFFFF
_080F9B5C: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x080F9B60
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _080F9BA4
	cmp r2, #0
	bne _080F9B80
	movs r0, #2
	str r0, [r3]
	b _080F9BD8
_080F9B80:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _080F9BA0 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _080F9BC0
	adds r0, r4, #0
_080F9B94:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _080F9B94
	str r0, [r3, #8]
	b _080F9BC0
	.align 2, 0
_080F9BA0: .4byte 0x3FFFFFFF
_080F9BA4:
	cmp r1, #0xff
	bne _080F9BC4
	cmp r2, #0
	bne _080F9BB2
	movs r0, #4
	str r0, [r3]
	b _080F9BD8
_080F9BB2:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _080F9BBE
	movs r0, #1
_080F9BBE:
	str r0, [r3]
_080F9BC0:
	str r2, [r3, #0xc]
	b _080F9BD8
_080F9BC4:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_080F9BD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x080F9BDC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080F9BF2
	movs r0, #1
_080F9BF2:
	cmp r0, #0
	beq _080F9BFA
_080F9BF6:
	adds r0, r6, #0
	b _080F9D50
_080F9BFA:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _080F9C04
	movs r1, #1
_080F9C04:
	cmp r1, #0
	bne _080F9C78
	movs r1, #0
	cmp r2, #4
	bne _080F9C10
	movs r1, #1
_080F9C10:
	cmp r1, #0
	beq _080F9C30
	movs r1, #0
	cmp r0, #4
	bne _080F9C1C
	movs r1, #1
_080F9C1C:
	cmp r1, #0
	beq _080F9BF6
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _080F9BF6
	ldr r0, _080F9C2C @ =gUnknown_03000F40
	b _080F9D50
	.align 2, 0
_080F9C2C: .4byte gUnknown_03000F40
_080F9C30:
	movs r1, #0
	cmp r0, #4
	bne _080F9C38
	movs r1, #1
_080F9C38:
	cmp r1, #0
	bne _080F9C78
	movs r1, #0
	cmp r0, #2
	bne _080F9C44
	movs r1, #1
_080F9C44:
	cmp r1, #0
	beq _080F9C6A
	movs r0, #0
	cmp r2, #2
	bne _080F9C50
	movs r0, #1
_080F9C50:
	cmp r0, #0
	beq _080F9BF6
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _080F9D4E
_080F9C6A:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _080F9C74
	movs r1, #1
_080F9C74:
	cmp r1, #0
	beq _080F9C7C
_080F9C78:
	adds r0, r7, #0
	b _080F9D50
_080F9C7C:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _080F9C8C
	rsbs r0, r0, #0
_080F9C8C:
	cmp r0, #0x1f
	bgt _080F9CD0
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _080F9CB2
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_080F9CA0:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _080F9CA0
	adds r3, r1, #0
_080F9CB2:
	cmp r3, r1
	ble _080F9CE2
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_080F9CBC:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _080F9CBC
	adds r1, r3, #0
	b _080F9CE2
_080F9CD0:
	cmp r1, r3
	ble _080F9CD8
	movs r4, #0
	b _080F9CDC
_080F9CD8:
	adds r1, r3, #0
	movs r2, #0
_080F9CDC:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_080F9CE2:
	cmp r6, r8
	beq _080F9D2C
	cmp r6, #0
	beq _080F9CEE
	subs r3, r4, r2
	b _080F9CF0
_080F9CEE:
	subs r3, r2, r4
_080F9CF0:
	cmp r3, #0
	blt _080F9CFE
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _080F9D08
_080F9CFE:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_080F9D08:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _080F9D28 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _080F9D34
_080F9D12:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _080F9D12
	b _080F9D34
	.align 2, 0
_080F9D28: .4byte 0x3FFFFFFE
_080F9D2C:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_080F9D34:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080F9D4E
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_080F9D4E:
	adds r0, r5, #0
_080F9D50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x080F9D58
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x080F9D84
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x080F9DB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _080F9DEA
	movs r0, #1
_080F9DEA:
	cmp r0, #0
	bne _080F9E48
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080F9DF8
	movs r2, #1
_080F9DF8:
	cmp r2, #0
	beq _080F9E00
	ldr r0, [sp, #4]
	b _080F9E68
_080F9E00:
	movs r2, #0
	cmp r1, #4
	bne _080F9E08
	movs r2, #1
_080F9E08:
	cmp r2, #0
	beq _080F9E1A
	movs r1, #0
	cmp r0, #2
	bne _080F9E14
	movs r1, #1
_080F9E14:
	cmp r1, #0
	bne _080F9E32
	b _080F9E48
_080F9E1A:
	movs r2, #0
	cmp r0, #4
	bne _080F9E22
	movs r2, #1
_080F9E22:
	cmp r2, #0
	beq _080F9E3C
	movs r0, #0
	cmp r1, #2
	bne _080F9E2E
	movs r0, #1
_080F9E2E:
	cmp r0, #0
	beq _080F9E66
_080F9E32:
	ldr r0, _080F9E38 @ =gUnknown_03000F40
	b _080F9F0A
	.align 2, 0
_080F9E38: .4byte gUnknown_03000F40
_080F9E3C:
	movs r2, #0
	cmp r1, #2
	bne _080F9E44
	movs r2, #1
_080F9E44:
	cmp r2, #0
	beq _080F9E5A
_080F9E48:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080F9F0A
_080F9E5A:
	movs r1, #0
	cmp r0, #2
	bne _080F9E62
	movs r1, #1
_080F9E62:
	cmp r1, #0
	beq _080F9E78
_080F9E66:
	ldr r0, [r7, #4]
_080F9E68:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _080F9F0A
_080F9E78:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _080F9EC4
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_080F9EAE:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _080F9EBC
	lsrs r6, r6, #1
	orrs r6, r1
_080F9EBC:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _080F9EAE
	str r4, [sp, #0x28]
_080F9EC4:
	ldr r0, _080F9F18 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _080F9EEA
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_080F9ED4:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _080F9EE2
	orrs r5, r3
_080F9EE2:
	lsls r6, r6, #1
	cmp r5, r2
	bls _080F9ED4
	str r1, [sp, #0x28]
_080F9EEA:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _080F9F00
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _080F9EFE
	cmp r6, #0
	beq _080F9F00
_080F9EFE:
	adds r5, #0x40
_080F9F00:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_080F9F0A:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080F9F18: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x080F9F1C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080F9F42
	movs r0, #1
_080F9F42:
	cmp r0, #0
	beq _080F9F4A
	mov r1, sp
	b _080F9FFC
_080F9F4A:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _080F9F56
	movs r0, #1
_080F9F56:
	cmp r0, #0
	beq _080F9F5E
	adds r1, r5, #0
	b _080F9FFC
_080F9F5E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080F9F6E
	movs r0, #1
_080F9F6E:
	cmp r0, #0
	bne _080F9F7E
	movs r0, #0
	cmp r3, #2
	bne _080F9F7A
	movs r0, #1
_080F9F7A:
	cmp r0, #0
	beq _080F9F90
_080F9F7E:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _080F9FFC
	ldr r1, _080F9F8C @ =gUnknown_03000F40
	b _080F9FFC
	.align 2, 0
_080F9F8C: .4byte gUnknown_03000F40
_080F9F90:
	movs r1, #0
	cmp r2, #4
	bne _080F9F98
	movs r1, #1
_080F9F98:
	cmp r1, #0
	beq _080F9FA4
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _080F9FFC
_080F9FA4:
	movs r0, #0
	cmp r2, #2
	bne _080F9FAC
	movs r0, #1
_080F9FAC:
	cmp r0, #0
	beq _080F9FB6
	movs r0, #4
	str r0, [r4]
	b _080F9FFA
_080F9FB6:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _080F9FCC
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_080F9FCC:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_080F9FD2:
	cmp r2, r3
	blo _080F9FDA
	orrs r1, r0
	subs r2, r2, r3
_080F9FDA:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _080F9FD2
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _080F9FF8
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080F9FF6
	cmp r2, #0
	beq _080F9FF8
_080F9FF6:
	adds r1, #0x40
_080F9FF8:
	str r1, [r4, #0xc]
_080F9FFA:
	adds r1, r4, #0
_080F9FFC:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x080FA008
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _080FA016
	movs r0, #1
_080FA016:
	cmp r0, #0
	bne _080FA028
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _080FA024
	movs r0, #1
_080FA024:
	cmp r0, #0
	beq _080FA02C
_080FA028:
	movs r0, #1
	b _080FA0EA
_080FA02C:
	movs r0, #0
	cmp r2, #4
	bne _080FA034
	movs r0, #1
_080FA034:
	cmp r0, #0
	beq _080FA04C
	movs r0, #0
	cmp r3, #4
	bne _080FA040
	movs r0, #1
_080FA040:
	cmp r0, #0
	beq _080FA04C
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _080FA0EA
_080FA04C:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _080FA056
	movs r2, #1
_080FA056:
	cmp r2, #0
	bne _080FA0A4
	movs r2, #0
	cmp r3, #4
	bne _080FA062
	movs r2, #1
_080FA062:
	cmp r2, #0
	beq _080FA074
_080FA066:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _080FA0AE
	movs r1, #1
	b _080FA0AE
_080FA074:
	movs r2, #0
	cmp r0, #2
	bne _080FA07C
	movs r2, #1
_080FA07C:
	cmp r2, #0
	beq _080FA08C
	movs r2, #0
	cmp r3, #2
	bne _080FA088
	movs r2, #1
_080FA088:
	cmp r2, #0
	bne _080FA0E8
_080FA08C:
	movs r2, #0
	cmp r0, #2
	bne _080FA094
	movs r2, #1
_080FA094:
	cmp r2, #0
	bne _080FA066
	movs r0, #0
	cmp r3, #2
	bne _080FA0A0
	movs r0, #1
_080FA0A0:
	cmp r0, #0
	beq _080FA0B2
_080FA0A4:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _080FA0AE
	subs r1, #2
_080FA0AE:
	adds r0, r1, #0
	b _080FA0EA
_080FA0B2:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _080FA0C4
_080FA0BA:
	movs r0, #1
	cmp r3, #0
	beq _080FA0EA
	subs r0, #2
	b _080FA0EA
_080FA0C4:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _080FA0BA
	cmp r2, r0
	bge _080FA0DC
_080FA0D0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _080FA0EA
	movs r0, #1
	b _080FA0EA
_080FA0DC:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _080FA0BA
	cmp r0, r1
	blo _080FA0D0
_080FA0E8:
	movs r0, #0
_080FA0EA:
	pop {r4, pc}

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x080FA0EC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x080FA114
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA138
	movs r1, #1
_080FA138:
	cmp r1, #0
	bne _080FA14A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA146
	movs r1, #1
_080FA146:
	cmp r1, #0
	beq _080FA14E
_080FA14A:
	movs r0, #1
	b _080FA156
_080FA14E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA156:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x080FA15C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA180
	movs r1, #1
_080FA180:
	cmp r1, #0
	bne _080FA192
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA18E
	movs r1, #1
_080FA18E:
	cmp r1, #0
	beq _080FA196
_080FA192:
	movs r0, #1
	b _080FA19E
_080FA196:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA19E:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x080FA1A4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA1C8
	movs r1, #1
_080FA1C8:
	cmp r1, #0
	bne _080FA1DA
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA1D6
	movs r1, #1
_080FA1D6:
	cmp r1, #0
	beq _080FA1E0
_080FA1DA:
	movs r0, #1
	rsbs r0, r0, #0
	b _080FA1E8
_080FA1E0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA1E8:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __gesf2
__gesf2: @ 0x080FA1EC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA210
	movs r1, #1
_080FA210:
	cmp r1, #0
	bne _080FA222
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA21E
	movs r1, #1
_080FA21E:
	cmp r1, #0
	beq _080FA228
_080FA222:
	movs r0, #1
	rsbs r0, r0, #0
	b _080FA230
_080FA228:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA230:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __ltsf2
__ltsf2: @ 0x080FA234
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA258
	movs r1, #1
_080FA258:
	cmp r1, #0
	bne _080FA26A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA266
	movs r1, #1
_080FA266:
	cmp r1, #0
	beq _080FA26E
_080FA26A:
	movs r0, #1
	b _080FA276
_080FA26E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA276:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x080FA27C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080FA2A0
	movs r1, #1
_080FA2A0:
	cmp r1, #0
	bne _080FA2B2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080FA2AE
	movs r1, #1
_080FA2AE:
	cmp r1, #0
	beq _080FA2B6
_080FA2B2:
	movs r0, #1
	b _080FA2BE
_080FA2B6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080FA2BE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x080FA2C4
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _080FA2DC
	movs r0, #2
	str r0, [sp]
	b _080FA314
_080FA2DC:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _080FA2FA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080FA2F4
	ldr r0, _080FA2F0 @ =0xCF000000
	b _080FA31A
	.align 2, 0
_080FA2F0: .4byte 0xCF000000
_080FA2F4:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _080FA2FC
_080FA2FA:
	str r1, [sp, #0xc]
_080FA2FC:
	ldr r2, [sp, #0xc]
	ldr r3, _080FA320 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _080FA314
	ldr r1, [sp, #8]
_080FA306:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _080FA306
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_080FA314:
	mov r0, sp
	bl __pack_f
_080FA31A:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_080FA320: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x080FA324
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080FA33C
	movs r1, #1
_080FA33C:
	cmp r1, #0
	bne _080FA36E
	movs r1, #0
	cmp r0, #1
	bhi _080FA348
	movs r1, #1
_080FA348:
	cmp r1, #0
	bne _080FA36E
	movs r1, #0
	cmp r0, #4
	bne _080FA354
	movs r1, #1
_080FA354:
	cmp r1, #0
	beq _080FA368
_080FA358:
	ldr r0, [sp, #4]
	ldr r1, _080FA364 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080FA386
	adds r1, #1
	b _080FA386
	.align 2, 0
_080FA364: .4byte 0x7FFFFFFF
_080FA368:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _080FA372
_080FA36E:
	movs r0, #0
	b _080FA388
_080FA372:
	cmp r1, #0x1e
	bgt _080FA358
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080FA386
	rsbs r1, r1, #0
_080FA386:
	adds r0, r1, #0
_080FA388:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negsf2
__negsf2: @ 0x080FA38C
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080FA3A4
	movs r1, #1
_080FA3A4:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_fp
__make_fp: @ 0x080FA3B0
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x080FA3C8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x080FA3F4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _080FA424
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _080FA410
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _080FA420
_080FA410:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_080FA420:
	adds r1, r4, #0
	adds r0, r3, #0
_080FA424:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __muldi3
__muldi3: @ 0x080FA428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _080FA494 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _080FA468
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080FA468:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080FA494: .4byte 0x0000FFFF

	thumb_func_start __negdi2
__negdi2: @ 0x080FA498
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _080FA4A6
	subs r1, #1
_080FA4A6:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}


    .align 3, 0


    .align 3, 0
