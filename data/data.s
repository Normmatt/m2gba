    .section .data

    .global gUnknown_080FA4B0
gUnknown_080FA4B0:
    .word DummyIntr+1
    .word VBlankIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
    .word DummyIntr+1
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
    .string "ゲームをはじめる\0"

    .align 2
    .global gUnknown_080FC438
gUnknown_080FC438:
    .string "：\0"

    .align 2
gUnknown_080FC43C:
    .string "はやい\0"

    .align 2
gUnknown_080FC444:
    .string "ふつう\0"

    .align 2
gUnknown_080FC44C:
    .string "おそい\0"

    .align 2
    .global gUnknown_080FC454
gUnknown_080FC454:
    .word gUnknown_080FC43C
    .word gUnknown_080FC444
    .word gUnknown_080FC44C

    .align 2
    .global gUnknown_080FC460
gUnknown_080FC460:
    .string "レ\0"

    .align 2
    .global gUnknown_080FC464
gUnknown_080FC464:
    .string "ベ\0"

    .align 2
    .global gUnknown_080FC468
gUnknown_080FC468:
    .string "ル\0"

    .align 2
    .global gUnknown_080FC46C
gUnknown_080FC46C:
    .string "ひ\0"

    .align 2
    .global gUnknown_080FC470
gUnknown_080FC470:
    .string "ょ\0"

    .align 2
    .global gUnknown_080FC474
gUnknown_080FC474:
    .string "う\0"

    .align 2
    .global gUnknown_080FC478
gUnknown_080FC478:
    .string "じ\0"

    .align 2
    .global gUnknown_080FC47C
gUnknown_080FC47C:
    .incbin "baserom.gba", 0x000FC47C, 0x40

    .global gUnknown_080FC4BC
gUnknown_080FC4BC:
    .word gUnknown_02008400
    .word gUnknown_02008C00
    .word gUnknown_02009400
    .word gUnknown_02009C00

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
    .asciz "TIME (%03d) MAX(%03d)\n"

    .align 2
    .global gUnknown_080FC780
gUnknown_080FC780:
    .string "ＳＥＬＥＣＴ関連\0"

    .align 2
    .global gUnknown_080FC794
gUnknown_080FC794:
    .string "ＰＥＲＳＯＮ\0"

    .align 2
    .global gUnknown_080FC7A4
gUnknown_080FC7A4:
    .string "自転車\0"

    .align 2
    .global gUnknown_080FC7AC
gUnknown_080FC7AC:
    .string "ＯＢＪ　ＣＨＫ２\0"

    .align 2
    .global gUnknown_080FC7C0
gUnknown_080FC7C0:
    .string "ＯＢＪ　ＣＨＫ\0"

    .align 2
    .global gUnknown_080FC7D0
gUnknown_080FC7D0:
    .string "ＭＡＰムーンサイド\0"

    .align 2
    .global gUnknown_080FC7E4
gUnknown_080FC7E4:
    .string "ＭＡＰセレクト特殊\0"

    .align 2
    .global gUnknown_080FC7F8
gUnknown_080FC7F8:
    .string "ＭＡＰセレクト３\0"

    .align 2
    .global gUnknown_080FC80C
gUnknown_080FC80C:
    .string "ＭＡＰセレクト２\0"

    .align 2
    .global gUnknown_080FC820
gUnknown_080FC820:
    .string "ＭＡＰセレクト１\0"

    .align 2
    .global gUnknown_080FC834
gUnknown_080FC834:
    .string "ルミネテスト\0"

    .align 2
    .global gUnknown_080FC844
gUnknown_080FC844:
    .string "スタッフロール１\0"

    .align 2
    .global gUnknown_080FC858
gUnknown_080FC858:
    .string "スタッフロール０\0"

    .align 2
    .global gUnknown_080FC86C
gUnknown_080FC86C:
    .string "ノイズ\0"

    .align 2
    .global gUnknown_080FC874
gUnknown_080FC874:
    .string "設定画面\0"

    .align 2
    .global gUnknown_080FC880
gUnknown_080FC880:
    .string "タイトル\0"

    .align 2
    .global gUnknown_080FC88C
gUnknown_080FC88C:
    .string "ロゴスタート\0"

    .align 2
    .global gUnknown_080FC89C
gUnknown_080FC89C:
    .string "サターンバレー\0"

    .align 2
    .global gUnknown_080FC8AC
gUnknown_080FC8AC:
    .string "グレープ\0"

    .align 2
    .global gUnknown_080FC8B8
gUnknown_080FC8B8:
    .string "ウィンタース\0"

    .align 2
    .global gUnknown_080FC8C8
gUnknown_080FC8C8:
    .string "スリーク\0"

    .align 2
    .global gUnknown_080FC8D4
