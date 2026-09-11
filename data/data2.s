    .section .data

    .global AgbLibSram_ver
AgbLibSram_ver:
    .ascii "SRAM_V113"
    
    .align 2
    .word ReadSram_Core+1
    .word ReadSram+1
    .word VerifySram_Core+1
    .word VerifySram+1
