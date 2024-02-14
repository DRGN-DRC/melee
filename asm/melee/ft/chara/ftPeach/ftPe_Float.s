.include "macros.inc"
.file "ftPe_Float.c"

# 0x00000000 - 0x0000034C
.text
.balign 4

.fn ftPe_Float_CheckContinueInput, global
/* 00000000 00000040  80 80 00 00 */	lwz r4, p_ftCommonData@sda21(r0)
/* 00000004 00000044  38 A0 00 01 */	li r5, 0x1
/* 00000008 00000048  C0 23 06 24 */	lfs f1, 0x624(r3)
/* 0000000C 0000004C  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 00000010 00000050  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000014 00000054  4C 41 13 82 */	cror eq, gt, eq
/* 00000018 00000058  41 82 00 14 */	beq .L_0000002C
/* 0000001C 0000005C  80 03 06 5C */	lwz r0, 0x65c(r3)
/* 00000020 00000060  54 00 05 2B */	rlwinm. r0, r0, 0, 20, 21
/* 00000024 00000064  40 82 00 08 */	bne .L_0000002C
/* 00000028 00000068  38 A0 00 00 */	li r5, 0x0
.L_0000002C:
/* 0000002C 0000006C  7C A3 2B 78 */	mr r3, r5
/* 00000030 00000070  4E 80 00 20 */	blr
.endfn ftPe_Float_CheckContinueInput

.fn ftPe_8011BA54, global
/* 00000034 00000074  7C 08 02 A6 */	mflr r0
/* 00000038 00000078  38 A0 00 00 */	li r5, 0x0
/* 0000003C 0000007C  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000040 00000080  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000044 00000084  80 80 00 00 */	lwz r4, p_ftCommonData@sda21(r0)
/* 00000048 00000088  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 0000004C 0000008C  C0 04 00 88 */	lfs f0, 0x88(r4)
/* 00000050 00000090  C0 26 06 24 */	lfs f1, 0x624(r6)
/* 00000054 00000094  FC 00 00 50 */	fneg f0, f0
/* 00000058 00000098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000005C 0000009C  4C 40 13 82 */	cror eq, lt, eq
/* 00000060 000000A0  40 82 00 14 */	bne .L_00000074
/* 00000064 000000A4  80 06 06 5C */	lwz r0, 0x65c(r6)
/* 00000068 000000A8  54 00 05 2B */	rlwinm. r0, r0, 0, 20, 21
/* 0000006C 000000AC  41 82 00 08 */	beq .L_00000074
/* 00000070 000000B0  38 A0 00 01 */	li r5, 0x1
.L_00000074:
/* 00000074 000000B4  80 06 00 04 */	lwz r0, 0x4(r6)
/* 00000078 000000B8  2C 00 00 09 */	cmpwi r0, 0x9
/* 0000007C 000000BC  40 82 00 28 */	bne .L_000000A4
/* 00000080 000000C0  80 06 22 2C */	lwz r0, 0x222c(r6)
/* 00000084 000000C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000088 000000C8  41 82 00 1C */	beq .L_000000A4
/* 0000008C 000000CC  2C 05 00 00 */	cmpwi r5, 0x0
/* 00000090 000000D0  41 82 00 14 */	beq .L_000000A4
/* 00000094 000000D4  38 80 00 01 */	li r4, 0x1
/* 00000098 000000D8  48 00 00 01 */	bl ftPe_8011BB6C
/* 0000009C 000000DC  38 60 00 01 */	li r3, 0x1
/* 000000A0 000000E0  48 00 00 08 */	b .L_000000A8
.L_000000A4:
/* 000000A4 000000E4  38 60 00 00 */	li r3, 0x0
.L_000000A8:
/* 000000A8 000000E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 000000AC 000000EC  38 21 00 08 */	addi r1, r1, 0x8
/* 000000B0 000000F0  7C 08 03 A6 */	mtlr r0
/* 000000B4 000000F4  4E 80 00 20 */	blr
.endfn ftPe_8011BA54

