.include "macros.inc"

.section .text

.global it_802C61F4
it_802C61F4:
/* 802C61F4 002C2DD4  7C 08 02 A6 */	mflr r0
/* 802C61F8 002C2DD8  38 E0 00 00 */	li r7, 0
/* 802C61FC 002C2DDC  90 01 00 04 */	stw r0, 4(r1)
/* 802C6200 002C2DE0  38 00 00 72 */	li r0, 0x72
/* 802C6204 002C2DE4  38 C0 00 01 */	li r6, 1
/* 802C6208 002C2DE8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802C620C 002C2DEC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802C6210 002C2DF0  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802C6214 002C2DF4  7C BE 2B 78 */	mr r30, r5
/* 802C6218 002C2DF8  93 A1 00 74 */	stw r29, 0x74(r1)
/* 802C621C 002C2DFC  3B A3 00 00 */	addi r29, r3, 0
/* 802C6220 002C2E00  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C6224 002C2E04  80 64 00 00 */	lwz r3, 0(r4)
/* 802C6228 002C2E08  80 04 00 04 */	lwz r0, 4(r4)
/* 802C622C 002C2E0C  90 61 00 40 */	stw r3, 0x40(r1)
/* 802C6230 002C2E10  38 61 00 20 */	addi r3, r1, 0x20
/* 802C6234 002C2E14  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C6238 002C2E18  80 04 00 08 */	lwz r0, 8(r4)
/* 802C623C 002C2E1C  90 01 00 48 */	stw r0, 0x48(r1)
/* 802C6240 002C2E20  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802C6244 002C2E24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C6248 002C2E28  C0 02 D8 B0 */	lfs f0, it_804DD290@sda21(r2)
/* 802C624C 002C2E2C  90 81 00 34 */	stw r4, 0x34(r1)
/* 802C6250 002C2E30  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C6254 002C2E34  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802C6258 002C2E38  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C625C 002C2E3C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 802C6260 002C2E40  B0 E1 00 5C */	sth r7, 0x5c(r1)
/* 802C6264 002C2E44  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802C6268 002C2E48  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802C626C 002C2E4C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802C6270 002C2E50  93 A1 00 20 */	stw r29, 0x20(r1)
/* 802C6274 002C2E54  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802C6278 002C2E58  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C627C 002C2E5C  88 01 00 64 */	lbz r0, 0x64(r1)
/* 802C6280 002C2E60  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 802C6284 002C2E64  98 01 00 64 */	stb r0, 0x64(r1)
/* 802C6288 002C2E68  90 E1 00 60 */	stw r7, 0x60(r1)
/* 802C628C 002C2E6C  4B FA 28 8D */	bl Item_80268B18
/* 802C6290 002C2E70  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C6294 002C2E74  41 82 00 44 */	beq .L_802C62D8
/* 802C6298 002C2E78  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 802C629C 002C2E7C  38 7F 00 00 */	addi r3, r31, 0
/* 802C62A0 002C2E80  38 9D 00 00 */	addi r4, r29, 0
/* 802C62A4 002C2E84  80 C5 00 C4 */	lwz r6, 0xc4(r5)
/* 802C62A8 002C2E88  7F C5 F3 78 */	mr r5, r30
/* 802C62AC 002C2E8C  83 C6 00 04 */	lwz r30, 4(r6)
/* 802C62B0 002C2E90  4B FA 48 A5 */	bl Item_8026AB54
/* 802C62B4 002C2E94  38 7F 00 00 */	addi r3, r31, 0
/* 802C62B8 002C2E98  38 9D 00 00 */	addi r4, r29, 0
/* 802C62BC 002C2E9C  4B F5 FB 1D */	bl db_80225DD8
/* 802C62C0 002C2EA0  80 BE 00 00 */	lwz r5, 0(r30)
/* 802C62C4 002C2EA4  38 7F 00 00 */	addi r3, r31, 0
/* 802C62C8 002C2EA8  38 9D 00 00 */	addi r4, r29, 0
/* 802C62CC 002C2EAC  4B FB 6B 99 */	bl it_8027CE64
/* 802C62D0 002C2EB0  7F E3 FB 78 */	mr r3, r31
/* 802C62D4 002C2EB4  48 00 00 08 */	b .L_802C62DC
.L_802C62D8:
/* 802C62D8 002C2EB8  38 60 00 00 */	li r3, 0
.L_802C62DC:
/* 802C62DC 002C2EBC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802C62E0 002C2EC0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802C62E4 002C2EC4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802C62E8 002C2EC8  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 802C62EC 002C2ECC  38 21 00 80 */	addi r1, r1, 0x80
/* 802C62F0 002C2ED0  7C 08 03 A6 */	mtlr r0
/* 802C62F4 002C2ED4  4E 80 00 20 */	blr

