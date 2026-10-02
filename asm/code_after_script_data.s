.include "asm/macros.inc"

.syntax unified
.section .text

	thumb_func_start sub_80A1F6C
sub_80A1F6C: @ 0x080A1F6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A1FB4 @ =gUnknown_03004EDC
	ldr r1, _080A1FB8 @ =gCurrentMapId
	ldr r0, _080A1FBC @ =gUnknown_0300394C
	ldrh r0, [r0]
	ldr r1, [r1]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r2]
	ldr r1, _080A1FC0 @ =gUnknown_03004F00
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080A1FC4 @ =IsScriptExecBlocked
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080A1FC8 @ =gUnknown_03004ED4
	strb r1, [r0]
	ldr r0, _080A1FCC @ =gUnknown_03004EE8
	strb r1, [r0]
	ldr r0, _080A1FD0 @ =sub_80A1FFC
	movs r1, #0
	bl create_proc
	ldr r0, _080A1FD4 @ =gUnknown_0871FECC
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	cmp r4, #0
	bne _080A1FDC
	ldr r0, _080A1FD8 @ =gUnknown_03004EF0
	str r4, [r0]
	b _080A1FE8
	.align 2, 0
_080A1FB4: .4byte gUnknown_03004EDC
_080A1FB8: .4byte gCurrentMapId
_080A1FBC: .4byte gUnknown_0300394C
_080A1FC0: .4byte gUnknown_03004F00
_080A1FC4: .4byte IsScriptExecBlocked
_080A1FC8: .4byte gUnknown_03004ED4
_080A1FCC: .4byte gUnknown_03004EE8
_080A1FD0: .4byte sub_80A1FFC
_080A1FD4: .4byte gUnknown_0871FECC
_080A1FD8: .4byte gUnknown_03004EF0
_080A1FDC:
	ldr r1, _080A1FF0 @ =gUnknown_03004EF0
	adds r0, r4, #4
	str r0, [r1]
	ldr r1, _080A1FF4 @ =gUnknown_03004EEC
	ldrh r0, [r4]
	str r0, [r1]
_080A1FE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1FF0: .4byte gUnknown_03004EF0
_080A1FF4: .4byte gUnknown_03004EEC

	thumb_func_start sub_80A1FF8
sub_80A1FF8: @ 0x080A1FF8
	bx lr
	.align 2, 0

	thumb_func_start sub_80A1FFC
sub_80A1FFC: @ 0x080A1FFC
	push {r4, r5, lr}
	ldr r0, _080A2044 @ =gCurrentProc
	ldr r1, [r0]
	ldr r0, _080A2048 @ =gUnknown_03002A30
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r1, r0, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080A207C
	ldr r2, _080A204C @ =gUnknown_0300098C
	ldr r0, _080A2050 @ =gUnknown_03004EF8
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r2]
	ldr r0, _080A2054 @ =gUnknown_03004EDC
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2064
	ldr r0, _080A2058 @ =gUnknown_03004EFC
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2064
	ldr r0, _080A205C @ =0x000002A3
	bl sub_80262A8
	cmp r0, #0
	beq _080A2064
	ldr r1, _080A2060 @ =gUnknown_0300098D
	movs r0, #1
	b _080A2068
	.align 2, 0
_080A2044: .4byte gCurrentProc
_080A2048: .4byte gUnknown_03002A30
_080A204C: .4byte gUnknown_0300098C
_080A2050: .4byte gUnknown_03004EF8
_080A2054: .4byte gUnknown_03004EDC
_080A2058: .4byte gUnknown_03004EFC
_080A205C: .4byte 0x000002A3
_080A2060: .4byte gUnknown_0300098D
_080A2064:
	ldr r1, _080A2074 @ =gUnknown_0300098D
	movs r0, #0
_080A2068:
	strb r0, [r1]
	ldr r1, _080A2078 @ =gUnknown_03004EFC
	movs r0, #0
	strb r0, [r1]
	b _080A2182
	.align 2, 0
_080A2074: .4byte gUnknown_0300098D
_080A2078: .4byte gUnknown_03004EFC
_080A207C:
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _080A2088
	bl end_current_proc
	b _080A2182
_080A2088:
	ldr r0, _080A20FC @ =gUnknown_0300130C
	ldr r0, [r0]
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A2100 @ =gUnknown_03005094
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A2104 @ =gUnknown_03004ED4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A2108 @ =gUnknown_03004EA0
	ldrh r0, [r0]
	cmp r0, #0
	bne _080A2182
	bl sub_80CFD00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A210C @ =gUnknown_030012FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A2110 @ =gShouldShowTownMap
	ldrb r4, [r0]
	cmp r4, #0
	bne _080A2182
	ldr r1, _080A2114 @ =gUnknown_03004EF8
	ldr r0, [r1]
	cmp r0, #0
	bne _080A2144
	ldr r0, _080A2118 @ =gUnknown_03002A40
	ldr r0, [r0]
	cmp r0, #0
	bne _080A2182
	ldr r0, _080A211C @ =gUnknown_03005214
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080A2182
	ldr r5, _080A2120 @ =gUnknown_03004ED8
	ldr r1, [r5]
	ldr r0, _080A2124 @ =0x00069780
	cmp r1, r0
	bls _080A212C
	ldr r0, _080A2128 @ =gUnknown_080852D5
	movs r1, #0
	bl sub_80BCA00
	bl sub_8020064
	str r4, [r5]
	b _080A2182
	.align 2, 0
_080A20FC: .4byte gUnknown_0300130C
_080A2100: .4byte gUnknown_03005094
_080A2104: .4byte gUnknown_03004ED4
_080A2108: .4byte gUnknown_03004EA0
_080A210C: .4byte gUnknown_030012FC
_080A2110: .4byte gShouldShowTownMap
_080A2114: .4byte gUnknown_03004EF8
_080A2118: .4byte gUnknown_03002A40
_080A211C: .4byte gUnknown_03005214
_080A2120: .4byte gUnknown_03004ED8
_080A2124: .4byte 0x00069780
_080A2128: .4byte gUnknown_080852D5
_080A212C:
	ldr r5, _080A2140 @ =gUnknown_0300098D
	ldrb r0, [r5]
	cmp r0, #0
	beq _080A2182
	movs r0, #0xb
	bl PrepareTimedEvent
	strb r4, [r5]
	b _080A2182
	.align 2, 0
_080A2140: .4byte gUnknown_0300098D
_080A2144:
	adds r5, r0, #0
	str r4, [r1]
	ldr r1, _080A2160 @ =gUnknown_0300098C
	ldrb r0, [r1]
	cmp r0, #0
	bne _080A216E
	ldr r0, _080A2164 @ =gUnknown_03004EE8
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2168
	bl sub_8020064
	b _080A2170
	.align 2, 0
_080A2160: .4byte gUnknown_0300098C
_080A2164: .4byte gUnknown_03004EE8
_080A2168:
	bl sub_80200E8
	b _080A2170
_080A216E:
	strb r4, [r1]
_080A2170:
	adds r0, r5, #0
	movs r1, #0
	bl sub_80BCA00
	ldr r0, _080A218C @ =gUnknown_08085EF5
	cmp r5, r0
	bne _080A2182
	bl sub_80A7CB8
_080A2182:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A218C: .4byte gUnknown_08085EF5

	thumb_func_start sub_80A2190
sub_80A2190: @ 0x080A2190
	push {lr}
	adds r1, r0, #0
	ldr r0, _080A21B8 @ =gUnknown_080767EB
	cmp r1, r0
	bne _080A21C4
	ldr r0, _080A21BC @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A21C0 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x76
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A21B8: .4byte gUnknown_080767EB
_080A21BC: .4byte gUnknown_03004EF8
_080A21C0: .4byte 0x0000020A
_080A21C4:
	ldr r0, _080A21E8 @ =gUnknown_0807689B
	cmp r1, r0
	bne _080A21F4
	ldr r0, _080A21EC @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A21F0 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x77
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A21E8: .4byte gUnknown_0807689B
_080A21EC: .4byte gUnknown_03004EF8
_080A21F0: .4byte 0x0000020A
_080A21F4:
	ldr r0, _080A2218 @ =gUnknown_0807696D
	cmp r1, r0
	bne _080A2224
	ldr r0, _080A221C @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A2220 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x78
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A2218: .4byte gUnknown_0807696D
_080A221C: .4byte gUnknown_03004EF8
_080A2220: .4byte 0x0000020A
_080A2224:
	ldr r0, _080A2248 @ =gUnknown_080769FD
	cmp r1, r0
	bne _080A2254
	ldr r0, _080A224C @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A2250 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x79
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A2248: .4byte gUnknown_080769FD
_080A224C: .4byte gUnknown_03004EF8
_080A2250: .4byte 0x0000020A
_080A2254:
	ldr r0, _080A2278 @ =gUnknown_08076AD9
	cmp r1, r0
	bne _080A2284
	ldr r0, _080A227C @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A2280 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x7a
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A2278: .4byte gUnknown_08076AD9
_080A227C: .4byte gUnknown_03004EF8
_080A2280: .4byte 0x0000020A
_080A2284:
	ldr r0, _080A22A8 @ =gUnknown_08076B55
	cmp r1, r0
	bne _080A22B4
	ldr r0, _080A22AC @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A22B0 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x7b
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A22A8: .4byte gUnknown_08076B55
_080A22AC: .4byte gUnknown_03004EF8
_080A22B0: .4byte 0x0000020A
_080A22B4:
	ldr r0, _080A22E8 @ =gUnknown_08076BA7
	cmp r1, r0
	bne _080A22F4
	ldr r0, _080A22EC @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0xdc
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x4a
	movs r1, #0
	bl sub_80261D8
	movs r0, #0xb
	movs r1, #1
	bl sub_80261D8
	ldr r0, _080A22F0 @ =0x0000020A
	movs r1, #0
	bl sub_80261D8
	movs r0, #0x7c
	bl sub_80AE01C
	b _080A2308
	.align 2, 0
_080A22E8: .4byte gUnknown_08076BA7
_080A22EC: .4byte gUnknown_03004EF8
_080A22F0: .4byte 0x0000020A
_080A22F4:
	ldr r0, _080A2318 @ =gUnknown_08078784
	cmp r1, r0
	bne _080A2308
	ldr r0, _080A231C @ =gUnknown_03004EF8
	str r1, [r0]
	movs r0, #0x76
	bl sub_80AE01C
	bl sub_80AA1FC
_080A2308:
	ldr r0, _080A2320 @ =gUnknown_03004ED4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A2324 @ =gUnknown_0300521C
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080A2318: .4byte gUnknown_08078784
_080A231C: .4byte gUnknown_03004EF8
_080A2320: .4byte gUnknown_03004ED4
_080A2324: .4byte gUnknown_0300521C

	thumb_func_start sub_80A2328
sub_80A2328: @ 0x080A2328
	push {lr}
	ldr r1, _080A2360 @ =gUnknown_03004EF8
	ldr r0, _080A2364 @ =gUnknown_08085EF5
	str r0, [r1]
	ldr r0, _080A2368 @ =gUnknown_03004ED4
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A236C @ =gUnknown_0300521C
	strb r1, [r0]
	movs r0, #0xe
	bl sub_80262A8
	cmp r0, #0
	bne _080A2370
	movs r0, #0x80
	bl sub_80262A8
	cmp r0, #0
	beq _080A2370
	movs r0, #0xfc
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800F89C
	b _080A237C
	.align 2, 0
_080A2360: .4byte gUnknown_03004EF8
_080A2364: .4byte gUnknown_08085EF5
_080A2368: .4byte gUnknown_03004ED4
_080A236C: .4byte gUnknown_0300521C
_080A2370:
	ldr r0, _080A2380 @ =0x000003EF
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_800F89C
_080A237C:
	pop {r0}
	bx r0
	.align 2, 0
_080A2380: .4byte 0x000003EF

	thumb_func_start sub_80A2384
sub_80A2384: @ 0x080A2384
	push {lr}
	ldr r0, _080A23AC @ =0x000001DB
	bl sub_80262A8
	cmp r0, #0
	beq _080A23BC
	ldr r1, _080A23B0 @ =gUnknown_03003934
	movs r0, #1
	str r0, [r1]
	ldr r0, _080A23B4 @ =sub_80A23D8
	movs r1, #0
	bl create_proc
	ldr r2, _080A23B8 @ =gUnknown_03005214
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	b _080A23C8
	.align 2, 0
_080A23AC: .4byte 0x000001DB
_080A23B0: .4byte gUnknown_03003934
_080A23B4: .4byte sub_80A23D8
_080A23B8: .4byte gUnknown_03005214
_080A23BC:
	ldr r1, _080A23CC @ =gUnknown_03003948
	ldr r0, _080A23D0 @ =sub_8010EF4
	str r0, [r1]
	ldr r1, _080A23D4 @ =gUnknown_0300521C
	movs r0, #1
	strb r0, [r1]
_080A23C8:
	pop {r0}
	bx r0
	.align 2, 0
_080A23CC: .4byte gUnknown_03003948
_080A23D0: .4byte sub_8010EF4
_080A23D4: .4byte gUnknown_0300521C

	thumb_func_start sub_80A23D8