gUnknown_080FC8D4:
    .string "ハッピー\0"

    .align 2
    .global gUnknown_080FC8E0
gUnknown_080FC8E0:
    .string "ＤＧ谷\0"

    .align 2
    .global gUnknown_080FC8E8
gUnknown_080FC8E8:
    .string "ツーソン\0"

    .align 2
    .global gUnknown_080FC8F4
gUnknown_080FC8F4:
    .string "オネット\0"

    .align 2
    .global gUnknown_080FC900
gUnknown_080FC900:
    .string "ダンジョン男\0"

    .align 2
    .global gUnknown_080FC910
gUnknown_080FC910:
    .string "スカラビ\0"

    .align 2
    .global gUnknown_080FC91C
gUnknown_080FC91C:
    .string "ランマ\0"

    .align 2
    .global gUnknown_080FC924
gUnknown_080FC924:
    .string "サマーズ海上\0"

    .align 2
    .global gUnknown_080FC934
gUnknown_080FC934:
    .string "サマーズ\0"

    .align 2
    .global gUnknown_080FC940
gUnknown_080FC940:
    .string "ＦＯ地下倉庫から\0"

    .align 2
    .global gUnknown_080FC954
gUnknown_080FC954:
    .string "フォーサイド\0"

    .align 2
    .global gUnknown_080FC964
gUnknown_080FC964:
    .string "ドコドコ砂漠\0"

    .align 2
    .global gUnknown_080FC974
gUnknown_080FC974:
    .string "ルミネ\0"

    .align 2
    .global gUnknown_080FC97C
gUnknown_080FC97C:
    .string "過去の最低国\0"

    .align 2
    .global gUnknown_080FC98C
gUnknown_080FC98C:
    .string "最低国\0"

    .align 2
    .global gUnknown_080FC994
gUnknown_080FC994:
    .string "エデンの海\0"

    .align 2
    .global gUnknown_080FC9A0
gUnknown_080FC9A0:
    .string "マジカント\0"

    .align 2
    .global gUnknown_080FC9AC
gUnknown_080FC9AC:
    .string "地底大陸\0"

    .align 2
    .global gUnknown_080FC9B8
gUnknown_080FC9B8:
    .string "魔境\0"

    .align 2
    .global gUnknown_080FC9C0
gUnknown_080FC9C0:
    .string "ジェフ死亡\0"

    .align 2
    .global gUnknown_080FC9CC
gUnknown_080FC9CC:
    .string "死亡\0"

    .align 2
    .global gUnknown_080FC9D4
gUnknown_080FC9D4:
    .string "ネス家くらい\0"

    .align 2
    .global gUnknown_080FC9E4
gUnknown_080FC9E4:
    .string "黒ベタ\0"

    .align 2
    .global gUnknown_080FC9EC
gUnknown_080FC9EC:
    .string "ネス過去の家４\0"

    .align 2
    .global gUnknown_080FC9FC
gUnknown_080FC9FC:
    .string "ネス過去の家３\0"

    .align 2
    .global gUnknown_080FCA0C
gUnknown_080FCA0C:
    .string "ネス過去の家２\0"

    .align 2
    .global gUnknown_080FCA1C
gUnknown_080FCA1C:
    .string "ネス過去の家１\0"

    .align 2
    .global gUnknown_080FCA2C
gUnknown_080FCA2C:
    .string "空\0"

    .align 2
    .global gUnknown_080FCA30
gUnknown_080FCA30:
    .string "ムーンサイドＣ\0"

    .align 2
    .global gUnknown_080FCA40
gUnknown_080FCA40:
    .string "ムーンサイドＢ\0"

    .align 2
    .global gUnknown_080FCA50
gUnknown_080FCA50:
    .string "ムーンサイドＡ\0"

    .align 2
    .global gUnknown_080FCA60
gUnknown_080FCA60:
    .string "ムーンサイドＲ０４\0"

    .align 2
    .global gUnknown_080FCA74
gUnknown_080FCA74:
    .string "ムーンサイド\0"

    .align 2
    .global gUnknown_080FCA84
gUnknown_080FCA84:
    .string "自転車２\0"

    .align 2
    .global gUnknown_080FCA90
gUnknown_080FCA90:
    .string "自転車１\0"

    .align 2
    .global gUnknown_080FCA9C
gUnknown_080FCA9C:
    .string "ドコからフォーサイド\0"

    .align 2
    .global gUnknown_080FCAB4
gUnknown_080FCAB4:
    .string "スリークからドコ\0"

    .align 2
    .global gUnknown_080FCAC8