.global it_802C62F8
it_802C62F8:
/* 802C62F8 002C2ED8  7C 08 02 A6 */	mflr r0
/* 802C62FC 002C2EDC  90 01 00 04 */	stw r0, 4(r1)
/* 802C6300 002C2EE0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C6304 002C2EE4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C6308 002C2EE8  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C630C 002C2EEC  28 03 00 00 */	cmplwi r3, 0
/* 802C6310 002C2EF0  41 82 00 08 */	beq .L_802C6318
/* 802C6314 002C2EF4  4B E8 5C 35 */	bl ftGw_Attack11_ItemGreenhouseSetFlag
.L_802C6318:
/* 802C6318 002C2EF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C631C 002C2EFC  38 21 00 08 */	addi r1, r1, 8
/* 802C6320 002C2F00  7C 08 03 A6 */	mtlr r0
/* 802C6324 002C2F04  4E 80 00 20 */	blr

.global it_802C6328
it_802C6328:
/* 802C6328 002C2F08  7C 08 02 A6 */	mflr r0
/* 802C632C 002C2F0C  90 01 00 04 */	stw r0, 4(r1)
/* 802C6330 002C2F10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C6334 002C2F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C6338 002C2F18  7C 7F 1B 78 */	mr r31, r3
/* 802C633C 002C2F1C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C6340 002C2F20  28 03 00 00 */	cmplwi r3, 0
/* 802C6344 002C2F24  41 82 00 1C */	beq .L_802C6360
/* 802C6348 002C2F28  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C634C 002C2F2C  28 03 00 00 */	cmplwi r3, 0
/* 802C6350 002C2F30  41 82 00 08 */	beq .L_802C6358
/* 802C6354 002C2F34  4B E8 5B F5 */	bl ftGw_Attack11_ItemGreenhouseSetFlag
.L_802C6358:
/* 802C6358 002C2F38  7F E3 FB 78 */	mr r3, r31
/* 802C635C 002C2F3C  4B FA 45 91 */	bl Item_8026A8EC
.L_802C6360:
/* 802C6360 002C2F40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C6364 002C2F44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C6368 002C2F48  38 21 00 20 */	addi r1, r1, 0x20
/* 802C636C 002C2F4C  7C 08 03 A6 */	mtlr r0
/* 802C6370 002C2F50  4E 80 00 20 */	blr

.global it_802C6374
it_802C6374:
/* 802C6374 002C2F54  7C 08 02 A6 */	mflr r0
/* 802C6378 002C2F58  90 01 00 04 */	stw r0, 4(r1)
/* 802C637C 002C2F5C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C6380 002C2F60  4B FA 53 A5 */	bl it_8026B724
/* 802C6384 002C2F64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C6388 002C2F68  38 21 00 08 */	addi r1, r1, 8
/* 802C638C 002C2F6C  7C 08 03 A6 */	mtlr r0
/* 802C6390 002C2F70  4E 80 00 20 */	blr