sub_80A23D8: @ 0x080A23D8
	push {r4, r5, lr}
	ldr r2, _080A23F8 @ =gUnknown_03002A30
	ldr r0, _080A23FC @ =gCurrentProc
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [r2]
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x10
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080A2400
	str r0, [r1, #0x10]
	b _080A24E6
	.align 2, 0
_080A23F8: .4byte gUnknown_03002A30
_080A23FC: .4byte gCurrentProc
_080A2400:
	ldrb r0, [r1, #0xb]
	cmp r0, #1
	bne _080A2410
	bl sub_80AA234
	bl end_current_proc
	b _080A24E6
_080A2410:
	ldr r0, _080A24F0 @ =gUnknown_03003934
	ldr r0, [r0]
	cmp r0, #0
	beq _080A2424
	ldr r0, _080A24F4 @ =gNewKeys
	ldrh r1, [r0]
	ldr r0, _080A24F8 @ =0x000003FF
	ands r0, r1
	cmp r0, #0
	beq _080A24E6
_080A2424:
	ldr r0, [r2]
	cmp r0, #0
	bne _080A24E6
	movs r1, #1
	str r1, [r2]
	ldr r0, _080A24FC @ =gUnknown_0300521C
	strb r1, [r0]
	ldr r4, _080A2500 @ =m2_character_info
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _080A2504 @ =0x000006A4
	adds r1, r4, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r3, #2
	adds r2, r4, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r3, #0
	bl sub_800F89C
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x6c
	muls r0, r1, r0
	adds r4, #0x14
	adds r2, r0, r4
	movs r3, #0
	movs r1, #5
	adds r0, r2, #0
	adds r0, #0x45
_080A246C:
	strb r3, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080A246C
	ldrh r0, [r2, #0x30]
	movs r5, #0
	movs r1, #0
	strh r0, [r2, #0x32]
	strh r0, [r2, #0x36]
	strh r1, [r2, #0x3a]
	strh r1, [r2, #0x3e]
	ldr r2, _080A2500 @ =m2_character_info
	movs r3, #0xd2
	lsls r3, r3, #3
	adds r2, r2, r3
	ldr r1, [r2]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	movs r4, #1
	ands r1, r4
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, _080A2508 @ =gUnknown_030012E0
	strb r5, [r0]
	movs r0, #0xb
	movs r1, #0
	bl sub_80261D8
	ldr r0, _080A250C @ =0x00000175
	bl sub_80262A8
	cmp r0, #0
	beq _080A24BA
	movs r0, #0x31
	movs r1, #1
	bl sub_80261D8
_080A24BA:
	ldr r0, _080A2510 @ =gUnknown_03001308
	strb r4, [r0]
	ldr r0, _080A2514 @ =gUnknown_03003970
	strb r4, [r0]
	ldr r1, _080A2518 @ =gUnknown_03004EF4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A24E6
	strb r5, [r1]
	bl sub_80A50A8
	ldr r0, _080A251C @ =0x0000021E
	movs r1, #0
	bl sub_80261D8
	movs r0, #0xb
	movs r1, #0
	bl sub_80261D8
	movs r0, #0
	bl SetOverworldStatusSuppresionFlag
_080A24E6:
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A24F0: .4byte gUnknown_03003934
_080A24F4: .4byte gNewKeys
_080A24F8: .4byte 0x000003FF
_080A24FC: .4byte gUnknown_0300521C
_080A2500: .4byte m2_character_info
_080A2504: .4byte 0x000006A4
_080A2508: .4byte gUnknown_030012E0
_080A250C: .4byte 0x00000175
_080A2510: .4byte gUnknown_03001308
_080A2514: .4byte gUnknown_03003970
_080A2518: .4byte gUnknown_03004EF4
_080A251C: .4byte 0x0000021E

	thumb_func_start sub_80A2520
sub_80A2520: @ 0x080A2520
	push {lr}
	bl sub_80A2AB8
	cmp r0, #8
	bhi _080A2570
	lsls r0, r0, #2
	ldr r1, _080A2534 @ =_080A2538
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2534: .4byte _080A2538
_080A2538: @ jump table
	.4byte _080A256C @ case 0
	.4byte _080A2570 @ case 1
	.4byte _080A255C @ case 2
	.4byte _080A256C @ case 3
	.4byte _080A2570 @ case 4
	.4byte _080A2570 @ case 5
	.4byte _080A2570 @ case 6
	.4byte _080A2570 @ case 7
	.4byte _080A255C @ case 8
_080A255C:
	ldr r0, _080A2568 @ =gUnknown_03004EE0
	ldr r0, [r0]
	bl sub_80A2578
	b _080A2572
	.align 2, 0
_080A2568: .4byte gUnknown_03004EE0
_080A256C:
	movs r0, #0
	b _080A2572
_080A2570:
	movs r0, #1
_080A2572:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A2578
sub_80A2578: @ 0x080A2578
	push {lr}
	ldr r0, _080A2588 @ =gUnknown_03004F00
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A258C
	bl sub_80A2594
	b _080A258E
	.align 2, 0
_080A2588: .4byte gUnknown_03004F00
_080A258C:
	movs r0, #1
_080A258E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A2594
sub_80A2594: @ 0x080A2594
	push {r4, r5, r6, lr}
	ldr r1, _080A25F4 @ =gUnknown_03004F00
	movs r0, #0
	strb r0, [r1]
	ldr r6, _080A25F8 @ =gUnknown_03004EE0
	ldr r0, [r6]
	ldr r4, [r0, #0xc]
	cmp r4, #0
	beq _080A2608
	ldrh r1, [r0, #0xa]
	ldr r0, _080A25FC @ =0xFFFFBFFF
	ands r0, r1
	lsls r5, r0, #0x10
	lsrs r1, r5, #0x10
	cmp r1, #0
	beq _080A25CA
	ldr r0, _080A2600 @ =0x00003FFF
	ands r0, r1
	bl sub_80262A8
	movs r1, #0
	cmp r0, #0
	bne _080A25C4
	movs r1, #1
_080A25C4:
	lsrs r0, r5, #0x1f
	cmp r1, r0
	beq _080A2608
_080A25CA:
	ldr r0, _080A2604 @ =gUnknown_030012FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A25E0
	bl sub_8020064
	adds r0, r4, #0
	movs r1, #0
	bl sub_80BCA00
_080A25E0:
	ldr r0, [r6]
	ldrh r1, [r0, #0xa]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A2608
	movs r0, #0
	b _080A260A
	.align 2, 0
_080A25F4: .4byte gUnknown_03004F00
_080A25F8: .4byte gUnknown_03004EE0
_080A25FC: .4byte 0xFFFFBFFF
_080A2600: .4byte 0x00003FFF
_080A2604: .4byte gUnknown_030012FC
_080A2608:
	movs r0, #1
_080A260A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80A2610
sub_80A2610: @ 0x080A2610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, _080A26D8 @ =gUnknown_03004EF0
	ldr r1, [r0]
	cmp r1, #0
	bne _080A262E
	b _080A2972
_080A262E:
	movs r0, #0
	str r0, [sp, #0x18]
	movs r2, #0x64
	str r2, [sp, #0x20]
	mov sl, r2
	movs r3, #0
	str r3, [sp, #0x14]
	mov sb, r3
	ldr r0, _080A26DC @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x68
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	adds r7, r1, #0
	movs r4, #0
	str r4, [sp, #0x10]
	ldr r0, _080A26E0 @ =gUnknown_03004EEC
	ldr r1, [r0]
	mov ip, r0
	cmp r3, r1
	blt _080A265A
	b _080A296C
_080A265A:
	movs r1, #8
	ldrsh r0, [r7, r1]
	cmp r0, #5
	beq _080A2664
	b _080A2958
_080A2664:
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r3, [sp]
	cmp r1, r3
	ble _080A2670
	b _080A2958
_080A2670:
	movs r4, #4
	ldrsh r0, [r7, r4]
	cmp r0, r3
	bge _080A267A
	b _080A2958
_080A267A:
	movs r3, #2
	ldrsh r2, [r7, r3]
	ldr r4, [sp, #4]
	cmp r2, r4
	ble _080A2686
	b _080A2958
_080A2686:
	movs r4, #6
	ldrsh r3, [r7, r4]
	ldr r4, [sp, #4]
	cmp r3, r4
	bge _080A2692
	b _080A2958
_080A2692:
	adds r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	adds r0, r2, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r3, r0, #1
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _080A2708
	ldr r1, [sp]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r2, [sp, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080A26E8
	ldrh r0, [r7, #0xa]
	ldr r2, _080A26E4 @ =0x00007FFF
	mov sb, r2
	mov r3, sb
	ands r3, r0
	mov sb, r3
	b _080A294E
	.align 2, 0
_080A26D8: .4byte gUnknown_03004EF0
_080A26DC: .4byte gUnknown_03005328
_080A26E0: .4byte gUnknown_03004EEC
_080A26E4: .4byte 0x00007FFF
_080A26E8:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_801E63C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	b _080A294E
_080A2708:
	ldr r1, [sp]
	subs r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [sp, #4]
	subs r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_801E63C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [sp, #0x1c]
	cmp r0, #7
	bls _080A273A
	b _080A2950
_080A273A:
	lsls r0, r0, #2
	ldr r1, _080A2744 @ =_080A2748
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A2744: .4byte _080A2748
_080A2748: @ jump table
	.4byte _080A2768 @ case 0
	.4byte _080A2768 @ case 1
	.4byte _080A27D0 @ case 2
	.4byte _080A2838 @ case 3
	.4byte _080A2838 @ case 4
	.4byte _080A2838 @ case 5
	.4byte _080A289C @ case 6
	.4byte _080A2768 @ case 7
_080A2768:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _080A2778
	b _080A28FC
_080A2778:
	lsls r5, r2, #0x10
	lsls r0, r3, #0x10
	ands r0, r5
	ldr r4, _080A27CC @ =gUnknown_03004EEC
	mov ip, r4
	cmp r0, #0
	bne _080A2788
	b _080A2958
_080A2788:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A2794
	rsbs r2, r2, #0
_080A2794:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A27A0
	rsbs r0, r0, #0
_080A27A0:
	adds r1, r2, r0
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	bge _080A27AC
	rsbs r2, r2, #0
_080A27AC:
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080A27B8
	rsbs r0, r0, #0
_080A27B8:
	adds r0, r2, r0
	cmp r1, r0
	bgt _080A27C0
	b _080A2950
_080A27C0:
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsrs r3, r3, #0x10
	mov sl, r3
	b _080A294A
	.align 2, 0
_080A27CC: .4byte gUnknown_03004EEC
_080A27D0:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r3, #2
	ands r0, r3
	cmp r0, #0
	bne _080A27E0
	b _080A28FC
_080A27E0:
	lsls r5, r2, #0x10
	lsls r0, r3, #0x10
	ands r0, r5
	ldr r4, _080A2834 @ =gUnknown_03004EEC
	mov ip, r4
	cmp r0, #0
	bne _080A27F0
	b _080A2958
_080A27F0:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A27FC
	rsbs r2, r2, #0
_080A27FC:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A2808
	rsbs r0, r0, #0
_080A2808:
	adds r1, r2, r0
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	bge _080A2814
	rsbs r2, r2, #0
_080A2814:
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080A2820
	rsbs r0, r0, #0
_080A2820:
	adds r0, r2, r0
	cmp r1, r0
	bgt _080A2828
	b _080A2950
_080A2828:
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsrs r3, r3, #0x10
	mov sl, r3
	b _080A294A
	.align 2, 0
_080A2834: .4byte gUnknown_03004EEC
_080A2838:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r3, #4
	ands r0, r3
	cmp r0, #0
	beq _080A28FC
	lsls r5, r2, #0x10
	lsls r0, r3, #0x10
	ands r0, r5
	ldr r4, _080A2898 @ =gUnknown_03004EEC
	mov ip, r4
	cmp r0, #0
	bne _080A2856
	b _080A2958
_080A2856:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A2862
	rsbs r2, r2, #0
_080A2862:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A286E
	rsbs r0, r0, #0
_080A286E:
	adds r1, r2, r0
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	bge _080A287A
	rsbs r2, r2, #0
_080A287A:
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080A2886
	rsbs r0, r0, #0
_080A2886:
	adds r0, r2, r0
	cmp r1, r0
	ble _080A2950
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsrs r3, r3, #0x10
	mov sl, r3
	b _080A294A
	.align 2, 0
_080A2898: .4byte gUnknown_03004EEC
_080A289C:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r3, #8
	ands r0, r3
	cmp r0, #0
	beq _080A28FC
	lsls r5, r2, #0x10
	lsls r0, r3, #0x10
	ands r0, r5
	ldr r4, _080A28F8 @ =gUnknown_03004EEC
	mov ip, r4
	cmp r0, #0
	beq _080A2958
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A28C4
	rsbs r2, r2, #0
_080A28C4:
	mov r3, sl
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A28D0
	rsbs r0, r0, #0
_080A28D0:
	adds r1, r2, r0
	lsls r4, r6, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	bge _080A28DC
	rsbs r2, r2, #0
_080A28DC:
	mov r0, r8
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080A28E8
	rsbs r0, r0, #0
_080A28E8:
	adds r0, r2, r0
	cmp r1, r0
	ble _080A2950
	lsrs r4, r4, #0x10
	str r4, [sp, #0x20]
	lsrs r3, r3, #0x10
	mov sl, r3
	b _080A294A
	.align 2, 0
_080A28F8: .4byte gUnknown_03004EEC
_080A28FC:
	lsls r1, r2, #0x10
	lsls r0, r3, #0x10
	ands r0, r1
	adds r5, r1, #0
	lsls r3, r6, #0x10
	mov r1, r8
	lsls r4, r1, #0x10
	cmp r0, #0
	bne _080A2942
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A291A
	rsbs r2, r2, #0
_080A291A:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080A2926
	rsbs r0, r0, #0
_080A2926:
	adds r1, r2, r0
	asrs r2, r3, #0x10
	cmp r2, #0
	bge _080A2930
	rsbs r2, r2, #0
_080A2930:
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _080A2938
	rsbs r0, r0, #0
_080A2938:
	adds r0, r2, r0
	ldr r2, _080A2978 @ =gUnknown_03004EEC
	mov ip, r2
	cmp r1, r0
	blt _080A2958
_080A2942:
	lsrs r3, r3, #0x10
	str r3, [sp, #0x20]
	lsrs r4, r4, #0x10
	mov sl, r4
_080A294A:
	lsrs r5, r5, #0x10
	mov sb, r5
_080A294E:
	str r7, [sp, #0x14]
_080A2950:
	movs r3, #1
	str r3, [sp, #0x18]
	ldr r4, _080A2978 @ =gUnknown_03004EEC
	mov ip, r4
_080A2958:
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	adds r7, #0x10
	mov r1, ip
	ldr r0, [r1]
	ldr r2, [sp, #0x10]
	cmp r2, r0
	bge _080A296C
	b _080A265A
_080A296C:
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _080A297C
_080A2972:
	movs r0, #0
	b _080A29D2
	.align 2, 0
_080A2978: .4byte gUnknown_03004EEC
_080A297C:
	ldr r4, [sp, #0x14]
	movs r1, #2
	ldrsh r0, [r4, r1]
	movs r2, #6
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r3, r0, #1
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _080A29A8
	ldrh r1, [r4, #0xa]
	subs r0, #1
	ands r0, r1
	ldr r1, [sp, #0x48]
	strh r0, [r1]
	b _080A29BA
_080A29A8:
	ldr r2, [sp, #4]
	cmp r2, r3
	bgt _080A29B4
	ldr r3, [sp, #0x48]
	strh r1, [r3]
	b _080A29BA
_080A29B4:
	movs r0, #4
	ldr r4, [sp, #0x48]
	strh r0, [r4]
_080A29BA:
	mov r0, sp
	ldrh r1, [r0, #0x20]
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r0, [sp, #0x44]
	mov r2, sl
	strh r2, [r0]
	mov r4, sb
	ldr r3, [sp, #8]
	strh r4, [r3]
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0xc]
_080A29D2:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A29E4
sub_80A29E4: @ 0x080A29E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	ldr r0, _080A2A60 @ =gUnknown_03004EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _080A2AA8
	adds r5, r0, #0
	movs r2, #0
	ldr r0, _080A2A64 @ =gUnknown_03004EEC
	ldr r1, [r0]
	mov sl, r0
	cmp r2, r1
	bge _080A2AA8
	ldr r0, _080A2A68 @ =0x00007FFF
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #7
	mov ip, r1
	ldr r3, _080A2A6C @ =0x00003FFF
	mov sb, r3
_080A2A18:
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #6
	bne _080A2A9C
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, r4
	bgt _080A2A9C
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, r4
	blt _080A2A9C
	movs r3, #2
	ldrsh r1, [r5, r3]
	cmp r1, r6
	bgt _080A2A9C
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, r6
	blt _080A2A9C
	adds r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	movs r0, #0xa
	ldrsh r4, [r5, r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r4, r0
	cmp r4, #0
	beq _080A2A70
	ldrh r1, [r5, #0xa]
	mov r0, r8
	ands r0, r1
	b _080A2A96
	.align 2, 0
_080A2A60: .4byte gUnknown_03004EF0
_080A2A64: .4byte gUnknown_03004EEC
_080A2A68: .4byte 0x00007FFF
_080A2A6C: .4byte 0x00003FFF
_080A2A70:
	ldrh r2, [r5, #0xa]
	mov r0, ip
	ands r0, r2
	cmp r0, #0
	beq _080A2A88
	mov r1, sb
	ands r1, r2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A2A88:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bgt _080A2A94
	strh r4, [r7]
	b _080A2A98
_080A2A94:
	movs r0, #4
_080A2A96:
	strh r0, [r7]
_080A2A98:
	ldr r0, [r5, #0xc]
	b _080A2AAA
_080A2A9C:
	adds r2, #1
	adds r5, #0x10
	mov r1, sl
	ldr r0, [r1]
	cmp r2, r0
	blt _080A2A18
_080A2AA8:
	movs r0, #0
_080A2AAA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A2AB8
sub_80A2AB8: @ 0x080A2AB8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _080A2AC8 @ =gUnknown_03004EF0
	ldr r0, [r0]
	cmp r0, #0
	bne _080A2ADC
	b _080A2B12
	.align 2, 0
_080A2AC8: .4byte gUnknown_03004EF0
_080A2ACC:
	ldr r0, _080A2AD8 @ =gUnknown_03004EE0
	str r2, [r0]
	movs r1, #8
	ldrsh r0, [r2, r1]
	b _080A2B16
	.align 2, 0
_080A2AD8: .4byte gUnknown_03004EE0
_080A2ADC:
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _080A2B1C @ =gUnknown_03004EEC
	ldr r0, [r0]
	cmp r3, r0
	bge _080A2B12
	adds r5, r0, #0
_080A2AEA:
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, r4
	bgt _080A2B0A
	movs r6, #4
	ldrsh r0, [r2, r6]
	cmp r0, r4
	blt _080A2B0A
	movs r6, #2
	ldrsh r0, [r2, r6]
	cmp r0, r1
	bgt _080A2B0A
	movs r6, #6
	ldrsh r0, [r2, r6]
	cmp r0, r1
	bge _080A2ACC
_080A2B0A:
	adds r3, #1
	adds r2, #0x10
	cmp r3, r5
	blt _080A2AEA
_080A2B12:
	movs r0, #1
	rsbs r0, r0, #0
_080A2B16:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2B1C: .4byte gUnknown_03004EEC

	thumb_func_start sub_80A2B20
sub_80A2B20: @ 0x080A2B20
	push {r4, lr}
	adds r4, r0, #0
	b _080A2B28
_080A2B26:
	adds r4, r4, r0
_080A2B28:
	adds r0, r4, #0
	bl sub_80A2B38
	cmp r0, #0
	bne _080A2B26
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A2B38
sub_80A2B38: @ 0x080A2B38
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	bne _080A2C08
	ldrb r0, [r4]
	lsls r1, r0, #0x18
	adds r2, r0, #0
	cmp r1, #0
	bge _080A2B54
	adds r0, r4, #0
	bl m2_handle_some_controlcodes
	b _080A2C0A
_080A2B54:
	lsrs r0, r1, #0x18
	cmp r0, #1
	beq _080A2C04
	cmp r0, #0
	bne _080A2B6C
	adds r0, r4, #0
	bl sub_80A7C18
	cmp r0, #0
	beq _080A2C08
	adds r0, #2
	b _080A2C0A
_080A2B6C:
	cmp r0, #2
	beq _080A2C04
	cmp r0, #0xc
	beq _080A2C04
	cmp r0, #0xd
	beq _080A2C04
	cmp r0, #0xe
	beq _080A2C04
	cmp r0, #0xf
	beq _080A2C04
	cmp r0, #0x10
	beq _080A2C04
	cmp r0, #0x11
	beq _080A2C04
	adds r1, r0, #0
	cmp r1, #0x12
	beq _080A2C04
	cmp r1, #4
	beq _080A2B9A
	cmp r1, #5
	beq _080A2B9A
	cmp r1, #6
	bne _080A2B9E
_080A2B9A:
	movs r0, #6
	b _080A2C0A
_080A2B9E:
	cmp r1, #0x14
	beq _080A2BBC
	cmp r1, #8
	bne _080A2BAE
	adds r4, #2
	adds r0, r4, #0
	movs r1, #1
	b _080A2BB8
_080A2BAE:
	cmp r1, #9
	bne _080A2BC0
	adds r4, #2
	adds r0, r4, #0
	movs r1, #0
_080A2BB8:
	bl sub_802623C
_080A2BBC:
	movs r0, #4
	b _080A2C0A
_080A2BC0:
	cmp r1, #0x18
	beq _080A2BBC
	cmp r1, #0x19
	beq _080A2BBC
	cmp r0, #0x1b
	beq _080A2BBC
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	beq _080A2C04
	cmp r0, #0x1c
	bne _080A2C00
	adds r4, #2
	adds r0, r4, #0
	bl sub_80262DC
	cmp r0, #0
	beq _080A2BFC
	adds r4, #2
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x18
	orrs r0, r1
	b _080A2C0A
_080A2BFC:
	movs r0, #8
	b _080A2C0A
_080A2C00:
	cmp r0, #3
	bne _080A2C08
_080A2C04:
	movs r0, #2
	b _080A2C0A
_080A2C08:
	movs r0, #0
_080A2C0A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A2C10
sub_80A2C10: @ 0x080A2C10
	push {lr}
	ldr r0, _080A2C2C @ =m2_character_info
	movs r2, #0
	movs r1, #1
	movs r3, #0xd1
	lsls r3, r3, #3
	adds r0, r0, r3
_080A2C1E:
	strh r2, [r0]
	subs r0, #0x10
	subs r1, #1
	cmp r1, #0
	bge _080A2C1E
	pop {r0}
	bx r0
	.align 2, 0
_080A2C2C: .4byte m2_character_info

	thumb_func_start sub_80A2C30
sub_80A2C30: @ 0x080A2C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	ldr r1, _080A2CE0 @ =gUnknown_08720620
	adds r4, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	ldr r1, _080A2CE4 @ =gUnknown_030023A0
	adds r3, r0, r1
	ldr r0, _080A2CE8 @ =0xFFFFFBD4
	adds r2, r1, r0
	ldr r5, _080A2CEC @ =0xFFFFFBEC
	adds r1, r1, r5
	ldrh r7, [r1]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #0x13
	movs r5, #2
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	mov ip, r0
	movs r5, #4
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x10
	movs r5, #6
	ldrsh r0, [r4, r5]
	lsls r0, r0, #0x13
	lsrs r5, r0, #0x10
	movs r0, #0
	ldrsh r2, [r2, r0]
	lsrs r0, r1, #0x10
	mov sb, r0
	asrs r1, r1, #0x10
	movs r0, #2
	mov r8, r0
	cmp r2, r1
	ble _080A2CBA
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080A2CBA
	lsls r0, r7, #0x10
	mov r2, ip
	lsls r1, r2, #0x10
	asrs r2, r0, #0x10
	cmp r0, r1
	ble _080A2CBA
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	bge _080A2CBA
	movs r1, #8
	ldrsh r0, [r4, r1]
	ldr r1, _080A2CF0 @ =gCurrentMapId
	ldr r1, [r1]
	cmp r0, r1
	bne _080A2CBA
	movs r2, #1
	mov r8, r2
_080A2CBA:
	mov r0, r8
	strh r0, [r3, #8]
	mov r1, sb
	strh r1, [r3]
	strh r6, [r3, #4]
	mov r2, ip
	strh r2, [r3, #2]
	strh r5, [r3, #6]
	mov r5, sl
	str r5, [r3, #0xc]
	ldrh r0, [r4, #8]
	strh r0, [r3, #0xa]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2CE0: .4byte gUnknown_08720620
_080A2CE4: .4byte gUnknown_030023A0
_080A2CE8: .4byte 0xFFFFFBD4
_080A2CEC: .4byte 0xFFFFFBEC
_080A2CF0: .4byte gCurrentMapId

	thumb_func_start sub_80A2CF4
sub_80A2CF4: @ 0x080A2CF4
	lsls r0, r0, #0x10
	asrs r0, r0, #0xc
	ldr r1, _080A2D04 @ =gUnknown_030023A0
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #8]
	bx lr
	.align 2, 0
_080A2D04: .4byte gUnknown_030023A0

	thumb_func_start sub_80A2D08
sub_80A2D08: @ 0x080A2D08
	push {r4, lr}
	movs r4, #0
_080A2D0C:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_80A2D20
	adds r4, #1
	cmp r4, #1
	ble _080A2D0C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A2D20
sub_80A2D20: @ 0x080A2D20
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _080A2DA8 @ =gUnknown_030012FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A2DF8
	bl sub_80CFD00
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2DF8
	lsls r0, r4, #0x10
	asrs r0, r0, #0xc
	ldr r2, _080A2DAC @ =gUnknown_030023B0
	adds r4, r0, r2
	movs r3, #8
	ldrsh r5, [r4, r3]
	cmp r5, #0
	beq _080A2DF8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldr r1, _080A2DB0 @ =gCurrentMapId
	ldr r1, [r1]
	cmp r0, r1
	bne _080A2DF8
	ldr r3, _080A2DB4 @ =0xFFFFFBC4
	adds r0, r2, r3
	ldrh r3, [r0]
	adds r6, r3, #0
	ldr r1, _080A2DB8 @ =0xFFFFFBDC
	adds r0, r2, r1
	ldrh r2, [r0]
	adds r7, r2, #0
	ldr r1, [r4, #0xc]
	ldr r0, _080A2DBC @ =gUnknown_0807313A
	cmp r1, r0
	bne _080A2D78
	lsls r1, r2, #0x10
	movs r0, #0xa1
	lsls r0, r0, #0x12
	cmp r1, r0
	ble _080A2DF8
_080A2D78:
	cmp r5, #1
	bne _080A2DC0
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _080A2DE8
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _080A2DE8
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _080A2DE8
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _080A2DE8
	b _080A2DF8
	.align 2, 0
_080A2DA8: .4byte gUnknown_030012FC
_080A2DAC: .4byte gUnknown_030023B0
_080A2DB0: .4byte gCurrentMapId
_080A2DB4: .4byte 0xFFFFFBC4
_080A2DB8: .4byte 0xFFFFFBDC
_080A2DBC: .4byte gUnknown_0807313A
_080A2DC0:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _080A2DF8
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bge _080A2DF8
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _080A2DF8
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bge _080A2DF8
_080A2DE8:
	movs r0, #0
	strh r0, [r4, #8]
	bl sub_8020064
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl sub_80BCA00
_080A2DF8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A2E00
sub_80A2E00: @ 0x080A2E00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _080A2E1C @ =gUnknown_030012FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A2E20
_080A2E18:
	movs r0, #0
	b _080A321E
	.align 2, 0
_080A2E1C: .4byte gUnknown_030012FC
_080A2E20:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #0x38
	bgt _080A2E34
	ldr r5, _080A2E30 @ =gUnknown_0872E404
	b _080A2F34
	.align 2, 0
_080A2E30: .4byte gUnknown_0872E404
_080A2E34:
	cmp r1, #0x5d
	bgt _080A2E40
	ldr r5, _080A2E3C @ =gUnknown_0872E674
	b _080A2F34
	.align 2, 0
_080A2E3C: .4byte gUnknown_0872E674
_080A2E40:
	cmp r1, #0x60
	bgt _080A2E4C
	ldr r5, _080A2E48 @ =gUnknown_0872E774
	b _080A2F34
	.align 2, 0
_080A2E48: .4byte gUnknown_0872E774
_080A2E4C:
	cmp r1, #0x6d
	bgt _080A2E58
	ldr r5, _080A2E54 @ =gUnknown_0872E7B4
	b _080A2F34
	.align 2, 0
_080A2E54: .4byte gUnknown_0872E7B4
_080A2E58:
	cmp r1, #0x8c
	bgt _080A2E64
	ldr r5, _080A2E60 @ =gUnknown_0872E874
	b _080A2F34
	.align 2, 0
_080A2E60: .4byte gUnknown_0872E874
_080A2E64:
	cmp r1, #0xaa
	bgt _080A2E70
	ldr r5, _080A2E6C @ =gUnknown_0872E904
	b _080A2F34
	.align 2, 0
_080A2E6C: .4byte gUnknown_0872E904
_080A2E70:
	cmp r1, #0xb5
	bgt _080A2E7C
	ldr r5, _080A2E78 @ =gUnknown_0872EA44
	b _080A2F34
	.align 2, 0
_080A2E78: .4byte gUnknown_0872EA44
_080A2E7C:
	cmp r1, #0xbf
	bgt _080A2E88
	ldr r5, _080A2E84 @ =gUnknown_0872EA94
	b _080A2F34
	.align 2, 0
_080A2E84: .4byte gUnknown_0872EA94
_080A2E88:
	cmp r1, #0xe0
	bgt _080A2E94
	ldr r5, _080A2E90 @ =gUnknown_0872EB44
	b _080A2F34
	.align 2, 0
_080A2E90: .4byte gUnknown_0872EB44
_080A2E94:
	movs r0, #0x8b
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080A2EA4
	ldr r5, _080A2EA0 @ =gUnknown_0872ECF4
	b _080A2F34
	.align 2, 0
_080A2EA0: .4byte gUnknown_0872ECF4
_080A2EA4:
	movs r0, #0x8f
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080A2EB4
	ldr r5, _080A2EB0 @ =gUnknown_0872EE94
	b _080A2F34
	.align 2, 0
_080A2EB0: .4byte gUnknown_0872EE94
_080A2EB4:
	ldr r0, _080A2EC0 @ =0x00000137
	cmp r1, r0
	bgt _080A2EC8
	ldr r5, _080A2EC4 @ =gUnknown_0872EEB4
	b _080A2F34
	.align 2, 0
_080A2EC0: .4byte 0x00000137
_080A2EC4: .4byte gUnknown_0872EEB4
_080A2EC8:
	ldr r0, _080A2ED4 @ =0x00000143
	cmp r1, r0
	bgt _080A2EDC
	ldr r5, _080A2ED8 @ =gUnknown_0872EFE4
	b _080A2F34
	.align 2, 0
_080A2ED4: .4byte 0x00000143
_080A2ED8: .4byte gUnknown_0872EFE4
_080A2EDC:
	movs r0, #0xaf
	lsls r0, r0, #1
	cmp r1, r0
	bgt _080A2EEC
	ldr r5, _080A2EE8 @ =gUnknown_0872F0B4
	b _080A2F34
	.align 2, 0
_080A2EE8: .4byte gUnknown_0872F0B4
_080A2EEC:
	ldr r0, _080A2EF8 @ =0x00000165
	cmp r1, r0
	bgt _080A2F00
	ldr r5, _080A2EFC @ =gUnknown_0872F184
	b _080A2F34
	.align 2, 0
_080A2EF8: .4byte 0x00000165
_080A2EFC: .4byte gUnknown_0872F184
_080A2F00:
	ldr r0, _080A2F0C @ =0x0000016F
	cmp r1, r0
	bgt _080A2F14
	ldr r5, _080A2F10 @ =gUnknown_0872F1F4
	b _080A2F34
	.align 2, 0
_080A2F0C: .4byte 0x0000016F
_080A2F10: .4byte gUnknown_0872F1F4
_080A2F14:
	ldr r0, _080A2F20 @ =0x00000175
	cmp r1, r0
	bgt _080A2F28
	ldr r5, _080A2F24 @ =gUnknown_0872F224
	b _080A2F34
	.align 2, 0
_080A2F20: .4byte 0x00000175
_080A2F24: .4byte gUnknown_0872F224
_080A2F28:
	movs r0, #0xbc
	lsls r0, r0, #1
	movs r5, #0
	cmp r1, r0
	bgt _080A2F34
	ldr r5, _080A2F40 @ =gUnknown_0872F2B4
_080A2F34:
	cmp r5, #0
	bne _080A2F44
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	b _080A3218
	.align 2, 0
_080A2F40: .4byte gUnknown_0872F2B4
_080A2F44:
	ldr r0, _080A2FC4 @ =gUnknown_03001308
	movs r1, #2
	strb r1, [r0]
	ldr r1, _080A2FC8 @ =0x01630000
	lsls r6, r3, #0x10
	mov r8, r0
	cmp r7, r1
	bne _080A2FE0
	asrs r1, r6, #0x10
	ldr r0, _080A2FCC @ =0x00000165
	cmp r1, r0
	bne _080A2F5E
	b _080A30D6
_080A2F5E:
	movs r0, #0xb2
	lsls r0, r0, #1
	cmp r1, r0
	bne _080A2FE0
	ldr r1, _080A2FD0 @ =m2_character_info
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r3, [r0]
	adds r2, r1, #0
	cmp r3, #0xb7
	ble _080A2F90
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _080A2FD4 @ =0x000001B7
	cmp r1, r0
	ble _080A2F90
	cmp r3, #0xfe
	bgt _080A2F90
	adds r0, #0x47
	cmp r1, r0
	bgt _080A2F90
	b _080A30D6
_080A2F90:
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r0, _080A2FD8 @ =0x00000197
	cmp r3, r0
	bgt _080A2FA0
	b _080A30F8
_080A2FA0:
	adds r1, #0x18
	adds r0, r2, r1
	ldr r1, [r0]
	ldr r0, _080A2FDC @ =0x00000317
	cmp r1, r0
	bgt _080A2FAE
	b _080A30F8
_080A2FAE:
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r3, r0
	ble _080A2FB8
	b _080A30F8
_080A2FB8:
	movs r0, #0xd8
	lsls r0, r0, #2
	cmp r1, r0
	ble _080A2FC2
	b _080A30F8
_080A2FC2:
	b _080A30D6
	.align 2, 0
_080A2FC4: .4byte gUnknown_03001308
_080A2FC8: .4byte 0x01630000
_080A2FCC: .4byte 0x00000165
_080A2FD0: .4byte m2_character_info
_080A2FD4: .4byte 0x000001B7
_080A2FD8: .4byte 0x00000197
_080A2FDC: .4byte 0x00000317
_080A2FE0:
	movs r0, #0xa7
	lsls r0, r0, #0x11
	cmp r7, r0
	bne _080A2FF8
	ldr r0, _080A2FF4 @ =0x01550000
	cmp r6, r0
	bne _080A2FF8
	movs r0, #4
	b _080A30F4
	.align 2, 0
_080A2FF4: .4byte 0x01550000
_080A2FF8:
	ldr r0, _080A3028 @ =0x01570000
	cmp r7, r0
	bne _080A3006
	movs r0, #0xac
	lsls r0, r0, #0x11
	cmp r6, r0
	beq _080A30D6
_080A3006:
	movs r0, #0xaf
	lsls r0, r0, #0x11
	cmp r7, r0
	bne _080A3038
	ldr r0, _080A302C @ =0x015D0000
	cmp r6, r0
	bne _080A3038
	ldr r0, _080A3030 @ =m2_character_info
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080A3034 @ =0x0000015F
	cmp r1, r0
	ble _080A30F8
	b _080A30D6
	.align 2, 0
_080A3028: .4byte 0x01570000
_080A302C: .4byte 0x015D0000
_080A3030: .4byte m2_character_info
_080A3034: .4byte 0x0000015F
_080A3038:
	ldr r0, _080A3058 @ =0x015D0000
	cmp r7, r0
	bne _080A3064
	movs r0, #0xae
	lsls r0, r0, #0x11
	cmp r6, r0
	bne _080A3064
	ldr r0, _080A305C @ =m2_character_info
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080A3060 @ =0x0000011F
	cmp r1, r0
	ble _080A30F8
	b _080A30D6
	.align 2, 0
_080A3058: .4byte 0x015D0000
_080A305C: .4byte m2_character_info
_080A3060: .4byte 0x0000011F
_080A3064:
	movs r0, #0xae
	lsls r0, r0, #0x11
	cmp r7, r0
	bne _080A3090
	movs r0, #0xad
	lsls r0, r0, #0x11
	cmp r6, r0
	bne _080A3090
	ldr r0, _080A3088 @ =m2_character_info
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080A308C @ =0x000001CF
	cmp r1, r0
	ble _080A30F8
	b _080A30D6
	.align 2, 0
_080A3088: .4byte m2_character_info
_080A308C: .4byte 0x000001CF
_080A3090:
	ldr r0, _080A30A4 @ =0x013F0000
	cmp r7, r0
	bne _080A30A8
	movs r0, #0xa0
	lsls r0, r0, #0x11
	cmp r6, r0
	bne _080A30A8
	movs r0, #4
	b _080A30F4
	.align 2, 0
_080A30A4: .4byte 0x013F0000
_080A30A8:
	asrs r1, r7, #0x10
	movs r0, #0xa0
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A30D6
	ldr r0, _080A30C4 @ =0x00000141
	cmp r1, r0
	bne _080A30C8
	movs r0, #0xa1
	lsls r0, r0, #0x11
	cmp r6, r0
	bne _080A30C8
	movs r0, #4
	b _080A30F4
	.align 2, 0
_080A30C4: .4byte 0x00000141
_080A30C8:
	movs r0, #0xa1
	lsls r0, r0, #0x11
	cmp r7, r0
	bne _080A30E4
	ldr r0, _080A30E0 @ =0x01410000
	cmp r6, r0
	bne _080A30E4
_080A30D6:
	movs r0, #4
	mov r2, r8
	strb r0, [r2]
	b _080A30F8
	.align 2, 0
_080A30E0: .4byte 0x01410000
_080A30E4:
	asrs r1, r7, #0x10
	ldr r0, _080A3130 @ =0x00000177
	cmp r1, r0
	bne _080A30F8
	asrs r0, r6, #0x10
	cmp r0, r1
	bne _080A30F8
	movs r0, #1
_080A30F4:
	mov r1, r8
	strb r0, [r1]
_080A30F8:
	ldrh r2, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3108
	b _080A3208
_080A3108:
	ldr r3, _080A3134 @ =0x0000FFFF
	ldr r4, _080A3138 @ =gUnknown_03001F74
	movs r1, #0x18
	adds r1, r1, r4
	mov ip, r1
_080A3112:
	lsls r0, r2, #0x10
	cmp r0, r7
	bne _080A31F8
	movs r2, #2
	ldrsh r1, [r5, r2]
	asrs r0, r6, #0x10
	cmp r1, r0
	bne _080A31F8
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080A313C
	ands r1, r3
	ldr r0, [r4]
	b _080A315C
	.align 2, 0
_080A3130: .4byte 0x00000177
_080A3134: .4byte 0x0000FFFF
_080A3138: .4byte gUnknown_03001F74
_080A313C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	beq _080A314C
	ands r1, r3
	ldr r0, [r4]
	b _080A3172
_080A314C:
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r0, r1
	cmp r0, #0
	beq _080A3162
	ands r1, r3
	mov r2, ip
	ldr r0, [r2]
_080A315C:
	cmp r1, r0
	bgt _080A31F8
	b _080A3176
_080A3162:
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _080A3176
	ands r1, r3
	mov r2, ip
	ldr r0, [r2]
_080A3172:
	cmp r1, r0
	blt _080A31F8
_080A3176:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080A31AE
	ldrh r1, [r5, #6]
	ldr r2, _080A31E8 @ =0x00007FFF
	adds r0, r2, #0
	ands r0, r1
	bl sub_80262A8
	movs r1, #0
	cmp r0, #0
	bne _080A3190
	movs r1, #1
_080A3190:
	movs r2, #6
	ldrsh r0, [r5, r2]
	lsrs r0, r0, #0xf
	movs r4, #1
	ands r0, r4
	cmp r1, r0
	beq _080A31AE
	bl sub_8020064
	ldr r0, [r5, #8]
	movs r1, #0
	bl sub_80BCA00
	ldr r0, _080A31EC @ =gUnknown_03004ED4
	strb r4, [r0]
_080A31AE:
	ldrh r1, [r5, #4]
	ldr r2, _080A31E8 @ =0x00007FFF
	adds r0, r2, #0
	ands r0, r1
	bl sub_80262A8
	movs r2, #0
	cmp r0, #0
	bne _080A31C2
	movs r2, #1
_080A31C2:
	movs r1, #4
	ldrsh r0, [r5, r1]
	lsrs r0, r0, #0xf
	movs r1, #1
	ands r0, r1
	cmp r2, r0
	bne _080A31D2
	b _080A2E18
_080A31D2:
	asrs r0, r6, #0x10
	bl FadeOutMapMusic
	ldr r0, _080A31F0 @ =gUnknown_03001308
	ldrb r0, [r0]
	cmp r0, #4
	bne _080A321C
	ldr r0, _080A31F4 @ =0x0000013D
	bl m2_play_soundeffect
	b _080A321C
	.align 2, 0
_080A31E8: .4byte 0x00007FFF
_080A31EC: .4byte gUnknown_03004ED4
_080A31F0: .4byte gUnknown_03001308
_080A31F4: .4byte 0x0000013D
_080A31F8:
	adds r5, #0x10
	ldrh r2, [r5]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3112
_080A3208:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #4
	bne _080A3216
	ldr r0, _080A3228 @ =0x0000013D
	bl m2_play_soundeffect
_080A3216:
	asrs r0, r6, #0x10
_080A3218:
	bl FadeOutMapMusic
_080A321C:
	movs r0, #1
_080A321E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A3228: .4byte 0x0000013D

	thumb_func_start ScriptGetSecondaryMemory
ScriptGetSecondaryMemory: @ 0x080A322C
	push {lr}
	ldr r2, _080A3240 @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3248
	ldr r0, _080A3244 @ =gUnknown_03005060
	b _080A3254
	.align 2, 0
_080A3240: .4byte gUnknown_03005050
_080A3244: .4byte gUnknown_03005060
_080A3248:
	ldr r0, _080A325C @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A3254:
	ldrb r0, [r0, #8]
	pop {r1}
	bx r1
	.align 2, 0
_080A325C: .4byte gUnknown_03004F30

	thumb_func_start sub_80A3260
sub_80A3260: @ 0x080A3260
	push {lr}
	ldr r2, _080A3280 @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3288
	ldr r0, _080A3284 @ =gUnknown_03005060
	ldrb r1, [r0, #8]
	adds r2, r1, #1
	strb r2, [r0, #8]
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	b _080A329E
	.align 2, 0
_080A3280: .4byte gUnknown_03005050
_080A3284: .4byte gUnknown_03005060
_080A3288:
	ldr r1, _080A32A4 @ =gUnknown_03004F30
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r0, [r2, #8]
	adds r1, r0, #1
	strb r1, [r2, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080A329E:
	pop {r1}
	bx r1
	.align 2, 0
_080A32A4: .4byte gUnknown_03004F30

	thumb_func_start ScriptGetWorkingMemory
ScriptGetWorkingMemory: @ 0x080A32A8
	push {lr}
	ldr r2, _080A32BC @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A32C4
	ldr r0, _080A32C0 @ =gUnknown_03005060
	b _080A32D0
	.align 2, 0
_080A32BC: .4byte gUnknown_03005050
_080A32C0: .4byte gUnknown_03005060
_080A32C4:
	ldr r0, _080A32D8 @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A32D0:
	ldr r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_080A32D8: .4byte gUnknown_03004F30

	thumb_func_start ScriptGetArgMemory
ScriptGetArgMemory: @ 0x080A32DC
	push {lr}
	ldr r2, _080A32F0 @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A32F8
	ldr r0, _080A32F4 @ =gUnknown_03005060
	b _080A3304
	.align 2, 0
_080A32F0: .4byte gUnknown_03005050
_080A32F4: .4byte gUnknown_03005060
_080A32F8:
	ldr r0, _080A330C @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A3304:
	ldr r0, [r0, #4]
	pop {r1}
	bx r1
	.align 2, 0
_080A330C: .4byte gUnknown_03004F30

	thumb_func_start sub_80A3310
sub_80A3310: @ 0x080A3310
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r3, _080A3328 @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3330
	ldr r0, _080A332C @ =gUnknown_03005060
	b _080A333C
	.align 2, 0
_080A3328: .4byte gUnknown_03005050
_080A332C: .4byte gUnknown_03005060
_080A3330:
	ldr r0, _080A3348 @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A333C:
	strb r2, [r0, #8]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_080A3348: .4byte gUnknown_03004F30

	thumb_func_start ScriptSetWorkingMemory
ScriptSetWorkingMemory: @ 0x080A334C
	push {lr}
	adds r2, r0, #0
	ldr r3, _080A3364 @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A336C
	ldr r0, _080A3368 @ =gUnknown_03005060
	b _080A3378
	.align 2, 0
_080A3364: .4byte gUnknown_03005050
_080A3368: .4byte gUnknown_03005060
_080A336C:
	ldr r0, _080A3380 @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A3378:
	str r2, [r0]
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080A3380: .4byte gUnknown_03004F30

	thumb_func_start ScriptSetArgumentMemory
ScriptSetArgumentMemory: @ 0x080A3384
	push {lr}
	adds r2, r0, #0
	ldr r3, _080A339C @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A33A4
	ldr r0, _080A33A0 @ =gUnknown_03005060
	b _080A33B0
	.align 2, 0
_080A339C: .4byte gUnknown_03005050
_080A33A0: .4byte gUnknown_03005060
_080A33A4:
	ldr r0, _080A33B8 @ =gUnknown_03004F30
	movs r1, #0
	ldrsb r1, [r3, r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_080A33B0:
	str r2, [r0, #4]
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_080A33B8: .4byte gUnknown_03004F30

	thumb_func_start m2_handle_controlcode_CC_88_FF
m2_handle_controlcode_CC_88_FF: @ 0x080A33BC
	push {lr}
	ldr r3, _080A33DC @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A33E4
	ldr r0, _080A33E0 @ =gUnknown_03005060
	ldr r1, [r0]
	str r1, [r0, #0xc]
	ldr r1, [r0, #4]
	str r1, [r0, #0x10]
	ldrb r1, [r0, #8]
	strb r1, [r0, #0x14]
	b _080A3410
	.align 2, 0
_080A33DC: .4byte gUnknown_03005050
_080A33E0: .4byte gUnknown_03005060
_080A33E4:
	ldr r2, _080A3418 @ =gUnknown_03004F30
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1]
	str r0, [r1, #0xc]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r1, #0x10]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	strb r0, [r1, #0x14]
_080A3410:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080A3418: .4byte gUnknown_03004F30

	thumb_func_start sub_80A341C
sub_80A341C: @ 0x080A341C
	push {lr}
	ldr r3, _080A343C @ =gUnknown_03005050
	movs r1, #0
	ldrsb r1, [r3, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080A3444
	ldr r0, _080A3440 @ =gUnknown_03005060
	ldr r1, [r0, #0xc]
	str r1, [r0]
	ldr r1, [r0, #0x10]
	str r1, [r0, #4]
	ldrb r1, [r0, #0x14]
	strb r1, [r0, #8]
	b _080A3470
	.align 2, 0
_080A343C: .4byte gUnknown_03005050
_080A3440: .4byte gUnknown_03005060
_080A3444:
	ldr r2, _080A3478 @ =gUnknown_03004F30
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	str r0, [r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldr r0, [r1, #0x10]
	str r0, [r1, #4]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrb r0, [r1, #0x14]
	strb r0, [r1, #8]
_080A3470:
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0
_080A3478: .4byte gUnknown_03004F30

	thumb_func_start sub_80A347C
sub_80A347C: @ 0x080A347C
	push {lr}
	ldr r0, _080A348C @ =gUnknown_03003938
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_80A34A8
	pop {r1}
	bx r1
	.align 2, 0
_080A348C: .4byte gUnknown_03003938

	thumb_func_start sub_80A3490
sub_80A3490: @ 0x080A3490
	push {lr}
	adds r1, r0, #0
	ldr r0, _080A34A4 @ =gUnknown_03003938
	movs r2, #0
	ldrsh r0, [r0, r2]
	bl sub_80A34BC
	pop {r1}
	bx r1
	.align 2, 0
_080A34A4: .4byte gUnknown_03003938

	thumb_func_start sub_80A34A8
sub_80A34A8: @ 0x080A34A8
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80262A8
	cmp r0, #0
	beq _080A34B8
	movs r0, #1
_080A34B8:
	pop {r1}
	bx r1

	thumb_func_start sub_80A34BC
sub_80A34BC: @ 0x080A34BC
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80261D8
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A34D0
sub_80A34D0: @ 0x080A34D0
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080A34E2
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A34E2:
	bl sub_80A3500
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _080A34F4
	movs r2, #0
_080A34F4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0

	thumb_func_start sub_80A3500
sub_80A3500: @ 0x080A3500
	ldr r1, _080A3514 @ =m2_character_info
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r2, _080A3518 @ =0x000001C3
	adds r0, r1, r2
	ldrb r0, [r0]
	adds r0, #1
	bx lr
	.align 2, 0
_080A3514: .4byte m2_character_info
_080A3518: .4byte 0x000001C3

	thumb_func_start sub_80A351C
sub_80A351C: @ 0x080A351C
	ldr r0, _080A3528 @ =m2_character_info
	ldr r1, _080A352C @ =0x000001CB
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080A3528: .4byte m2_character_info
_080A352C: .4byte 0x000001CB

	thumb_func_start sub_80A3530
sub_80A3530: @ 0x080A3530
	ldr r0, _080A3540 @ =m2_character_info
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
	bx lr
	.align 2, 0
_080A3540: .4byte m2_character_info

	thumb_func_start sub_80A3544
sub_80A3544: @ 0x080A3544
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80BD140
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq _080A3560
	ldr r0, _080A3568 @ =gUnknown_08B1B3B0
	lsls r1, r2, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r4]
_080A3560:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A3568: .4byte gUnknown_08B1B3B0

	thumb_func_start sub_80A356C
sub_80A356C: @ 0x080A356C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080A357E
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A357E:
	bl sub_80A35CC
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A358C
sub_80A358C: @ 0x080A358C
	push {r4, lr}
	lsls r0, r0, #0x10
	movs r3, #0
	ldr r1, _080A35B4 @ =m2_character_info
	ldr r2, _080A35B8 @ =0xFFFF0000
	adds r0, r0, r2
	asrs r2, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r0, r4
	asrs r4, r0, #0x10
	movs r0, #0x6c
	muls r0, r2, r0
	adds r1, #0x14
	adds r1, r0, r1
_080A35AA:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A35BC
	adds r0, r4, #0
	b _080A35C6
	.align 2, 0
_080A35B4: .4byte m2_character_info
_080A35B8: .4byte 0xFFFF0000
_080A35BC:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080A35AA
	movs r0, #0
_080A35C6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A35CC
sub_80A35CC: @ 0x080A35CC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A362C
	movs r2, #0
	ldr r1, _080A361C @ =m2_character_info
	ldr r3, _080A3620 @ =0x000001CB
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r2, r0
	bge _080A3616
_080A35E4:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r0, #0xe2
	lsls r0, r0, #1
	adds r5, r1, r0
	adds r1, r4, r5
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080A3604
	adds r0, #1
	bl sub_80A358C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bne _080A3628
_080A3604:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080A3624 @ =0xFFFFFE3C
	adds r1, r5, r3
	ldrb r5, [r5, #7]
	cmp r0, r5
	blt _080A35E4
_080A3616:
	movs r0, #0
	b _080A3634
	.align 2, 0
_080A361C: .4byte m2_character_info
_080A3620: .4byte 0x000001CB
_080A3624: .4byte 0xFFFFFE3C
_080A3628:
	lsls r0, r1, #0x10
	b _080A3632
_080A362C:
	bl sub_80A358C
	lsls r0, r0, #0x10
_080A3632:
	asrs r0, r0, #0x10
_080A3634:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A363C
sub_80A363C: @ 0x080A363C
	push {r4, r5, r6, lr}
	ldrb r5, [r0, #1]
	ldrb r6, [r0, #2]
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A364C
	adds r4, r0, #0
	b _080A3654
_080A364C:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_080A3654:
	adds r1, r5, #0
	cmp r1, #0
	bne _080A3662
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A3662:
	adds r0, r4, #0
	bl sub_80A571C
	movs r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _080A3674
	movs r1, #1
_080A3674:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3680
sub_80A3680: @ 0x080A3680
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A3692
	adds r4, r0, #0
	b _080A369A
_080A3692:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_080A369A:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A36AA
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A36AA:
	adds r0, r4, #0
	bl sub_80A3748
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_80A37B0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetArgumentMemory
	adds r0, r4, #0
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A36D0
sub_80A36D0: @ 0x080A36D0
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	movs r3, #0
	ldr r4, _080A372C @ =m2_character_info
	ldr r1, _080A3730 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r6, r0, r2
	movs r0, #0x6c
	muls r1, r0, r1
_080A36EC:
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r1, r0
	ldrh r0, [r2]
	cmp r0, #0
	bne _080A3738
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	subs r1, #1
	strh r1, [r2]
	ldr r2, _080A3734 @ =gUnknown_08B1D62C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r4, r0, r2
	ldrb r0, [r4, #2]
	cmp r0, #4
	bne _080A3714
	bl sub_80ED67C
_080A3714:
	ldrb r1, [r4, #3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A3728
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80EE884
_080A3728:
	asrs r0, r6, #0x10
	b _080A3742
	.align 2, 0
_080A372C: .4byte m2_character_info
_080A3730: .4byte 0xFFFF0000
_080A3734: .4byte gUnknown_08B1D62C
_080A3738:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080A36EC
	movs r0, #0
_080A3742:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80A3748
sub_80A3748: @ 0x080A3748
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A379C
	movs r2, #0
	ldr r0, _080A3790 @ =m2_character_info
	ldr r3, _080A3794 @ =0x000001CB
	adds r0, r0, r3
	ldrb r3, [r0]
	cmp r2, r3
	bge _080A378A
	adds r7, r0, #0
	lsls r6, r1, #0x10
_080A3768:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r0, r1
	asrs r5, r4, #0x10
	adds r0, r5, #0
	asrs r1, r6, #0x10
	bl sub_80A36D0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A3798
	lsrs r2, r4, #0x10
	adds r0, r5, #0
	ldrb r3, [r7]
	cmp r0, r3
	blt _080A3768
_080A378A:
	movs r0, #0
	b _080A37A8
	.align 2, 0
_080A3790: .4byte m2_character_info
_080A3794: .4byte 0x000001CB
_080A3798:
	adds r0, r5, #0
	b _080A37A8
_080A379C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80A36D0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A37A8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A37B0
sub_80A37B0: @ 0x080A37B0
	push {lr}
	lsls r0, r0, #0x10
	movs r3, #0
	ldr r2, _080A37C8 @ =m2_character_info
	ldr r1, _080A37CC @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r2, #0x14
	adds r1, r0, r2
	b _080A37D8
	.align 2, 0
_080A37C8: .4byte m2_character_info
_080A37CC: .4byte 0xFFFF0000
_080A37D0:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	bgt _080A37DE
_080A37D8:
	ldrh r0, [r1]
	cmp r0, #0
	bne _080A37D0
_080A37DE:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A37E8
sub_80A37E8: @ 0x080A37E8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl ScriptGetWorkingMemory
	cmp r0, #0
	beq _080A3828
	bl ScriptGetWorkingMemory
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	cmp r0, r1
	bhi _080A3828
	bl ScriptGetWorkingMemory
	adds r3, r0, #0
	subs r3, #1
	lsls r3, r3, #2
	adds r2, r3, r5
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	orrs r0, r1
	adds r0, r0, r3
	b _080A382C
_080A3828:
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
_080A382C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A3834
sub_80A3834: @ 0x080A3834
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_80A351C
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	beq _080A3854
	movs r1, #0
	cmp r5, r4
	bhs _080A3860
	b _080A385E
_080A3854:
	bl ScriptGetArgMemory
	movs r1, #0
	cmp r5, r0
	bhs _080A3860
_080A385E:
	movs r1, #1
_080A3860:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A386C
sub_80A386C: @ 0x080A386C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A3898
	movs r1, #0
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bne _080A388C
	movs r1, #1
_080A388C:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3898
sub_80A3898: @ 0x080A3898
	push {lr}
	ldr r2, _080A38C0 @ =gUnknown_08B1D62C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #2]
	movs r1, #0x30
	ands r1, r0
	cmp r1, #0x10
	beq _080A38D2
	cmp r1, #0x10
	bgt _080A38C4
	cmp r1, #0
	beq _080A38CE
	b _080A38DE
	.align 2, 0
_080A38C0: .4byte gUnknown_08B1D62C
_080A38C4:
	cmp r1, #0x20
	beq _080A38D6
	cmp r1, #0x30
	beq _080A38DA
	b _080A38DE
_080A38CE:
	movs r0, #1
	b _080A38E0
_080A38D2:
	movs r0, #2
	b _080A38E0
_080A38D6:
	movs r0, #3
	b _080A38E0
_080A38DA:
	movs r0, #4
	b _080A38E0
_080A38DE:
	movs r0, #0
_080A38E0:
	pop {r1}
	bx r1

	thumb_func_start sub_80A38E4
sub_80A38E4: @ 0x080A38E4
	push {r4, lr}
	ldr r4, _080A38FC @ =gUnknown_08B1D62C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A3900
	subs r1, r0, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	b _080A3910
	.align 2, 0
_080A38FC: .4byte gUnknown_08B1D62C
_080A3900:
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #2
_080A3910:
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3920
sub_80A3920: @ 0x080A3920
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080A3940 @ =m2_character_info
	movs r1, #0xd2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r2, #0
	bne _080A3944
	bl ScriptGetArgMemory
	movs r1, #0
	cmp r4, r0
	bhs _080A394C
	b _080A394A
	.align 2, 0
_080A3940: .4byte m2_character_info
_080A3944:
	movs r1, #0
	cmp r4, r2
	bhs _080A394C
_080A394A:
	movs r1, #1
_080A394C:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A3958
sub_80A3958: @ 0x080A3958
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl ScriptGetWorkingMemory
	movs r1, #0
	lsls r0, r0, #0x10
	lsls r4, r4, #0x10
	cmp r0, r4
	bne _080A3970
	movs r1, #1
_080A3970:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A397C
sub_80A397C: @ 0x080A397C
	push {lr}
	cmp r0, #0
	bne _080A3986
	bl ScriptGetArgMemory
_080A3986:
	bl sub_80A3994
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A3994
sub_80A3994: @ 0x080A3994
	push {lr}
	ldr r1, _080A39AC @ =m2_character_info
	movs r3, #0xd2
	lsls r3, r3, #3
	adds r2, r1, r3
	ldr r1, [r2]
	subs r1, r1, r0
	cmp r1, #0
	blt _080A39B0
	str r1, [r2]
	movs r0, #0
	b _080A39B2
	.align 2, 0
_080A39AC: .4byte m2_character_info
_080A39B0:
	movs r0, #1
_080A39B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A39B8
sub_80A39B8: @ 0x080A39B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4]
	cmp r5, #0
	bne _080A39CC
	bl ScriptGetArgMemory
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080A39CE
_080A39CC:
	adds r0, r5, #0
_080A39CE:
	adds r5, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	bne _080A39DE
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_080A39DE:
	ldrb r2, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r2, r0
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x10
	orrs r2, r0
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r0, r5, #0
	bl sub_80A2C30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A3A00
sub_80A3A00: @ 0x080A3A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	ldrb r4, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r4, r1
	ldrb r1, [r0, #2]
	mov r8, r1
	ldrb r1, [r0, #3]
	lsls r1, r1, #8
	mov r2, r8
	orrs r2, r1
	mov r8, r2
	ldrb r7, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r7, r0
	movs r5, #0
	ldr r0, _080A3A8C @ =gUnknown_03003994
	ldr r3, [r0]
	movs r0, #0
	str r0, [sp]
	movs r2, #0
	ldr r0, _080A3A90 @ =gUnknown_03003944
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r5, r1
	bge _080A3AA6
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	ldr r0, _080A3A94 @ =gUnknown_03003990
	mov sb, r0
_080A3A48:
	ldrh r0, [r3]
	cmp r0, r1
	bne _080A3A9C
	ldr r0, _080A3A98 @ =gUnknown_02020000
	adds r4, r2, r0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080A3A5E
	b _080A3BE0
_080A3A5E:
	adds r0, r3, #0
	bl sub_801D47C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0xc0
	adds r1, r0, #0
	orrs r1, r2
	ldrb r2, [r4]
	orrs r1, r2
	strb r1, [r4]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r2, sb
	ldr r1, [r2]
	adds r5, r1, r0
	movs r3, #0
	str r3, [sp]
	b _080A3AA6
	.align 2, 0
_080A3A8C: .4byte gUnknown_03003994
_080A3A90: .4byte gUnknown_03003944
_080A3A94: .4byte gUnknown_03003990
_080A3A98: .4byte gUnknown_02020000
_080A3A9C:
	adds r2, #1
	adds r3, #8
	ldr r0, [r6]
	cmp r2, r0
	blt _080A3A48
_080A3AA6:
	adds r0, r5, #0
	adds r0, #0x61
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	subs r0, #5
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	str r2, [r5, #0x40]
	adds r0, #3
	strb r2, [r0]
	adds r1, r5, #0
	adds r1, #0x50
	ldr r0, _080A3BC8 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x52
	strh r7, [r0]
	adds r0, #0x4c
	strh r2, [r0]
	adds r2, r5, #0
	adds r2, #0x6c
	mov r0, r8
	strh r0, [r2]
	adds r1, #0x30
	ldr r0, _080A3BCC @ =gUnknown_03004EE4
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, #4
	ldr r0, _080A3BD0 @ =gUnknown_03004F04
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r0, _080A3BD4 @ =gUnknown_03004F0C
	ldrh r0, [r0]
	adds r1, #0x14
	strh r0, [r1]
	adds r7, r2, #0
	adds r4, r1, #0
	movs r0, #0xc0
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _080A3BD8 @ =MovementPatternTable
	mov ip, r1
	adds r3, r5, #0
	adds r3, #0xb4
	ldr r2, _080A3BDC @ =gUnknown_087172EC
	mov sb, r2
	adds r6, r5, #0
	adds r6, #0x4c
	movs r0, #0x20
	adds r0, r0, r5
	mov sl, r0
	adds r1, r5, #0
	adds r1, #0x2e
	str r1, [sp, #0x24]
	adds r2, r5, #0
	adds r2, #0x58
	str r2, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x59
	str r0, [sp, #0x2c]
	adds r1, #0x2c
	str r1, [sp, #0x30]
	adds r2, #3
	str r2, [sp, #0x34]
	adds r0, #0x33
	str r0, [sp, #4]
	adds r1, #0x36
	str r1, [sp, #8]
	adds r2, #0x39
	str r2, [sp, #0xc]
	adds r0, #0x20
	str r0, [sp, #0x1c]
	adds r1, #0x20
	str r1, [sp, #0x20]
	adds r2, #0x14
	str r2, [sp, #0x18]
	subs r0, #0x34
	str r0, [sp, #0x38]
	subs r1, #0x10
	str r1, [sp, #0x10]
	subs r2, #5
	str r2, [sp, #0x14]
	movs r1, #0
	adds r0, r3, #0
	movs r2, #4
_080A3B5C:
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strh r1, [r0, #8]
	adds r0, #0x30
	subs r2, #1
	cmp r2, #0
	bge _080A3B5C
	ldrh r0, [r7]
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r2, #0
	mov r8, r2
	movs r7, #1
	strb r7, [r3]
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	add r0, sb
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_80088E0
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	add r0, sb
	ldrb r0, [r0, #0xa]
	movs r2, #0x7f
	mov ip, r2
	ands r2, r0
	cmp r2, #2
	bne _080A3C0C
	mov r0, r8
	mov r3, sl
	strb r0, [r3]
	mov r1, r8
	strh r1, [r5, #0x22]
	ldr r0, [r5, #0x48]
	ldrb r0, [r0]
	cmp r0, #4
	bne _080A3C00
	ldr r0, [r5, #0x44]
	ldrh r1, [r0, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3C50
	strh r7, [r5, #0x22]
	b _080A3C50
	.align 2, 0
_080A3BC8: .4byte 0x0000FFFF
_080A3BCC: .4byte gUnknown_03004EE4
_080A3BD0: .4byte gUnknown_03004F04
_080A3BD4: .4byte gUnknown_03004F0C
_080A3BD8: .4byte MovementPatternTable
_080A3BDC: .4byte gUnknown_087172EC
_080A3BE0:
	ldr r2, _080A3BFC @ =gUnknown_03003990
	movs r0, #0x1f
	ands r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r5, r1, r0
	movs r2, #1
	str r2, [sp]
	b _080A3AA6
	.align 2, 0
_080A3BFC: .4byte gUnknown_03003990
_080A3C00:
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #2
	bne _080A3C50
	strh r7, [r5, #0x22]
	b _080A3C50
_080A3C0C:
	ldr r3, _080A3D0C @ =gUnknown_08716612
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	mov r2, sl
	strb r0, [r2]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r2, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	add r0, sb
	ldrb r0, [r0, #0xa]
	mov r1, ip
	ands r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
	strh r0, [r5, #0x22]
_080A3C50:
	movs r4, #0
	movs r0, #3
	ldr r2, [sp, #0x24]
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_8008A28
	ldr r1, _080A3D10 @ =gUnknown_087172EC
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	ldr r2, [sp, #0x28]
	strb r0, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xd]
	ldr r2, [sp, #0x30]
	strb r0, [r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrb r0, [r0, #0xe]
	ldr r1, [sp, #0x34]
	strb r0, [r1]
	ldr r2, [sp, #4]
	str r4, [r2]
	ldr r3, [sp, #8]
	str r4, [r3]
	ldr r0, [sp, #0xc]
	str r4, [r0]
	ldr r1, [sp, #0x1c]
	str r4, [r1]
	ldr r2, [sp, #0x20]
	str r4, [r2]
	ldr r3, [sp, #0x18]
	str r4, [r3]
	movs r0, #0
	ldr r1, [sp, #0x38]
	strh r4, [r1]
	ldr r2, [sp, #0x10]
	strh r4, [r2]
	ldr r3, [sp, #0x14]
	strb r0, [r3]
	ldr r0, [sp]
	cmp r0, #0
	bne _080A3CFC
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r5, #0
	adds r1, #0x54
	bl sub_80207F0
	movs r2, #0
	ldrsh r0, [r6, r2]
	bl sub_8020F38
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x63
	strb r2, [r0]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A3CFC
	ldr r0, [r5, #8]
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	subs r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
_080A3CFC:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3D0C: .4byte gUnknown_08716612
_080A3D10: .4byte gUnknown_087172EC

	thumb_func_start sub_80A3D14
sub_80A3D14: @ 0x080A3D14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	ldr r0, _080A3D58 @ =gUnknown_0300396C
	ldr r6, [r0]
	movs r2, #0
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	ldr r3, _080A3D5C @ =gUnknown_03004EE4
	ldr r4, _080A3D60 @ =gUnknown_03004F04
	ldr r5, _080A3D64 @ =gUnknown_03004F0C
	ldr r1, _080A3D68 @ =MovementPatternTable
	mov sb, r1
	cmp r0, #0
	beq _080A3D52
	movs r1, #0xd2
	lsls r1, r1, #1
_080A3D40:
	adds r2, #1
	adds r6, r6, r1
	cmp r2, #0xe
	bgt _080A3D52
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A3D40
_080A3D52:
	cmp r2, #0xf
	bne _080A3D6C
_080A3D56:
	b _080A3D56
	.align 2, 0
_080A3D58: .4byte gUnknown_0300396C
_080A3D5C: .4byte gUnknown_03004EE4
_080A3D60: .4byte gUnknown_03004F04
_080A3D64: .4byte gUnknown_03004F0C
_080A3D68: .4byte MovementPatternTable
_080A3D6C:
	adds r1, r6, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, #4
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x88
	movs r2, #0
	str r2, [r0]
	ldrh r0, [r5]
	adds r5, r6, #0
	adds r5, #0x98
	movs r3, #0
	strh r0, [r5]
	str r2, [r6, #0x44]
	str r2, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x4e
	strh r2, [r0]
	subs r1, #0x23
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x4c
	strh r1, [r4]
	adds r7, #2
	adds r1, r6, #0
	adds r1, #0x5c
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x62
	strb r3, [r0]
	str r2, [r6, #0x40]
	subs r0, #2
	strb r3, [r0]
	subs r1, #0xd
	ldr r0, _080A3EC0 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x5e
	strh r2, [r0]
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r1, r0
	adds r3, r6, #0
	adds r3, #0x6c
	strh r1, [r3]
	adds r7, #2
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r0, #0x4c
	strh r2, [r0]
	movs r0, #0xc0
	adds r0, r0, r6
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0xb4
	adds r1, r6, #0
	adds r1, #0x8c
	str r1, [sp, #8]
	adds r2, r6, #0
	adds r2, #0x90
	str r2, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0x94
	str r0, [sp, #0x10]
	movs r1, #0xac
	adds r1, r1, r6
	mov sl, r1
	adds r2, #0x20
	str r2, [sp]
	adds r0, #0x14
	str r0, [sp, #0x1c]
	adds r1, r6, #0
	adds r1, #0x78
	str r1, [sp, #4]
	subs r2, #0x10
	str r2, [sp, #0x14]
	subs r0, #5
	str r0, [sp, #0x18]
	movs r1, #0
	adds r0, r7, #0
	movs r2, #4
_080A3E3C:
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strh r1, [r0, #8]
	adds r0, #0x30
	subs r2, #1
	cmp r2, #0
	bge _080A3E3C
	ldrh r0, [r3]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r2, #0
	mov sb, r2
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r7]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r0, _080A3EC4 @ =0x000007CF
	cmp r1, r0
	ble _080A3E70
	b _080A3FB4
_080A3E70:
	ldr r7, _080A3EC8 @ =gUnknown_087172EC
	adds r0, r1, #0
	lsls r0, r0, #5
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_80088E0
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldrb r0, [r0, #0xa]
	movs r1, #0x7f
	mov ip, r1
	mov r2, ip
	ands r2, r0
	cmp r2, #2
	bne _080A3ED8
	adds r0, r6, #0
	adds r0, #0x20
	mov r2, sb
	strb r2, [r0]
	mov r0, sb
	strh r0, [r6, #0x22]
	ldr r0, [r6, #0x48]
	ldrb r0, [r0]
	cmp r0, #4
	bne _080A3ECC
	ldr r0, [r6, #0x44]
	ldrh r1, [r0, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A3F1E
	mov r1, r8
	strh r1, [r6, #0x22]
	b _080A3F1E
	.align 2, 0
_080A3EC0: .4byte 0x0000FFFF
_080A3EC4: .4byte 0x000007CF
_080A3EC8: .4byte gUnknown_087172EC
_080A3ECC:
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #2
	bne _080A3F1E
	mov r0, r8
	b _080A3F1C
_080A3ED8:
	ldr r3, _080A3FF0 @ =gUnknown_08716612
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	adds r0, r0, r7
	ldrb r0, [r0, #0xa]
	mov r1, ip
	ands r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
_080A3F1C:
	strh r0, [r6, #0x22]
_080A3F1E:
	adds r1, r6, #0
	adds r1, #0x2e
	movs r0, #3
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_8008A28
	ldr r2, _080A3FF4 @ =gUnknown_087172EC
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	strb r1, [r0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xc]
	adds r1, r6, #0
	adds r1, #0x59
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	adds r1, r6, #0
	adds r1, #0x5a
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	adds r1, r6, #0
	adds r1, #0x5b
	strb r0, [r1]
	movs r2, #0
	ldrsh r0, [r4, r2]
	adds r2, r6, #0
	adds r2, #0x56
	adds r1, r6, #0
	bl sub_8020CFC
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r6, #0
	adds r1, #0x54
	bl sub_80207F0
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl sub_8020F38
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x63
	strb r2, [r0]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A3FB4
	ldr r0, [r6, #8]
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	subs r0, r2, r0
	adds r1, r6, #0
	adds r1, #0x21
	strb r0, [r1]
_080A3FB4:
	movs r0, #0
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r2, [sp, #0xc]
	str r0, [r2]
	ldr r1, [sp, #0x10]
	str r0, [r1]
	ldr r1, _080A3FF8 @ =sub_80AC2CC
	mov r2, sl
	str r1, [r2]
	ldr r1, [sp]
	str r0, [r1]
	ldr r2, [sp, #0x1c]
	str r0, [r2]
	movs r1, #0
	ldr r2, [sp, #4]
	strh r0, [r2]
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	ldr r0, [sp, #0x18]
	strb r1, [r0]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3FF0: .4byte gUnknown_08716612
_080A3FF4: .4byte gUnknown_087172EC
_080A3FF8: .4byte sub_80AC2CC

	thumb_func_start sub_80A3FFC
sub_80A3FFC: @ 0x080A3FFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	ldr r0, _080A4038 @ =gUnknown_03003990
	ldr r6, [r0]
	movs r4, #0
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	ldr r5, _080A403C @ =MovementPatternTable
	mov sb, r5
	cmp r0, #0
	bne _080A4040
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	b _080A4094
	.align 2, 0
_080A4038: .4byte gUnknown_03003990
_080A403C: .4byte MovementPatternTable
_080A4040:
	adds r4, #1
	movs r0, #0xd2
	lsls r0, r0, #1
	adds r6, r6, r0
	cmp r4, #0x18
	bgt _080A4058
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4040
	movs r1, #1
_080A4058:
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	cmp r1, #0
	bne _080A4094
	ldr r0, _080A4090 @ =gUnknown_0300396C
	ldr r6, [r0]
	movs r4, #0
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A4094
_080A4070:
	adds r4, #1
	movs r5, #0xd2
	lsls r5, r5, #1
	adds r6, r6, r5
	cmp r4, #0xe
	bgt _080A4088
	adds r0, r6, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4070
	movs r1, #1
_080A4088:
	cmp r1, #0
	bne _080A4094
_080A408C:
	b _080A408C
	.align 2, 0
_080A4090: .4byte gUnknown_0300396C
_080A4094:
	adds r0, r6, #0
	adds r0, #0x80
	str r2, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #4
	movs r2, #0
	str r2, [r0]
	adds r5, r6, #0
	adds r5, #0x98
	movs r4, #0
	movs r0, #4
	strh r0, [r5]
	str r2, [r6, #0x44]
	str r2, [r6, #0x48]
	adds r1, r6, #0
	adds r1, #0x61
	movs r0, #1
	strb r0, [r1]
	adds r3, r6, #0
	adds r3, #0x4c
	strh r7, [r3]
	subs r1, #5
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r1, #5
	movs r0, #2
	strb r0, [r1]
	str r2, [r6, #0x40]
	adds r0, r6, #0
	adds r0, #0x60
	strb r4, [r0]
	subs r1, #0x12
	ldr r0, _080A41B8 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #0x4c
	strh r2, [r0]
	subs r0, #0x40
	strh r2, [r0]
	adds r0, #0xe
	mov r1, r8
	strh r1, [r0]
	adds r7, r5, #0
	adds r5, r3, #0
	movs r2, #0xc0
	adds r2, r2, r6
	mov r8, r2
	adds r3, #0x68
	movs r1, #0x8c
	adds r1, r1, r6
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x90
	str r2, [sp, #8]
	adds r1, r6, #0
	adds r1, #0x94
	str r1, [sp, #0xc]
	adds r2, #0x1c
	str r2, [sp, #0x1c]
	adds r1, #0x1c
	str r1, [sp, #0x20]
	subs r2, #4
	str r2, [sp, #0x18]
	subs r1, #0x40
	str r1, [sp]
	subs r2, #0x30
	str r2, [sp, #4]
	adds r1, #0x30
	str r1, [sp, #0x10]
	adds r2, #0x2b
	str r2, [sp, #0x14]
	movs r2, #0
	adds r1, r3, #0
	movs r4, #4
_080A4136:
	strb r2, [r1]
	strb r2, [r1, #1]
	strb r2, [r1, #2]
	strh r2, [r1, #8]
	adds r1, #0x30
	subs r4, #1
	cmp r4, #0
	bge _080A4136
	ldrh r0, [r0]
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r2, #0
	mov sb, r2
	movs r0, #1
	mov r8, r0
	mov r1, r8
	strb r1, [r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r0, _080A41BC @ =0x000007CF
	cmp r1, r0
	ble _080A416A
	b _080A42AC
_080A416A:
	ldr r4, _080A41C0 @ =gUnknown_087172EC
	adds r0, r1, #0
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_80088E0
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrb r0, [r0, #0xa]
	movs r1, #0x7f
	mov ip, r1
	mov r2, ip
	ands r2, r0
	cmp r2, #2
	bne _080A41D0
	adds r0, r6, #0
	adds r0, #0x20
	mov r2, sb
	strb r2, [r0]
	mov r0, sb
	strh r0, [r6, #0x22]
	ldr r0, [r6, #0x48]
	ldrb r0, [r0]
	cmp r0, #4
	bne _080A41C4
	ldr r0, [r6, #0x44]
	ldrh r1, [r0, #6]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A4216
	mov r1, r8
	strh r1, [r6, #0x22]
	b _080A4216
	.align 2, 0
_080A41B8: .4byte 0x0000FFFF
_080A41BC: .4byte 0x000007CF
_080A41C0: .4byte gUnknown_087172EC
_080A41C4:
	movs r2, #0
	ldrsh r0, [r7, r2]
	cmp r0, #2
	bne _080A4216
	mov r0, r8
	b _080A4214
_080A41D0:
	ldr r3, _080A42EC @ =gUnknown_08716612
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0x20
	strb r1, [r0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r2, r0, #1
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrb r0, [r0, #0xa]
	mov r1, ip
	ands r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r2, r2, r0
	adds r3, #2
	adds r2, r2, r3
	ldrb r0, [r2]
_080A4214:
	strh r0, [r6, #0x22]
_080A4216:
	adds r1, r6, #0
	adds r1, #0x2e
	movs r0, #3
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_8008A28
	ldr r2, _080A42F0 @ =gUnknown_087172EC
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r1, [r0, #0xb]
	adds r0, r6, #0
	adds r0, #0x58
	strb r1, [r0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xc]
	adds r1, r6, #0
	adds r1, #0x59
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	adds r1, r6, #0
	adds r1, #0x5a
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	adds r1, r6, #0
	adds r1, #0x5b
	strb r0, [r1]
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r2, r6, #0
	adds r2, #0x56
	adds r1, r6, #0
	bl sub_8020CFC
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r6, #0
	adds r1, #0x54
	bl sub_80207F0
	movs r2, #0
	ldrsh r0, [r5, r2]
	bl sub_8020F38
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x63
	strb r2, [r0]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080A42AC
	ldr r0, [r6, #8]
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	lsrs r0, r0, #4
	subs r0, r2, r0
	adds r1, r6, #0
	adds r1, #0x21
	strb r0, [r1]
_080A42AC:
	movs r0, #0
	mov r5, sl
	str r0, [r5]
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r2, [sp, #0xc]
	str r0, [r2]
	ldr r1, _080A42F4 @ =sub_80AC2CC
	ldr r5, [sp, #0x1c]
	str r1, [r5]
	ldr r1, [sp, #0x20]
	str r0, [r1]
	ldr r2, [sp, #0x18]
	str r0, [r2]
	movs r1, #0
	ldr r5, [sp]
	strh r0, [r5]
	ldr r2, [sp, #4]
	strh r0, [r2]
	ldr r5, [sp, #0x10]
	strh r0, [r5]
	ldr r0, [sp, #0x14]
	strb r1, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A42EC: .4byte gUnknown_08716612
_080A42F0: .4byte gUnknown_087172EC
_080A42F4: .4byte sub_80AC2CC

	thumb_func_start sub_80A42F8
sub_80A42F8: @ 0x080A42F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r4, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC4B4
	adds r1, r0, #0
	cmp r1, #0
	beq _080A4378
	adds r6, r1, #0
	adds r6, #0x6c
	movs r0, #0xc0
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _080A4388 @ =MovementPatternTable
	mov sl, r2
	lsls r0, r4, #0x10
	adds r5, r1, #0
	adds r5, #0xb4
	movs r3, #0xbc
	adds r3, r3, r1
	mov ip, r3
	movs r2, #0xa0
	adds r2, r2, r1
	mov r8, r2
	adds r7, r1, #0
	adds r7, #0x60
	movs r3, #0
	adds r1, r5, #0
	movs r2, #4
_080A434C:
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _080A434C
	movs r1, #0
	movs r2, #0
	strh r4, [r6]
	asrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r3, sb
	str r0, [r3]
	movs r0, #1
	strb r0, [r5]
	mov r0, ip
	strh r1, [r0]
	mov r3, r8
	strh r1, [r3]
	strb r2, [r7]
_080A4378:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A4388: .4byte MovementPatternTable

	thumb_func_start sub_80A438C
sub_80A438C: @ 0x080A438C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	orrs r0, r1
	bl sub_80A43AC
	pop {r0}
	bx r0

	thumb_func_start sub_80A43AC
sub_80A43AC: @ 0x080A43AC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xff
	bl sub_80A43C4
	ldr r0, _080A43C0 @ =gUnknown_03004EF8
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A43C0: .4byte gUnknown_03004EF8

	thumb_func_start sub_80A43C4
sub_80A43C4: @ 0x080A43C4
	bx lr
	.align 2, 0

	thumb_func_start sub_80A43C8
sub_80A43C8: @ 0x080A43C8
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC634
	pop {r0}
	bx r0

	thumb_func_start sub_80A43E0
sub_80A43E0: @ 0x080A43E0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC610
	pop {r0}
	bx r0

	thumb_func_start sub_80A43F8
sub_80A43F8: @ 0x080A43F8
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	orrs r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80AC794
	pop {r0}
	bx r0

	thumb_func_start sub_80A441C
sub_80A441C: @ 0x080A441C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r4, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	adds r1, r0, #0
	cmp r1, #0
	beq _080A449C
	adds r6, r1, #0
	adds r6, #0x6c
	movs r0, #0xc0
	adds r0, r0, r1
	mov sb, r0
	ldr r2, _080A44AC @ =MovementPatternTable
	mov sl, r2
	lsls r0, r4, #0x10
	adds r5, r1, #0
	adds r5, #0xb4
	movs r3, #0xbc
	adds r3, r3, r1
	mov ip, r3
	movs r2, #0xa0
	adds r2, r2, r1
	mov r8, r2
	adds r7, r1, #0
	adds r7, #0x60
	movs r3, #0
	adds r1, r5, #0
	movs r2, #4
_080A4470:
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	adds r1, #0x30
	subs r2, #1
	cmp r2, #0
	bge _080A4470
	movs r1, #0
	movs r2, #0
	strh r4, [r6]
	asrs r0, r0, #0xe
	add r0, sl
	ldr r0, [r0]
	mov r3, sb
	str r0, [r3]
	movs r0, #1
	strb r0, [r5]
	mov r0, ip
	strh r1, [r0]
	mov r3, r8
	strh r1, [r3]
	strb r2, [r7]
_080A449C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A44AC: .4byte MovementPatternTable

	thumb_func_start sub_80A44B0
sub_80A44B0: @ 0x080A44B0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	orrs r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80AC658
	pop {r0}
	bx r0

	thumb_func_start ScriptStartBattle
ScriptStartBattle: @ 0x080A44D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A44F4
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A44F4:
	lsrs r0, r0, #0x10
	ldr r2, _080A4570 @ =gEnemyGroup
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	ldr r1, _080A4574 @ =gUnknown_0873958C
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r1, _080A4578 @ =gUnknown_03004EA0
	movs r0, #0
	strh r0, [r1, #2]
	ldrb r0, [r3]
	mov sl, r2
	adds r7, r1, #0
	adds r4, #2
	mov sb, r4
	cmp r0, #0xff
	beq _080A454C
	mov r8, r7
	adds r0, r7, #4
	mov ip, r0
_080A451E:
	movs r2, #0
	adds r5, r3, #4
	ldrb r1, [r3]
	cmp r2, r1
	bge _080A4544
	mov r4, r8
	mov r6, ip
_080A452C:
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r3, #2]
	strh r1, [r0]
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _080A452C
_080A4544:
	adds r3, r5, #0
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _080A451E
_080A454C:
	ldrh r1, [r7]
	movs r0, #3
	orrs r0, r1
	strh r0, [r7]
	mov r2, sl
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080A457C @ =0x000001BF
	cmp r1, r0
	ble _080A4580
	movs r0, #4
	bl DoFullScreenAnimation
	movs r0, #0xb0
	bl PlaySongSetupPlayer
	b _080A458C
	.align 2, 0
_080A4570: .4byte gEnemyGroup
_080A4574: .4byte gUnknown_0873958C
_080A4578: .4byte gUnknown_03004EA0
_080A457C: .4byte 0x000001BF
_080A4580:
	movs r0, #0xf
	bl DoFullScreenAnimation
	movs r0, #8
	bl m2_play_soundeffect
_080A458C:
	ldr r0, _080A45B4 @ =gUnknown_03001308
	movs r4, #0
	strb r4, [r0]
	ldr r0, _080A45B8 @ =gUnknown_03004EF8
	mov r1, sb
	str r1, [r0]
	bl sub_80A7C54
	movs r0, #0
	bl ScriptSetWorkingMemory
	ldr r0, _080A45BC @ =gUnknown_03003DB0
	strb r4, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A45B4: .4byte gUnknown_03001308
_080A45B8: .4byte gUnknown_03004EF8
_080A45BC: .4byte gUnknown_03003DB0

	thumb_func_start m2_handle_controlcode_CC_A8_FF
m2_handle_controlcode_CC_A8_FF: @ 0x080A45C0
	push {lr}
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A45D2
	bl ScriptGetSecondaryMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A45D6
_080A45D2:
	bl ScriptGetWorkingMemory
_080A45D6:
	bl ScriptSetArgumentMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A45E0
sub_80A45E0: @ 0x080A45E0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A45F8
	pop {r0}
	bx r0

	thumb_func_start sub_80A45F8
sub_80A45F8: @ 0x080A45F8
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	cmp r0, #0
	beq _080A4614
	adds r2, r0, #0
	adds r2, #0xa0
	ldrh r1, [r2]
	ldr r3, _080A4618 @ =0xFFFFC000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_080A4614:
	pop {r0}
	bx r0
	.align 2, 0
_080A4618: .4byte 0xFFFFC000

	thumb_func_start sub_80A461C
sub_80A461C: @ 0x080A461C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A4634
	pop {r0}
	bx r0

	thumb_func_start sub_80A4634
sub_80A4634: @ 0x080A4634
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	cmp r0, #0
	beq _080A464E
	adds r2, r0, #0
	adds r2, #0xa0
	ldrh r1, [r2]
	ldr r0, _080A4654 @ =0x00003FFF
	ands r0, r1
	strh r0, [r2]
_080A464E:
	pop {r0}
	bx r0
	.align 2, 0
_080A4654: .4byte 0x00003FFF

	thumb_func_start sub_80A4658
sub_80A4658: @ 0x080A4658
	push {r4, r5, r6, lr}
	ldrb r4, [r0]
	ldrb r6, [r0, #1]
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A466A
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A466A:
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	adds r1, r6, #0
	cmp r1, #0
	bne _080A4680
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A4680:
	adds r0, r5, #0
	bl sub_80A469C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetArgumentMemory
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A469C
sub_80A469C: @ 0x080A469C
	ldr r3, _080A46C0 @ =m2_character_info
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x14
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_080A46C0: .4byte m2_character_info

	thumb_func_start sub_80A46C4
sub_80A46C4: @ 0x080A46C4
	push {lr}
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A46D0
	bl ScriptGetArgMemory
_080A46D0:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80D1310
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A46E0
sub_80A46E0: @ 0x080A46E0
	push {lr}
	sub sp, #0x10
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A46EE
	bl ScriptGetArgMemory
_080A46EE:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D1860
	ldr r1, _080A4714 @ =gUnknown_03004EE4
	ldr r0, [sp, #8]
	strh r0, [r1]
	ldr r1, _080A4718 @ =gUnknown_03004F04
	ldr r0, [sp, #0xc]
	strh r0, [r1]
	ldr r1, _080A471C @ =gUnknown_03004F0C
	mov r0, sp
	ldrb r0, [r0, #5]
	strh r0, [r1]
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_080A4714: .4byte gUnknown_03004EE4
_080A4718: .4byte gUnknown_03004F04
_080A471C: .4byte gUnknown_03004F0C

	thumb_func_start sub_80A4720
sub_80A4720: @ 0x080A4720
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r5, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r5, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC4B4
	adds r4, r0, #0
	cmp r4, #0
	beq _080A475C
	ldr r1, _080A4764 @ =gUnknown_087172EC
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r0, #0xd]
	ldrb r3, [r0, #0xe]
	adds r0, r4, #0
	bl sub_80AD7B8
_080A475C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4764: .4byte gUnknown_087172EC

	thumb_func_start sub_80A4768
sub_80A4768: @ 0x080A4768
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC4B4
	cmp r0, #0
	beq _080A4784
	bl sub_80AD818
_080A4784:
	pop {r0}
	bx r0

	thumb_func_start sub_80A4788
sub_80A4788: @ 0x080A4788
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	subs r0, #1
	ldrb r4, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC5DC
	ldr r2, _080A47CC @ =gUnknown_03005328
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r2]
	adds r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0x18
	bl sub_80AD7B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A47CC: .4byte gUnknown_03005328

	thumb_func_start sub_80A47D0
sub_80A47D0: @ 0x080A47D0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC5DC
	ldr r2, _080A4800 @ =gUnknown_03005328
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_80AD818
	pop {r0}
	bx r0
	.align 2, 0
_080A4800: .4byte gUnknown_03005328

	thumb_func_start sub_80A4804
sub_80A4804: @ 0x080A4804
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r5, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r5, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	adds r4, r0, #0
	cmp r4, #0
	beq _080A4840
	ldr r1, _080A4848 @ =gUnknown_087172EC
	adds r0, #0x4c
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r0, #0xd]
	ldrb r3, [r0, #0xe]
	adds r0, r4, #0
	bl sub_80AD7B8
_080A4840:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4848: .4byte gUnknown_087172EC

	thumb_func_start sub_80A484C
sub_80A484C: @ 0x080A484C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	cmp r0, #0
	beq _080A4868
	bl sub_80AD818
_080A4868:
	pop {r0}
	bx r0

	thumb_func_start sub_80A486C
sub_80A486C: @ 0x080A486C
	push {lr}
	movs r0, #1
	bl sub_80BCC48
	pop {r0}
	bx r0

	thumb_func_start sub_80A4878
sub_80A4878: @ 0x080A4878
	push {r4, lr}
	ldr r4, _080A488C @ =gUnknown_08B1D62C
	ldrb r1, [r0]
	cmp r1, #0
	beq _080A4890
	subs r1, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	b _080A48A0
	.align 2, 0
_080A488C: .4byte gUnknown_08B1D62C
_080A4890:
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #2
_080A48A0:
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A48B8
sub_80A48B8: @ 0x080A48B8
	push {lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	orrs r2, r0
	cmp r2, #0
	bne _080A48D8
	bl ScriptGetArgMemory
	adds r2, r0, #0
_080A48D8:
	adds r0, r2, #0
	bl sub_80A48E8
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A48E8
sub_80A48E8: @ 0x080A48E8
	push {lr}
	ldr r1, _080A4904 @ =m2_character_info
	movs r3, #0xd2
	lsls r3, r3, #3
	adds r2, r1, r3
	ldr r1, [r2]
	adds r0, r1, r0
	ldr r1, _080A4908 @ =0x0001869F
	cmp r0, r1
	ble _080A48FE
	adds r0, r1, #0
_080A48FE:
	str r0, [r2]
	pop {r1}
	bx r1
	.align 2, 0
_080A4904: .4byte m2_character_info
_080A4908: .4byte 0x0001869F

	thumb_func_start sub_80A490C
sub_80A490C: @ 0x080A490C
	push {r4, r5, lr}
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r5, r1
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A492A
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A492A:
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	lsls r0, r5, #0x10
	cmp r0, #0
	bne _080A493A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A493A:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80A469C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetArgumentMemory
	subs r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	subs r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_80BC6C8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #1
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4978
sub_80A4978: @ 0x080A4978
	push {r4, lr}
	ldrb r4, [r0]
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A4988
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A4988:
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	bl sub_80A49A4
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A49A4
sub_80A49A4: @ 0x080A49A4
	push {r4, r5, r6, lr}
	movs r1, #0
	movs r4, #0
	ldr r5, _080A49F8 @ =m2_character_info
	movs r0, #0xe2
	lsls r0, r0, #1
	adds r6, r5, r0
_080A49B2:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	adds r0, r0, r6
	ldrb r2, [r0]
	adds r3, r1, #0
	cmp r2, #0xff
	beq _080A49DE
	cmp r2, #3
	bhi _080A49DE
	adds r1, r2, #0
	movs r0, #0x6c
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x54
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A49DE
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
_080A49DE:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r3, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080A49B2
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A49F8: .4byte m2_character_info

	thumb_func_start sub_80A49FC
sub_80A49FC: @ 0x080A49FC
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r1, #0
	beq _080A4A10
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _080A4A18
_080A4A10:
	bl ScriptGetArgMemory
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080A4A18:
	bl sub_80A3310
	pop {r0}
	bx r0

	thumb_func_start sub_80A4A20
sub_80A4A20: @ 0x080A4A20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r5, [r6]
	bl ScriptGetWorkingMemory
	cmp r0, #0
	beq _080A4A7C
	bl ScriptGetWorkingMemory
	cmp r0, r5
	bhi _080A4A7C
	bl ScriptGetWorkingMemory
	adds r3, r0, #0
	subs r3, #1
	lsls r3, r3, #0x10
	ldr r4, _080A4A74 @ =gUnknown_03005080
	ldr r2, _080A4A78 @ =gUnknown_03005078
	ldrb r1, [r2]
	adds r0, r1, #1
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x16
	adds r1, r1, r4
	lsls r0, r5, #2
	adds r0, r6, r0
	adds r0, #1
	str r0, [r1]
	lsrs r3, r3, #0xe
	adds r2, r3, r6
	ldrb r0, [r2, #1]
	ldrb r1, [r2, #2]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #4]
	lsls r1, r1, #0x18
	orrs r0, r1
	adds r0, r0, r3
	b _080A4A7E
	.align 2, 0
_080A4A74: .4byte gUnknown_03005080
_080A4A78: .4byte gUnknown_03005078
_080A4A7C:
	lsls r0, r5, #2
_080A4A7E:
	adds r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4A88
sub_80A4A88: @ 0x080A4A88
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080A4AA6
	adds r5, r0, #0
	b _080A4AAE
_080A4AA6:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080A4AAE:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A4ABE
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A4ABE:
	adds r0, r5, #0
	bl sub_80A4B18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4AD4
sub_80A4AD4: @ 0x080A4AD4
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	movs r3, #0
	ldr r2, _080A4B00 @ =m2_character_info
	lsls r0, r0, #0x10
	ldr r4, _080A4B04 @ =0xFFFF0000
	adds r1, r1, r4
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
_080A4AF6:
	ldrh r0, [r1]
	cmp r0, r5
	bne _080A4B08
	adds r0, r4, #0
	b _080A4B12
	.align 2, 0
_080A4B00: .4byte m2_character_info
_080A4B04: .4byte 0xFFFF0000
_080A4B08:
	adds r1, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080A4AF6
	movs r0, #0
_080A4B12:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A4B18
sub_80A4B18: @ 0x080A4B18
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0xff
	bne _080A4B58
	movs r2, #0
	ldr r7, _080A4B54 @ =gUnknown_03001F04
	lsls r6, r1, #0x10
_080A4B2C:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r4, r5, r7
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080A4B44
	asrs r1, r6, #0x10
	bl sub_80A4AD4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A4B70
_080A4B44:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A4B2C
	movs r0, #0
	b _080A4B78
	.align 2, 0
_080A4B54: .4byte gUnknown_03001F04
_080A4B58:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80A4AD4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A4B76
	movs r0, #0
	b _080A4B78
_080A4B70:
	ldrb r0, [r4]
	adds r0, #1
	b _080A4B78
_080A4B76:
	adds r0, r4, #0
_080A4B78:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4B80
sub_80A4B80: @ 0x080A4B80
	push {lr}
	movs r1, #0
	ldr r3, _080A4B98 @ =gUnknown_03001F04
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
_080A4B8A:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A4B9C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _080A4BA6
	.align 2, 0
_080A4B98: .4byte gUnknown_03001F04
_080A4B9C:
	adds r1, #1
	cmp r1, #5
	ble _080A4B8A
	movs r0, #1
	rsbs r0, r0, #0
_080A4BA6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A4BAC
sub_80A4BAC: @ 0x080A4BAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4]
	cmp r5, #0
	bne _080A4BC0
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080A4BC2
_080A4BC0:
	adds r0, r5, #0
_080A4BC2:
	adds r5, r0, #0
	ldrb r6, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4BDA
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A4BDA:
	lsrs r0, r0, #0x10
	subs r1, r6, #1
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_80A4D6C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	movs r1, #7
	ands r0, r1
	adds r0, #1
	bl ScriptSetArgumentMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4C00
sub_80A4C00: @ 0x080A4C00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4C18
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A4C18:
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	ldrb r5, [r4, #2]
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4C32
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A4C32:
	lsrs r2, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	subs r1, r5, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_80A4D1C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	movs r1, #7
	ands r0, r1
	adds r0, #1
	bl ScriptSetArgumentMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4C58
sub_80A4C58: @ 0x080A4C58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4C70
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A4C70:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrb r6, [r4, #2]
	ldrb r1, [r4, #4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4C8A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A4C8A:
	lsrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r1, r6, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_80A4D44
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, #2
	movs r1, #7
	ands r0, r1
	adds r0, #1
	bl ScriptSetArgumentMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4CB0
sub_80A4CB0: @ 0x080A4CB0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, sp
	mov r2, sp
	bl sub_80A4D94
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add r6, sp, #4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_80A4D94
	mov r0, sp
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0x10
	mov r2, r8
	movs r3, #2
	ldrsh r1, [r2, r3]
	lsls r1, r1, #0x10
	movs r4, #0
	ldrsh r2, [r6, r4]
	movs r4, #2
	ldrsh r3, [r6, r4]
	bl sub_80A8DB0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	lsrs r0, r0, #0xd
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80A4D1C
sub_80A4D1C: @ 0x080A4D1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80A4CB0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A4D44
sub_80A4D44: @ 0x080A4D44
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #2
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80A4CB0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A4D6C
sub_80A4D6C: @ 0x080A4D6C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80A4CB0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A4D94
sub_80A4D94: @ 0x080A4D94
	push {r4, r5, lr}
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080A4DF8
	cmp r0, #1
	bgt _080A4DAE
	cmp r0, #0
	beq _080A4DB4
	b _080A4E22
_080A4DAE:
	cmp r0, #2
	beq _080A4E02
	b _080A4E22
_080A4DB4:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r1, #0
	ldr r5, _080A4DF4 @ =m2_character_info
	cmp r2, #0xff
	beq _080A4DDC
	movs r0, #0xe2
	lsls r0, r0, #1
	adds r3, r5, r0
	ldrb r0, [r3]
	subs r2, #1
	cmp r0, r2
	beq _080A4DDC
_080A4DCE:
	adds r1, #1
	cmp r1, #5
	bgt _080A4DDC
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A4DCE
_080A4DDC:
	lsls r1, r1, #2
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r0, r1, r0
	ldr r0, [r0]
	strh r0, [r4]
	adds r2, #0x18
	adds r0, r5, r2
	adds r1, r1, r0
	ldr r0, [r1]
	b _080A4E20
	.align 2, 0
_080A4DF4: .4byte m2_character_info
_080A4DF8:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC4B4
	b _080A4E0A
_080A4E02:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
_080A4E0A:
	adds r1, r0, #0
	cmp r1, #0
	beq _080A4E22
	adds r0, #0x80
	movs r2, #2
	ldrsh r0, [r0, r2]
	strh r0, [r4]
	adds r0, r1, #0
	adds r0, #0x84
	movs r1, #2
	ldrsh r0, [r0, r1]
_080A4E20:
	strh r0, [r4, #2]
_080A4E22:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4E28
sub_80A4E28: @ 0x080A4E28
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4E42
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A4E42:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A4E5A
	bl ScriptGetArgMemory
_080A4E5A:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	ldr r1, _080A4E98 @ =gUnknown_08720604
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #5]
	movs r0, #2
	str r0, [sp]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A4EAC
	movs r4, #0
	ldr r5, _080A4E9C @ =gUnknown_03001F04
_080A4E7E:
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A4E90
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A4E90:
	adds r4, #1
	cmp r4, #5
	ble _080A4E7E
	b _080A4EC0
	.align 2, 0
_080A4E98: .4byte gUnknown_08720604
_080A4E9C: .4byte gUnknown_03001F04
_080A4EA0:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
	b _080A4EC0
_080A4EAC:
	movs r4, #0
	ldr r2, _080A4EC8 @ =gUnknown_03001F04
	subs r1, r0, #1
_080A4EB2:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, r1
	beq _080A4EA0
	adds r4, #1
	cmp r4, #5
	ble _080A4EB2
_080A4EC0:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4EC8: .4byte gUnknown_03001F04

	thumb_func_start m2_handle_controlcode_CC_D9_FF
m2_handle_controlcode_CC_D9_FF: @ 0x080A4ECC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r2, r0, #0
	ldr r0, _080A4F34 @ =gUnknown_0300533C
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4F2A
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A4EEE
	bl ScriptGetArgMemory
_080A4EEE:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sp
	ldr r1, _080A4F38 @ =gUnknown_08720604
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2, #5]
	movs r0, #2
	str r0, [sp]
	movs r4, #0
	ldr r5, _080A4F3C @ =gUnknown_03001F04
_080A4F0A:
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A4F24
	cmp r0, #3
	bls _080A4F1A
	cmp r0, #8
	bne _080A4F24
_080A4F1A:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A4F24:
	adds r4, #1
	cmp r4, #5
	ble _080A4F0A
_080A4F2A:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4F34: .4byte gUnknown_0300533C
_080A4F38: .4byte gUnknown_08720604
_080A4F3C: .4byte gUnknown_03001F04

	thumb_func_start sub_80A4F40
sub_80A4F40: @ 0x080A4F40
	push {r4, r5, lr}
	ldrb r4, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r4, r1
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A4F5E
	bl ScriptGetArgMemory
_080A4F5E:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A4F72
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A4F72:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	adds r1, r0, #0
	cmp r1, #0
	beq _080A4F8C
	adds r0, #0x98
	strh r5, [r0]
	adds r0, r1, #0
	bl sub_80A88FC
_080A4F8C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A4F94
sub_80A4F94: @ 0x080A4F94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A4FAC
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A4FAC:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #3]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A4FC4
	bl ScriptGetArgMemory
_080A4FC4:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80AC840
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A4FDC
sub_80A4FDC: @ 0x080A4FDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _080A4FEE
	bl ScriptGetArgMemory
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080A4FEE:
	ldrb r1, [r4]
	bl m2_playsong
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m2_playsong
m2_playsong: @ 0x080A4FFC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0xee
	lsls r1, r1, #0x17
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _080A5016
	adds r0, r4, #0
	bl m2_play_soundeffect
	b _080A5024
_080A5016:
	adds r0, r4, #0
	bl PlaySongForceSetupPlayer
	ldr r1, _080A502C @ =gNewSongId
	ldr r0, _080A5030 @ =gUnknown_030051D0
	strb r4, [r0]
	strb r4, [r1]
_080A5024:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A502C: .4byte gNewSongId
_080A5030: .4byte gUnknown_030051D0

	thumb_func_start sub_80A5034
sub_80A5034: @ 0x080A5034
	push {lr}
	bl sub_80A5048
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	bl m2_playsong
	pop {r0}
	bx r0

	thumb_func_start sub_80A5048
sub_80A5048: @ 0x080A5048
	push {lr}
	bl sub_80B2E28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A5058
sub_80A5058: @ 0x080A5058
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A5090
	pop {r0}
	bx r0

	thumb_func_start sub_80A5070
sub_80A5070: @ 0x080A5070
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC4B4
	ldr r1, _080A508C @ =gUnknown_0300397C
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080A508C: .4byte gUnknown_0300397C

	thumb_func_start sub_80A5090
sub_80A5090: @ 0x080A5090
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AC540
	ldr r1, _080A50A4 @ =gUnknown_0300397C
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080A50A4: .4byte gUnknown_0300397C

	thumb_func_start sub_80A50A8
sub_80A50A8: @ 0x080A50A8
	ldr r1, _080A50B0 @ =gUnknown_0300397C
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080A50B0: .4byte gUnknown_0300397C

	thumb_func_start sub_80A50B4
sub_80A50B4: @ 0x080A50B4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A50CC
	pop {r0}
	bx r0

	thumb_func_start sub_80A50CC
sub_80A50CC: @ 0x080A50CC
	push {lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xff
	bne _080A50EA
	bl sub_80AA1FC
	b _080A5108
_080A50DE:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
	b _080A5108
_080A50EA:
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #7]
	movs r0, #0x20
	str r0, [sp]
	movs r1, #0
	ldr r3, _080A5110 @ =gUnknown_03001F04
	subs r2, #1
_080A50FA:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _080A50DE
	adds r1, #1
	cmp r1, #5
	ble _080A50FA
_080A5108:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_080A5110: .4byte gUnknown_03001F04

	thumb_func_start sub_80A5114
sub_80A5114: @ 0x080A5114
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r4, [r2, #2]
	ldrb r1, [r2, #3]
	lsls r1, r1, #8
	orrs r4, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A5144
	cmp r4, #2
	bne _080A513A
	ldr r1, _080A5140 @ =gUnknown_030012E0
	movs r0, #0x78
	strb r0, [r1]
_080A513A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5140: .4byte gUnknown_030012E0

	thumb_func_start sub_80A5144
sub_80A5144: @ 0x080A5144
	push {lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0xff
	bne _080A5162
	bl sub_80AA234
	b _080A5180
_080A5156:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
	b _080A5180
_080A5162:
	mov r0, sp
	movs r1, #0
	strb r1, [r0, #7]
	movs r0, #0x90
	lsls r0, r0, #1
	str r0, [sp]
	ldr r3, _080A5188 @ =gUnknown_03001F04
	subs r2, #1
_080A5172:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, r2
	beq _080A5156
	adds r1, #1
	cmp r1, #3
	ble _080A5172
_080A5180:
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_080A5188: .4byte gUnknown_03001F04

	thumb_func_start sub_80A518C
sub_80A518C: @ 0x080A518C
	push {lr}
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r3, r1
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	lsls r2, r2, #8
	orrs r1, r2
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r2, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r3, #0
	bl sub_80218A4
	pop {r0}
	bx r0

	thumb_func_start m2_handle_controlcode_CC_CF_FF
m2_handle_controlcode_CC_CF_FF: @ 0x080A51BC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl PrepareTimedEvent
	pop {r0}
	bx r0

	thumb_func_start sub_80A51D4
sub_80A51D4: @ 0x080A51D4
	push {lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	orrs r2, r0
	cmp r2, #0
	bne _080A51F4
	bl ScriptGetArgMemory
	adds r2, r0, #0
_080A51F4:
	movs r1, #0
	ldr r0, _080A5210 @ =m2_character_info
	ldr r3, _080A5214 @ =0x00000694
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, r2
	bhs _080A5204
	movs r1, #1
_080A5204:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0
_080A5210: .4byte m2_character_info
_080A5214: .4byte 0x00000694

	thumb_func_start sub_80A5218
sub_80A5218: @ 0x080A5218
	push {lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x18
	orrs r2, r0
	adds r0, r2, #0
	cmp r0, #0
	bne _080A5238
	bl ScriptGetArgMemory
_080A5238:
	bl sub_80A5240
	pop {r0}
	bx r0

	thumb_func_start sub_80A5240
sub_80A5240: @ 0x080A5240
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _080A5264 @ =m2_character_info
	ldr r1, _080A5268 @ =0x00000694
	adds r4, r0, r1
	ldr r0, [r4]
	adds r1, r0, r3
	adds r0, r1, #0
	ldr r2, _080A526C @ =0x0098967F
	cmp r1, r2
	ble _080A5258
	adds r0, r2, #0
_080A5258:
	str r0, [r4]
	subs r0, r1, r0
	subs r0, r3, r0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080A5264: .4byte m2_character_info
_080A5268: .4byte 0x00000694
_080A526C: .4byte 0x0098967F

	thumb_func_start sub_80A5270
sub_80A5270: @ 0x080A5270
	push {r4, lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	adds r0, r1, #0
	cmp r0, #0
	bne _080A5284
	bl ScriptGetArgMemory
_080A5284:
	adds r4, r0, #0
	bl sub_80A52CC
	adds r0, r4, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5298
sub_80A5298: @ 0x080A5298
	push {lr}
	bl ScriptGetArgMemory
	movs r2, #0
	ldr r1, _080A52C4 @ =m2_character_info
	movs r3, #0xd2
	lsls r3, r3, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, _080A52C8 @ =0x0001869F
	cmp r0, r1
	bls _080A52B4
	movs r2, #1
_080A52B4:
	adds r0, r2, #0
	bl ScriptSetWorkingMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_080A52C4: .4byte m2_character_info
_080A52C8: .4byte 0x0001869F

	thumb_func_start sub_80A52CC
sub_80A52CC: @ 0x080A52CC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080A52E4 @ =m2_character_info
	ldr r3, _080A52E8 @ =0x00000694
	adds r2, r0, r3
	ldr r0, [r2]
	cmp r0, r1
	blo _080A52E0
	subs r0, r0, r1
	str r0, [r2]
_080A52E0:
	pop {r0}
	bx r0
	.align 2, 0
_080A52E4: .4byte m2_character_info
_080A52E8: .4byte 0x00000694

	thumb_func_start m2_handle_controlcode_CC_D4_FF
m2_handle_controlcode_CC_D4_FF: @ 0x080A52EC
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r1, #0
	bne _080A5304
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080A5306
_080A5304:
	adds r0, r1, #0
_080A5306:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r0, r1, #0
	bl m2_play_soundeffect
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A531C
sub_80A531C: @ 0x080A531C
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r1, #0
	bne _080A5334
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080A5336
_080A5334:
	adds r0, r1, #0
_080A5336:
	ldr r2, _080A5358 @ =gUnknown_08B1D62C
	subs r1, r0, #1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	movs r2, #0xc
	ands r2, r0
	cmp r2, #4
	beq _080A536A
	cmp r2, #4
	bgt _080A535C
	cmp r2, #0
	beq _080A5366
	b _080A536E
	.align 2, 0
_080A5358: .4byte gUnknown_08B1D62C
_080A535C:
	cmp r2, #8
	beq _080A536A
	cmp r2, #0xc
	beq _080A536A
	b _080A536E
_080A5366:
	movs r1, #1
	b _080A5370
_080A536A:
	movs r1, #2
	b _080A5370
_080A536E:
	movs r1, #0
_080A5370:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A537C
sub_80A537C: @ 0x080A537C
	push {r4, r5, r6, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080A539A
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A539A:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r5, r6, #0
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A53B2
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A53B2:
	adds r0, r5, #0
	bl sub_80A469C
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_80A53D4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A53D4
sub_80A53D4: @ 0x080A53D4
	ldr r3, _080A53FC @ =gUnknown_08B1D62C
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r1, _080A5400 @ =gUnknown_08720614
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	adds r0, r0, r1
	ldrb r2, [r2, #3]
	ldrb r1, [r0]
	ands r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_080A53FC: .4byte gUnknown_08B1D62C
_080A5400: .4byte gUnknown_08720614

	thumb_func_start sub_80A5404
sub_80A5404: @ 0x080A5404
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080A5422
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A5422:
	lsrs r0, r0, #0x10
	ldr r1, _080A5454 @ =m2_selected_person
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	strh r0, [r1]
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A543A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A543A:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80BBEE4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ScriptSetArgumentMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5454: .4byte m2_selected_person

	thumb_func_start m2_handle_controlcode_CC_DD_FF
m2_handle_controlcode_CC_DD_FF: @ 0x080A5458
	push {r4, lr}
	ldrb r4, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r4, r1
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x10
	orrs r4, r1
	ldrb r1, [r0, #3]
	lsls r1, r1, #0x18
	orrs r4, r1
	ldrb r2, [r0, #4]
	ldrb r1, [r0, #5]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r1, [r0, #6]
	lsls r1, r1, #0x10
	orrs r2, r1
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	orrs r2, r0
	cmp r2, #0
	bne _080A548C
	bl ScriptGetWorkingMemory
	b _080A549E
_080A548C:
	cmp r2, #1
	bne _080A5496
	bl ScriptGetArgMemory
	b _080A549E
_080A5496:
	bl ScriptGetSecondaryMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A549E:
	cmp r4, r0
	bhi _080A54AC
	movs r1, #2
	cmp r4, r0
	bne _080A54AE
	movs r1, #1
	b _080A54AE
_080A54AC:
	movs r1, #0
_080A54AE:
	adds r0, r1, #0
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m2_handle_controlcode_CC_E0_FF
m2_handle_controlcode_CC_E0_FF: @ 0x080A54BC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080A54E4 @ =m2_character_info
	movs r1, #0xd3
	lsls r1, r1, #3
	adds r5, r0, r1
	ldr r0, [r5]
	bl ScriptSetWorkingMemory
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	lsls r0, r0, #8
	orrs r1, r0
	cmp r1, #2
	bne _080A54DE
	movs r0, #0
	str r0, [r5]
_080A54DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A54E4: .4byte m2_character_info

	thumb_func_start sub_80A54E8
sub_80A54E8: @ 0x080A54E8
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A54FE
	bl ScriptGetArgMemory
_080A54FE:
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80BD678
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0

	thumb_func_start sub_80A5510
sub_80A5510: @ 0x080A5510
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A552A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A552A:
	bl sub_80A5534
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5534
sub_80A5534: @ 0x080A5534
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _080A5558 @ =gUnknown_030050A8
	subs r0, r4, #1
	strb r0, [r1]
	bl sub_8020064
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_80A555C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A5558: .4byte gUnknown_030050A8

	thumb_func_start sub_80A555C
sub_80A555C: @ 0x080A555C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	movs r4, #0
	ldr r1, _080A5588 @ =m2_character_info
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r6, r1, r2
	ldr r2, _080A558C @ =0xFFFF0000
	adds r0, r0, r2
	adds r5, r1, #0
	adds r5, #0x14
	asrs r0, r0, #0xd
	ldr r2, _080A5590 @ =0x000006B6
	adds r1, r1, r2
	adds r3, r0, r1
_080A557A:
	adds r0, r4, r6
	ldrb r1, [r0]
	cmp r1, #0xff
	bne _080A5594
	movs r0, #0x80
	strb r0, [r3]
	b _080A55D4
	.align 2, 0
_080A5588: .4byte m2_character_info
_080A558C: .4byte 0xFFFF0000
_080A5590: .4byte 0x000006B6
_080A5594:
	cmp r1, #0x10
	bne _080A559A
	movs r1, #0xf
_080A559A:
	cmp r1, #3
	bhi _080A55D2
	movs r0, #0x6c
	muls r0, r1, r0
	adds r2, r0, r5
	adds r0, r2, #0
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A55B4
	movs r0, #0x40
	orrs r1, r0
	b _080A55C0
_080A55B4:
	cmp r0, #2
	bne _080A55C0
	movs r0, #0x20
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_080A55C0:
	adds r0, r2, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A55D2
	movs r0, #0x10
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_080A55D2:
	strb r1, [r3]
_080A55D4:
	adds r3, #1
	adds r4, #1
	cmp r4, #5
	ble _080A557A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A55E4
sub_80A55E4: @ 0x080A55E4
	push {r4, r5, lr}
	sub sp, #0x10
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A55FC
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A55FC:
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A563C
	movs r4, #0
	ldr r5, _080A562C @ =gUnknown_03001F04
_080A5610:
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A5622
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A5622:
	adds r4, #1
	cmp r4, #3
	ble _080A5610
	b _080A5650
	.align 2, 0
_080A562C: .4byte gUnknown_03001F04
_080A5630:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
	b _080A5650
_080A563C:
	movs r4, #0
	ldr r2, _080A5658 @ =gUnknown_03001F04
	subs r1, r0, #1
_080A5642:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, r1
	beq _080A5630
	adds r4, #1
	cmp r4, #3
	ble _080A5642
_080A5650:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5658: .4byte gUnknown_03001F04

	thumb_func_start sub_80A565C
sub_80A565C: @ 0x080A565C
	push {r4, r5, lr}
	sub sp, #0x10
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A5674
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A5674:
	lsrs r1, r0, #0x10
	movs r0, #0x80
	str r0, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A56B0
	movs r4, #0
	ldr r5, _080A56A0 @ =gUnknown_03001F04
_080A5686:
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080A5698
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A5698:
	adds r4, #1
	cmp r4, #3
	ble _080A5686
	b _080A56C4
	.align 2, 0
_080A56A0: .4byte gUnknown_03001F04
_080A56A4:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
	b _080A56C4
_080A56B0:
	movs r4, #0
	ldr r2, _080A56CC @ =gUnknown_03001F04
	subs r1, r0, #1
_080A56B6:
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, r1
	beq _080A56A4
	adds r4, #1
	cmp r4, #3
	ble _080A56B6
_080A56C4:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A56CC: .4byte gUnknown_03001F04

	thumb_func_start sub_80A56D0
sub_80A56D0: @ 0x080A56D0
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080A56EE
	adds r5, r0, #0
	b _080A56F6
_080A56EE:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080A56F6:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A5706
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A5706:
	adds r0, r5, #0
	bl sub_80A571C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A571C
sub_80A571C: @ 0x080A571C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	cmp r5, #8
	bne _080A5738
	ldr r0, _080A5730 @ =m2_character_info
	ldr r1, _080A5734 @ =0x00000232
	b _080A575A
	.align 2, 0
_080A5730: .4byte m2_character_info
_080A5734: .4byte 0x00000232
_080A5738:
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80A576C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A574C
	movs r0, #0
	b _080A5760
_080A574C:
	ldr r1, _080A5768 @ =m2_character_info
	subs r2, r4, #1
	movs r0, #0x6c
	muls r0, r2, r0
	subs r0, #1
	adds r0, r5, r0
	adds r1, #0x54
_080A575A:
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
_080A5760:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080A5768: .4byte m2_character_info

	thumb_func_start sub_80A576C
sub_80A576C: @ 0x080A576C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	ldr r3, _080A5798 @ =m2_character_info
	ldr r4, _080A579C @ =0x000001CB
	adds r2, r3, r4
	ldrb r4, [r2]
	cmp r1, r4
	bge _080A57A6
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r5, r3, r2
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	subs r3, r2, #1
_080A578C:
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, r3
	bne _080A57A0
	adds r0, r2, #0
	b _080A57A8
	.align 2, 0
_080A5798: .4byte m2_character_info
_080A579C: .4byte 0x000001CB
_080A57A0:
	adds r1, #1
	cmp r1, r4
	blt _080A578C
_080A57A6:
	movs r0, #0
_080A57A8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A57B0
sub_80A57B0: @ 0x080A57B0
	push {r4, r5, r6, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r1, [r0, #3]
	lsls r1, r1, #8
	orrs r4, r1
	ldrb r5, [r0, #4]
	ldrb r0, [r0, #5]
	lsls r0, r0, #8
	orrs r5, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080A57D6
	adds r6, r0, #0
	b _080A57DE
_080A57D6:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_080A57DE:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A57EE
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A57EE:
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_80A5808
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5808
sub_80A5808: @ 0x080A5808
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	cmp r5, #8
	bne _080A5848
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080A5830
	ldr r0, _080A582C @ =m2_character_info
	subs r1, r2, #1
	b _080A5832
	.align 2, 0
_080A582C: .4byte m2_character_info
_080A5830:
	ldr r0, _080A5840 @ =m2_character_info
_080A5832:
	ldr r2, _080A5844 @ =0x00000232
	adds r0, r0, r2
	strb r1, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	b _080A587A
	.align 2, 0
_080A5840: .4byte m2_character_info
_080A5844: .4byte 0x00000232
_080A5848:
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_80A576C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A585C
	movs r0, #0
	b _080A587A
_080A585C:
	ldr r1, _080A5880 @ =m2_character_info
	subs r2, r4, #1
	movs r0, #0x6c
	muls r0, r2, r0
	subs r0, #1
	adds r0, r5, r0
	adds r1, #0x54
	adds r0, r0, r1
	subs r1, r6, #1
	strb r1, [r0]
	bl sub_80D1D84
	bl sub_80D6844
	adds r0, r4, #0
_080A587A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A5880: .4byte m2_character_info

	thumb_func_start sub_80A5884
sub_80A5884: @ 0x080A5884
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	cmp r2, #0
	beq _080A589E
	lsls r0, r2, #0x18
	b _080A58A4
_080A589E:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x18
_080A58A4:
	lsrs r5, r0, #0x18
	cmp r4, #0
	beq _080A58AE
	lsls r0, r4, #0x18
	b _080A58B4
_080A58AE:
	bl ScriptGetArgMemory
	lsls r0, r0, #0x18
_080A58B4:
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	bl sub_80F0944
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A58C4
sub_80A58C4: @ 0x080A58C4
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A58E2
	bl ScriptGetWorkingMemory
_080A58E2:
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080A58F4
	bl ScriptGetArgMemory
_080A58F4:
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r5, #0
	bl sub_80ED62C
	adds r4, r0, #0
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_80A37B0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetArgumentMemory
	adds r0, r4, #0
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5924
sub_80A5924: @ 0x080A5924
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080A5942
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A5942:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A596C @ =0xFFFF0000
	adds r0, r0, r1
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080A5958
	bl ScriptGetArgMemory
_080A5958:
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r5, #0
	bl sub_80ED558
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A596C: .4byte 0xFFFF0000

	thumb_func_start sub_80A5970
sub_80A5970: @ 0x080A5970
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080A598E
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A598E:
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A599E
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A599E:
	lsrs r0, r0, #0x10
	ldr r4, _080A59DC @ =gUnknown_08B1D62C
	ldr r3, _080A59E0 @ =m2_character_info
	lsls r1, r0, #0x10
	asrs r1, r1, #0xf
	subs r1, #2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	movs r2, #0x6c
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x14
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #3]
	lsrs r4, r0, #6
	movs r0, #1
	ands r4, r0
	bl sub_80A59F0
	cmp r0, #0
	beq _080A59E4
	movs r0, #2
	orrs r0, r4
	b _080A59E6
	.align 2, 0
_080A59DC: .4byte gUnknown_08B1D62C
_080A59E0: .4byte m2_character_info
_080A59E4:
	adds r0, r4, #0
_080A59E6:
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_80A59F0
sub_80A59F0: @ 0x080A59F0
	push {lr}
	movs r2, #0x24
	movs r1, #0
	ldr r3, _080A5A1C @ =gUnknown_030023EE
_080A59F8:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A5A02
	subs r2, #1
_080A5A02:
	adds r1, #1
	cmp r1, #2
	ble _080A59F8
	movs r1, #0
	cmp r1, r2
	bge _080A5A2A
	ldr r3, _080A5A20 @ =gUnknown_03001FA4
_080A5A10:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A5A24
	movs r0, #0
	b _080A5A2C
	.align 2, 0
_080A5A1C: .4byte gUnknown_030023EE
_080A5A20: .4byte gUnknown_03001FA4
_080A5A24:
	adds r1, #1
	cmp r1, r2
	blt _080A5A10
_080A5A2A:
	movs r0, #1
_080A5A2C:
	pop {r1}
	bx r1

	thumb_func_start m2_handle_controlcode_CC_F6_FF
m2_handle_controlcode_CC_F6_FF: @ 0x080A5A30
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A5A4A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5A4A:
	bl RandomNumber
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5A58
sub_80A5A58: @ 0x080A5A58
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A5A7A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5A7A:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_80A5B0C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5A8C
sub_80A5A8C: @ 0x080A5A8C
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A5B04 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	ldr r5, _080A5B08 @ =m2_character_info
	cmp r2, #0
	bne _080A5AC0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r5
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A5AC0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r1, r0, r5
	adds r2, r1, #0
	adds r2, #0x46
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	adds r3, r1, #0
	adds r3, #0x4a
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	bne _080A5AE8
	movs r0, #1
	strh r0, [r3]
_080A5AE8:
	adds r0, r1, #0
	adds r0, #0x44
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080A5AFC
	strh r3, [r2]
_080A5AFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5B04: .4byte 0xFFFF0000
_080A5B08: .4byte m2_character_info

	thumb_func_start sub_80A5B0C
sub_80A5B0C: @ 0x080A5B0C
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A5B48
	movs r0, #0
	lsls r6, r1, #0x10
	ldr r7, _080A5B44 @ =gUnknown_03001F04
_080A5B22:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r0, #1
	asrs r1, r6, #0x10
	adds r2, r5, #0
	bl sub_80A5A8C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080A5B22
	b _080A5B52
	.align 2, 0
_080A5B44: .4byte gUnknown_03001F04
_080A5B48:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_80A5A8C
_080A5B52:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A5B58
sub_80A5B58: @ 0x080A5B58
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A5B7A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5B7A:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_80A5BFC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5B8C
sub_80A5B8C: @ 0x080A5B8C
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A5BF4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldr r4, _080A5BF8 @ =m2_character_info
	cmp r2, #0
	bne _080A5BC2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x4c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A5BC2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r2, r1, #0
	adds r2, #0x4e
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r2]
	adds r0, r0, r3
	strh r0, [r2]
	adds r1, #0x4c
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r0, r1
	ble _080A5BEC
	strh r3, [r2]
_080A5BEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5BF4: .4byte 0xFFFF0000
_080A5BF8: .4byte m2_character_info

	thumb_func_start sub_80A5BFC
sub_80A5BFC: @ 0x080A5BFC
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A5C38
	movs r0, #0
	lsls r6, r1, #0x10
	ldr r7, _080A5C34 @ =gUnknown_03001F04
_080A5C12:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r0, #1
	asrs r1, r6, #0x10
	adds r2, r5, #0
	bl sub_80A5B8C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080A5C12
	b _080A5C42
	.align 2, 0
_080A5C34: .4byte gUnknown_03001F04
_080A5C38:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_80A5B8C
_080A5C42:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A5C48
sub_80A5C48: @ 0x080A5C48
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A5C6A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5C6A:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_80A5CE4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5C7C
sub_80A5C7C: @ 0x080A5C7C
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A5CDC @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldr r4, _080A5CE0 @ =m2_character_info
	cmp r2, #0
	bne _080A5CB2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A5CB2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x46
	ldrh r1, [r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _080A5CD4
	movs r0, #0
	strh r0, [r2]
_080A5CD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5CDC: .4byte 0xFFFF0000
_080A5CE0: .4byte m2_character_info

	thumb_func_start sub_80A5CE4
sub_80A5CE4: @ 0x080A5CE4
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A5D20
	movs r0, #0
	lsls r6, r1, #0x10
	ldr r7, _080A5D1C @ =gUnknown_03001F04
_080A5CFA:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r7
	ldrb r0, [r0]
	adds r0, #1
	asrs r1, r6, #0x10
	adds r2, r5, #0
	bl sub_80A5C7C
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080A5CFA
	b _080A5D2A
	.align 2, 0
_080A5D1C: .4byte gUnknown_03001F04
_080A5D20:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_80A5C7C
_080A5D2A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A5D30
sub_80A5D30: @ 0x080A5D30
	push {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A5D52
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5D52:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_80A5DCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5D64
sub_80A5D64: @ 0x080A5D64
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A5DC4 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldr r4, _080A5DC8 @ =m2_character_info
	cmp r2, #0
	bne _080A5D9A
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x4c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080A5D9A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r0, r1, r0
	adds r0, r0, r4
	adds r2, r0, #0
	adds r2, #0x4e
	ldrh r1, [r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _080A5DBC
	movs r0, #0
	strh r0, [r2]
_080A5DBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A5DC4: .4byte 0xFFFF0000
_080A5DC8: .4byte m2_character_info

	thumb_func_start sub_80A5DCC
sub_80A5DCC: @ 0x080A5DCC
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A5E04
	movs r0, #0
	lsls r6, r1, #0x10
	ldr r7, _080A5E00 @ =gUnknown_03001F04
_080A5DE2:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r7
	ldrb r0, [r0]
	asrs r1, r6, #0x10
	adds r2, r5, #0
	bl sub_80A5D64
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #3
	ble _080A5DE2
	b _080A5E0E
	.align 2, 0
_080A5E00: .4byte gUnknown_03001F04
_080A5E04:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	bl sub_80A5D64
_080A5E0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80A5E14
sub_80A5E14: @ 0x080A5E14
	push {r4, lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A5E2E
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A5E2E:
	bl sub_80A5E5C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A5E46
	bl sub_80A5F0C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A5E48
_080A5E46:
	movs r0, #0
_080A5E48:
	bl ScriptSetWorkingMemory
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetArgumentMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A5E5C
sub_80A5E5C: @ 0x080A5E5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #3
	bl sub_80A576C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A5E8C
	b _080A5EF2
_080A5E76:
	lsls r0, r7, #0x10
	asrs r0, r0, #0xf
	adds r1, r5, #0
	adds r1, #0xec
	adds r0, r0, r1
	ldrb r1, [r4, #0xa]
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A5EF4
_080A5E8C:
	movs r7, #0
	ldr r5, _080A5F00 @ =m2_character_info
	adds r0, r5, #0
	adds r0, #0xec
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	cmp r1, #0
	beq _080A5EF2
	ldr r0, _080A5F04 @ =gUnknown_08B1D62C
	mov sb, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_080A5EA6:
	asrs r6, r1, #0x10
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldrb r0, [r4, #2]
	cmp r0, #8
	bne _080A5ED0
	ldr r2, _080A5F08 @ =0x00000141
	adds r0, r5, r2
	ldrb r1, [r0]
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _080A5ED0
	movs r0, #0x63
	bl RandomNumber
	cmp r0, r8
	blo _080A5E76
_080A5ED0:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bgt _080A5EF2
	ldr r5, _080A5F00 @ =m2_character_info
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0xec
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	cmp r1, #0
	bne _080A5EA6
_080A5EF2:
	movs r0, #0
_080A5EF4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A5F00: .4byte m2_character_info
_080A5F04: .4byte gUnknown_08B1D62C
_080A5F08: .4byte 0x00000141

	thumb_func_start sub_80A5F0C
sub_80A5F0C: @ 0x080A5F0C
	push {lr}
	ldr r2, _080A5F2C @ =gUnknown_08B1D62C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #2]
	cmp r0, #8
	bne _080A5F30
	ldrb r0, [r1, #0xa]
	adds r0, #1
	b _080A5F32
	.align 2, 0
_080A5F2C: .4byte gUnknown_08B1D62C
_080A5F30:
	movs r0, #0
_080A5F32:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start m2_handle_controlcode_CC_FC_FF
m2_handle_controlcode_CC_FC_FF: @ 0x080A5F38
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl TriggerSpecial
	bl ScriptSetWorkingMemory
	pop {r0}
	bx r0

	thumb_func_start TriggerSpecial
TriggerSpecial: @ 0x080A5F54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	ldr r1, _080A5F70 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	cmp r0, #0x47
	bls _080A5F66
	b _080A63FE
_080A5F66:
	lsls r0, r0, #2
	ldr r1, _080A5F74 @ =_080A5F78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A5F70: .4byte 0xFFFF0000
_080A5F74: .4byte _080A5F78
_080A5F78: @ jump table
	.4byte _080A6098 @ case 0
	.4byte _080A60A0 @ case 1
	.4byte _080A60A8 @ case 2
	.4byte _080A60B0 @ case 3
	.4byte _080A60B8 @ case 4
	.4byte _080A60C0 @ case 5
	.4byte _080A60C8 @ case 6
	.4byte _080A60CE @ case 7
	.4byte _080A60F4 @ case 8
	.4byte _080A63FE @ case 9
	.4byte _080A6102 @ case 10
	.4byte _080A6114 @ case 11
	.4byte _080A611A @ case 12
	.4byte _080A6122 @ case 13
	.4byte _080A63FE @ case 14
	.4byte _080A612A @ case 15
	.4byte _080A6132 @ case 16
	.4byte _080A6138 @ case 17
	.4byte _080A614C @ case 18
	.4byte _080A6158 @ case 19
	.4byte _080A6198 @ case 20
	.4byte _080A6174 @ case 21
	.4byte _080A617A @ case 22
	.4byte _080A6180 @ case 23
	.4byte _080A6194 @ case 24
	.4byte _080A61A0 @ case 25
	.4byte _080A61A6 @ case 26
	.4byte _080A61AC @ case 27
	.4byte _080A61B2 @ case 28
	.4byte _080A61B8 @ case 29
	.4byte _080A61BE @ case 30
	.4byte _080A61C4 @ case 31
	.4byte _080A61CA @ case 32
	.4byte _080A61D0 @ case 33
	.4byte _080A61D8 @ case 34
	.4byte _080A61E0 @ case 35
	.4byte _080A61EC @ case 36
	.4byte _080A61F4 @ case 37
	.4byte _080A61FA @ case 38
	.4byte _080A6200 @ case 39
	.4byte _080A6206 @ case 40
	.4byte _080A620C @ case 41
	.4byte _080A6214 @ case 42
	.4byte _080A621C @ case 43
	.4byte _080A6226 @ case 44
	.4byte _080A6230 @ case 45
	.4byte _080A6238 @ case 46
	.4byte _080A623E @ case 47
	.4byte _080A6254 @ case 48
	.4byte _080A626C @ case 49
	.4byte _080A6278 @ case 50
	.4byte _080A62B4 @ case 51
	.4byte _080A62F0 @ case 52
	.4byte _080A6308 @ case 53
	.4byte _080A6314 @ case 54
	.4byte _080A6320 @ case 55
	.4byte _080A6328 @ case 56
	.4byte _080A632E @ case 57
	.4byte _080A6334 @ case 58
	.4byte _080A6340 @ case 59
	.4byte _080A6346 @ case 60
	.4byte _080A634C @ case 61
	.4byte _080A6358 @ case 62
	.4byte _080A635E @ case 63
	.4byte _080A6368 @ case 64
	.4byte _080A6370 @ case 65
	.4byte _080A63A4 @ case 66
	.4byte _080A63B0 @ case 67
	.4byte _080A63D8 @ case 68
	.4byte _080A63DE @ case 69
	.4byte _080A63EC @ case 70
	.4byte _080A63F8 @ case 71
_080A6098:
	movs r0, #0
	bl DoVideoDrugDrinkScene
	b _080A63FE
_080A60A0:
	movs r0, #1
	bl DoVideoDrugDrinkScene
	b _080A63FE
_080A60A8:
	movs r0, #1
	bl DoNamingScreen
	b _080A63FE
_080A60B0:
	movs r0, #0
	bl DoNamingScreen
	b _080A63FE
_080A60B8:
	movs r0, #1
	bl SetOverworldStatusSuppresionFlag
	b _080A63FE
_080A60C0:
	movs r0, #0
	bl SetOverworldStatusSuppresionFlag
	b _080A63FE
_080A60C8:
	bl TryQueueTownMap
	b _080A6220
_080A60CE:
	ldr r0, _080A60EC @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A60DA
	b _080A63FE
_080A60DA:
	ldr r0, _080A60F0 @ =gUnknown_0300538C
	ldr r0, [r0]
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A60E8
	b _080A63FE
_080A60E8:
	b _080A63C0
	.align 2, 0
_080A60EC: .4byte gUnknown_03005344
_080A60F0: .4byte gUnknown_0300538C
_080A60F4:
	movs r0, #2
	bl AddSpecialMusicEffect
	movs r0, #1
	bl sub_80A640C
	b _080A63FE
_080A6102:
	ldr r1, _080A6110 @ =gUnknown_03003984
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	bl sub_80B2C48
	b _080A63FE
	.align 2, 0
_080A6110: .4byte gUnknown_03003984
_080A6114:
	bl DoStaffRollCredits
	b _080A63FE
_080A611A:
	movs r0, #1
	bl sub_80D63FC
	b _080A63FE
_080A6122:
	movs r0, #0
	bl sub_80D63FC
	b _080A63FE
_080A612A:
	movs r0, #0
	bl sub_80A640C
	b _080A63FE
_080A6132:
	bl sub_80A6A98
	b _080A6400
_080A6138:
	ldr r1, _080A6148 @ =gUnknown_0300533C
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	bl sub_80D24DC
	b _080A63FE
	.align 2, 0
_080A6148: .4byte gUnknown_0300533C
_080A614C:
	ldr r1, _080A6154 @ =gUnknown_03003984
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A6154: .4byte gUnknown_03003984
_080A6158:
	bl VBlankIntrWait
	bl TryHandleSleepMode
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080A6170 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	b _080A63FE
	.align 2, 0
_080A6170: .4byte 0x0000F7FF
_080A6174:
	bl sub_80AF924
	b _080A63FE
_080A617A:
	bl sub_80AF954
	b _080A63FE
_080A6180:
	ldr r1, _080A6190 @ =gUnknown_0300533C
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	bl sub_80D243C
	b _080A63FE
	.align 2, 0
_080A6190: .4byte gUnknown_0300533C
_080A6194:
	bl sub_80AB5BC
_080A6198:
	movs r0, #1
	bl sub_80B2C48
	b _080A63FE
_080A61A0:
	bl sub_80AF970
	b _080A63FE
_080A61A6:
	bl sub_80AF9A0
	b _080A63FE
_080A61AC:
	bl sub_80AB2F0
	b _080A63FE
_080A61B2:
	bl sub_80A2384
	b _080A63FE
_080A61B8:
	bl sub_80AF9BC
	b _080A63FE
_080A61BE:
	bl ShowToBeContinuedScreen
	b _080A63FE
_080A61C4:
	bl sub_80AA510
	b _080A63FE
_080A61CA:
	bl sub_80AA548
	b _080A63FE
_080A61D0:
	movs r0, #0xa
	bl DoFullScreenAnimation
	b _080A63FE
_080A61D8:
	movs r0, #0xe
	bl DoFullScreenAnimation
	b _080A63FE
_080A61E0:
	ldr r1, _080A61E8 @ =gUnknown_03002A44
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A61E8: .4byte gUnknown_03002A44
_080A61EC:
	ldr r1, _080A61F0 @ =gUnknown_03002A44
	b _080A63FA
	.align 2, 0
_080A61F0: .4byte gUnknown_03002A44
_080A61F4:
	bl sub_80AB938
	b _080A63FE
_080A61FA:
	bl sub_80AB990
	b _080A63FE
_080A6200:
	bl sub_80ABA70
	b _080A63FE
_080A6206:
	bl sub_80ABAC8
	b _080A63FE
_080A620C:
	movs r0, #0
	bl sub_80BDE74
	b _080A63FE
_080A6214:
	movs r0, #1
	bl sub_80BDE74
	b _080A63FE
_080A621C:
	bl sub_80A5298
_080A6220:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A6400
_080A6226:
	ldr r1, _080A622C @ =gUnknown_0300395C
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A622C: .4byte gUnknown_0300395C
_080A6230:
	ldr r1, _080A6234 @ =gUnknown_0300395C
	b _080A63FA
	.align 2, 0
_080A6234: .4byte gUnknown_0300395C
_080A6238:
	bl sub_80AA55C
	b _080A63FE
_080A623E:
	ldr r1, _080A624C @ =gUnknown_03000990
	ldr r0, _080A6250 @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x68
	ldrb r0, [r0]
	b _080A63FC
	.align 2, 0
_080A624C: .4byte gUnknown_03000990
_080A6250: .4byte gUnknown_03005328
_080A6254:
	mov r1, sp
	ldr r0, _080A6268 @ =gUnknown_03000990
	ldrb r0, [r0]
	strb r0, [r1, #5]
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	bl sub_80D102C
	b _080A63FE
	.align 2, 0
_080A6268: .4byte gUnknown_03000990
_080A626C:
	ldr r1, _080A6274 @ =gUnknown_03003954
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A6274: .4byte gUnknown_03003954
_080A6278:
	movs r4, #0
	movs r5, #0
	ldr r7, _080A62A8 @ =gUnknown_03001F04
	movs r2, #0
	ldr r6, _080A62AC @ =gUnknown_03000990
	ldr r3, _080A62B0 @ =gUnknown_03005328
_080A6284:
	adds r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #4
	bls _080A6290
	cmp r0, #8
	bne _080A629E
_080A6290:
	adds r0, r5, r6
	ldr r1, [r3]
	adds r1, r2, r1
	adds r1, #0x68
	ldrb r1, [r1]
	strb r1, [r0]
	adds r5, #1
_080A629E:
	adds r2, #0x70
	adds r4, #1
	cmp r4, #5
	ble _080A6284
	b _080A63FE
	.align 2, 0
_080A62A8: .4byte gUnknown_03001F04
_080A62AC: .4byte gUnknown_03000990
_080A62B0: .4byte gUnknown_03005328
_080A62B4:
	movs r4, #0
	movs r5, #0
	ldr r7, _080A62E8 @ =gUnknown_03001F04
	mov r6, sp
_080A62BC:
	adds r0, r4, r7
	ldrb r0, [r0]
	cmp r0, #4
	bls _080A62C8
	cmp r0, #8
	bne _080A62E0
_080A62C8:
	ldr r0, _080A62EC @ =gUnknown_03000990
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r6, #5]
	adds r5, #1
	movs r0, #2
	str r0, [sp]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A62E0:
	adds r4, #1
	cmp r4, #5
	ble _080A62BC
	b _080A63FE
	.align 2, 0
_080A62E8: .4byte gUnknown_03001F04
_080A62EC: .4byte gUnknown_03000990
_080A62F0:
	ldr r1, _080A62FC @ =gUnknown_03003948
	ldr r0, _080A6300 @ =DoEndgameCopyrightDisclaimerCallback
	str r0, [r1]
	ldr r1, _080A6304 @ =gUnknown_0300521C
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A62FC: .4byte gUnknown_03003948
_080A6300: .4byte DoEndgameCopyrightDisclaimerCallback
_080A6304: .4byte gUnknown_0300521C
_080A6308:
	ldr r1, _080A6310 @ =gUnknown_03003970
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A6310: .4byte gUnknown_03003970
_080A6314:
	ldr r1, _080A631C @ =gUnknown_03003920
	movs r0, #1
	str r0, [r1]
	b _080A63FE
	.align 2, 0
_080A631C: .4byte gUnknown_03003920
_080A6320:
	ldr r1, _080A6324 @ =gUnknown_03003920
	b _080A63E0
	.align 2, 0
_080A6324: .4byte gUnknown_03003920
_080A6328:
	bl sub_8021880
	b _080A63FE
_080A632E:
	bl sub_80B29E4
	b _080A63FE
_080A6334:
	ldr r0, _080A633C @ =gUnknown_03005344
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _080A6400
	.align 2, 0
_080A633C: .4byte gUnknown_03005344
_080A6340:
	bl sub_8020064
	b _080A63FE
_080A6346:
	bl sub_80B2CFC
	b _080A63FE
_080A634C:
	bl sub_801E57C
	movs r0, #0
	bl sub_801E270
	b _080A63FE
_080A6358:
	bl sub_80AA4CC
	b _080A63FE
_080A635E:
	ldr r1, _080A6364 @ =gUnknown_03003940
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A6364: .4byte gUnknown_03003940
_080A6368:
	ldr r1, _080A636C @ =gUnknown_03003940
	b _080A63FA
	.align 2, 0
_080A636C: .4byte gUnknown_03003940
_080A6370:
	movs r4, #0
	ldr r6, _080A63A0 @ =gUnknown_03001F04
	mov r5, sp
_080A6376:
	adds r0, r4, r6
	ldrb r0, [r0]
	subs r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A6396
	movs r0, #1
	strb r0, [r5, #7]
	movs r0, #0x20
	str r0, [sp]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_80D102C
_080A6396:
	adds r4, #1
	cmp r4, #5
	ble _080A6376
	b _080A63FE
	.align 2, 0
_080A63A0: .4byte gUnknown_03001F04
_080A63A4:
	ldr r1, _080A63AC @ =gUnknown_03003978
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A63AC: .4byte gUnknown_03003978
_080A63B0:
	ldr r0, _080A63C4 @ =m2_character_info
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080A63C8 @ =0x0000070F
	cmp r1, r0
	bgt _080A63CC
_080A63C0:
	movs r0, #1
	b _080A6400
	.align 2, 0
_080A63C4: .4byte m2_character_info
_080A63C8: .4byte 0x0000070F
_080A63CC:
	movs r0, #0xea
	lsls r0, r0, #3
	cmp r1, r0
	ble _080A63FE
	movs r0, #2
	b _080A6400
_080A63D8:
	bl sub_801E140
	b _080A63FE
_080A63DE:
	ldr r1, _080A63E8 @ =gUnknown_03004ED8
_080A63E0:
	movs r0, #0
	str r0, [r1]
	b _080A63FE
	.align 2, 0
_080A63E8: .4byte gUnknown_03004ED8
_080A63EC:
	ldr r1, _080A63F4 @ =gUnknown_03004EF4
	movs r0, #1
	b _080A63FC
	.align 2, 0
_080A63F4: .4byte gUnknown_03004EF4
_080A63F8:
	ldr r1, _080A6408 @ =gUnknown_03004EF4
_080A63FA:
	movs r0, #0
_080A63FC:
	strb r0, [r1]
_080A63FE:
	movs r0, #0
_080A6400:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A6408: .4byte gUnknown_03004EF4

	thumb_func_start sub_80A640C
sub_80A640C: @ 0x080A640C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80AEBB0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A641C
sub_80A641C: @ 0x080A641C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080A642C @ =0x000007D6
	bl sub_80AC540
	cmp r0, #0
	bne _080A6430
	movs r0, #0
	b _080A64D4
	.align 2, 0
_080A642C: .4byte 0x000007D6
_080A6430:
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, #0x84
	ldrh r3, [r0, #2]
	ldrh r7, [r1, #2]
	movs r0, #2
	ldrsh r5, [r1, r0]
	ldr r1, _080A647C @ =m2_character_info
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r4, [r0]
	adds r0, r4, #0
	subs r0, #0x40
	mov ip, r1
	cmp r5, r0
	blt _080A6476
	adds r0, #0x80
	cmp r5, r0
	bgt _080A6476
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	movs r1, #0x93
	lsls r1, r1, #2
	add r1, ip
	ldr r2, [r1]
	adds r1, r2, #0
	subs r1, #0x40
	adds r6, r0, #0
	cmp r3, r1
	blt _080A6476
	adds r0, r2, #0
	adds r0, #0x40
	cmp r3, r0
	ble _080A6480
_080A6476:
	movs r0, #1
	b _080A64D4
	.align 2, 0
_080A647C: .4byte m2_character_info
_080A6480:
	subs r1, r5, r4
	cmp r1, #0
	bge _080A6488
	subs r1, r4, r5
_080A6488:
	subs r0, r3, r2
	cmp r0, #0
	blt _080A6496
	adds r0, r1, r0
	cmp r0, #0xf
	ble _080A649E
	b _080A64A2
_080A6496:
	subs r0, r2, r3
	adds r0, r1, r0
	cmp r0, #0xf
	bgt _080A64A2
_080A649E:
	movs r0, #0xa
	b _080A64D4
_080A64A2:
	movs r0, #0x8d
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	lsls r0, r0, #0x10
	movs r1, #0x93
	lsls r1, r1, #2
	add r1, ip
	ldr r1, [r1]
	lsls r1, r1, #0x10
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	asrs r3, r6, #0x10
	bl sub_80A8DB0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
	asrs r0, r0, #0xd
	adds r0, #2
	movs r1, #7
	ands r0, r1
	adds r0, #2
_080A64D4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A64DC
sub_80A64DC: @ 0x080A64DC
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A64F6
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A64F6:
	bl sub_80A6500
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A6500
sub_80A6500: @ 0x080A6500
	ldr r2, _080A6540 @ =m2_character_info
	ldr r3, _080A6544 @ =0x000006AC
	adds r1, r2, r3
	strh r0, [r1]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r1, [r0]
	subs r3, #8
	adds r0, r2, r3
	strh r1, [r0]
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _080A6548 @ =gCurrentMapId
	ldr r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strh r1, [r0]
	ldr r0, _080A654C @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x69
	ldrb r0, [r0]
	ldr r1, _080A6550 @ =0x000006AA
	adds r2, r2, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_080A6540: .4byte m2_character_info
_080A6544: .4byte 0x000006AC
_080A6548: .4byte gCurrentMapId
_080A654C: .4byte gUnknown_03005328
_080A6550: .4byte 0x000006AA

	thumb_func_start sub_80A6554
sub_80A6554: @ 0x080A6554
	push {r4, lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldr r4, _080A6588 @ =m2_character_info
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A6570
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A6570:
	subs r1, r0, #1
	movs r2, #0x99
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r0, #1
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6588: .4byte m2_character_info

	thumb_func_start sub_80A658C
sub_80A658C: @ 0x080A658C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	ldr r1, _080A65AC @ =gUnknown_030023EE
	adds r6, r1, #3
_080A659C:
	adds r2, r3, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A65B0
	strb r4, [r2]
	adds r0, r3, r6
	strb r5, [r0]
	b _080A65B6
	.align 2, 0
_080A65AC: .4byte gUnknown_030023EE
_080A65B0:
	adds r3, #1
	cmp r3, #2
	ble _080A659C
_080A65B6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80A65BC
sub_80A65BC: @ 0x080A65BC
	push {r4, r5, r6, r7, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r0, r2, #0x10
	cmp r0, #0
	bne _080A65DA
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
_080A65DA:
	lsrs r0, r0, #0x10
	adds r6, r0, #0
	lsls r0, r4, #0x10
	cmp r0, #0
	bne _080A65EA
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A65EA:
	lsrs r5, r0, #0x10
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	adds r7, r0, #0
	cmp r4, #0xff
	bne _080A6614
	lsls r0, r5, #0x10
	ldr r1, _080A6610 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	bl sub_80ED5CC
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r6, r0, #0x10
	b _080A6632
	.align 2, 0
_080A6610: .4byte 0xFFFF0000
_080A6614:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_80A469C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	subs r0, r4, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_80BC6C8
_080A6632:
	asrs r0, r7, #0x10
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_80A658C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A6644
sub_80A6644: @ 0x080A6644
	push {r4, r5, r6, r7, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r6, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r6, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bne _080A6662
	bl ScriptGetWorkingMemory
_080A6662:
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080A6698 @ =m2_character_info
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	ldr r1, _080A669C @ =0x000006B1
	adds r0, r5, r1
	adds r7, r4, r0
	ldrb r0, [r7]
	bl ScriptSetWorkingMemory
	ldr r0, _080A66A0 @ =0x000006AE
	adds r5, r5, r0
	adds r4, r4, r5
	ldrb r0, [r4]
	bl ScriptSetArgumentMemory
	cmp r6, #0
	beq _080A6690
	movs r0, #0
	strb r0, [r4]
	strb r0, [r7]
_080A6690:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A6698: .4byte m2_character_info
_080A669C: .4byte 0x000006B1
_080A66A0: .4byte 0x000006AE

	thumb_func_start sub_80A66A4
sub_80A66A4: @ 0x080A66A4
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _080A66BA
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
_080A66BA:
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A66CC
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080A66CC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	bl sub_80ED59C
	pop {r0}
	bx r0

	thumb_func_start sub_80A66D8
sub_80A66D8: @ 0x080A66D8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	lsls r0, r0, #0x10
	ldr r4, _080A6710 @ =m2_character_info
	ldr r1, _080A6714 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0x73
	orrs r3, r2
	ldrb r2, [r1]
	adds r3, r3, r2
	strb r3, [r1]
	bl sub_80EC530
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6710: .4byte m2_character_info
_080A6714: .4byte 0xFFFF0000

	thumb_func_start sub_80A6718
sub_80A6718: @ 0x080A6718
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	lsls r0, r0, #0x10
	ldr r4, _080A6750 @ =m2_character_info
	ldr r1, _080A6754 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0x71
	orrs r3, r2
	ldrb r2, [r1]
	adds r3, r3, r2
	strb r3, [r1]
	bl sub_80EC5BC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6750: .4byte m2_character_info
_080A6754: .4byte 0xFFFF0000

	thumb_func_start sub_80A6758
sub_80A6758: @ 0x080A6758
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	lsls r0, r0, #0x10
	ldr r4, _080A6790 @ =m2_character_info
	ldr r1, _080A6794 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0x70
	orrs r3, r2
	ldrb r2, [r1]
	adds r3, r3, r2
	strb r3, [r1]
	bl sub_80EC558
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6790: .4byte m2_character_info
_080A6794: .4byte 0xFFFF0000

	thumb_func_start sub_80A6798
sub_80A6798: @ 0x080A6798
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	lsls r0, r0, #0x10
	ldr r4, _080A67D0 @ =m2_character_info
	ldr r1, _080A67D4 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0x72
	orrs r3, r2
	ldrb r2, [r1]
	adds r3, r3, r2
	strb r3, [r1]
	bl sub_80EC6B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A67D0: .4byte m2_character_info
_080A67D4: .4byte 0xFFFF0000

	thumb_func_start sub_80A67D8
sub_80A67D8: @ 0x080A67D8
	push {r4, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	lsls r0, r0, #0x10
	ldr r4, _080A6810 @ =m2_character_info
	ldr r1, _080A6814 @ =0xFFFF0000
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x6c
	muls r1, r0, r1
	adds r1, r1, r4
	adds r1, #0x74
	orrs r3, r2
	ldrb r2, [r1]
	adds r3, r3, r2
	strb r3, [r1]
	bl sub_80EC620
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6810: .4byte m2_character_info
_080A6814: .4byte 0xFFFF0000

	thumb_func_start sub_80A6818
sub_80A6818: @ 0x080A6818
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A6832
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A6832:
	bl sub_80A2CF4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A683C
sub_80A683C: @ 0x080A683C
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080A685A
	adds r5, r0, #0
	b _080A6862
_080A685A:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080A6862:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A6872
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A6872:
	adds r0, r5, #0
	bl sub_80A68DC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A6888
sub_80A6888: @ 0x080A6888
	push {r4, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	movs r3, #0
	ldr r2, _080A68C4 @ =m2_character_info
	mov ip, r2
	ldr r2, _080A68C8 @ =0xFFFF0000
	adds r0, r0, r2
	asrs r4, r0, #0x10
	movs r0, #0x6c
	adds r2, r4, #0
	muls r2, r0, r2
	ldr r0, _080A68C8 @ =0xFFFF0000
	adds r1, r1, r0
	asrs r1, r1, #0x10
_080A68A6:
	mov r0, ip
	adds r0, #0x14
	adds r0, r2, r0
	ldrh r0, [r0]
	cmp r0, r1
	bne _080A68CC
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_80BC6C8
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A68D6
	.align 2, 0
_080A68C4: .4byte m2_character_info
_080A68C8: .4byte 0xFFFF0000
_080A68CC:
	adds r2, #2
	adds r3, #1
	cmp r3, #0xd
	ble _080A68A6
	movs r0, #0
_080A68D6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A68DC
sub_80A68DC: @ 0x080A68DC
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bne _080A6926
	movs r2, #0
	ldr r7, _080A691C @ =gUnknown_03001F04
	lsls r6, r1, #0x10
_080A68F0:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r4, r5, r7
	ldrb r0, [r4]
	cmp r0, #3
	bhi _080A690A
	adds r0, #1
	asrs r1, r6, #0x10
	bl sub_80A6888
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A6920
_080A690A:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A68F0
	movs r0, #0
	b _080A6932
	.align 2, 0
_080A691C: .4byte gUnknown_03001F04
_080A6920:
	ldrb r0, [r4]
	adds r0, #1
	b _080A6932
_080A6926:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80A6888
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A6932:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6938
sub_80A6938: @ 0x080A6938
	push {r4, r5, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	lsls r1, r1, #8
	orrs r2, r1
	ldrb r4, [r0, #2]
	ldrb r0, [r0, #3]
	lsls r0, r0, #8
	orrs r4, r0
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	beq _080A6956
	adds r5, r0, #0
	b _080A695E
_080A6956:
	bl ScriptGetWorkingMemory
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_080A695E:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A696E
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
_080A696E:
	adds r0, r5, #0
	bl sub_80A6984
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A6984
sub_80A6984: @ 0x080A6984
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	ldr r2, _080A6A40 @ =0xFFFF0000
	adds r0, r0, r2
	lsls r1, r1, #0x10
	adds r1, r1, r2
	lsrs r5, r1, #0x10
	ldr r2, _080A6A44 @ =m2_character_info
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x6c
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r3, r2
	adds r1, r0, #0
	adds r1, #0x75
	ldrb r0, [r1]
	adds r4, r2, #0
	cmp r0, #0
	beq _080A69C2
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _080A6A3C
_080A69C2:
	lsls r2, r6, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r0, r1, r4
	adds r3, r0, #0
	adds r3, #0x76
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A69EC
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _080A6A3C
_080A69EC:
	asrs r1, r2, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r0, r1, r4
	adds r3, r0, #0
	adds r3, #0x77
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A6A14
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	beq _080A6A3C
_080A6A14:
	asrs r1, r2, #0x10
	movs r0, #0x6c
	muls r1, r0, r1
	adds r0, r1, r4
	adds r3, r0, #0
	adds r3, #0x78
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A6A48
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080A6A48
_080A6A3C:
	movs r0, #1
	b _080A6A4A
	.align 2, 0
_080A6A40: .4byte 0xFFFF0000
_080A6A44: .4byte m2_character_info
_080A6A48:
	movs r0, #0
_080A6A4A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6A50
sub_80A6A50: @ 0x080A6A50
	push {lr}
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bne _080A6A6A
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_080A6A6A:
	bl AddSpecialMusicEffect
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80A6A74
sub_80A6A74: @ 0x080A6A74
	push {r4, lr}
	ldrb r4, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r4, r0
	bl ScriptGetWorkingMemory
	eors r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r0, r0, #0x1f
	bl ScriptSetWorkingMemory
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_80A6A98
sub_80A6A98: @ 0x080A6A98
	push {r4, lr}
	ldr r1, _080A6ADC @ =m2_character_info
	adds r0, r1, #0
	adds r0, #0x54
	ldrb r0, [r0]
	adds r3, r1, #0
	cmp r0, #1
	beq _080A6AF0
	movs r1, #0
	movs r2, #0xf
_080A6AAC:
	adds r0, r3, #0
	adds r0, #0x40
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, r2
	bgt _080A6AE8
	ldr r0, _080A6AE0 @ =gUnknown_08720618
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A6AE4
	bl RandomNumber
	cmp r0, #0
	bne _080A6AE4
	movs r0, #1
	movs r1, #6
	movs r2, #2
	bl sub_80A5808
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080A6AF2
	.align 2, 0
_080A6ADC: .4byte m2_character_info
_080A6AE0: .4byte gUnknown_08720618
_080A6AE4:
	movs r0, #0
	b _080A6AF2
_080A6AE8:
	adds r1, #1
	adds r2, #0xf
	cmp r1, #5
	ble _080A6AAC
_080A6AF0:
	movs r0, #0
_080A6AF2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_80A6AF8
sub_80A6AF8: @ 0x080A6AF8
	push {r4, lr}
	bl sub_80D296C
	ldr r1, _080A6B4C @ =m2_character_info
	ldr r2, _080A6B50 @ =0x0000022B
	adds r0, r1, r2
	ldrb r2, [r0]
	ldr r3, _080A6B54 @ =0x000007B4
	adds r0, r1, r3
	movs r3, #0
	strb r2, [r0]
	ldr r4, _080A6B58 @ =0x0000022E
	adds r0, r1, r4
	ldrh r2, [r0]
	ldr r4, _080A6B5C @ =0x000007B6
	adds r0, r1, r4
	strh r2, [r0]
	movs r2, #0x8b
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrb r2, [r0]
	subs r4, #1
	adds r0, r1, r4
	strb r2, [r0]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r0, r1, r2
	ldrh r2, [r0]
	adds r4, #3
	adds r0, r1, r4
	strh r2, [r0]
	ldr r0, _080A6B60 @ =0x000007BC
	adds r2, r1, r0
	movs r4, #0xd2
	lsls r4, r4, #3
	adds r1, r1, r4
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A6B4C: .4byte m2_character_info
_080A6B50: .4byte 0x0000022B
_080A6B54: .4byte 0x000007B4
_080A6B58: .4byte 0x0000022E
_080A6B5C: .4byte 0x000007B6
_080A6B60: .4byte 0x000007BC

	thumb_func_start sub_80A6B64
sub_80A6B64: @ 0x080A6B64
	push {r4, r5, r6, lr}
	ldr r4, _080A6BC8 @ =m2_character_info
	ldr r1, _080A6BCC @ =0x000007B4
	adds r0, r4, r1
	ldrb r2, [r0]
	ldr r5, _080A6BD0 @ =0x0000022B
	adds r3, r4, r5
	strb r2, [r3]
	ldr r6, _080A6BD4 @ =0x000007B6
	adds r0, r4, r6
	ldrh r1, [r0]
	adds r5, #3
	adds r0, r4, r5
	strh r1, [r0]
	subs r6, #1
	adds r0, r4, r6
	ldrb r0, [r0]
	movs r1, #0x8b
	lsls r1, r1, #2
	adds r5, r4, r1
	strb r0, [r5]
	adds r6, #3
	adds r0, r4, r6
	ldrh r1, [r0]
	movs r6, #0x8c
	lsls r6, r6, #2
	adds r0, r4, r6
	strh r1, [r0]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #0xff
	beq _080A6BAA
	ldrb r0, [r3]
	bl sub_80D1310
_080A6BAA:
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080A6BB4
	bl sub_80D1310
_080A6BB4:
	movs r1, #0xd2
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, _080A6BD8 @ =0x000007BC
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A6BC8: .4byte m2_character_info
_080A6BCC: .4byte 0x000007B4
_080A6BD0: .4byte 0x0000022B
_080A6BD4: .4byte 0x000007B6
_080A6BD8: .4byte 0x000007BC

	thumb_func_start sub_80A6BDC
sub_80A6BDC: @ 0x080A6BDC
	push {lr}
	ldr r0, _080A6C0C @ =gUnknown_03005078
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080A6C10 @ =gUnknown_03004F24
	strb r1, [r0]
	ldr r1, _080A6C14 @ =gUnknown_03005050
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r2, _080A6C18 @ =gUnknown_03004F30
	ldr r0, _080A6C1C @ =gUnknown_03004F60
	adds r0, #0xd8
	adds r1, r2, #0
	adds r1, #0x24
_080A6BFC:
	str r0, [r1]
	subs r0, #0x18
	subs r1, #4
	cmp r1, r2
	bge _080A6BFC
	pop {r0}
	bx r0
	.align 2, 0
_080A6C0C: .4byte gUnknown_03005078
_080A6C10: .4byte gUnknown_03004F24
_080A6C14: .4byte gUnknown_03005050
_080A6C18: .4byte gUnknown_03004F30
_080A6C1C: .4byte gUnknown_03004F60

	thumb_func_start sub_80A6C20
sub_80A6C20: @ 0x080A6C20
	bx lr
	.align 2, 0

	thumb_func_start m2_handle_some_controlcodes
m2_handle_some_controlcodes: @ 0x080A6C24
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r0, [r5, #1]
	cmp r0, #0xff
	beq _080A6C38
	bl _080A7C0E
_080A6C38:
	ldrb r0, [r5]
	movs r1, #0xff
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _080A6C58 @ =0xFFFF009F
	adds r0, r0, r1
	cmp r0, #0x9e
	bls _080A6C4C
	bl _080A7C0A
_080A6C4C:
	lsls r0, r0, #2
	ldr r1, _080A6C5C @ =_080A6C60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A6C58: .4byte 0xFFFF009F
_080A6C5C: .4byte _080A6C60
_080A6C60: @ jump table
	.4byte _080A7BEC @ case 0
	.4byte _080A769C @ case 1
	.4byte _080A7C0A @ case 2
	.4byte _080A7BE0 @ case 3
	.4byte _080A7BD4 @ case 4
	.4byte _080A7BC4 @ case 5
	.4byte _080A7BB8 @ case 6
	.4byte _080A7BA4 @ case 7
	.4byte _080A7B98 @ case 8
	.4byte _080A7B86 @ case 9
	.4byte _080A7B74 @ case 10
	.4byte _080A7B62 @ case 11
	.4byte _080A7B50 @ case 12
	.4byte _080A7B3E @ case 13
	.4byte _080A7B2C @ case 14
	.4byte _080A7B1A @ case 15
	.4byte _080A7B08 @ case 16
	.4byte _080A7AF6 @ case 17
	.4byte _080A7AE4 @ case 18
	.4byte _080A7AD8 @ case 19
	.4byte _080A7AC4 @ case 20
	.4byte _080A7AA0 @ case 21
	.4byte _080A7A8E @ case 22
	.4byte _080A7A7C @ case 23
	.4byte _080A7A6A @ case 24
	.4byte _080A7A58 @ case 25
	.4byte _080A7A24 @ case 26
	.4byte _080A7A08 @ case 27
	.4byte _080A79E2 @ case 28
	.4byte _080A79D0 @ case 29
	.4byte _080A79C4 @ case 30
	.4byte _080A6EDC @ case 31
	.4byte _080A6EE2 @ case 32
	.4byte _080A6EF8 @ case 33
	.4byte _080A6F2E @ case 34
	.4byte _080A6F52 @ case 35
	.4byte _080A6F66 @ case 36
	.4byte _080A6F7A @ case 37
	.4byte _080A6FB8 @ case 38
	.4byte _080A6FD4 @ case 39
	.4byte _080A6FE0 @ case 40
	.4byte _080A6FEC @ case 41
	.4byte _080A7018 @ case 42
	.4byte _080A7044 @ case 43
	.4byte _080A7054 @ case 44
	.4byte _080A7074 @ case 45
	.4byte _080A7082 @ case 46
	.4byte _080A7090 @ case 47
	.4byte _080A70C4 @ case 48
	.4byte _080A70DA @ case 49
	.4byte _080A70EE @ case 50
	.4byte _080A7106 @ case 51
	.4byte _080A7128 @ case 52
	.4byte _080A713E @ case 53
	.4byte _080A7154 @ case 54
	.4byte _080A716A @ case 55
	.4byte _080A7180 @ case 56
	.4byte _080A71A8 @ case 57
	.4byte _080A71C8 @ case 58
	.4byte _080A71F0 @ case 59
	.4byte _080A71FE @ case 60
	.4byte _080A7212 @ case 61
	.4byte _080A7C0A @ case 62
	.4byte _080A7228 @ case 63
	.4byte _080A723C @ case 64
	.4byte _080A7250 @ case 65
	.4byte _080A7278 @ case 66
	.4byte _080A7264 @ case 67
	.4byte _080A728C @ case 68
	.4byte _080A72A0 @ case 69
	.4byte _080A72B4 @ case 70
	.4byte _080A72D4 @ case 71
	.4byte _080A72E8 @ case 72
	.4byte _080A72FC @ case 73
	.4byte _080A7310 @ case 74
	.4byte _080A7C0A @ case 75
	.4byte _080A7C0A @ case 76
	.4byte _080A7324 @ case 77
	.4byte _080A7338 @ case 78
	.4byte _080A734C @ case 79
	.4byte _080A7360 @ case 80
	.4byte _080A7374 @ case 81
	.4byte _080A7388 @ case 82
	.4byte _080A739C @ case 83
	.4byte _080A73B0 @ case 84
	.4byte _080A73C4 @ case 85
	.4byte _080A73D8 @ case 86
	.4byte _080A73EC @ case 87
	.4byte _080A741C @ case 88
	.4byte _080A7430 @ case 89
	.4byte _080A7442 @ case 90
	.4byte _080A7454 @ case 91
	.4byte _080A7466 @ case 92
	.4byte _080A747E @ case 93
	.4byte _080A749C @ case 94
	.4byte _080A7490 @ case 95
	.4byte _080A74A8 @ case 96
	.4byte _080A74BC @ case 97
	.4byte _080A74D8 @ case 98
	.4byte _080A74EA @ case 99
	.4byte _080A74FC @ case 100
	.4byte _080A7508 @ case 101
	.4byte _080A7508 @ case 102
	.4byte _080A7516 @ case 103
	.4byte _080A752C @ case 104
	.4byte _080A753E @ case 105
	.4byte _080A754A @ case 106
	.4byte _080A755C @ case 107
	.4byte _080A756E @ case 108
	.4byte _080A7580 @ case 109
	.4byte _080A7592 @ case 110
	.4byte _080A75A4 @ case 111
	.4byte _080A75B6 @ case 112
	.4byte _080A7C0A @ case 113
	.4byte _080A75C8 @ case 114
	.4byte _080A75DA @ case 115
	.4byte _080A75EC @ case 116
	.4byte _080A75FE @ case 117
	.4byte _080A7610 @ case 118
	.4byte _080A7622 @ case 119
	.4byte _080A7634 @ case 120
	.4byte _080A7646 @ case 121
	.4byte _080A7658 @ case 122
	.4byte _080A766A @ case 123
	.4byte _080A767C @ case 124
	.4byte _080A768E @ case 125
	.4byte _080A76AA @ case 126
	.4byte _080A76CC @ case 127
	.4byte _080A76DE @ case 128
	.4byte _080A76F0 @ case 129
	.4byte _080A7702 @ case 130
	.4byte _080A7716 @ case 131
	.4byte _080A772A @ case 132
	.4byte _080A7736 @ case 133
	.4byte _080A7748 @ case 134
	.4byte _080A7774 @ case 135
	.4byte _080A7792 @ case 136
	.4byte _080A77C6 @ case 137
	.4byte _080A77D8 @ case 138
	.4byte _080A77EA @ case 139
	.4byte _080A77F6 @ case 140
	.4byte _080A7808 @ case 141
	.4byte _080A781A @ case 142
	.4byte _080A782C @ case 143
	.4byte _080A7856 @ case 144
	.4byte _080A7862 @ case 145
	.4byte _080A7874 @ case 146
	.4byte _080A7886 @ case 147
	.4byte _080A7898 @ case 148
	.4byte _080A78C4 @ case 149
	.4byte _080A78D6 @ case 150
	.4byte _080A78E8 @ case 151
	.4byte _080A78FA @ case 152
	.4byte _080A790C @ case 153
	.4byte _080A791E @ case 154
	.4byte _080A7930 @ case 155
	.4byte _080A7942 @ case 156
	.4byte _080A7970 @ case 157
	.4byte _080A79B0 @ case 158
_080A6EDC:
	ldr r3, [sp, #0xc]
	adds r3, #2
	b _080A6F10
_080A6EE2:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl ScriptGetWorkingMemory
	cmp r0, #0
	bne _080A6F0E
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A6EF8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl ScriptGetWorkingMemory
	cmp r0, #0
	beq _080A6F0E
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A6F0E:
	ldr r3, [sp, #0xc]
_080A6F10:
	adds r2, r5, r3
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r3, r3, r1
	str r3, [sp, #0xc]
	bl _080A7C0E
_080A6F2E:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A34A8
	bl ScriptSetWorkingMemory
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A6F52:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A3A00
	ldr r0, [sp, #0xc]
	adds r0, #6
	bl _080A7C0C
_080A6F66:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A44B0
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A6F7A:
	ldr r3, [sp, #0xc]
	adds r3, #2
	adds r2, r5, r3
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x10
	orrs r1, r0
	ldrb r0, [r2, #3]
	lsls r0, r0, #0x18
	orrs r1, r0
	adds r3, r3, r1
	str r3, [sp, #0xc]
	ldr r3, _080A6FB0 @ =gUnknown_03005080
	ldr r2, _080A6FB4 @ =gUnknown_03005078
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	adds r1, r5, #6
	str r1, [r0]
	bl _080A7C0E
	.align 2, 0
_080A6FB0: .4byte gUnknown_03005080
_080A6FB4: .4byte gUnknown_03005078
_080A6FB8:
	bl ScriptGetWorkingMemory
	adds r4, r0, #0
	bl ScriptGetArgMemory
	bl ScriptSetWorkingMemory
	adds r0, r4, #0
	bl ScriptSetArgumentMemory
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A6FD4:
	bl m2_handle_controlcode_CC_88_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A6FE0:
	bl sub_80A341C
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A6FEC:
	bl ScriptGetWorkingMemory
	ldr r1, _080A700C @ =gUnknown_03000994
	str r0, [r1]
	bl ScriptGetArgMemory
	ldr r1, _080A7010 @ =gUnknown_03000998
	str r0, [r1]
	ldr r4, _080A7014 @ =gUnknown_0300099C
	bl ScriptGetSecondaryMemory
	strb r0, [r4]
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
	.align 2, 0
_080A700C: .4byte gUnknown_03000994
_080A7010: .4byte gUnknown_03000998
_080A7014: .4byte gUnknown_0300099C
_080A7018:
	ldr r0, _080A7038 @ =gUnknown_03000994
	ldr r0, [r0]
	bl ScriptSetWorkingMemory
	ldr r0, _080A703C @ =gUnknown_03000998
	ldr r0, [r0]
	bl ScriptSetArgumentMemory
	ldr r0, _080A7040 @ =gUnknown_0300099C
	ldrb r0, [r0]
	bl sub_80A3310
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
	.align 2, 0
_080A7038: .4byte gUnknown_03000994
_080A703C: .4byte gUnknown_03000998
_080A7040: .4byte gUnknown_0300099C
_080A7044:
	bl sub_80A347C
	bl ScriptSetWorkingMemory
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7054:
	ldr r2, [sp, #0xc]
	adds r2, #2
	adds r1, r5, r2
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [sp]
	adds r2, #2
	str r2, [sp, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A34D0
	bl _080A7C0E
_080A7074:
	movs r0, #1
	bl sub_80A3490
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7082:
	movs r0, #0
	bl sub_80A3490
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7090:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A70B0
	ldr r4, _080A70AC @ =m2_number_to_print
	bl ScriptGetArgMemory
	subs r0, #1
	str r0, [r4]
	b _080A70B8
	.align 2, 0
_080A70AC: .4byte m2_number_to_print
_080A70B0:
	ldr r1, _080A70C0 @ =m2_number_to_print
	ldrb r0, [r2]
	subs r0, #1
	str r0, [r1]
_080A70B8:
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
	.align 2, 0
_080A70C0: .4byte m2_number_to_print
_080A70C4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_80A356C
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A70DA:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A363C
	ldr r0, [sp, #0xc]
	adds r0, #3
	bl _080A7C0C
_080A70EE:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_80A3680
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7106:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldr r1, _080A7124 @ =gUnknown_08026330
	adds r0, r0, r1
	bl sub_80BCB1C
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
	.align 2, 0
_080A7124: .4byte gUnknown_08026330
_080A7128:
	ldr r0, [sp, #0xc]
	adds r1, r0, #2
	adds r1, r5, r1
	ldrb r1, [r1]
	str r1, [sp]
	adds r0, #3
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A37E8
	b _080A7476
_080A713E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_80A3834
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A7154:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_80A386C
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A716A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r0, [r0]
	bl sub_80A38E4
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A7180:
	ldr r2, [sp, #0xc]
	adds r2, #2
	str r2, [sp, #0xc]
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	orrs r0, r1
	bl sub_80A3920
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A71A8:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80A3958
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A71C8:
	ldr r2, [sp, #0xc]
	adds r2, #2
	str r2, [sp, #0xc]
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	ldrb r1, [r2, #2]
	lsls r1, r1, #0x10
	orrs r0, r1
	ldrb r1, [r2, #3]
	lsls r1, r1, #0x18
	orrs r0, r1
	bl sub_80A397C
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A71F0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl m2_handle_controlcode_CC_9C_FF
	bl _080A7C0E
_080A71FE:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A39B8
	ldr r0, [sp, #0xc]
	adds r0, #6
	bl _080A7C0C
_080A7212:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r1, _080A7224 @ =IsScriptExecBlocked
	movs r0, #1
	strb r0, [r1]
	bl _080A7C0E
	.align 2, 0
_080A7224: .4byte IsScriptExecBlocked
_080A7228:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A3D14
	ldr r0, [sp, #0xc]
	adds r0, #6
	bl _080A7C0C
_080A723C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A42F8
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7250:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A438C
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7264:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A43C8
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7278:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A43E0
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A728C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A43F8
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A72A0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A441C
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A72B4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl ScriptStartBattle
	ldr r1, _080A72D0 @ =gUnknown_03005094
	movs r0, #1
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
	.align 2, 0
_080A72D0: .4byte gUnknown_03005094
_080A72D4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_A8_FF
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A72E8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A461C
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A72FC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A45E0
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7310:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4658
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A7324:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A46C4
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A7338:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A46E0
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A734C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4720
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7360:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4804
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7374:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4788
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7388:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4768
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A739C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A484C
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A73B0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A47D0
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A73C4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A486C
	ldr r0, [sp, #0xc]
	adds r0, #2
	bl _080A7C0C
_080A73D8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4878
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
_080A73EC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r2, r5, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080A7408
	ldr r4, _080A7404 @ =m2_number_to_print
	bl ScriptGetArgMemory
	str r0, [r4]
	b _080A740E
	.align 2, 0
_080A7404: .4byte m2_number_to_print
_080A7408:
	ldr r1, _080A7418 @ =m2_number_to_print
	ldrb r0, [r2]
	str r0, [r1]
_080A740E:
	ldr r0, [sp, #0xc]
	adds r0, #1
	bl _080A7C0C
	.align 2, 0
_080A7418: .4byte m2_number_to_print
_080A741C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A490C
	ldr r0, [sp, #0xc]
	adds r0, #4
	bl _080A7C0C
_080A7430:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A48B8
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7442:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4978
	ldr r0, [sp, #0xc]
	adds r0, #1
	b _080A7C0C
_080A7454:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A49FC
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7466:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	ldrb r1, [r0]
	str r1, [sp]
	bl sub_80A4A20
_080A7476:
	ldr r1, [sp, #0xc]
	adds r1, r1, r0
	str r1, [sp, #0xc]
	b _080A7C0E
_080A747E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4A88
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7490:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A3260
	b _080A7C0E
_080A749C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A351C
	b _080A79BA
_080A74A8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80EC060
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ScriptSetWorkingMemory
	b _080A7C0E
_080A74BC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r4, _080A74D4 @ =m2_number_to_print
	bl sub_80A3530
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, #1
	str r0, [r4]
	b _080A7C0E
	.align 2, 0
_080A74D4: .4byte m2_number_to_print
_080A74D8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4BAC
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A74EA:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4FDC
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A74FC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A5034
	b _080A7C0E
_080A7508:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	bl sub_80BCAB4
	b _080A7C0E
_080A7516:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl sub_80BCF00
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A752C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5058
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A753E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A50A8
	b _080A7C0E
_080A754A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A50B4
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A755C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5114
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A756E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A518C
	ldr r0, [sp, #0xc]
	adds r0, #6
	b _080A7C0C
_080A7580:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4F94
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7592:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_CF_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A75A4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A51D4
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A75B6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5218
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A75C8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5270
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A75DA:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_D4_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A75EC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A531C
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A75FE:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A537C
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7610:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5404
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7622:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4E28
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7634:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_D9_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7646:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4F40
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7658:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4C00
	ldr r0, [sp, #0xc]
	adds r0, #6
	b _080A7C0C
_080A766A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A4C58
	ldr r0, [sp, #0xc]
	adds r0, #6
	b _080A7C0C
_080A767C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_DD_FF
	ldr r0, [sp, #0xc]
	adds r0, #8
	b _080A7C0C
_080A768E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	bl sub_80BCC48
	b _080A7C0E
_080A769C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	movs r0, #2
	bl sub_80BCC48
	b _080A7C0E
_080A76AA:
	add r0, sp, #0xc
	bl sub_80A3544
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl ScriptSetWorkingMemory
	cmp r4, #0
	beq _080A76C6
	ldr r0, [sp, #0xc]
	subs r0, r0, r5
	b _080A7C0C
_080A76C6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A76CC:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_E0_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A76DE:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A54E8
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A76F0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5510
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7702:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl ScriptGetArgMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80BD6C8
	b _080A7C0E
_080A7716:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl ScriptGetArgMemory
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_80BD728
	b _080A7C0E
_080A772A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80BD760
	b _080A7C0E
_080A7736:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5070
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7748:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	ldr r4, _080A7770 @ =gUnknown_03004F24
	movs r0, #1
	strb r0, [r4]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl m2_handle_controlcode_CC_E7_FF
	movs r0, #0
	strb r0, [r4]
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
	.align 2, 0
_080A7770: .4byte gUnknown_03004F24
_080A7774:
	ldr r1, [sp, #0xc]
	adds r1, #4
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_80ED4E0
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7792:
	ldr r3, [sp, #0xc]
	adds r3, #2
	str r3, [sp, #0xc]
	adds r3, r5, r3
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	lsls r1, r1, #8
	orrs r0, r1
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r3, #2]
	ldrb r2, [r3, #3]
	lsls r2, r2, #8
	orrs r1, r2
	ldrb r2, [r3, #4]
	lsls r2, r2, #0x10
	orrs r1, r2
	ldrb r2, [r3, #5]
	lsls r2, r2, #0x18
	orrs r1, r2
	bl sub_80BD4E4
	ldr r0, [sp, #0xc]
	adds r0, #6
	b _080A7C0C
_080A77C6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A565C
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A77D8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A55E4
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A77EA:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80BD468
	b _080A7C0E
_080A77F6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A56D0
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7808:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A57B0
	ldr r0, [sp, #0xc]
	adds r0, #6
	b _080A7C0C
_080A781A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5884
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A782C:
	ldr r2, [sp, #0xc]
	adds r2, #2
	str r2, [sp, #0xc]
	adds r2, r5, r2
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	lsls r2, r2, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80EFB4C
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7856:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80C6310
	b _080A79BA
_080A7862:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A58C4
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7874:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5924
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7886:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5970
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7898:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r4, _080A78BC @ =m2_character_info
	bl ScriptGetSecondaryMemory
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r4, r0
	ldr r2, _080A78C0 @ =0x00000263
	adds r4, r4, r2
	ldrb r0, [r4]
	bl ScriptSetWorkingMemory
	bl sub_80A3260
	b _080A7C0E
	.align 2, 0
_080A78BC: .4byte m2_character_info
_080A78C0: .4byte 0x00000263
_080A78C4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_F6_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A78D6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5A58
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A78E8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5B58
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A78FA:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5C48
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A790C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5D30
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A791E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A5E14
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7930:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl m2_handle_controlcode_CC_FC_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7942:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r2, _080A7968 @ =gUnknown_0872F2DC
	ldr r0, _080A796C @ =gCurrentMapId
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0xa]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	b _080A7C0E
	.align 2, 0
_080A7968: .4byte gUnknown_0872F2DC
_080A796C: .4byte gCurrentMapId
_080A7970:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r0, _080A79A0 @ =m2_character_info
	movs r3, #0x8d
	lsls r3, r3, #2
	adds r1, r0, r3
	ldr r2, [r1]
	ldr r3, _080A79A4 @ =0x0000069E
	adds r1, r0, r3
	strh r2, [r1]
	movs r2, #0x93
	lsls r2, r2, #2
	adds r1, r0, r2
	ldr r2, [r1]
	adds r3, #2
	adds r1, r0, r3
	strh r2, [r1]
	ldr r1, _080A79A8 @ =gCurrentMapId
	ldr r1, [r1]
	ldr r2, _080A79AC @ =0x000006A2
	adds r0, r0, r2
	strh r1, [r0]
	b _080A7C0E
	.align 2, 0
_080A79A0: .4byte m2_character_info
_080A79A4: .4byte 0x0000069E
_080A79A8: .4byte gCurrentMapId
_080A79AC: .4byte 0x000006A2
_080A79B0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A641C
_080A79BA:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl ScriptSetWorkingMemory
	b _080A7C0E
_080A79C4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl m2_handle_controlcode_CC_7F_FF
	b _080A7C0E
_080A79D0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A64DC
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A79E2:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r1, _080A7A00 @ =gUnknown_0300533C
	movs r0, #1
	strb r0, [r1]
	movs r0, #2
	bl sub_80D243C
	ldr r0, _080A7A04 @ =gUnknown_03005328
	ldr r0, [r0]
	adds r0, #0x64
	movs r1, #1
	strh r1, [r0]
	b _080A7C0E
	.align 2, 0
_080A7A00: .4byte gUnknown_0300533C
_080A7A04: .4byte gUnknown_03005328
_080A7A08:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r0, _080A7A1C @ =gUnknown_03005220
	ldr r0, [r0]
	ldr r3, _080A7A20 @ =0x000004B9
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
	b _080A7C0E
	.align 2, 0
_080A7A1C: .4byte gUnknown_03005220
_080A7A20: .4byte 0x000004B9
_080A7A24:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r2, _080A7A48 @ =gUnknown_03005220
	ldr r0, [r2]
	ldr r1, _080A7A4C @ =0x000004B9
	adds r0, r0, r1
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _080A7A50 @ =0x000004BA
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _080A7A54 @ =0x000004BC
	adds r0, r0, r1
	strh r3, [r0]
	b _080A7C0E
	.align 2, 0
_080A7A48: .4byte gUnknown_03005220
_080A7A4C: .4byte 0x000004B9
_080A7A50: .4byte 0x000004BA
_080A7A54: .4byte 0x000004BC
_080A7A58:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6554
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7A6A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A65BC
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7A7C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6644
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7A8E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A66A4
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7AA0:
	ldr r2, [sp, #0xc]
	adds r2, #2
	str r2, [sp, #0xc]
	ldr r0, _080A7AC0 @ =gUnknown_08026479
	adds r2, r5, r2
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	lsls r2, r2, #8
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_80C7A1C
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
	.align 2, 0
_080A7AC0: .4byte gUnknown_08026479
_080A7AC4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r1, _080A7AD4 @ =gUnknown_02024860
	movs r0, #1
	strh r0, [r1, #0x1a]
	b _080A7C0E
	.align 2, 0
_080A7AD4: .4byte gUnknown_02024860
_080A7AD8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl PlaySilentBGM
	b _080A7C0E
_080A7AE4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A67D8
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7AF6:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A66D8
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B08:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6718
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B1A:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6758
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B2C:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6798
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B3E:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6818
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7B50:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A683C
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B62:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6938
	ldr r0, [sp, #0xc]
	adds r0, #4
	b _080A7C0C
_080A7B74:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6A50
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7B86:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r0, r5, r0
	bl sub_80A6A74
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7B98:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80D70E0
	b _080A7C0E
_080A7BA4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	ldr r0, _080A7BB4 @ =gWindowPointers
	ldr r0, [r0, #8]
	bl m2_clearwindowtiles
	b _080A7C0E
	.align 2, 0
_080A7BB4: .4byte gWindowPointers
_080A7BB8:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl m2_handle_controlcode_CC_67_FF
	b _080A7C0E
_080A7BC4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80EC07C
	bl ScriptSetWorkingMemory
	b _080A7C0E
_080A7BD4:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A6AF8
	b _080A7C0E
_080A7BE0:
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	bl sub_80A6B64
	b _080A7C0E
_080A7BEC:
	ldr r1, [sp, #0xc]
	adds r1, #2
	str r1, [sp, #0xc]
	adds r1, r5, r1
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl m2_handle_controlcode_CC_61_FF
	ldr r0, [sp, #0xc]
	adds r0, #2
	b _080A7C0C
_080A7C0A:
	movs r0, #2
_080A7C0C:
	str r0, [sp, #0xc]
_080A7C0E:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_80A7C18
sub_80A7C18: @ 0x080A7C18
	push {lr}
	adds r3, r0, #0
	ldr r0, _080A7C40 @ =gUnknown_03004F24
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A7C4C
	ldr r2, _080A7C44 @ =gUnknown_03005078
	ldrb r0, [r2]
	cmp r0, #0
	beq _080A7C4C
	subs r0, #1
	strb r0, [r2]
	ldr r1, _080A7C48 @ =gUnknown_03005080
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, r0, r3
	subs r0, #2
	b _080A7C4E
	.align 2, 0
_080A7C40: .4byte gUnknown_03004F24
_080A7C44: .4byte gUnknown_03005078
_080A7C48: .4byte gUnknown_03005080
_080A7C4C:
	movs r0, #0
_080A7C4E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80A7C54
sub_80A7C54: @ 0x080A7C54
	push {lr}
	ldr r2, _080A7C78 @ =gUnknown_0300507C
	ldr r1, _080A7C7C @ =gUnknown_03005078
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #0
	strb r0, [r1]
	ldr r3, _080A7C80 @ =gUnknown_03005080
	ldr r2, _080A7C84 @ =gUnknown_03004F10
	movs r1, #4
_080A7C68:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bge _080A7C68
	pop {r0}
	bx r0
	.align 2, 0
_080A7C78: .4byte gUnknown_0300507C
_080A7C7C: .4byte gUnknown_03005078
_080A7C80: .4byte gUnknown_03005080
_080A7C84: .4byte gUnknown_03004F10

	thumb_func_start sub_80A7C88
sub_80A7C88: @ 0x080A7C88
	push {lr}
	ldr r0, _080A7CA8 @ =gUnknown_03005078
	ldr r1, _080A7CAC @ =gUnknown_0300507C
	ldrb r1, [r1]
	strb r1, [r0]
	ldr r3, _080A7CB0 @ =gUnknown_03004F10
	ldr r2, _080A7CB4 @ =gUnknown_03005080
	movs r1, #4
_080A7C98:
	ldm r3!, {r0}
	stm r2!, {r0}
	subs r1, #1
	cmp r1, #0
	bge _080A7C98
	pop {r0}
	bx r0
	.align 2, 0
_080A7CA8: .4byte gUnknown_03005078
_080A7CAC: .4byte gUnknown_0300507C
_080A7CB0: .4byte gUnknown_03004F10
_080A7CB4: .4byte gUnknown_03005080

	thumb_func_start sub_80A7CB8
sub_80A7CB8: @ 0x080A7CB8
	ldr r1, _080A7CC0 @ =gUnknown_03005078
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080A7CC0: .4byte gUnknown_03005078

