	.section .data

    .global gUnknown_080FA4B0
gUnknown_080FA4B0:
    .word sub_800030C+1
    .word sub_80010DC+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word sub_800030C+1
    .word 0
    .word 0
    .word 0

    .align 2
    .global gUnknown_080FA4E8
gUnknown_080FA4E8:
    .asciz "NO MORE TCB in _reg_last\n"

    .align 2
    .global gUnknown_080FA504
gUnknown_080FA504:
    .asciz "Can't insert tcb when tcb no of my proc is 0.\n"

    .align 2
    .global gUnknown_080FA534
gUnknown_080FA534:
    .asciz "NO MORE TCB in _reg_ins\n"

    .align 2
    .global gUnknown_080FA550
gUnknown_080FA550:
    .asciz "Error next_proc() gNumTcb = %d\n"

    .align 2
    .global gUnknown_080FA570
gUnknown_080FA570:
    .asciz "wakeup tcb : %d\n"

    .align 2
    .global gUnknown_080FA584
gUnknown_080FA584:
    .asciz "wakeup <Not Use>  tcb : %d\n"

    .align 2
    .global gUnknown_080FA5A0
gUnknown_080FA5A0:
    .asciz "err set_signal()"

    .align 2
    .global gUnknown_080FA5B4
gUnknown_080FA5B4:
    .asciz ""

    .align 2
    .global gUnknown_080FA5B8
gUnknown_080FA5B8:
    .asciz "IGA TEST"

    .align 2
    .global gUnknown_080FA5C4
gUnknown_080FA5C4:
    .asciz "SAITEI 2"

    .align 2
    .global gUnknown_080FA5D0
gUnknown_080FA5D0:
    .asciz "SAITEI"

    .align 2
    .global gUnknown_080FA5D8
gUnknown_080FA5D8:
    .asciz "MAGIACNT"

    .align 2
    .global gUnknown_080FA5E4
gUnknown_080FA5E4:
    .asciz "UNDER GROUND"

    .align 2
    .global gUnknown_080FA5F4
gUnknown_080FA5F4:
    .asciz "MAKYO"

    .align 2
    .global gUnknown_080FA5FC
gUnknown_080FA5FC:
    .asciz "SCARABI"

    .align 2
    .global gUnknown_080FA604
gUnknown_080FA604:
    .asciz "SUMMERS"

    .align 2
    .global gUnknown_080FA60C
gUnknown_080FA60C:
    .asciz "FORSIDE"

    .align 2
    .global gUnknown_080FA614
gUnknown_080FA614:
    .asciz "THREEK"

    .align 2
    .global gUnknown_080FA61C
gUnknown_080FA61C:
    .asciz "TWOSON"

    .align 2
    .global gUnknown_080FA624
gUnknown_080FA624:
    .incbin "baserom.gba", 0x000FA624, 0x200

    .global gUnknown_080FA824
gUnknown_080FA824:
    .incbin "baserom.gba", 0x000FA824, 0x1C00

    .global gUnknown_080FC424
gUnknown_080FC424:
    .incbin "baserom.gba", 0x000FC424, 0x14

    .global gUnknown_080FC438
gUnknown_080FC438:
    .incbin "baserom.gba", 0x000FC438, 0x1C

    .global gUnknown_080FC454
gUnknown_080FC454:
    .incbin "baserom.gba", 0x000FC454, 0xC

    .global gUnknown_080FC460
gUnknown_080FC460:
    .incbin "baserom.gba", 0x000FC460, 0x4

    .global gUnknown_080FC464
gUnknown_080FC464:
    .incbin "baserom.gba", 0x000FC464, 0x4

    .global gUnknown_080FC468
gUnknown_080FC468:
    .incbin "baserom.gba", 0x000FC468, 0x4

    .global gUnknown_080FC46C
gUnknown_080FC46C:
    .incbin "baserom.gba", 0x000FC46C, 0x4

    .global gUnknown_080FC470
gUnknown_080FC470:
    .incbin "baserom.gba", 0x000FC470, 0x4

    .global gUnknown_080FC474
gUnknown_080FC474:
    .incbin "baserom.gba", 0x000FC474, 0x4

    .global gUnknown_080FC478
gUnknown_080FC478:
    .incbin "baserom.gba", 0x000FC478, 0x4

    .global gUnknown_080FC47C
gUnknown_080FC47C:
    .incbin "baserom.gba", 0x000FC47C, 0x40

    .global gUnknown_080FC4BC
gUnknown_080FC4BC:
    .incbin "baserom.gba", 0x000FC4BC, 0x10

    .global gUnknown_080FC4CC