.global it_802C6394
it_802C6394:
/* 802C6394 002C2F74  7C 08 02 A6 */	mflr r0
/* 802C6398 002C2F78  90 01 00 04 */	stw r0, 4(r1)
/* 802C639C 002C2F7C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C63A0 002C2F80  4B FA 53 9D */	bl it_8026B73C
/* 802C63A4 002C2F84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C63A8 002C2F88  38 21 00 08 */	addi r1, r1, 8
/* 802C63AC 002C2F8C  7C 08 03 A6 */	mtlr r0
/* 802C63B0 002C2F90  4E 80 00 20 */	blr

.global it_802C63B4
it_802C63B4:
/* 802C63B4 002C2F94  7C 08 02 A6 */	mflr r0
/* 802C63B8 002C2F98  90 01 00 04 */	stw r0, 4(r1)
/* 802C63BC 002C2F9C  38 00 00 00 */	li r0, 0
/* 802C63C0 002C2FA0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802C63C4 002C2FA4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C63C8 002C2FA8  7C 7F 1B 78 */	mr r31, r3
/* 802C63CC 002C2FAC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C63D0 002C2FB0  90 03 0D B0 */	stw r0, 0xdb0(r3)
/* 802C63D4 002C2FB4  90 03 0D AC */	stw r0, 0xdac(r3)
/* 802C63D8 002C2FB8  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C63DC 002C2FBC  28 03 00 00 */	cmplwi r3, 0
/* 802C63E0 002C2FC0  41 82 00 3C */	beq .L_802C641C
/* 802C63E4 002C2FC4  4B E8 5C 79 */	bl ftGw_Attack11_ItemGreenhouse_CheckAttack11
/* 802C63E8 002C2FC8  2C 03 00 00 */	cmpwi r3, 0
/* 802C63EC 002C2FCC  41 82 00 18 */	beq .L_802C6404
/* 802C63F0 002C2FD0  38 7F 00 00 */	addi r3, r31, 0
/* 802C63F4 002C2FD4  38 80 00 01 */	li r4, 1
/* 802C63F8 002C2FD8  38 A0 00 02 */	li r5, 2
/* 802C63FC 002C2FDC  4B FA 2A 61 */	bl Item_80268E5C
/* 802C6400 002C2FE0  48 00 00 14 */	b .L_802C6414
.L_802C6404:
/* 802C6404 002C2FE4  38 7F 00 00 */	addi r3, r31, 0
/* 802C6408 002C2FE8  38 80 00 00 */	li r4, 0
/* 802C640C 002C2FEC  38 A0 00 02 */	li r5, 2
/* 802C6410 002C2FF0  4B FA 2A 4D */	bl Item_80268E5C
.L_802C6414:
/* 802C6414 002C2FF4  7F E3 FB 78 */	mr r3, r31
/* 802C6418 002C2FF8  4B FA 30 B5 */	bl Item_802694CC
.L_802C641C:
/* 802C641C 002C2FFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C6420 002C3000  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802C6424 002C3004  38 21 00 18 */	addi r1, r1, 0x18
/* 802C6428 002C3008  7C 08 03 A6 */	mtlr r0
/* 802C642C 002C300C  4E 80 00 20 */	blr

.global it_802C6430
it_802C6430:
/* 802C6430 002C3010  7C 08 02 A6 */	mflr r0
/* 802C6434 002C3014  38 80 00 00 */	li r4, 0
/* 802C6438 002C3018  90 01 00 04 */	stw r0, 4(r1)
/* 802C643C 002C301C  38 A0 00 02 */	li r5, 2
/* 802C6440 002C3020  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C6444 002C3024  4B FA 2A 19 */	bl Item_80268E5C
/* 802C6448 002C3028  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C644C 002C302C  38 21 00 08 */	addi r1, r1, 8
/* 802C6450 002C3030  7C 08 03 A6 */	mtlr r0
/* 802C6454 002C3034  4E 80 00 20 */	blr

