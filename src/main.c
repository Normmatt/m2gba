#include "definitions.h"

void AgbMain(void) {
	gUnknown_03002A34 = 0;
	ResetTheRam();
	sub_800E5B4();
	m2_init_character_info_defaults();
	MainCallback = sub_80137A4;
	EnableM4A();

	do {
		MainCallback();
	} while (gAllocationCount == 0);

	// Hang if any allocations were not properly freed
	while (1) {}
}

void ResetTheRam(void) {
	REG_WAITCNT = WAITCNT_SRAM_4                    // 4 cycles to access SRAM
	            | WAITCNT_WS0_N_3 | WAITCNT_WS0_S_1 // 3 cycles for non-sequentially reading ROM, 1 sequentially
	            | WAITCNT_WS1_N_4 | WAITCNT_WS1_S_4 // junk, we don't care about wait state 1 and these are 0s
	            | WAITCNT_WS2_N_4 | WAITCNT_WS2_S_8 // junk, we don't care about wait state 2 and these are 0s
	            | WAITCNT_PHI_OUT_NONE              // no cartridge terminal output pin use (this is a 0)
	            | WAITCNT_PREFETCH_ENABLE           // turn on ROM prefetching buffer
	            | WAITCNT_AGB;                      // This is not Mother On Game Boy Color (this is a 0)

	DmaFill32(3, 0, EWRAM_START, EWRAM_SIZE);
	DmaFill32(3, 0, IWRAM_START, 0x7D00);
	DmaFill32(3, 0, VRAM, VRAM_SIZE);
	DmaFill32(3, 0xA0, OAM, OAM_SIZE);
	DmaFill32(3, 0, PLTT, PLTT_SIZE);

	m2_init_heap();

	// Copy the interrupt handler into RAM for speed, and update its address
	// after doing so.
	// IntrMain_RAM is 0x800 bytes, which is a pretty big overestimate for the
	// size of the function, so bytes from other functions will be copied in too.
	DmaCopy32(3, DefaultIRQHandler, IntrMain_RAM, sizeof IntrMain_RAM);
	INTR_VECTOR = IntrMain_RAM;

	sub_80087C8();

	DmaFill32(3, 0xA0, gOamBuffer, sizeof gOamBuffer);
	DmaCopy32(3, gOamBuffer, OAM, OAM_SIZE);
	DmaFill32(3, 0, gUnknown_03002F10, sizeof gUnknown_03002F10);
	gUnknown_03003390 = 0;
	gUnknown_03003394 = 0;
	sub_80010D8();
}

void DummyIntr(void) {
}

void InitPadState(void) {
	s32 i;

	gNewKeys[0] = gNewKeys[1] = 0;
	gHeldKeys[0] = gHeldKeys[1] = 0;
	for(i = 0; i < (s32)COUNTOF(gKeysBuffer); ++i) {
		gKeysBuffer[i] = 0;
	}
	ClearHeldDurationForButtons(0, KEYS_MASK);
	ClearHeldDurationForButtons(1, KEYS_MASK);
	gAutofireState.enabledButtons[0] = 0;
	gAutofireState.enabledButtons[1] = 0;
}

void AddAutofireButtons(s32 buttonSetNum, u16 buttons, s32 initialDelay, s32 subsequentDelay) {
	s32 i;

	gAutofireState.enabledButtons[buttonSetNum] |= buttons;
	gAutofireState.initialDelay = initialDelay;
	gAutofireState.subsequentDelay = subsequentDelay;
	for (i = 0; i < (s32)COUNTOF(gAutofireState.counters[0]); ++i) {
		gAutofireState.counters[0][i] = 0;
		gAutofireState.counters[1][i] = 0;
	}
}

void RemoveAutofireButtons(s32 buttonSetNum, u16 buttons) {
	gAutofireState.enabledButtons[buttonSetNum] &= ~buttons;
}

