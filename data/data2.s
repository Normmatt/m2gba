    .section .data

    .global AgbLibSram_ver
AgbLibSram_ver:
    .ascii "SRAM_V113"
    
    .align 2
    .word ReadSram_Core+1
    .word ReadSram+1
    .word VerifySram_Core+1
    .word VerifySram+1

    .global gUnknown_082B7734
gUnknown_082B7734:
    .incbin "baserom.gba", 0x002B7734, 0x10

    .global gUnknown_082B7744
gUnknown_082B7744:
    .incbin "baserom.gba", 0x002B7744, 0x10

    .global gUnknown_082B7754
gUnknown_082B7754:
    .incbin "baserom.gba", 0x002B7754, 0x4

    .global gUnknown_082B7758
gUnknown_082B7758:
    .incbin "baserom.gba", 0x002B7758, 0x4

    .global gUnknown_082B775C
gUnknown_082B775C:
    .incbin "baserom.gba", 0x002B775C, 0x14

    .global gUnknown_082B7770
gUnknown_082B7770:
    .incbin "baserom.gba", 0x002B7770, 0x8

    .global gUnknown_082B7778
gUnknown_082B7778:
    .incbin "baserom.gba", 0x002B7778, 0x14

    .global gUnknown_082B778C
gUnknown_082B778C:
    .incbin "baserom.gba", 0x002B778C, 0x1C

    .global gUnknown_082B77A8
gUnknown_082B77A8:
    .incbin "baserom.gba", 0x002B77A8, 0x4

    .global gUnknown_082B77AC
gUnknown_082B77AC:
    .incbin "baserom.gba", 0x002B77AC, 0x4