.global it_802C6458
it_802C6458:
/* 802C6458 002C3038  7C 08 02 A6 */	mflr r0
/* 802C645C 002C303C  38 80 00 01 */	li r4, 1
/* 802C6460 002C3040  90 01 00 04 */	stw r0, 4(r1)
/* 802C6464 002C3044  38 A0 00 02 */	li r5, 2
/* 802C6468 002C3048  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C646C 002C304C  4B FA 29 F1 */	bl Item_80268E5C
/* 802C6470 002C3050  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C6474 002C3054  38 21 00 08 */	addi r1, r1, 8
/* 802C6478 002C3058  7C 08 03 A6 */	mtlr r0
/* 802C647C 002C305C  4E 80 00 20 */	blr

.global it_802C6480
it_802C6480:
/* 802C6480 002C3060  7C 08 02 A6 */	mflr r0
/* 802C6484 002C3064  38 80 00 02 */	li r4, 2
/* 802C6488 002C3068  90 01 00 04 */	stw r0, 4(r1)
/* 802C648C 002C306C  38 A0 00 02 */	li r5, 2
/* 802C6490 002C3070  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C6494 002C3074  4B FA 29 C9 */	bl Item_80268E5C
/* 802C6498 002C3078  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C649C 002C307C  38 21 00 08 */	addi r1, r1, 8
/* 802C64A0 002C3080  7C 08 03 A6 */	mtlr r0
/* 802C64A4 002C3084  4E 80 00 20 */	blr

.global it_802C64A8
it_802C64A8:
/* 802C64A8 002C3088  7C 08 02 A6 */	mflr r0
/* 802C64AC 002C308C  38 80 00 03 */	li r4, 3
/* 802C64B0 002C3090  90 01 00 04 */	stw r0, 4(r1)
/* 802C64B4 002C3094  38 A0 00 02 */	li r5, 2
/* 802C64B8 002C3098  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C64BC 002C309C  4B FA 29 A1 */	bl Item_80268E5C
/* 802C64C0 002C30A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C64C4 002C30A4  38 21 00 08 */	addi r1, r1, 8
/* 802C64C8 002C30A8  7C 08 03 A6 */	mtlr r0
/* 802C64CC 002C30AC  4E 80 00 20 */	blr

.global it_802C64D0
it_802C64D0:
/* 802C64D0 002C30B0  7C 08 02 A6 */	mflr r0
/* 802C64D4 002C30B4  90 01 00 04 */	stw r0, 4(r1)
/* 802C64D8 002C30B8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802C64DC 002C30BC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 802C64E0 002C30C0  7C 7F 1B 78 */	mr r31, r3
/* 802C64E4 002C30C4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 802C64E8 002C30C8  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C64EC 002C30CC  28 03 00 00 */	cmplwi r3, 0
/* 802C64F0 002C30D0  41 82 00 0C */	beq .L_802C64FC
/* 802C64F4 002C30D4  4B E8 5B 41 */	bl ftGw_Attack11_ItemGreenhouse_CheckAll
/* 802C64F8 002C30D8  48 00 00 08 */	b .L_802C6500
.L_802C64FC:
/* 802C64FC 002C30DC  38 60 00 01 */	li r3, 1
.L_802C6500:
/* 802C6500 002C30E0  2C 03 00 00 */	cmpwi r3, 0
/* 802C6504 002C30E4  41 82 00 20 */	beq .L_802C6524
/* 802C6508 002C30E8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802C650C 002C30EC  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C6510 002C30F0  28 03 00 00 */	cmplwi r3, 0
/* 802C6514 002C30F4  41 82 00 08 */	beq .L_802C651C
/* 802C6518 002C30F8  4B E8 5A 31 */	bl ftGw_Attack11_ItemGreenhouseSetFlag
.L_802C651C:
/* 802C651C 002C30FC  38 60 00 01 */	li r3, 1
/* 802C6520 002C3100  48 00 00 08 */	b .L_802C6528
.L_802C6524:
/* 802C6524 002C3104  38 60 00 00 */	li r3, 0
.L_802C6528:
/* 802C6528 002C3108  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802C652C 002C310C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 802C6530 002C3110  38 21 00 28 */	addi r1, r1, 0x28
/* 802C6534 002C3114  7C 08 03 A6 */	mtlr r0
/* 802C6538 002C3118  4E 80 00 20 */	blr