void ClearHeldDurationForButtons(s32 buttonSetNum, u16 buttonMask) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gKeyHeldDurations.durations[0]); ++i) {
		if (buttonMask & 1) {
			gKeyHeldDurations.durations[buttonSetNum][i] = 0;
		}
		buttonMask >>= 1;
	}
}

void SetHeldDurationForButtons(s32 buttonSetNum, u16 buttonMask, u16 duration) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gKeyHeldDurations.durations[0]); ++i) {
		if (buttonMask & 1) {
			gKeyHeldDurations.durations[buttonSetNum][i] = duration;
		}
		buttonMask >>= 1;
	}
}

u16 GetButtonHeldDuration(s32 buttonSetNum, u16 buttonMask) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gKeyHeldDurations.durations[0]); ++i) {
		if (buttonMask & 1) {
			return gKeyHeldDurations.durations[buttonSetNum][i];
		}
		buttonMask >>= 1;
	}
	return 0;
}

void UpdatePadState(void) {
	s32 i;
	u16 autofireCheckableInputs;
	u16 rawInputs = ~REG_KEYINPUT;
	u16 heldKeys;
	gNewKeys[0] = rawInputs & ~gHeldKeys[0];
	gHeldKeys[0] = rawInputs;
	heldKeys = gHeldKeys[0];
	for (i = 0; i < (s32)COUNTOF(gKeyHeldDurations.durations[0]); ++i) {
		if (heldKeys & 1) {
			++gKeyHeldDurations.durations[0][i];
		} else {
			gKeyHeldDurations.durations[0][i] = 0;
		}
		heldKeys >>= 1;
	}
	if (gAutofireState.enabledButtons[0]) {
		for (autofireCheckableInputs = gAutofireState.enabledButtons[0], i = 0;
		     i < (s32)COUNTOF(gAutofireState.counters[0]);
		     ++i, autofireCheckableInputs >>= 1) {
			if (autofireCheckableInputs & 1) {
				// Autofire is enabled for this button. Which delay are we using?
                if (gAutofireState.counters[0][i] & AUTOFIRE_COUNTER_IS_SUBSEQUENT) {
					// The button has fired at least once automatically already;
                    // use the delay for subsequent autofire inputs.
                    if ((gHeldKeys[0] >> i) & 1) {
						if ((++gAutofireState.counters[0][i] & AUTOFIRE_COUNTER_DURATION_MASK) >= gAutofireState.subsequentDelay) {
							gAutofireState.counters[0][i] = AUTOFIRE_COUNTER_IS_SUBSEQUENT | 0;
							gNewKeys[0] |= 1 << i;
						}
					} else {
						gAutofireState.counters[0][i] = 0;
					}
				} else {
					// The first autofire hasn't happened yet; use the initial delay
                    if ((gHeldKeys[0] >> i) & 1) {
						if (++gAutofireState.counters[0][i] >= gAutofireState.initialDelay) {
							gAutofireState.counters[0][i] = AUTOFIRE_COUNTER_IS_SUBSEQUENT | 0;
							gNewKeys[0] |= 1 << i;
						}
					} else {
						gAutofireState.counters[0][i] = 0;
					}
				}
			}
		}
	}
}

