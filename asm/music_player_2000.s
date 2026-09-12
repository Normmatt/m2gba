.include "asm/macros.inc"

.syntax unified
.section .text

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