.fn ftPe_8011BAD8, global
/* 000000B8 000000F8  7C 08 02 A6 */	mflr r0
/* 000000BC 000000FC  90 01 00 04 */	stw r0, 0x4(r1)
/* 000000C0 00000100  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 000000C4 00000104  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 000000C8 00000108  80 06 00 04 */	lwz r0, 0x4(r6)
/* 000000CC 0000010C  2C 00 00 09 */	cmpwi r0, 0x9
/* 000000D0 00000110  40 82 00 68 */	bne .L_00000138
/* 000000D4 00000114  C0 26 00 84 */	lfs f1, 0x84(r6)
/* 000000D8 00000118  C0 00 00 00 */	lfs f0, "@251"@sda21(r0)
/* 000000DC 0000011C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000000E0 00000120  4C 40 13 82 */	cror eq, lt, eq
/* 000000E4 00000124  40 82 00 54 */	bne .L_00000138
/* 000000E8 00000128  80 06 22 2C */	lwz r0, 0x222c(r6)
/* 000000EC 0000012C  2C 00 00 00 */	cmpwi r0, 0x0
/* 000000F0 00000130  41 82 00 48 */	beq .L_00000138
/* 000000F4 00000134  80 80 00 00 */	lwz r4, p_ftCommonData@sda21(r0)
/* 000000F8 00000138  38 A0 00 01 */	li r5, 0x1
/* 000000FC 0000013C  C0 26 06 24 */	lfs f1, 0x624(r6)
/* 00000100 00000140  C0 04 00 70 */	lfs f0, 0x70(r4)
/* 00000104 00000144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000108 00000148  4C 41 13 82 */	cror eq, gt, eq
/* 0000010C 0000014C  41 82 00 14 */	beq .L_00000120
/* 00000110 00000150  80 06 06 5C */	lwz r0, 0x65c(r6)
/* 00000114 00000154  54 00 05 2B */	rlwinm. r0, r0, 0, 20, 21
/* 00000118 00000158  40 82 00 08 */	bne .L_00000120
/* 0000011C 0000015C  38 A0 00 00 */	li r5, 0x0
.L_00000120:
/* 00000120 00000160  2C 05 00 00 */	cmpwi r5, 0x0
/* 00000124 00000164  41 82 00 14 */	beq .L_00000138
/* 00000128 00000168  38 80 00 01 */	li r4, 0x1
/* 0000012C 0000016C  48 00 00 01 */	bl ftPe_8011BB6C
/* 00000130 00000170  38 60 00 01 */	li r3, 0x1
/* 00000134 00000174  48 00 00 08 */	b .L_0000013C
.L_00000138:
/* 00000138 00000178  38 60 00 00 */	li r3, 0x0
.L_0000013C:
/* 0000013C 0000017C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000140 00000180  38 21 00 08 */	addi r1, r1, 0x8
/* 00000144 00000184  7C 08 03 A6 */	mtlr r0
/* 00000148 00000188  4E 80 00 20 */	blr
.endfn ftPe_8011BAD8