void sub_800055C(void) {
	s32 i;
	s32 j;
	u16 heldKeys;
	u16 autofireCheckableInputs;

	gKeysBuffer[0] = gKeysBuffer[1];
	gKeysBuffer[1] = gKeysBuffer[2];
	gKeysBuffer[2] = gKeysBuffer[3];
	gKeysBuffer[3] = ~REG_KEYINPUT;

	gNewKeys[0] = (gHeldKeys[0] ^ gKeysBuffer[0]) & gKeysBuffer[0];
	gHeldKeys[0] = gKeysBuffer[0];
	heldKeys = gHeldKeys[0];

	for (i = 0; i < (s32)COUNTOF(gKeyHeldDurations.durations[0]); ++i) {
		if (heldKeys & 1) {
			++gKeyHeldDurations.durations[0][i];
		} else {
			gKeyHeldDurations.durations[0][i] = 0;
		}
		heldKeys >>= 1;
	}

	for (i = 0; i < 2; ++i) {
		if (gAutofireState.enabledButtons[i]) {
			for (autofireCheckableInputs = gAutofireState.enabledButtons[i], j = 0;
			     j < (s32)COUNTOF(gAutofireState.counters[0]);
			     ++j, autofireCheckableInputs >>= 1) {
				if (autofireCheckableInputs & 1) {
					if (gAutofireState.counters[i][j] & AUTOFIRE_COUNTER_IS_SUBSEQUENT) {
						if ((gHeldKeys[i] >> j) & 1) {
							if ((++gAutofireState.counters[i][j] & AUTOFIRE_COUNTER_DURATION_MASK) >= gAutofireState.subsequentDelay) {
								gAutofireState.counters[i][j] = AUTOFIRE_COUNTER_IS_SUBSEQUENT | 0;
								gNewKeys[i] |= 1 << j;
							}
						} else {
							gAutofireState.counters[i][j] = 0;
						}
					} else {
						if ((gHeldKeys[i] >> j) & 1) {
							if (++gAutofireState.counters[i][j] >= gAutofireState.initialDelay) {
								gAutofireState.counters[i][j] = AUTOFIRE_COUNTER_IS_SUBSEQUENT | 0;
								gNewKeys[i] |= 1 << j;
							}
						} else {
							gAutofireState.counters[i][j] = 0;
						}
					}
				}
			}
		}
	}
}

void sub_80006B0(void) {
	u32 i;

	gUnknown_03000010 = 0;
	gCurrentProc = 0;
	gNumTcb = 1;
	gUnknown_03002A30 = gUnknown_03002580;
	DmaFill32(3, 0, gUnknown_03002580, sizeof gUnknown_03002580);
	for (i = 0; i < COUNTOF(gUnknown_03002580); ++i) {
		gUnknown_03002A30[i].unkD = 0;
		gUnknown_03002A30[i].unk0 = 0;
		gUnknown_03002A30[i].unk9 = 0;
		gUnknown_03002A30[i].unkA = 0;
		gUnknown_03002A30[i].unk8 = 0;
		gUnknown_03002A30[i].unk4 = 0;
		gUnknown_03002A30[i].unkE = 0;
		gUnknown_03002A30[i].unkB = 0;
		gUnknown_03002A30[i].unkC = 0;
	}
	gUnknown_03002A30[0].unkD = 2;
	gUnknown_03002A30[0].unkE = 1;
	gUnknown_03002A30[0].unk0 = sub_8000DD4;
}

void sub_8000754(void) {}

s32 sub_8000758(s32 (*arg0)(), u32 arg1) {
	s32 currentProc;
	s32 result;
	currentProc = gCurrentProc;
	gCurrentProc = gUnknown_03002A30[0].unkA;
	result = sub_800083C(arg0, arg1);
	gCurrentProc = currentProc;
	return result;
}

s32 sub_800077C(s32 (*arg0)(), u32 arg1) {
	s32 p;

	if (gNumTcb == COUNTOF(gUnknown_03002580)) {
		log_fatal(gUnknown_080FA4E8); // "NO MORE TCB in _reg_last\n"
	}

	p = sub_8000D18();
	gUnknown_03002A30[gUnknown_03000010].unkA = p;
	gUnknown_03002A30[p].unkD = 1;
	gUnknown_03002A30[p].unk0 = arg0;
	gUnknown_03002A30[p].unk9 = gUnknown_03000010;
	gUnknown_03002A30[p].unkA = 0;
	gUnknown_03002A30[p].unk8 = 0;
	gUnknown_03002A30[p].unk4 = arg1;
	gUnknown_03002A30[p].unkE = 1;
	gUnknown_03002A30[p].unkB = 0;
	gUnknown_03002A30[p].unkC = 0;
	gUnknown_03000010 = p;
	++gNumTcb;
	return p;
}