gUnknown_080FCAC8:
    .word gUnknown_03002F10
    .word 0
    .word gUnknown_03002F10+0x40
    .word 2
    .word gUnknown_03002F10+0x240
    .word 96
    .word gUnknown_03002F10+0x280
    .word 98
    .word gUnknown_03002F10+0x2C0
    .word 100
    .word gUnknown_03002F10+0x80
    .word 4
    .word gUnknown_03002F10+0x40
    .word 2
    .word gUnknown_03002F10+0x240
    .word 96
    .word gUnknown_03002F10+0x280
    .word 98
    .word gUnknown_03002F10+0x40
    .word 2
    .word gUnknown_03002F10+0x280
    .word 98

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
    .string "の\0"

    .align 2
    .global gUnknown_080FCC04
gUnknown_080FCC04:
    .string "マ\0"

    .align 2
    .global gUnknown_080FCC08
gUnknown_080FCC08:
    .string "パ\0"

    .align 2
    .global gUnknown_080FCC0C
gUnknown_080FCC0C:
    .asciz "VEND(%d) PMAX(%d)\n"

    .align 2
    .global gUnknown_080FCC20
gUnknown_080FCC20:
    .word gUnknown_082D4690
    .word gUnknown_082D472C
    .word gUnknown_082D47C8
    .word gUnknown_082D4864
    .word gUnknown_082D4900
    .word gUnknown_082D499C
    .word gUnknown_082D4B70
    .word gUnknown_082D4B70
    .word gUnknown_082D4AD4
    .word gUnknown_082D4B70
    .word gUnknown_082D4A38

    .global gUnknown_080FCC4C
gUnknown_080FCC4C:
    .incbin "baserom.gba", 0x000FCC4C, 0x14

    .global gUnknown_080FCC60
gUnknown_080FCC60:
    .asciz "ANIM(%d)\n"

    .align 2
    .global gUnknown_080FCC6C
gUnknown_080FCC6C:
    .asciz "VEND(%d) PMAX(%d)\n"

    .align 2
    .global gUnknown_080FCC80
gUnknown_080FCC80:
    .word gUnknown_082D4690
    .word gUnknown_082D472C
    .word gUnknown_082D47C8
    .word gUnknown_082D4864
    .word gUnknown_082D4900
    .word gUnknown_082D499C
    .word gUnknown_082D4B70
    .word gUnknown_082D4B70
    .word gUnknown_082D4B70
    .word gUnknown_082D4B70
    .word gUnknown_082D4A38

    .global gUnknown_080FCCAC
gUnknown_080FCCAC:
    .asciz "CHAR(%d)\n"

    .align 2
    .global gUnknown_080FCCB8
gUnknown_080FCCB8:
    .asciz "ANIM(%d)\n"

    .align 2
    .global gUnknown_080FCCC4
gUnknown_080FCCC4:
    .asciz "VEND(%d) PMAX(%d)\n"

    .align 2
    .global gUnknown_080FCCD8
gUnknown_080FCCD8:
    .asciz "BICYCLE NG(%d)\n"

    .align 2
    .global gUnknown_080FCCE8
gUnknown_080FCCE8:
    .asciz "BICYCLE OK(%d)n"

    .align 2
    .global gUnknown_080FCCF8
gUnknown_080FCCF8:
    .asciz "PRI\n"

    .align 2
    .global gUnknown_080FCD00
gUnknown_080FCD00:
    .asciz "XX(%ld) YY(%ld)\n"

    .align 2
    .global gUnknown_080FCD14
gUnknown_080FCD14:
    .asciz "VEND(%d) PMAX(%d)\n"

    .align 2
    .global gUnknown_080FCD28
gUnknown_080FCD28:
    .asciz "ENOUT\n"

    .align 2
    .global gUnknown_080FCD30
gUnknown_080FCD30:
    .asciz "ATTR\n"

    .align 2
    .global gUnknown_080FCD38
gUnknown_080FCD38:
    .asciz "PSTOP\n"

    .align 2
    .global gUnknown_080FCD40
gUnknown_080FCD40:
    .asciz "XX(%ld) YY(%ld)\n"

    .align 2
    .global gUnknown_080FCD54
gUnknown_080FCD54:
    .asciz "VEND(%d) PMAX(%d)\n"

    .align 2
    .global gUnknown_080FCD68
gUnknown_080FCD68:
    .asciz "PRI ON\n"

    .align 2
    .global gUnknown_080FCD70
gUnknown_080FCD70:
    .asciz "XX(%ld) YY(%ld)\n"

    .align 2
    .global gUnknown_080FCD84
gUnknown_080FCD84:
    .asciz "MIZU_ASAI\n"

    .align 2
    .global gUnknown_080FCD90
gUnknown_080FCD90:
    .asciz "MIZU_FUKAI\n"

    .align 2
    .global gUnknown_080FCD9C
gUnknown_080FCD9C:
    .asciz "MIZU_HASIGO\n"

    .align 2
    .global gUnknown_080FCDAC
