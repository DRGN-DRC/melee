.include "macros.inc"
.file "psdisptev.c"

# 0x00000000 - 0x00000818
.text
.balign 4

.fn psSetupTevCommon, global
/* 00000000 00000080  7C 08 02 A6 */	mflr r0
/* 00000004 00000084  38 60 00 00 */	li r3, 0x0
/* 00000008 00000088  90 01 00 04 */	stw r0, 0x4(r1)
/* 0000000C 0000008C  38 80 00 00 */	li r4, 0x0
/* 00000010 00000090  38 A0 00 00 */	li r5, 0x0
/* 00000014 00000094  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000018 00000098  38 C0 00 04 */	li r6, 0x4
/* 0000001C 0000009C  48 00 00 01 */	bl GXSetTevOrder
/* 00000020 000000A0  38 60 00 00 */	li r3, 0x0
/* 00000024 000000A4  38 80 00 00 */	li r4, 0x0
/* 00000028 000000A8  38 A0 00 00 */	li r5, 0x0
/* 0000002C 000000AC  38 C0 00 00 */	li r6, 0x0
/* 00000030 000000B0  38 E0 00 01 */	li r7, 0x1
/* 00000034 000000B4  39 00 00 00 */	li r8, 0x0
/* 00000038 000000B8  48 00 00 01 */	bl GXSetTevColorOp
/* 0000003C 000000BC  38 60 00 00 */	li r3, 0x0
/* 00000040 000000C0  38 80 00 00 */	li r4, 0x0
/* 00000044 000000C4  38 A0 00 00 */	li r5, 0x0
/* 00000048 000000C8  38 C0 00 00 */	li r6, 0x0
/* 0000004C 000000CC  38 E0 00 01 */	li r7, 0x1
/* 00000050 000000D0  39 00 00 00 */	li r8, 0x0
/* 00000054 000000D4  48 00 00 01 */	bl GXSetTevAlphaOp
/* 00000058 000000D8  38 60 00 01 */	li r3, 0x1
/* 0000005C 000000DC  38 80 00 00 */	li r4, 0x0
/* 00000060 000000E0  38 A0 00 00 */	li r5, 0x0
/* 00000064 000000E4  38 C0 00 04 */	li r6, 0x4
/* 00000068 000000E8  48 00 00 01 */	bl GXSetTevOrder
/* 0000006C 000000EC  38 60 00 01 */	li r3, 0x1
/* 00000070 000000F0  38 80 00 00 */	li r4, 0x0
/* 00000074 000000F4  38 A0 00 00 */	li r5, 0x0
/* 00000078 000000F8  38 C0 00 00 */	li r6, 0x0
/* 0000007C 000000FC  38 E0 00 01 */	li r7, 0x1
/* 00000080 00000100  39 00 00 00 */	li r8, 0x0
/* 00000084 00000104  48 00 00 01 */	bl GXSetTevColorOp
/* 00000088 00000108  38 60 00 01 */	li r3, 0x1
/* 0000008C 0000010C  38 80 00 00 */	li r4, 0x0
/* 00000090 00000110  38 A0 00 00 */	li r5, 0x0
/* 00000094 00000114  38 C0 00 00 */	li r6, 0x0
/* 00000098 00000118  38 E0 00 01 */	li r7, 0x1
/* 0000009C 0000011C  39 00 00 00 */	li r8, 0x0
/* 000000A0 00000120  48 00 00 01 */	bl GXSetTevAlphaOp
/* 000000A4 00000124  38 60 00 02 */	li r3, 0x2
/* 000000A8 00000128  38 80 00 00 */	li r4, 0x0
/* 000000AC 0000012C  38 A0 00 00 */	li r5, 0x0
/* 000000B0 00000130  38 C0 00 04 */	li r6, 0x4
/* 000000B4 00000134  48 00 00 01 */	bl GXSetTevOrder
/* 000000B8 00000138  38 60 00 02 */	li r3, 0x2
/* 000000BC 0000013C  38 80 00 00 */	li r4, 0x0
/* 000000C0 00000140  38 A0 00 00 */	li r5, 0x0
/* 000000C4 00000144  38 C0 00 00 */	li r6, 0x0
/* 000000C8 00000148  38 E0 00 01 */	li r7, 0x1
/* 000000CC 0000014C  39 00 00 00 */	li r8, 0x0
/* 000000D0 00000150  48 00 00 01 */	bl GXSetTevColorOp
/* 000000D4 00000154  38 60 00 02 */	li r3, 0x2
/* 000000D8 00000158  38 80 00 00 */	li r4, 0x0
/* 000000DC 0000015C  38 A0 00 00 */	li r5, 0x0
/* 000000E0 00000160  38 C0 00 00 */	li r6, 0x0
/* 000000E4 00000164  38 E0 00 01 */	li r7, 0x1
/* 000000E8 00000168  39 00 00 00 */	li r8, 0x0
/* 000000EC 0000016C  48 00 00 01 */	bl GXSetTevAlphaOp
/* 000000F0 00000170  38 60 00 00 */	li r3, 0x0
/* 000000F4 00000174  38 80 00 00 */	li r4, 0x0
/* 000000F8 00000178  38 A0 00 00 */	li r5, 0x0
/* 000000FC 0000017C  48 00 00 01 */	bl GXSetTevSwapMode
/* 00000100 00000180  38 60 00 01 */	li r3, 0x1
/* 00000104 00000184  38 80 00 00 */	li r4, 0x0
/* 00000108 00000188  38 A0 00 00 */	li r5, 0x0
/* 0000010C 0000018C  48 00 00 01 */	bl GXSetTevSwapMode
/* 00000110 00000190  38 60 00 02 */	li r3, 0x2
/* 00000114 00000194  38 80 00 00 */	li r4, 0x0
/* 00000118 00000198  38 A0 00 00 */	li r5, 0x0
/* 0000011C 0000019C  48 00 00 01 */	bl GXSetTevSwapMode
/* 00000120 000001A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000124 000001A4  38 21 00 08 */	addi r1, r1, 0x8
/* 00000128 000001A8  7C 08 03 A6 */	mtlr r0
/* 0000012C 000001AC  4E 80 00 20 */	blr
.endfn psSetupTevCommon