s32 sub_8000818(s32 (*arg0)(), u32 arg1) {
	s32 currentProc;
	s32 result;
	currentProc = gCurrentProc;
	gCurrentProc = gUnknown_03002A30[0].unk9;
	result = sub_800083C(arg0, arg1);
	gCurrentProc = currentProc;
	return result;
}

s32 sub_800083C(s32 (*arg0)(), u32 arg1) {
	u32 r5;
	u32 r1;

	if (gCurrentProc == 0) {
		log_fatal(gUnknown_080FA504); // "Can't insert tcb when tcb no of my proc is 0.\n"
	}
	if (gNumTcb == 25) {
		log_fatal(gUnknown_080FA534); // "NO MORE TCB in _reg_ins\n"
	}

	r5 = sub_8000D18();
	gUnknown_03002A30[r5].unkD = 1;
	gUnknown_03002A30[r5].unk0 = arg0;
	gUnknown_03002A30[r5].unk8 = 0;
	gUnknown_03002A30[r5].unk4 = arg1;
	gUnknown_03002A30[r5].unkE = 1;
	gUnknown_03002A30[r5].unkB = 0;
	gUnknown_03002A30[r5].unkC = 0;

	if (gNumTcb >= 2) {
		r1 = gUnknown_03002A30[gCurrentProc].unk9;
		gUnknown_03002A30[gCurrentProc].unk9 = r5;
		gUnknown_03002A30[r1].unkA = r5;
		gUnknown_03002A30[r5].unk9 = r1;
		gUnknown_03002A30[r5].unkA = gCurrentProc;
	} else {
		gUnknown_03002A30[gUnknown_03000010].unkA = r5;
		gUnknown_03002A30[r5].unk9 = gUnknown_03000010;
		gUnknown_03002A30[r5].unkA = 0;
		gUnknown_03000010 = r5;
	}
	++gNumTcb;
	return r5;
}

s32 create_proc(s32 (*arg0)(), u32 arg1) {
	s32 r6;
	s32 r1;

	if (gNumTcb == 25) {
		log_fatal(gUnknown_080FA534);
	}
	r6 = sub_8000D18();
	gUnknown_03002A30[r6].unkD = 1;
	gUnknown_03002A30[r6].unk0 = arg0;
	gUnknown_03002A30[r6].unk8 = 0;
	gUnknown_03002A30[r6].unk4 = arg1;
	gUnknown_03002A30[r6].unkE = 1;
	gUnknown_03002A30[r6].unkB = 0;
	gUnknown_03002A30[r6].unkC = 0;
	if (gNumTcb > 1) {
		r1 = gUnknown_03002A30[gCurrentProc].unkA;
		gUnknown_03002A30[gCurrentProc].unkA = r6;
		gUnknown_03002A30[r1].unk9 = r6;
		gUnknown_03002A30[r6].unkA = r1;
		gUnknown_03002A30[r6].unk9 = gCurrentProc;
	} else {
		gUnknown_03002A30[gUnknown_03000010].unkA = r6;
		gUnknown_03002A30[r6].unk9 = gUnknown_03000010;
		gUnknown_03002A30[r6].unkA = 0;
	}

	if (gCurrentProc == gUnknown_03000010) {
		gUnknown_03000010 = r6;
	}
	++gNumTcb;
	return r6;
}