gUnknown_080FCDAC:
    .asciz "SABAKU\n"

    .align 2
    .global gUnknown_080FCDB4
gUnknown_080FCDB4:
    .asciz "HASIGO\n"

    .align 2
    .global gUnknown_080FCDBC
gUnknown_080FCDBC:
    .asciz "NAWA\n"

    .align 2
    .global gUnknown_080FCDC4
gUnknown_080FCDC4:
    .asciz "ESC L UP\n"

    .align 2
    .global gUnknown_080FCDD0
gUnknown_080FCDD0:
    .asciz "ESC L DOWN\n"

    .align 2
    .global gUnknown_080FCDDC
gUnknown_080FCDDC:
    .asciz "ESC L EXIT\n"

    .align 2
    .global gUnknown_080FCDE8
gUnknown_080FCDE8:
    .asciz "ESC R UP\n"

    .align 2
    .global gUnknown_080FCDF4
gUnknown_080FCDF4:
    .asciz "ESC R DOWN\n"

    .align 2
    .global gUnknown_080FCE00
gUnknown_080FCE00:
    .asciz "ESC R EXIT\n"

    .align 2
    .global gUnknown_080FCE0C
gUnknown_080FCE0C:
    .asciz "STEP\n"

    .align 2
    .global gUnknown_080FCE14
gUnknown_080FCE14:
    .asciz "STEPIN LD\n"

    .align 2
    .global gUnknown_080FCE20
gUnknown_080FCE20:
    .asciz "STEPIN LU\n"

    .align 2
    .global gUnknown_080FCE2C
gUnknown_080FCE2C:
    .asciz "STEPIN RD\n"

    .align 2
    .global gUnknown_080FCE38
gUnknown_080FCE38:
    .asciz "STEPIN RU\n"

    .align 2
    .global gUnknown_080FCE44
gUnknown_080FCE44:
    .incbin "baserom.gba", 0x000FCE44, 0x8

    .global gUnknown_080FCE4C
gUnknown_080FCE4C:
    .incbin "graphics/unknown_palette_080FCE4C.gbapal"

    .global gUnknown_080FCE6C
gUnknown_080FCE6C:
    .incbin "baserom.gba", 0x000FCE6C, 0xA000

    .global gUnknown_08106E6C
gUnknown_08106E6C:
    .string "６ー１６Ｘ１６@@\0"

    .align 2
    .global gUnknown_08106E80
gUnknown_08106E80:
    .string "５ー１６Ｘ８@@\0"

    .align 2
    .global gUnknown_08106E90
gUnknown_08106E90:
    .string "４ー　８Ｘ８@@\0"

    .align 2
    .global gUnknown_08106EA0
gUnknown_08106EA0:
    .string "３ー　４Ｘ８@@\0"

    .align 2
    .global gUnknown_08106EB0
gUnknown_08106EB0:
    .string "２ー　８Ｘ４@@\0"

    .align 2
    .global gUnknown_08106EC0
gUnknown_08106EC0:
    .string "１ー　４Ｘ４@@\0"

    .align 2
    .global gUnknown_08106ED0
gUnknown_08106ED0:
    .string "未登録@@\0"

    .align 2
    .global MPlyJmpTbl
MPlyJmpTbl:
    .word ply_fine
    .word ply_goto
    .word ply_patt
    .word ply_pend
    .word ply_rept
    .word ply_fine
    .word ply_fine
    .word ply_fine
    .word ply_fine
    .word ply_prio
    .word ply_tempo
    .word ply_keysh
    .word ply_voice
    .word ply_vol
    .word ply_pan
    .word ply_bend
    .word ply_bendr
    .word ply_lfos_rev01
    .word ply_lfodl
    .word ply_mod_rev01
    .word ply_modt
    .word ply_fine
    .word ply_fine
    .word ply_tune
    .word ply_fine
    .word ply_fine
    .word ply_fine
    .word ply_port
    .word ply_fine
    .word ply_endtie_rev01
    .word SampFreqSet_rev01
    .word TrackStop_rev01
    .word FadeOutBody_rev01
    .word TrkVolPitSet_rev01
    .word ClearChain
    .word SoundMainBTM

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
    .word ply_xxx
    .word ply_xwave
    .word ply_xtype
    .word ply_xxx
    .word ply_xatta
    .word ply_xdeca
    .word ply_xsust
    .word ply_xrele
    .word ply_xiecv
    .word ply_xiecl
    .word ply_xleng
    .word ply_xswee

@    .global gMPlayTable
@gMPlayTable:
@    .incbin "baserom.gba", 0x0010B50C, 0x24
@
@    .global gSongTable
@gSongTable:
@    .incbin "baserom.gba", 0x0010B530, 0x1AC204