.fn ftPe_8011BB6C, global
/* 0000014C 0000018C  7C 08 02 A6 */	mflr r0
/* 00000150 00000190  38 A0 00 00 */	li r5, 0x0
/* 00000154 00000194  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000158 00000198  38 C0 00 00 */	li r6, 0x0
/* 0000015C 0000019C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000160 000001A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 00000164 000001A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 00000168 000001A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 0000016C 000001AC  7C 9D 23 78 */	mr r29, r4
/* 00000170 000001B0  38 80 01 55 */	li r4, 0x155
/* 00000174 000001B4  93 81 00 20 */	stw r28, 0x20(r1)
/* 00000178 000001B8  7C 7C 1B 78 */	mr r28, r3
/* 0000017C 000001BC  C0 20 00 00 */	lfs f1, "@251"@sda21(r0)
/* 00000180 000001C0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 00000184 000001C4  FC 60 08 90 */	fmr f3, f1
/* 00000188 000001C8  C0 40 00 00 */	lfs f2, "@252"@sda21(r0)
/* 0000018C 000001CC  83 DF 02 D4 */	lwz r30, 0x2d4(r31)
/* 00000190 000001D0  48 00 00 01 */	bl Fighter_ChangeMotionState
/* 00000194 000001D4  38 00 00 00 */	li r0, 0x0
/* 00000198 000001D8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0000019C 000001DC  90 1F 22 2C */	stw r0, 0x222c(r31)
/* 000001A0 000001E0  41 82 00 0C */	beq .L_000001AC
/* 000001A4 000001E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 000001A8 000001E8  D0 1F 22 30 */	stfs f0, 0x2230(r31)
.L_000001AC:
/* 000001AC 000001EC  C0 00 00 00 */	lfs f0, "@251"@sda21(r0)
/* 000001B0 000001F0  38 A0 00 01 */	li r5, 0x1
/* 000001B4 000001F4  38 7F 00 00 */	addi r3, r31, 0x0
/* 000001B8 000001F8  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 000001BC 000001FC  38 80 00 01 */	li r4, 0x1
/* 000001C0 00000200  88 1F 22 19 */	lbz r0, 0x2219(r31)
/* 000001C4 00000204  50 A0 3E 30 */	rlwimi r0, r5, 7, 24, 24
/* 000001C8 00000208  98 1F 22 19 */	stb r0, 0x2219(r31)
/* 000001CC 0000020C  48 00 00 01 */	bl ftParts_8007500C
/* 000001D0 00000210  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 000001D4 00000214  54 60 20 36 */	slwi r0, r3, 4
/* 000001D8 00000218  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 000001DC 0000021C  7F 83 E3 78 */	mr r3, r28
/* 000001E0 00000220  7C E4 00 2E */	lwzx r7, r4, r0
/* 000001E4 00000224  38 85 06 0C */	addi r4, r5, 0x60c
/* 000001E8 00000228  4C C6 31 82 */	crclr cr1eq
/* 000001EC 0000022C  38 A0 00 00 */	li r5, 0x0
/* 000001F0 00000230  38 C0 04 D4 */	li r6, 0x4d4
/* 000001F4 00000234  48 00 00 01 */	bl efAsync_Spawn
/* 000001F8 00000238  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000001FC 0000023C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 00000200 00000240  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 00000204 00000244  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 00000208 00000248  83 81 00 20 */	lwz r28, 0x20(r1)
/* 0000020C 0000024C  38 21 00 30 */	addi r1, r1, 0x30
/* 00000210 00000250  7C 08 03 A6 */	mtlr r0
/* 00000214 00000254  4E 80 00 20 */	blr
.endfn ftPe_8011BB6C

.fn ftPe_Float_Anim, global
/* 00000218 00000258  7C 08 02 A6 */	mflr r0
/* 0000021C 0000025C  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000220 00000260  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000224 00000264  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 00000228 00000268  C0 00 00 00 */	lfs f0, "@251"@sda21(r0)
/* 0000022C 0000026C  C0 24 22 30 */	lfs f1, 0x2230(r4)
/* 00000230 00000270  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000234 00000274  40 81 00 10 */	ble .L_00000244
/* 00000238 00000278  C0 00 00 00 */	lfs f0, "@252"@sda21(r0)
/* 0000023C 0000027C  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000240 00000280  D0 04 22 30 */	stfs f0, 0x2230(r4)
.L_00000244:
/* 00000244 00000284  C0 24 22 30 */	lfs f1, 0x2230(r4)
/* 00000248 00000288  C0 00 00 00 */	lfs f0, "@251"@sda21(r0)
/* 0000024C 0000028C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000250 00000290  4C 40 13 82 */	cror eq, lt, eq
/* 00000254 00000294  40 82 00 08 */	bne .L_0000025C
/* 00000258 00000298  48 00 00 01 */	bl ftPe_UpdateFloatDir
.L_0000025C:
/* 0000025C 0000029C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000260 000002A0  38 21 00 08 */	addi r1, r1, 0x8
/* 00000264 000002A4  7C 08 03 A6 */	mtlr r0
/* 00000268 000002A8  4E 80 00 20 */	blr
.endfn ftPe_Float_Anim