#ifdef NONMATCHING
s32 next_proc(void) {
	if (gNumTcb == 1) {
		return 3;
	}
	if (gUnknown_03002A30[gCurrentProc].unkD == 0) {
		log_fatal(gUnknown_080FA550, gNumTcb); // "Error next_proc() gNumTcb = %d\n"
	}
	if (gUnknown_03002A30[gCurrentProc].unk8 == 2) {
		gUnknown_03002A30[gCurrentProc].unk8 = 0;
	}

	gProcReturnVal = gUnknown_03002A30[gCurrentProc].unk0(gUnknown_03002A30[gCurrentProc].unk4);

	if (gNumTcb == 1) {
		return 3;
	}
	if (gUnknown_03002A30[gCurrentProc].unk8 == 0) {
		gUnknown_03002A30[gCurrentProc].unk8 = 1;
	}
	gCurrentProc = gUnknown_03002A30[gCurrentProc].unkA;

	while (gUnknown_03002A30[gCurrentProc].unkD != 1 || gUnknown_03002A30[gCurrentProc].unkE != 1) {
		if (gUnknown_03002A30[gCurrentProc].unkD == 2) {
			for (gUnknown_0300000C = 0; gUnknown_0300000C < 25; ++gUnknown_0300000C) {
				if (gUnknown_03002A30[gUnknown_0300000C].unkE == 2) {
					gUnknown_03002A30[gUnknown_0300000C].unkE = 1;
				}
				if (gUnknown_03002A30[gUnknown_0300000C].unkE == 1) {
					gUnknown_03002A30[gUnknown_0300000C].unkB = gUnknown_03002A30[gUnknown_0300000C].unkC;
					gUnknown_03002A30[gUnknown_0300000C].unkC = 0;
				}
			}
		}
		gCurrentProc = gUnknown_03002A30[gCurrentProc].unkA;
	}

	return gProcReturnVal;
}
#else
__attribute__((naked)) s32 next_proc(void) {
__asm__(".syntax unified\n\
	push {r4, r5, r6, r7, lr}\n\
	mov r7, sb\n\
	mov r6, r8\n\
	push {r6, r7}\n\
	ldr r0, _08000A90 @ =gNumTcb\n\
	mov r8, r0\n\
	ldr r3, [r0]\n\
	cmp r3, #1\n\
	beq _08000A8A\n\
	ldr r6, _08000A94 @ =gCurrentProc\n\
	ldr r1, [r6]\n\
	ldr r7, _08000A98 @ =gUnknown_03002A30\n\
	ldr r2, [r7]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldrb r0, [r0, #0xd]\n\
	cmp r0, #0\n\
	bne _08000A50\n\
	ldr r0, _08000A9C @ =gUnknown_080FA550\n\
	adds r1, r3, #0\n\
	bl log_fatal\n\
_08000A50:\n\
	adds r5, r6, #0\n\
	ldr r1, [r5]\n\
	adds r4, r7, #0\n\
	ldr r2, [r4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r1, r0, r2\n\
	ldrb r0, [r1, #8]\n\
	cmp r0, #2\n\
	bne _08000A6A\n\
	movs r0, #0\n\
	strb r0, [r1, #8]\n\
_08000A6A:\n\
	ldr r0, [r5]\n\
	ldr r2, [r4]\n\
	lsls r1, r0, #1\n\
	adds r1, r1, r0\n\
	lsls r1, r1, #4\n\
	adds r1, r1, r2\n\
	ldr r0, [r1, #4]\n\
	ldr r1, [r1]\n\
	bl _call_via_r1\n\
	ldr r3, _08000AA0 @ =gProcReturnVal\n\
	str r0, [r3]\n\
	mov r1, r8\n\
	ldr r0, [r1]\n\
	cmp r0, #1\n\
	bne _08000AA4\n\
_08000A8A:\n\
	movs r0, #3\n\
	b _08000B70\n\
	.align 2, 0\n\
_08000A90: .4byte gNumTcb\n\
_08000A94: .4byte gCurrentProc\n\
_08000A98: .4byte gUnknown_03002A30\n\
_08000A9C: .4byte gUnknown_080FA550\n\
_08000AA0: .4byte gProcReturnVal\n\
_08000AA4:\n\
	ldr r1, [r5]\n\
	ldr r2, [r4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r1, r0, r2\n\
	ldrb r0, [r1, #8]\n\
	cmp r0, #0\n\
	bne _08000ABA\n\
	movs r0, #1\n\
	strb r0, [r1, #8]\n\
_08000ABA:\n\
	ldr r1, [r6]\n\
	ldr r2, [r7]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldrb r1, [r0, #0xa]\n\
	str r1, [r6]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldr r1, [r0, #0xc]\n\
	ldr r0, _08000B7C @ =0x00FFFF00\n\
	ands r1, r0\n\
	ldr r0, _08000B80 @ =0x00010100\n\
	mov sb, r3\n\
	cmp r1, r0\n\
	beq _08000B6C\n\
	mov r8, r7\n\
	ldr r0, _08000B84 @ =gUnknown_0300000C\n\
	mov ip, r0\n\
_08000AE6:\n\
	ldr r1, [r6]\n\
	ldr r2, [r7]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldrb r0, [r0, #0xd]\n\
	cmp r0, #2\n\
	bne _08000B48\n\
	movs r0, #0\n\
	mov r1, ip\n\
	str r0, [r1]\n\
	mov r3, ip\n\
	mov r4, r8\n\
	movs r5, #0\n\
_08000B04:\n\
	ldr r1, [r3]\n\
	ldr r2, [r4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r1, r0, r2\n\
	ldrb r0, [r1, #0xe]\n\
	cmp r0, #2\n\
	bne _08000B1A\n\
	movs r0, #1\n\
	strb r0, [r1, #0xe]\n\
_08000B1A:\n\
	ldr r1, [r3]\n\
	ldr r2, [r4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r1, r0, r2\n\
	ldrb r0, [r1, #0xe]\n\
	cmp r0, #1\n\
	bne _08000B3E\n\
	ldrb r0, [r1, #0xc]\n\
	strb r0, [r1, #0xb]\n\
	ldr r1, [r3]\n\
	ldr r2, [r4]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	strb r5, [r0, #0xc]\n\
_08000B3E:\n\
	ldr r0, [r3]\n\
	adds r0, #1\n\
	str r0, [r3]\n\
	cmp r0, #0x18\n\
	bls _08000B04\n\
_08000B48:\n\
	ldr r1, [r6]\n\
	ldr r2, [r7]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldrb r1, [r0, #0xa]\n\
	str r1, [r6]\n\
	lsls r0, r1, #1\n\
	adds r0, r0, r1\n\
	lsls r0, r0, #4\n\
	adds r0, r0, r2\n\
	ldr r1, [r0, #0xc]\n\
	ldr r0, _08000B7C @ =0x00FFFF00\n\
	ands r1, r0\n\
	ldr r0, _08000B80 @ =0x00010100\n\
	cmp r1, r0\n\
	bne _08000AE6\n\
_08000B6C:\n\
	mov r1, sb\n\
	ldr r0, [r1]\n\
_08000B70:\n\
	pop {r3, r4}\n\
	mov r8, r3\n\
	mov sb, r4\n\
	pop {r4, r5, r6, r7}\n\
	pop {r1}\n\
	bx r1\n\
	.align 2, 0\n\
_08000B7C: .4byte 0x00FFFF00\n\
_08000B80: .4byte 0x00010100\n\
_08000B84: .4byte gUnknown_0300000C\n\
.syntax divided");
}
#endif