gUnknown_080FC4CC:
    .incbin "baserom.gba", 0x000FC4CC, 0x10

    .global gUnknown_080FC4DC
gUnknown_080FC4DC:
    .incbin "baserom.gba", 0x000FC4DC, 0xC

    .global gUnknown_080FC4E8
gUnknown_080FC4E8:
    .incbin "baserom.gba", 0x000FC4E8, 0x280

    .global gUnknown_080FC768
gUnknown_080FC768:
    .incbin "baserom.gba", 0x000FC768, 0x360

    .global gUnknown_080FCAC8
gUnknown_080FCAC8:
    .incbin "baserom.gba", 0x000FCAC8, 0x58

    .global gUnknown_080FCB20
gUnknown_080FCB20:
    .incbin "baserom.gba", 0x000FCB20, 0x54

    .global gUnknown_080FCB74
gUnknown_080FCB74:
    .incbin "baserom.gba", 0x000FCB74, 0xC

    .global gUnknown_080FCB80
gUnknown_080FCB80:
    .incbin "baserom.gba", 0x000FCB80, 0x20

    .global gUnknown_080FCBA0
gUnknown_080FCBA0:
    .incbin "baserom.gba", 0x000FCBA0, 0x20

    .global gUnknown_080FCBC0
gUnknown_080FCBC0:
    .incbin "baserom.gba", 0x000FCBC0, 0x20

    .global gUnknown_080FCBE0
gUnknown_080FCBE0:
    .incbin "baserom.gba", 0x000FCBE0, 0x20

    .global gUnknown_080FCC00
gUnknown_080FCC00:
    .incbin "baserom.gba", 0x000FCC00, 0x4

    .global gUnknown_080FCC04
gUnknown_080FCC04:
    .incbin "baserom.gba", 0x000FCC04, 0x4

    .global gUnknown_080FCC08
gUnknown_080FCC08:
    .incbin "baserom.gba", 0x000FCC08, 0x4

    .global gUnknown_080FCC0C
gUnknown_080FCC0C:
    .incbin "baserom.gba", 0x000FCC0C, 0x14

    .global gUnknown_080FCC20
gUnknown_080FCC20:
    .incbin "baserom.gba", 0x000FCC20, 0x2C

    .global gUnknown_080FCC4C
gUnknown_080FCC4C:
    .incbin "baserom.gba", 0x000FCC4C, 0x14

    .global gUnknown_080FCC60
gUnknown_080FCC60:
    .incbin "baserom.gba", 0x000FCC60, 0xC

    .global gUnknown_080FCC6C
gUnknown_080FCC6C:
    .incbin "baserom.gba", 0x000FCC6C, 0x14

    .global gUnknown_080FCC80
gUnknown_080FCC80:
    .incbin "baserom.gba", 0x000FCC80, 0x2C

    .global gUnknown_080FCCAC
gUnknown_080FCCAC:
    .incbin "baserom.gba", 0x000FCCAC, 0xC

    .global gUnknown_080FCCB8
gUnknown_080FCCB8:
    .incbin "baserom.gba", 0x000FCCB8, 0xC

    .global gUnknown_080FCCC4
gUnknown_080FCCC4:
    .incbin "baserom.gba", 0x000FCCC4, 0x14

    .global gUnknown_080FCCD8
gUnknown_080FCCD8:
    .incbin "baserom.gba", 0x000FCCD8, 0x10

    .global gUnknown_080FCCE8
gUnknown_080FCCE8:
    .incbin "baserom.gba", 0x000FCCE8, 0x10

    .global gUnknown_080FCCF8
gUnknown_080FCCF8:
    .incbin "baserom.gba", 0x000FCCF8, 0x8

    .global gUnknown_080FCD00
gUnknown_080FCD00:
    .incbin "baserom.gba", 0x000FCD00, 0x14

    .global gUnknown_080FCD14
gUnknown_080FCD14:
    .incbin "baserom.gba", 0x000FCD14, 0x14

    .global gUnknown_080FCD28
gUnknown_080FCD28:
    .incbin "baserom.gba", 0x000FCD28, 0x8

    .global gUnknown_080FCD30
gUnknown_080FCD30:
    .incbin "baserom.gba", 0x000FCD30, 0x8

    .global gUnknown_080FCD38
gUnknown_080FCD38:
    .incbin "baserom.gba", 0x000FCD38, 0x8

    .global gUnknown_080FCD40
gUnknown_080FCD40:
    .incbin "baserom.gba", 0x000FCD40, 0x14

    .global gUnknown_080FCD54