.fn ftPe_Float_IASA, global
/* 0000026C 000002AC  7C 08 02 A6 */	mflr r0
/* 00000270 000002B0  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000274 000002B4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 00000278 000002B8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 0000027C 000002BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 00000280 000002C0  7C 7E 1B 78 */	mr r30, r3
/* 00000284 000002C4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 00000288 000002C8  48 00 00 01 */	bl ftCo_SpecialAir_CheckInput
/* 0000028C 000002CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000290 000002D0  40 82 00 50 */	bne .L_000002E0
/* 00000294 000002D4  7F C3 F3 78 */	mr r3, r30
/* 00000298 000002D8  48 00 00 01 */	bl ftPe_8011BE80
/* 0000029C 000002DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 000002A0 000002E0  40 82 00 40 */	bne .L_000002E0
/* 000002A4 000002E4  80 60 00 00 */	lwz r3, p_ftCommonData@sda21(r0)
/* 000002A8 000002E8  38 80 00 01 */	li r4, 0x1
/* 000002AC 000002EC  C0 3F 06 24 */	lfs f1, 0x624(r31)
/* 000002B0 000002F0  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 000002B4 000002F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000002B8 000002F8  4C 41 13 82 */	cror eq, gt, eq
/* 000002BC 000002FC  41 82 00 14 */	beq .L_000002D0
/* 000002C0 00000300  80 1F 06 5C */	lwz r0, 0x65c(r31)
/* 000002C4 00000304  54 00 05 2B */	rlwinm. r0, r0, 0, 20, 21
/* 000002C8 00000308  40 82 00 08 */	bne .L_000002D0
/* 000002CC 0000030C  38 80 00 00 */	li r4, 0x0
.L_000002D0:
/* 000002D0 00000310  2C 04 00 00 */	cmpwi r4, 0x0
/* 000002D4 00000314  40 82 00 0C */	bne .L_000002E0
/* 000002D8 00000318  7F C3 F3 78 */	mr r3, r30
/* 000002DC 0000031C  48 00 00 01 */	bl ftPe_UpdateFloatDir
.L_000002E0:
/* 000002E0 00000320  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 000002E4 00000324  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 000002E8 00000328  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 000002EC 0000032C  38 21 00 18 */	addi r1, r1, 0x18
/* 000002F0 00000330  7C 08 03 A6 */	mtlr r0
/* 000002F4 00000334  4E 80 00 20 */	blr
.endfn ftPe_Float_IASA

.fn ftPe_Float_Phys, global
/* 000002F8 00000338  7C 08 02 A6 */	mflr r0
/* 000002FC 0000033C  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000300 00000340  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000304 00000344  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 00000308 00000348  48 00 00 01 */	bl ftCommon_8007D268
/* 0000030C 0000034C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000310 00000350  38 21 00 08 */	addi r1, r1, 0x8
/* 00000314 00000354  7C 08 03 A6 */	mtlr r0
/* 00000318 00000358  4E 80 00 20 */	blr
.endfn ftPe_Float_Phys

.fn ftPe_Float_Coll, global
/* 0000031C 0000035C  7C 08 02 A6 */	mflr r0
/* 00000320 00000360  3C 80 00 00 */	lis r4, ftCo_80096CC8@ha
/* 00000324 00000364  90 01 00 04 */	stw r0, 0x4(r1)
/* 00000328 00000368  3C A0 00 00 */	lis r5, ft_80082B1C@ha
/* 0000032C 0000036C  38 84 00 00 */	addi r4, r4, ftCo_80096CC8@l
/* 00000330 00000370  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 00000334 00000374  38 A5 00 00 */	addi r5, r5, ft_80082B1C@l
/* 00000338 00000378  48 00 00 01 */	bl ft_800831CC
/* 0000033C 0000037C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000340 00000380  38 21 00 08 */	addi r1, r1, 0x8
/* 00000344 00000384  7C 08 03 A6 */	mtlr r0
/* 00000348 00000388  4E 80 00 20 */	blr
.endfn ftPe_Float_Coll

# 0x00000000 - 0x00000008
.section .sdata2, "a"
.balign 8

.obj "@251", local
	.4byte 0x00000000
.endobj "@251"

.obj "@252", local
	.4byte 0x3F800000
.endobj "@252"