s32 end_proc(u32 arg0) {
	u8 unk9;
	u8 unkA;

#ifdef UBFIX
    if (arg0 == 0 || arg0 < 0 || arg0 >= 25 || gUnknown_03002A30[arg0].unkD == 0) {
#else
	// The bounds checking logic runs after the array has already been accessed!
	// A modern compiler with LTO might be able to optimize the bounds checks away.
	if (gUnknown_03002A30[arg0].unkD == 0 || arg0 == 0 || arg0 < 0 || arg0 >= 25) {
#endif
		return 2;
	}
	unk9 = gUnknown_03002A30[arg0].unk9;
	unkA = gUnknown_03002A30[arg0].unkA;
	gUnknown_03002A30[unk9].unkA = unkA;
	gUnknown_03002A30[unkA].unk9 = unk9;
	if (arg0 == gUnknown_03000010) {
		gUnknown_03000010 = unk9;
	}
	if (gCurrentProc == arg0) {
		gCurrentProc = gUnknown_03002A30[arg0].unk9;
	}
	gUnknown_03002A30[arg0].unkD = 0;
	gUnknown_03002A30[arg0].unk0 = (s32(*)())0;
	gUnknown_03002A30[arg0].unk9 = 0;
	gUnknown_03002A30[arg0].unkA = 0;
	gUnknown_03002A30[arg0].unkE = 0;
	gUnknown_03002A30[arg0].unkB = 0;
	gUnknown_03002A30[arg0].unkC = 0;
	--gNumTcb;
	return 0;
}

void end_current_proc(void) {
    end_proc(gCurrentProc);
}

s32 sub_8000C3C(u32 arg0) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0 || gUnknown_03002A30[arg0].unkD != 1) {
		return 2;
	}
	gUnknown_03002A30[arg0].unk8 = 2;
	gUnknown_03002A30[arg0].unkE = 1;
	return 0;
}