.global it_802C653C
it_802C653C:
/* 802C653C 002C311C  7C 08 02 A6 */	mflr r0
/* 802C6540 002C3120  90 01 00 04 */	stw r0, 4(r1)
/* 802C6544 002C3124  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C6548 002C3128  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C654C 002C312C  7C 7F 1B 78 */	mr r31, r3
/* 802C6550 002C3130  4B FA C7 1D */	bl it_80272C6C
/* 802C6554 002C3134  2C 03 00 00 */	cmpwi r3, 0
/* 802C6558 002C3138  40 82 00 14 */	bne .L_802C656C
/* 802C655C 002C313C  38 7F 00 00 */	addi r3, r31, 0
/* 802C6560 002C3140  38 80 00 02 */	li r4, 2
/* 802C6564 002C3144  38 A0 00 02 */	li r5, 2
/* 802C6568 002C3148  4B FA 28 F5 */	bl Item_80268E5C
.L_802C656C:
/* 802C656C 002C314C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802C6570 002C3150  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C6574 002C3154  28 03 00 00 */	cmplwi r3, 0
/* 802C6578 002C3158  41 82 00 0C */	beq .L_802C6584
/* 802C657C 002C315C  4B E8 5A B9 */	bl ftGw_Attack11_ItemGreenhouse_CheckAll
/* 802C6580 002C3160  48 00 00 08 */	b .L_802C6588
.L_802C6584:
/* 802C6584 002C3164  38 60 00 01 */	li r3, 1
.L_802C6588:
/* 802C6588 002C3168  2C 03 00 00 */	cmpwi r3, 0
/* 802C658C 002C316C  41 82 00 20 */	beq .L_802C65AC
/* 802C6590 002C3170  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 802C6594 002C3174  80 63 05 18 */	lwz r3, 0x518(r3)
/* 802C6598 002C3178  28 03 00 00 */	cmplwi r3, 0
/* 802C659C 002C317C  41 82 00 08 */	beq .L_802C65A4
/* 802C65A0 002C3180  4B E8 59 A9 */	bl ftGw_Attack11_ItemGreenhouseSetFlag
.L_802C65A4:
/* 802C65A4 002C3184  38 60 00 01 */	li r3, 1
/* 802C65A8 002C3188  48 00 00 08 */	b .L_802C65B0
.L_802C65AC:
/* 802C65AC 002C318C  38 60 00 00 */	li r3, 0
.L_802C65B0:
/* 802C65B0 002C3190  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C65B4 002C3194  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C65B8 002C3198  38 21 00 30 */	addi r1, r1, 0x30
/* 802C65BC 002C319C  7C 08 03 A6 */	mtlr r0
/* 802C65C0 002C31A0  4E 80 00 20 */	blr

.global it_802C65C4
it_802C65C4:
/* 802C65C4 002C31A4  7C 08 02 A6 */	mflr r0
/* 802C65C8 002C31A8  90 01 00 04 */	stw r0, 4(r1)
/* 802C65CC 002C31AC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802C65D0 002C31B0  4B FA 52 C5 */	bl it_8026B894
/* 802C65D4 002C31B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802C65D8 002C31B8  38 21 00 08 */	addi r1, r1, 8
/* 802C65DC 002C31BC  7C 08 03 A6 */	mtlr r0
/* 802C65E0 002C31C0  4E 80 00 20 */	blr

.section .data
    .balign 8
.global it_803F7898
it_803F7898:
    .4byte 0
    .4byte it_802C64D0
    .4byte NULL
    .4byte NULL
    .4byte 1
    .4byte it_802C64D0
    .4byte NULL
    .4byte NULL
    .4byte 2
    .4byte it_802C653C
    .4byte NULL
    .4byte NULL
    .4byte 3
    .4byte it_802C64D0
    .4byte NULL
    .4byte NULL


.section .sdata2
    .balign 8
.global it_804DD290
it_804DD290:
    .4byte 0x00000000