gUnknown_080FCD54:
    .incbin "baserom.gba", 0x000FCD54, 0x14

    .global gUnknown_080FCD68
gUnknown_080FCD68:
    .incbin "baserom.gba", 0x000FCD68, 0x8

    .global gUnknown_080FCD70
gUnknown_080FCD70:
    .incbin "baserom.gba", 0x000FCD70, 0x14

    .global gUnknown_080FCD84
gUnknown_080FCD84:
    .incbin "baserom.gba", 0x000FCD84, 0xC

    .global gUnknown_080FCD90
gUnknown_080FCD90:
    .incbin "baserom.gba", 0x000FCD90, 0xC

    .global gUnknown_080FCD9C
gUnknown_080FCD9C:
    .incbin "baserom.gba", 0x000FCD9C, 0x10

    .global gUnknown_080FCDAC
gUnknown_080FCDAC:
    .incbin "baserom.gba", 0x000FCDAC, 0x8

    .global gUnknown_080FCDB4
gUnknown_080FCDB4:
    .incbin "baserom.gba", 0x000FCDB4, 0x8

    .global gUnknown_080FCDBC
gUnknown_080FCDBC:
    .incbin "baserom.gba", 0x000FCDBC, 0x8

    .global gUnknown_080FCDC4
gUnknown_080FCDC4:
    .incbin "baserom.gba", 0x000FCDC4, 0xC

    .global gUnknown_080FCDD0
gUnknown_080FCDD0:
    .incbin "baserom.gba", 0x000FCDD0, 0xC

    .global gUnknown_080FCDDC
gUnknown_080FCDDC:
    .incbin "baserom.gba", 0x000FCDDC, 0xC

    .global gUnknown_080FCDE8
gUnknown_080FCDE8:
    .incbin "baserom.gba", 0x000FCDE8, 0xC

    .global gUnknown_080FCDF4
gUnknown_080FCDF4:
    .incbin "baserom.gba", 0x000FCDF4, 0xC

    .global gUnknown_080FCE00
gUnknown_080FCE00:
    .incbin "baserom.gba", 0x000FCE00, 0xC

    .global gUnknown_080FCE0C
gUnknown_080FCE0C:
    .incbin "baserom.gba", 0x000FCE0C, 0x8

    .global gUnknown_080FCE14
gUnknown_080FCE14:
    .incbin "baserom.gba", 0x000FCE14, 0xC

    .global gUnknown_080FCE20
gUnknown_080FCE20:
    .incbin "baserom.gba", 0x000FCE20, 0xC

    .global gUnknown_080FCE2C
gUnknown_080FCE2C:
    .incbin "baserom.gba", 0x000FCE2C, 0xC

    .global gUnknown_080FCE38
gUnknown_080FCE38:
    .incbin "baserom.gba", 0x000FCE38, 0xC

    .global gUnknown_080FCE44
gUnknown_080FCE44:
    .incbin "baserom.gba", 0x000FCE44, 0x8

    .global gUnknown_080FCE4C
gUnknown_080FCE4C:
    .incbin "baserom.gba", 0x000FCE4C, 0x20

    .global gUnknown_080FCE6C
gUnknown_080FCE6C:
    .incbin "baserom.gba", 0x000FCE6C, 0xA070

    .global MPlyJmpTbl
MPlyJmpTbl:
    .incbin "baserom.gba", 0x00106EDC, 0x90

    .global ScaleTable
ScaleTable:
    .incbin "baserom.gba", 0x00106F6C, 0xB4

    .global FreqTable
FreqTable:
    .incbin "baserom.gba", 0x00107020, 0x30

    .global pcmVBtbl_rev
pcmVBtbl_rev:
    .incbin "baserom.gba", 0x00107050, 0x18

    .global CgbScTable
CgbScTable:
    .incbin "baserom.gba", 0x00107068, 0x84

    .global CgbFrTable
CgbFrTable:
    .incbin "baserom.gba", 0x001070EC, 0x18

    .global NoiseTable
NoiseTable:
    .incbin "baserom.gba", 0x00107104, 0x3C

    .global Cgb3vol
Cgb3vol:
    .incbin "baserom.gba", 0x00107140, 0x10

    .global clock_tbl_rev01
clock_tbl_rev01:
    .incbin "baserom.gba", 0x00107150, 0x34

    .global xcmd_tbl
xcmd_tbl:
    .incbin "baserom.gba", 0x00107184, 0x30

@    .global gMPlayTable
@gMPlayTable:
@    .incbin "baserom.gba", 0x0010B50C, 0x24
@
@    .global gSongTable
@gSongTable:
@    .incbin "baserom.gba", 0x0010B530, 0x1AC204