s32 sub_8000C74(u32 arg0, u32 arg1) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0 || gUnknown_03002A30[arg0].unkD != 1) {
		return 2;
	}
	gUnknown_03002A30[arg0].unk4 = arg1;
	return 0;
}

s32 sub_8000CA4(u32 arg0) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0 || gUnknown_03002A30[arg0].unkD != 1) {
		return 2;
	}
	gUnknown_03002A30[arg0].unkE = 0;
	return 0;
}

s32 wakeup_tcb(u32 arg0) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0) {
		log_fatal(gUnknown_080FA570, arg0);
		return 2;
	}
	if (gUnknown_03002A30[arg0].unkD == 1) {
		gUnknown_03002A30[arg0].unkE = 2;
		return 0;
	}
	log_fatal(gUnknown_080FA584, arg0);
	return 2;
}

u32 sub_8000D18(void) {
	u32 i;
	for (i = 1; i < 25; ++i) {
		if (gUnknown_03002A30[i].unkD == 0) {
			break;
		}
	}
	return i;
}

s32 set_signal(u32 arg0, u8 arg1) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0 || gUnknown_03002A30[arg0].unkD != 1) {
		log_fatal(gUnknown_080FA5A0);
		return 2;
	}
	gUnknown_03002A30[arg0].unkC = arg1;
	return 0;
}

u32 sub_8000D84(void) {
	return gUnknown_03002A30[gCurrentProc].unkB;
}

u32 sub_8000DA0(u32 arg0) {
	return gUnknown_03002A30[arg0].unkB;
}

void sub_8000DB4(void) {
	gUnknown_03002A30[gCurrentProc].unkB = 0;
}

s32 sub_8000DD4(u32 unused) {
	return 0;
}

void sub_8000DD8(void) {
	u32 i;
	for (i = 0; i < 25; ++i) {
		gUnknown_03002A30[i].unkC = 1;
		gUnknown_03002A30[i].unkE = 2;
	}
}

s32 sub_8000E04(u32 arg0) {
	if (arg0 < 0 || arg0 >= 25 || arg0 == 0) {
		return 2;
	}
	if (gUnknown_03002A30[arg0].unkD != 1) {
		return 0;
	}
	if (gUnknown_03002A30[arg0].unkE != 1) {
		return 0;
	}
	return 1;
}

void sub_8000E3C(void) {
	sub_8000CA4(gCurrentProc);
}

void log_fatal(const char *fmt, ...) {
    while (1) {}
}
