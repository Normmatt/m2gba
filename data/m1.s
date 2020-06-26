
    .section .data

@mother 1
    .global gUnknown_08F00000
gUnknown_08F00000:
    .incbin "baserom.gba", 0x00F00000, 0xC0
    
    .global gUnknown_08F000C0
gUnknown_08F000C0:
    .incbin "baserom.gba", 0x00F000C0, 0xFFF40