.fn psSetupTevInvalidState, global
/* 00000130 000001B0  38 00 FF FF */	li r0, -0x1
/* 00000134 000001B4  90 00 00 00 */	stw r0, prevTev@sda21(r0)
/* 00000138 000001B8  4E 80 00 20 */	blr
.endfn psSetupTevInvalidState

.fn psSetupTev, global
/* 0000013C 000001BC  7C 08 02 A6 */	mflr r0
/* 00000140 000001C0  3C 80 00 00 */	lis r4, ftKb_DkSpecialNLoop_IASA+0xA0@ha
/* 00000144 000001C4  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000148 000001C8  38 C4 00 00 */	addi r6, r4, ftKb_DkSpecialNLoop_IASA+0xA0@l
/* 0000014C 000001CC  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000150 000001D0  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 00000154 000001D4  80 00 00 00 */	lwz r0, prevTev@sda21(r0)
/* 00000158 000001D8  7C A5 30 38 */	and r5, r5, r6
/* 0000015C 000001DC  7C 05 00 40 */	cmplw r5, r0
/* 00000160 000001E0  41 82 06 A8 */	beq .L_00000808
/* 00000164 000001E4  90 A0 00 00 */	stw r5, prevTev@sda21(r0)
/* 00000168 000001E8  80 A0 00 00 */	lwz r5, prevTev@sda21(r0)
/* 0000016C 000001EC  2C 05 00 00 */	cmpwi r5, 0x0
/* 00000170 000001F0  41 82 01 A0 */	beq .L_00000310
/* 00000174 000001F4  40 80 00 80 */	bge .L_000001F4
/* 00000178 000001F8  7C 05 20 00 */	cmpw r5, r4
/* 0000017C 000001FC  41 82 06 08 */	beq .L_00000784
/* 00000180 00000200  40 80 00 48 */	bge .L_000001C8
/* 00000184 00000204  3C 80 80 00 */	lis r4, 0x8000
/* 00000188 00000208  38 04 04 00 */	addi r0, r4, 0x400
/* 0000018C 0000020C  7C 05 00 00 */	cmpw r5, r0
/* 00000190 00000210  41 82 02 90 */	beq .L_00000420
/* 00000194 00000214  40 80 00 24 */	bge .L_000001B8
/* 00000198 00000218  38 04 00 80 */	addi r0, r4, 0x80
/* 0000019C 0000021C  7C 05 00 00 */	cmpw r5, r0
/* 000001A0 00000220  41 82 00 B8 */	beq .L_00000258
/* 000001A4 00000224  40 80 06 64 */	bge .L_00000808
/* 000001A8 00000228  38 04 00 01 */	addi r0, r4, 0x1
/* 000001AC 0000022C  7C 05 00 00 */	cmpw r5, r0
/* 000001B0 00000230  40 80 06 58 */	bge .L_00000808
/* 000001B4 00000234  48 00 00 BC */	b .L_00000270
.L_000001B8:
/* 000001B8 00000238  38 04 04 80 */	addi r0, r4, 0x480
/* 000001BC 0000023C  7C 05 00 00 */	cmpw r5, r0
/* 000001C0 00000240  41 82 01 A8 */	beq .L_00000368
/* 000001C4 00000244  48 00 06 44 */	b .L_00000808
.L_000001C8:
/* 000001C8 00000248  38 04 00 00 */	addi r0, r4, ftKb_DkSpecialNLoop_IASA+0x20@l
/* 000001CC 0000024C  7C 05 00 00 */	cmpw r5, r0
/* 000001D0 00000250  41 82 03 EC */	beq .L_000005BC
/* 000001D4 00000254  40 80 00 14 */	bge .L_000001E8
/* 000001D8 00000258  38 04 00 00 */	addi r0, r4, ftKb_DkSpecialAirNLoop_Anim+0x40@l
/* 000001DC 0000025C  7C 05 00 00 */	cmpw r5, r0
/* 000001E0 00000260  41 82 05 8C */	beq .L_0000076C
/* 000001E4 00000264  48 00 06 24 */	b .L_00000808
.L_000001E8:
/* 000001E8 00000268  7C 05 30 00 */	cmpw r5, r6
/* 000001EC 0000026C  41 82 04 58 */	beq .L_00000644
/* 000001F0 00000270  48 00 06 18 */	b .L_00000808
.L_000001F4:
/* 000001F4 00000274  3C 80 00 10 */	lis r4, 0x10
/* 000001F8 00000278  7C 05 20 00 */	cmpw r5, r4
/* 000001FC 0000027C  41 82 05 18 */	beq .L_00000714
/* 00000200 00000280  40 80 00 28 */	bge .L_00000228
/* 00000204 00000284  2C 05 04 00 */	cmpwi r5, 0x400
/* 00000208 00000288  41 82 02 A0 */	beq .L_000004A8
/* 0000020C 0000028C  40 80 00 10 */	bge .L_0000021C
/* 00000210 00000290  2C 05 00 80 */	cmpwi r5, 0x80
/* 00000214 00000294  41 82 00 E4 */	beq .L_000002F8
/* 00000218 00000298  48 00 05 F0 */	b .L_00000808
.L_0000021C:
/* 0000021C 0000029C  2C 05 04 80 */	cmpwi r5, 0x480
/* 00000220 000002A0  41 82 02 88 */	beq .L_000004A8
/* 00000224 000002A4  48 00 05 E4 */	b .L_00000808
.L_00000228:
/* 00000228 000002A8  38 04 04 00 */	addi r0, r4, 0x400
/* 0000022C 000002AC  7C 05 00 00 */	cmpw r5, r0
/* 00000230 000002B0  41 82 02 D0 */	beq .L_00000500
/* 00000234 000002B4  40 80 00 14 */	bge .L_00000248
/* 00000238 000002B8  38 04 00 80 */	addi r0, r4, 0x80
/* 0000023C 000002BC  7C 05 00 00 */	cmpw r5, r0
/* 00000240 000002C0  41 82 04 BC */	beq .L_000006FC
/* 00000244 000002C4  48 00 05 C4 */	b .L_00000808
.L_00000248:
/* 00000248 000002C8  38 04 04 80 */	addi r0, r4, 0x480
/* 0000024C 000002CC  7C 05 00 00 */	cmpw r5, r0
/* 00000250 000002D0  41 82 02 E4 */	beq .L_00000534
/* 00000254 000002D4  48 00 05 B4 */	b .L_00000808
.L_00000258:
/* 00000258 000002D8  80 03 00 04 */	lwz r0, 0x4(r3)
/* 0000025C 000002DC  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000260 000002E0  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000264 000002E4  80 00 00 00 */	lwz r0, prevTev@sda21(r0)
/* 00000268 000002E8  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 0000026C 000002EC  90 00 00 00 */	stw r0, prevTev@sda21(r0)
.L_00000270:
/* 00000270 000002F0  38 60 00 02 */	li r3, 0x2
/* 00000274 000002F4  48 00 00 01 */	bl GXSetNumTevStages
/* 00000278 000002F8  38 60 00 00 */	li r3, 0x0
/* 0000027C 000002FC  48 00 00 01 */	bl GXSetNumTexGens
/* 00000280 00000300  38 60 00 00 */	li r3, 0x0
/* 00000284 00000304  38 80 00 FF */	li r4, 0xff
/* 00000288 00000308  38 A0 00 FF */	li r5, 0xff
/* 0000028C 0000030C  38 C0 00 04 */	li r6, 0x4
/* 00000290 00000310  48 00 00 01 */	bl GXSetTevOrder
/* 00000294 00000314  38 60 00 00 */	li r3, 0x0
/* 00000298 00000318  38 80 00 0F */	li r4, 0xf
/* 0000029C 0000031C  38 A0 00 06 */	li r5, 0x6
/* 000002A0 00000320  38 C0 00 0A */	li r6, 0xa
/* 000002A4 00000324  38 E0 00 0F */	li r7, 0xf
/* 000002A8 00000328  48 00 00 01 */	bl GXSetTevColorIn
/* 000002AC 0000032C  38 60 00 00 */	li r3, 0x0
/* 000002B0 00000330  38 80 00 03 */	li r4, 0x3
/* 000002B4 00000334  38 A0 00 07 */	li r5, 0x7
/* 000002B8 00000338  38 C0 00 07 */	li r6, 0x7
/* 000002BC 0000033C  38 E0 00 07 */	li r7, 0x7
/* 000002C0 00000340  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000002C4 00000344  38 60 00 01 */	li r3, 0x1
/* 000002C8 00000348  38 80 00 0F */	li r4, 0xf
/* 000002CC 0000034C  38 A0 00 02 */	li r5, 0x2
/* 000002D0 00000350  38 C0 00 00 */	li r6, 0x0
/* 000002D4 00000354  38 E0 00 0F */	li r7, 0xf
/* 000002D8 00000358  48 00 00 01 */	bl GXSetTevColorIn
/* 000002DC 0000035C  38 60 00 01 */	li r3, 0x1
/* 000002E0 00000360  38 80 00 07 */	li r4, 0x7
/* 000002E4 00000364  38 A0 00 01 */	li r5, 0x1
/* 000002E8 00000368  38 C0 00 00 */	li r6, 0x0
/* 000002EC 0000036C  38 E0 00 07 */	li r7, 0x7
/* 000002F0 00000370  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000002F4 00000374  48 00 05 14 */	b .L_00000808
.L_000002F8:
/* 000002F8 00000378  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000002FC 0000037C  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000300 00000380  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000304 00000384  80 00 00 00 */	lwz r0, prevTev@sda21(r0)
/* 00000308 00000388  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 0000030C 0000038C  90 00 00 00 */	stw r0, prevTev@sda21(r0)
.L_00000310:
/* 00000310 00000390  38 60 00 01 */	li r3, 0x1
/* 00000314 00000394  48 00 00 01 */	bl GXSetNumTevStages
/* 00000318 00000398  38 60 00 00 */	li r3, 0x0
/* 0000031C 0000039C  48 00 00 01 */	bl GXSetNumTexGens
/* 00000320 000003A0  38 60 00 00 */	li r3, 0x0
/* 00000324 000003A4  38 80 00 FF */	li r4, 0xff
/* 00000328 000003A8  38 A0 00 FF */	li r5, 0xff
/* 0000032C 000003AC  38 C0 00 04 */	li r6, 0x4
/* 00000330 000003B0  48 00 00 01 */	bl GXSetTevOrder
/* 00000334 000003B4  38 60 00 00 */	li r3, 0x0
/* 00000338 000003B8  38 80 00 02 */	li r4, 0x2
/* 0000033C 000003BC  38 A0 00 0F */	li r5, 0xf
/* 00000340 000003C0  38 C0 00 0F */	li r6, 0xf
/* 00000344 000003C4  38 E0 00 0F */	li r7, 0xf
/* 00000348 000003C8  48 00 00 01 */	bl GXSetTevColorIn
/* 0000034C 000003CC  38 60 00 00 */	li r3, 0x0
/* 00000350 000003D0  38 80 00 01 */	li r4, 0x1
/* 00000354 000003D4  38 A0 00 07 */	li r5, 0x7
/* 00000358 000003D8  38 C0 00 07 */	li r6, 0x7
/* 0000035C 000003DC  38 E0 00 07 */	li r7, 0x7
/* 00000360 000003E0  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000364 000003E4  48 00 04 A4 */	b .L_00000808
.L_00000368:
/* 00000368 000003E8  38 60 00 03 */	li r3, 0x3
/* 0000036C 000003EC  48 00 00 01 */	bl GXSetNumTevStages
/* 00000370 000003F0  38 60 00 01 */	li r3, 0x1
/* 00000374 000003F4  48 00 00 01 */	bl GXSetNumTexGens
/* 00000378 000003F8  38 60 00 00 */	li r3, 0x0
/* 0000037C 000003FC  38 80 00 00 */	li r4, 0x0
/* 00000380 00000400  38 A0 00 00 */	li r5, 0x0
/* 00000384 00000404  38 C0 00 04 */	li r6, 0x4
/* 00000388 00000408  48 00 00 01 */	bl GXSetTevOrder
/* 0000038C 0000040C  38 60 00 00 */	li r3, 0x0
/* 00000390 00000410  38 80 00 04 */	li r4, 0x4
/* 00000394 00000414  38 A0 00 02 */	li r5, 0x2
/* 00000398 00000418  38 C0 00 08 */	li r6, 0x8
/* 0000039C 0000041C  38 E0 00 0F */	li r7, 0xf
/* 000003A0 00000420  48 00 00 01 */	bl GXSetTevColorIn
/* 000003A4 00000424  38 60 00 00 */	li r3, 0x0
/* 000003A8 00000428  38 80 00 02 */	li r4, 0x2
/* 000003AC 0000042C  38 A0 00 01 */	li r5, 0x1
/* 000003B0 00000430  38 C0 00 04 */	li r6, 0x4
/* 000003B4 00000434  38 E0 00 07 */	li r7, 0x7
/* 000003B8 00000438  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000003BC 0000043C  38 60 00 01 */	li r3, 0x1
/* 000003C0 00000440  38 80 00 0F */	li r4, 0xf
/* 000003C4 00000444  38 A0 00 06 */	li r5, 0x6
/* 000003C8 00000448  38 C0 00 00 */	li r6, 0x0
/* 000003CC 0000044C  38 E0 00 0F */	li r7, 0xf
/* 000003D0 00000450  48 00 00 01 */	bl GXSetTevColorIn
/* 000003D4 00000454  38 60 00 01 */	li r3, 0x1
/* 000003D8 00000458  38 80 00 07 */	li r4, 0x7
/* 000003DC 0000045C  38 A0 00 03 */	li r5, 0x3
/* 000003E0 00000460  38 C0 00 00 */	li r6, 0x0
/* 000003E4 00000464  38 E0 00 07 */	li r7, 0x7
/* 000003E8 00000468  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000003EC 0000046C  38 60 00 02 */	li r3, 0x2
/* 000003F0 00000470  38 80 00 0F */	li r4, 0xf
/* 000003F4 00000474  38 A0 00 0A */	li r5, 0xa
/* 000003F8 00000478  38 C0 00 00 */	li r6, 0x0
/* 000003FC 0000047C  38 E0 00 0F */	li r7, 0xf
/* 00000400 00000480  48 00 00 01 */	bl GXSetTevColorIn
/* 00000404 00000484  38 60 00 02 */	li r3, 0x2
/* 00000408 00000488  38 80 00 00 */	li r4, 0x0
/* 0000040C 0000048C  38 A0 00 07 */	li r5, 0x7
/* 00000410 00000490  38 C0 00 07 */	li r6, 0x7
/* 00000414 00000494  38 E0 00 07 */	li r7, 0x7
/* 00000418 00000498  48 00 00 01 */	bl GXSetTevAlphaIn
/* 0000041C 0000049C  48 00 03 EC */	b .L_00000808
.L_00000420:
/* 00000420 000004A0  38 60 00 02 */	li r3, 0x2
/* 00000424 000004A4  48 00 00 01 */	bl GXSetNumTevStages
/* 00000428 000004A8  38 60 00 01 */	li r3, 0x1
/* 0000042C 000004AC  48 00 00 01 */	bl GXSetNumTexGens
/* 00000430 000004B0  38 60 00 00 */	li r3, 0x0
/* 00000434 000004B4  38 80 00 00 */	li r4, 0x0
/* 00000438 000004B8  38 A0 00 00 */	li r5, 0x0
/* 0000043C 000004BC  38 C0 00 04 */	li r6, 0x4
/* 00000440 000004C0  48 00 00 01 */	bl GXSetTevOrder
/* 00000444 000004C4  38 60 00 00 */	li r3, 0x0
/* 00000448 000004C8  38 80 00 0F */	li r4, 0xf
/* 0000044C 000004CC  38 A0 00 06 */	li r5, 0x6
/* 00000450 000004D0  38 C0 00 0A */	li r6, 0xa
/* 00000454 000004D4  38 E0 00 0F */	li r7, 0xf
/* 00000458 000004D8  48 00 00 01 */	bl GXSetTevColorIn
/* 0000045C 000004DC  38 60 00 00 */	li r3, 0x0
/* 00000460 000004E0  38 80 00 03 */	li r4, 0x3
/* 00000464 000004E4  38 A0 00 07 */	li r5, 0x7
/* 00000468 000004E8  38 C0 00 07 */	li r6, 0x7
/* 0000046C 000004EC  38 E0 00 07 */	li r7, 0x7
/* 00000470 000004F0  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000474 000004F4  38 60 00 01 */	li r3, 0x1
/* 00000478 000004F8  38 80 00 0F */	li r4, 0xf
/* 0000047C 000004FC  38 A0 00 08 */	li r5, 0x8
/* 00000480 00000500  38 C0 00 00 */	li r6, 0x0
/* 00000484 00000504  38 E0 00 0F */	li r7, 0xf
/* 00000488 00000508  48 00 00 01 */	bl GXSetTevColorIn
/* 0000048C 0000050C  38 60 00 01 */	li r3, 0x1
/* 00000490 00000510  38 80 00 07 */	li r4, 0x7
/* 00000494 00000514  38 A0 00 04 */	li r5, 0x4
/* 00000498 00000518  38 C0 00 00 */	li r6, 0x0
/* 0000049C 0000051C  38 E0 00 07 */	li r7, 0x7
/* 000004A0 00000520  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000004A4 00000524  48 00 03 64 */	b .L_00000808
.L_000004A8:
/* 000004A8 00000528  38 60 00 01 */	li r3, 0x1
/* 000004AC 0000052C  48 00 00 01 */	bl GXSetNumTevStages
/* 000004B0 00000530  38 60 00 01 */	li r3, 0x1
/* 000004B4 00000534  48 00 00 01 */	bl GXSetNumTexGens
/* 000004B8 00000538  38 60 00 00 */	li r3, 0x0
/* 000004BC 0000053C  38 80 00 00 */	li r4, 0x0
/* 000004C0 00000540  38 A0 00 00 */	li r5, 0x0
/* 000004C4 00000544  38 C0 00 04 */	li r6, 0x4
/* 000004C8 00000548  48 00 00 01 */	bl GXSetTevOrder
/* 000004CC 0000054C  38 60 00 00 */	li r3, 0x0
/* 000004D0 00000550  38 80 00 04 */	li r4, 0x4
/* 000004D4 00000554  38 A0 00 02 */	li r5, 0x2
/* 000004D8 00000558  38 C0 00 08 */	li r6, 0x8
/* 000004DC 0000055C  38 E0 00 0F */	li r7, 0xf
/* 000004E0 00000560  48 00 00 01 */	bl GXSetTevColorIn
/* 000004E4 00000564  38 60 00 00 */	li r3, 0x0
/* 000004E8 00000568  38 80 00 02 */	li r4, 0x2
/* 000004EC 0000056C  38 A0 00 01 */	li r5, 0x1
/* 000004F0 00000570  38 C0 00 04 */	li r6, 0x4
/* 000004F4 00000574  38 E0 00 07 */	li r7, 0x7
/* 000004F8 00000578  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000004FC 0000057C  48 00 03 0C */	b .L_00000808
.L_00000500:
/* 00000500 00000580  38 60 00 01 */	li r3, 0x1
/* 00000504 00000584  48 00 00 01 */	bl GXSetNumTevStages
/* 00000508 00000588  38 60 00 01 */	li r3, 0x1
/* 0000050C 0000058C  48 00 00 01 */	bl GXSetNumTexGens
/* 00000510 00000590  38 60 00 00 */	li r3, 0x0
/* 00000514 00000594  38 80 00 00 */	li r4, 0x0
/* 00000518 00000598  38 A0 00 00 */	li r5, 0x0
/* 0000051C 0000059C  38 C0 00 04 */	li r6, 0x4
/* 00000520 000005A0  48 00 00 01 */	bl GXSetTevOrder
/* 00000524 000005A4  38 60 00 00 */	li r3, 0x0
/* 00000528 000005A8  38 80 00 00 */	li r4, 0x0
/* 0000052C 000005AC  48 00 00 01 */	bl GXSetTevOp
/* 00000530 000005B0  48 00 02 D8 */	b .L_00000808
.L_00000534:
/* 00000534 000005B4  38 60 00 02 */	li r3, 0x2
/* 00000538 000005B8  48 00 00 01 */	bl GXSetNumTevStages
/* 0000053C 000005BC  38 60 00 01 */	li r3, 0x1
/* 00000540 000005C0  48 00 00 01 */	bl GXSetNumTexGens
/* 00000544 000005C4  38 60 00 00 */	li r3, 0x0
/* 00000548 000005C8  38 80 00 00 */	li r4, 0x0
/* 0000054C 000005CC  38 A0 00 00 */	li r5, 0x0
/* 00000550 000005D0  38 C0 00 04 */	li r6, 0x4
/* 00000554 000005D4  48 00 00 01 */	bl GXSetTevOrder
/* 00000558 000005D8  38 60 00 00 */	li r3, 0x0
/* 0000055C 000005DC  38 80 00 04 */	li r4, 0x4
/* 00000560 000005E0  38 A0 00 02 */	li r5, 0x2
/* 00000564 000005E4  38 C0 00 08 */	li r6, 0x8
/* 00000568 000005E8  38 E0 00 0F */	li r7, 0xf
/* 0000056C 000005EC  48 00 00 01 */	bl GXSetTevColorIn
/* 00000570 000005F0  38 60 00 00 */	li r3, 0x0
/* 00000574 000005F4  38 80 00 02 */	li r4, 0x2
/* 00000578 000005F8  38 A0 00 01 */	li r5, 0x1
/* 0000057C 000005FC  38 C0 00 04 */	li r6, 0x4
/* 00000580 00000600  38 E0 00 07 */	li r7, 0x7
/* 00000584 00000604  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000588 00000608  38 60 00 01 */	li r3, 0x1
/* 0000058C 0000060C  38 80 00 00 */	li r4, 0x0
/* 00000590 00000610  38 A0 00 0F */	li r5, 0xf
/* 00000594 00000614  38 C0 00 0F */	li r6, 0xf
/* 00000598 00000618  38 E0 00 0F */	li r7, 0xf
/* 0000059C 0000061C  48 00 00 01 */	bl GXSetTevColorIn
/* 000005A0 00000620  38 60 00 01 */	li r3, 0x1
/* 000005A4 00000624  38 80 00 07 */	li r4, 0x7
/* 000005A8 00000628  38 A0 00 05 */	li r5, 0x5
/* 000005AC 0000062C  38 C0 00 00 */	li r6, 0x0
/* 000005B0 00000630  38 E0 00 07 */	li r7, 0x7
/* 000005B4 00000634  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000005B8 00000638  48 00 02 50 */	b .L_00000808
.L_000005BC:
/* 000005BC 0000063C  38 60 00 02 */	li r3, 0x2
/* 000005C0 00000640  48 00 00 01 */	bl GXSetNumTevStages
/* 000005C4 00000644  38 60 00 01 */	li r3, 0x1
/* 000005C8 00000648  48 00 00 01 */	bl GXSetNumTexGens
/* 000005CC 0000064C  38 60 00 00 */	li r3, 0x0
/* 000005D0 00000650  38 80 00 00 */	li r4, 0x0
/* 000005D4 00000654  38 A0 00 00 */	li r5, 0x0
/* 000005D8 00000658  38 C0 00 04 */	li r6, 0x4
/* 000005DC 0000065C  48 00 00 01 */	bl GXSetTevOrder
/* 000005E0 00000660  38 60 00 00 */	li r3, 0x0
/* 000005E4 00000664  38 80 00 0F */	li r4, 0xf
/* 000005E8 00000668  38 A0 00 06 */	li r5, 0x6
/* 000005EC 0000066C  38 C0 00 0A */	li r6, 0xa
/* 000005F0 00000670  38 E0 00 0F */	li r7, 0xf
/* 000005F4 00000674  48 00 00 01 */	bl GXSetTevColorIn
/* 000005F8 00000678  38 60 00 00 */	li r3, 0x0
/* 000005FC 0000067C  38 80 00 07 */	li r4, 0x7
/* 00000600 00000680  38 A0 00 03 */	li r5, 0x3
/* 00000604 00000684  38 C0 00 05 */	li r6, 0x5
/* 00000608 00000688  38 E0 00 07 */	li r7, 0x7
/* 0000060C 0000068C  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000610 00000690  38 60 00 01 */	li r3, 0x1
/* 00000614 00000694  38 80 00 0F */	li r4, 0xf
/* 00000618 00000698  38 A0 00 08 */	li r5, 0x8
/* 0000061C 0000069C  38 C0 00 00 */	li r6, 0x0
/* 00000620 000006A0  38 E0 00 0F */	li r7, 0xf
/* 00000624 000006A4  48 00 00 01 */	bl GXSetTevColorIn
/* 00000628 000006A8  38 60 00 01 */	li r3, 0x1
/* 0000062C 000006AC  38 80 00 07 */	li r4, 0x7
/* 00000630 000006B0  38 A0 00 04 */	li r5, 0x4
/* 00000634 000006B4  38 C0 00 00 */	li r6, 0x0
/* 00000638 000006B8  38 E0 00 07 */	li r7, 0x7
/* 0000063C 000006BC  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000640 000006C0  48 00 01 C8 */	b .L_00000808
.L_00000644:
/* 00000644 000006C4  38 60 00 03 */	li r3, 0x3
/* 00000648 000006C8  48 00 00 01 */	bl GXSetNumTevStages
/* 0000064C 000006CC  38 60 00 01 */	li r3, 0x1
/* 00000650 000006D0  48 00 00 01 */	bl GXSetNumTexGens
/* 00000654 000006D4  38 60 00 00 */	li r3, 0x0
/* 00000658 000006D8  38 80 00 00 */	li r4, 0x0
/* 0000065C 000006DC  38 A0 00 00 */	li r5, 0x0
/* 00000660 000006E0  38 C0 00 04 */	li r6, 0x4
/* 00000664 000006E4  48 00 00 01 */	bl GXSetTevOrder
/* 00000668 000006E8  38 60 00 00 */	li r3, 0x0
/* 0000066C 000006EC  38 80 00 04 */	li r4, 0x4
/* 00000670 000006F0  38 A0 00 02 */	li r5, 0x2
/* 00000674 000006F4  38 C0 00 08 */	li r6, 0x8
/* 00000678 000006F8  38 E0 00 0F */	li r7, 0xf
/* 0000067C 000006FC  48 00 00 01 */	bl GXSetTevColorIn
/* 00000680 00000700  38 60 00 00 */	li r3, 0x0
/* 00000684 00000704  38 80 00 02 */	li r4, 0x2
/* 00000688 00000708  38 A0 00 01 */	li r5, 0x1
/* 0000068C 0000070C  38 C0 00 04 */	li r6, 0x4
/* 00000690 00000710  38 E0 00 07 */	li r7, 0x7
/* 00000694 00000714  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000698 00000718  38 60 00 01 */	li r3, 0x1
/* 0000069C 0000071C  38 80 00 0F */	li r4, 0xf
/* 000006A0 00000720  38 A0 00 06 */	li r5, 0x6
/* 000006A4 00000724  38 C0 00 00 */	li r6, 0x0
/* 000006A8 00000728  38 E0 00 0F */	li r7, 0xf
/* 000006AC 0000072C  48 00 00 01 */	bl GXSetTevColorIn
/* 000006B0 00000730  38 60 00 01 */	li r3, 0x1
/* 000006B4 00000734  38 80 00 07 */	li r4, 0x7
/* 000006B8 00000738  38 A0 00 03 */	li r5, 0x3
/* 000006BC 0000073C  38 C0 00 00 */	li r6, 0x0
/* 000006C0 00000740  38 E0 00 07 */	li r7, 0x7
/* 000006C4 00000744  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000006C8 00000748  38 60 00 02 */	li r3, 0x2
/* 000006CC 0000074C  38 80 00 0F */	li r4, 0xf
/* 000006D0 00000750  38 A0 00 0A */	li r5, 0xa
/* 000006D4 00000754  38 C0 00 00 */	li r6, 0x0
/* 000006D8 00000758  38 E0 00 0F */	li r7, 0xf
/* 000006DC 0000075C  48 00 00 01 */	bl GXSetTevColorIn
/* 000006E0 00000760  38 60 00 02 */	li r3, 0x2
/* 000006E4 00000764  38 80 00 07 */	li r4, 0x7
/* 000006E8 00000768  38 A0 00 05 */	li r5, 0x5
/* 000006EC 0000076C  38 C0 00 00 */	li r6, 0x0
/* 000006F0 00000770  38 E0 00 07 */	li r7, 0x7
/* 000006F4 00000774  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000006F8 00000778  48 00 01 10 */	b .L_00000808
.L_000006FC:
/* 000006FC 0000077C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00000700 00000780  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000704 00000784  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000708 00000788  80 00 00 00 */	lwz r0, prevTev@sda21(r0)
/* 0000070C 0000078C  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000710 00000790  90 00 00 00 */	stw r0, prevTev@sda21(r0)
.L_00000714:
/* 00000714 00000794  38 60 00 01 */	li r3, 0x1
/* 00000718 00000798  48 00 00 01 */	bl GXSetNumTevStages
/* 0000071C 0000079C  38 60 00 00 */	li r3, 0x0
/* 00000720 000007A0  48 00 00 01 */	bl GXSetNumTexGens
/* 00000724 000007A4  38 60 00 00 */	li r3, 0x0
/* 00000728 000007A8  38 80 00 FF */	li r4, 0xff
/* 0000072C 000007AC  38 A0 00 FF */	li r5, 0xff
/* 00000730 000007B0  38 C0 00 04 */	li r6, 0x4
/* 00000734 000007B4  48 00 00 01 */	bl GXSetTevOrder
/* 00000738 000007B8  38 60 00 00 */	li r3, 0x0
/* 0000073C 000007BC  38 80 00 0A */	li r4, 0xa
/* 00000740 000007C0  38 A0 00 0F */	li r5, 0xf
/* 00000744 000007C4  38 C0 00 0F */	li r6, 0xf
/* 00000748 000007C8  38 E0 00 0F */	li r7, 0xf
/* 0000074C 000007CC  48 00 00 01 */	bl GXSetTevColorIn
/* 00000750 000007D0  38 60 00 00 */	li r3, 0x0
/* 00000754 000007D4  38 80 00 05 */	li r4, 0x5
/* 00000758 000007D8  38 A0 00 07 */	li r5, 0x7
/* 0000075C 000007DC  38 C0 00 07 */	li r6, 0x7
/* 00000760 000007E0  38 E0 00 07 */	li r7, 0x7
/* 00000764 000007E4  48 00 00 01 */	bl GXSetTevAlphaIn
/* 00000768 000007E8  48 00 00 A0 */	b .L_00000808
.L_0000076C:
/* 0000076C 000007EC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00000770 000007F0  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000774 000007F4  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000778 000007F8  80 00 00 00 */	lwz r0, prevTev@sda21(r0)
/* 0000077C 000007FC  54 00 06 6E */	rlwinm r0, r0, 0, 25, 23
/* 00000780 00000800  90 00 00 00 */	stw r0, prevTev@sda21(r0)
.L_00000784:
/* 00000784 00000804  38 60 00 02 */	li r3, 0x2
/* 00000788 00000808  48 00 00 01 */	bl GXSetNumTevStages
/* 0000078C 0000080C  38 60 00 00 */	li r3, 0x0
/* 00000790 00000810  48 00 00 01 */	bl GXSetNumTexGens
/* 00000794 00000814  38 60 00 00 */	li r3, 0x0
/* 00000798 00000818  38 80 00 FF */	li r4, 0xff
/* 0000079C 0000081C  38 A0 00 FF */	li r5, 0xff
/* 000007A0 00000820  38 C0 00 04 */	li r6, 0x4
/* 000007A4 00000824  48 00 00 01 */	bl GXSetTevOrder
/* 000007A8 00000828  38 60 00 00 */	li r3, 0x0
/* 000007AC 0000082C  38 80 00 0F */	li r4, 0xf
/* 000007B0 00000830  38 A0 00 06 */	li r5, 0x6
/* 000007B4 00000834  38 C0 00 0A */	li r6, 0xa
/* 000007B8 00000838  38 E0 00 0F */	li r7, 0xf
/* 000007BC 0000083C  48 00 00 01 */	bl GXSetTevColorIn
/* 000007C0 00000840  38 60 00 00 */	li r3, 0x0
/* 000007C4 00000844  38 80 00 07 */	li r4, 0x7
/* 000007C8 00000848  38 A0 00 03 */	li r5, 0x3
/* 000007CC 0000084C  38 C0 00 05 */	li r6, 0x5
/* 000007D0 00000850  38 E0 00 07 */	li r7, 0x7
/* 000007D4 00000854  48 00 00 01 */	bl GXSetTevAlphaIn
/* 000007D8 00000858  38 60 00 01 */	li r3, 0x1
/* 000007DC 0000085C  38 80 00 0F */	li r4, 0xf
/* 000007E0 00000860  38 A0 00 02 */	li r5, 0x2
/* 000007E4 00000864  38 C0 00 00 */	li r6, 0x0
/* 000007E8 00000868  38 E0 00 0F */	li r7, 0xf
/* 000007EC 0000086C  48 00 00 01 */	bl GXSetTevColorIn
/* 000007F0 00000870  38 60 00 01 */	li r3, 0x1
/* 000007F4 00000874  38 80 00 07 */	li r4, 0x7
/* 000007F8 00000878  38 A0 00 01 */	li r5, 0x1
/* 000007FC 0000087C  38 C0 00 00 */	li r6, 0x0
/* 00000800 00000880  38 E0 00 07 */	li r7, 0x7
/* 00000804 00000884  48 00 00 01 */	bl GXSetTevAlphaIn
.L_00000808:
/* 00000808 00000888  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000080C 0000088C  38 21 00 08 */	addi r1, r1, 0x8
/* 00000810 00000890  7C 08 03 A6 */	mtlr r0
/* 00000814 00000894  4E 80 00 20 */	blr
.endfn psSetupTev

# 0x00000000 - 0x00000008
.section .sbss, "wa", @nobits
.balign 8

.obj prevTev, global
	.skip 0x8
.endobj prevTev
