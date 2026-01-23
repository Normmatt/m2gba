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
