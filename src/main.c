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
	for(i = 0; i < (s32)COUNTOF(gUnknown_03000000); ++i) {
		gUnknown_03000000[i] = 0;
	}
	sub_80003B0(0, 0x3FF);
	sub_80003B0(1, 0x3FF);
	gUnknown_03002540.unk0[0] = 0;
	gUnknown_03002540.unk0[1] = 0;
}

void sub_8000364(s32 arg0, u16 arg1, s32 arg2, s32 arg3) {
	s32 i;

	gUnknown_03002540.unk0[arg0] |= arg1;
	gUnknown_03002540.unk4 = arg2;
	gUnknown_03002540.unk6 = arg3;
	for (i = 0; i < (s32)COUNTOF(gUnknown_03002540.unk8[0]); ++i) {
		gUnknown_03002540.unk8[0][i] = 0;
		gUnknown_03002540.unk8[1][i] = 0;
	}
}

void sub_8000398(s32 arg0, u16 arg1) {
	gUnknown_03002540.unk0[arg0] &= ~arg1;
}

void sub_80003B0(s32 arg0, u16 arg1) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gUnknown_03002510.unk0[0]); ++i) {
		if (arg1 & 1) {
			gUnknown_03002510.unk0[arg0][i] = 0;
		}
		arg1 >>= 1;
	}
}

void sub_80003E4(s32 arg0, u16 arg1, u16 arg2) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gUnknown_03002510.unk0[0]); ++i) {
		if (arg1 & 1) {
			gUnknown_03002510.unk0[arg0][i] = arg2;
		}
		arg1 >>= 1;
	}
}

u16 sub_800041C(s32 arg0, u16 arg1) {
	s32 i;

	for (i = 0; i < (s32)COUNTOF(gUnknown_03002510.unk0[0]); ++i) {
		if (arg1 & 1) {
			return gUnknown_03002510.unk0[arg0][i];
		}
		arg1 >>= 1;
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
	for (i = 0; i < (s32)COUNTOF(gUnknown_03002510.unk0[0]); ++i) {
		if (heldKeys & 1) {
			++gUnknown_03002510.unk0[0][i];
		} else {
			gUnknown_03002510.unk0[0][i] = 0;
		}
		heldKeys >>= 1;
	}
	if (gUnknown_03002540.unk0[0]) {
		for (autofireCheckableInputs = gUnknown_03002540.unk0[0], i = 0;
		     i < (s32)COUNTOF(gUnknown_03002540.unk8[0]);
		     ++i, autofireCheckableInputs >>= 1) {
			if (autofireCheckableInputs & 1) {
				if (gUnknown_03002540.unk8[0][i] & 0x8000) {
					if ((gHeldKeys[0] >> i) & 1) {
						if ((++gUnknown_03002540.unk8[0][i] & 0x7FFF) >= gUnknown_03002540.unk6) {
							gUnknown_03002540.unk8[0][i] = 0x8000;
							gNewKeys[0] |= 1 << i;
						}
					} else {
						gUnknown_03002540.unk8[0][i] = 0;
					}
				} else {
					if ((gHeldKeys[0] >> i) & 1) {
						if (++gUnknown_03002540.unk8[0][i] >= gUnknown_03002540.unk4) {
							gUnknown_03002540.unk8[0][i] = 0x8000;
							gNewKeys[0] |= 1 << i;
						}
					} else {
						gUnknown_03002540.unk8[0][i] = 0;
					}
				}
			}
		}
	}
}

void sub_800055C(void) {
	s32 i;
	s32 j;
	u16 r2;
	u16 r8;

	gUnknown_03000000[0] = gUnknown_03000000[1];
	gUnknown_03000000[1] = gUnknown_03000000[2];
	gUnknown_03000000[2] = gUnknown_03000000[3];
	gUnknown_03000000[3] = ~REG_KEYINPUT;

	gNewKeys[0] = (gHeldKeys[0] ^ gUnknown_03000000[0]) & gUnknown_03000000[0];
	gHeldKeys[0] = gUnknown_03000000[0];
	r2 = gHeldKeys[0];

	for (i = 0; i < 10; ++i) {
		if (r2 & 1) {
			++gUnknown_03002510.unk0[0][i];
		} else {
			gUnknown_03002510.unk0[0][i] = 0;
		}
		r2 >>= 1;
	}

	for (i = 0; i < 2; ++i) {
		if (gUnknown_03002540.unk0[i]) {
			for (r8 = gUnknown_03002540.unk0[i], j = 0; j < 10; ++j, r8 >>= 1) {
				if (r8 & 1) {
					if (gUnknown_03002540.unk8[i][j] & 0x8000) {
						if ((gHeldKeys[i] >> j) & 1) {
							if ((++gUnknown_03002540.unk8[i][j] & 0x7FFF) >= gUnknown_03002540.unk6) {
								gUnknown_03002540.unk8[i][j] = 0x8000;
								gNewKeys[i] |= 1 << j;
							}
						} else {
							gUnknown_03002540.unk8[i][j] = 0;
						}
					} else {
						if ((gHeldKeys[i] >> j) & 1) {
							if (++gUnknown_03002540.unk8[i][j] >= gUnknown_03002540.unk4) {
								gUnknown_03002540.unk8[i][j] = 0x8000;
								gNewKeys[i] |= 1 << j;
							}
						} else {
							gUnknown_03002540.unk8[i][j] = 0;
						}
					}
				}
			}
		}
	}
}
