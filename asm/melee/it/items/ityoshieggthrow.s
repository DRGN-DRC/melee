.include "macros.inc"

.section .text

.global it_802B2890
it_802B2890:
/* 802B2890 002AF470  7C 08 02 A6 */	mflr r0
/* 802B2894 002AF474  38 80 00 00 */	li r4, 0
/* 802B2898 002AF478  90 01 00 04 */	stw r0, 4(r1)
/* 802B289C 002AF47C  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B28A0 002AF480  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802B28A4 002AF484  90 85 05 18 */	stw r4, 0x518(r5)
/* 802B28A8 002AF488  88 05 0D CA */	lbz r0, 0xdca(r5)
/* 802B28AC 002AF48C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 802B28B0 002AF490  98 05 0D CA */	stb r0, 0xdca(r5)
/* 802B28B4 002AF494  4B FB 80 39 */	bl Item_8026A8EC
/* 802B28B8 002AF498  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B28BC 002AF49C  38 21 00 08 */	addi r1, r1, 8
/* 802B28C0 002AF4A0  7C 08 03 A6 */	mtlr r0
/* 802B28C4 002AF4A4  4E 80 00 20 */	blr

.global it_802B28C8
it_802B28C8:
/* 802B28C8 002AF4A8  7C 08 02 A6 */	mflr r0
/* 802B28CC 002AF4AC  90 01 00 04 */	stw r0, 4(r1)
/* 802B28D0 002AF4B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B28D4 002AF4B4  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 802B28D8 002AF4B8  FF E0 08 90 */	fmr f31, f1
/* 802B28DC 002AF4BC  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 802B28E0 002AF4C0  7C 7F 1B 78 */	mr r31, r3
/* 802B28E4 002AF4C4  7C 9B 23 78 */	mr r27, r4
/* 802B28E8 002AF4C8  7C BC 2B 78 */	mr r28, r5
/* 802B28EC 002AF4CC  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802B28F0 002AF4D0  83 A3 00 28 */	lwz r29, 0x28(r3)
/* 802B28F4 002AF4D4  48 00 02 15 */	bl it_802B2B08
/* 802B28F8 002AF4D8  38 7F 00 00 */	addi r3, r31, 0
/* 802B28FC 002AF4DC  38 9B 00 00 */	addi r4, r27, 0
/* 802B2900 002AF4E0  4B FC 19 9D */	bl it_8027429C
/* 802B2904 002AF4E4  88 1E 0D CA */	lbz r0, 0xdca(r30)
/* 802B2908 002AF4E8  38 60 00 00 */	li r3, 0
/* 802B290C 002AF4EC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802B2910 002AF4F0  98 1E 0D CA */	stb r0, 0xdca(r30)
/* 802B2914 002AF4F4  7F E3 FB 78 */	mr r3, r31
/* 802B2918 002AF4F8  4B FB 8A 91 */	bl it_8026B3A8
/* 802B291C 002AF4FC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 802B2920 002AF500  28 1D 00 00 */	cmplwi r29, 0
/* 802B2924 002AF504  C0 1C 00 00 */	lfs f0, 0(r28)
/* 802B2928 002AF508  EC 01 00 2A */	fadds f0, f1, f0
/* 802B292C 002AF50C  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 802B2930 002AF510  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802B2934 002AF514  C0 1C 00 04 */	lfs f0, 4(r28)
/* 802B2938 002AF518  EC 01 00 2A */	fadds f0, f1, f0
/* 802B293C 002AF51C  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 802B2940 002AF520  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 802B2944 002AF524  C0 1C 00 08 */	lfs f0, 8(r28)
/* 802B2948 002AF528  EC 01 00 2A */	fadds f0, f1, f0
/* 802B294C 002AF52C  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 802B2950 002AF530  40 82 00 14 */	bne .L_802B2964
/* 802B2954 002AF534  38 6D 9D E8 */	addi r3, r13, it_804D5488@sda21
/* 802B2958 002AF538  38 80 03 94 */	li r4, 0x394
/* 802B295C 002AF53C  38 AD 9D F0 */	addi r5, r13, it_804D5490@sda21
/* 802B2960 002AF540  48 0D 58 C1 */	bl __assert
.L_802B2964:
/* 802B2964 002AF544  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 802B2968 002AF548  40 82 00 18 */	bne .L_802B2980
/* 802B296C 002AF54C  3C 60 80 3F */	lis r3, it_803F7148@ha
/* 802B2970 002AF550  38 A3 71 48 */	addi r5, r3, it_803F7148@l
/* 802B2974 002AF554  38 6D 9D E8 */	addi r3, r13, it_804D5488@sda21
/* 802B2978 002AF558  38 80 03 95 */	li r4, 0x395
/* 802B297C 002AF55C  48 0D 58 A5 */	bl __assert
.L_802B2980:
/* 802B2980 002AF560  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 802B2984 002AF564  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802B2988 002AF568  90 7D 00 38 */	stw r3, 0x38(r29)
/* 802B298C 002AF56C  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802B2990 002AF570  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 802B2994 002AF574  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B2998 002AF578  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 802B299C 002AF57C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 802B29A0 002AF580  40 82 00 4C */	bne .L_802B29EC
/* 802B29A4 002AF584  28 1D 00 00 */	cmplwi r29, 0
/* 802B29A8 002AF588  41 82 00 44 */	beq .L_802B29EC
/* 802B29AC 002AF58C  40 82 00 14 */	bne .L_802B29C0
/* 802B29B0 002AF590  38 6D 9D E8 */	addi r3, r13, it_804D5488@sda21
/* 802B29B4 002AF594  38 80 02 34 */	li r4, 0x234
/* 802B29B8 002AF598  38 AD 9D F0 */	addi r5, r13, it_804D5490@sda21
/* 802B29BC 002AF59C  48 0D 58 65 */	bl __assert
.L_802B29C0:
/* 802B29C0 002AF5A0  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 802B29C4 002AF5A4  38 60 00 00 */	li r3, 0
/* 802B29C8 002AF5A8  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 802B29CC 002AF5AC  40 82 00 10 */	bne .L_802B29DC
/* 802B29D0 002AF5B0  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 802B29D4 002AF5B4  41 82 00 08 */	beq .L_802B29DC
/* 802B29D8 002AF5B8  38 60 00 01 */	li r3, 1
.L_802B29DC:
/* 802B29DC 002AF5BC  2C 03 00 00 */	cmpwi r3, 0
/* 802B29E0 002AF5C0  40 82 00 0C */	bne .L_802B29EC
/* 802B29E4 002AF5C4  7F A3 EB 78 */	mr r3, r29
/* 802B29E8 002AF5C8  48 0C 09 01 */	bl HSD_JObjSetMtxDirtySub
.L_802B29EC:
/* 802B29EC 002AF5CC  7F E3 FB 78 */	mr r3, r31
/* 802B29F0 002AF5D0  FC 20 F8 90 */	fmr f1, f31
/* 802B29F4 002AF5D4  4B FC 1C 65 */	bl it_80274658
/* 802B29F8 002AF5D8  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 802B29FC 002AF5DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B2A00 002AF5E0  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 802B2A04 002AF5E4  38 21 00 40 */	addi r1, r1, 0x40
/* 802B2A08 002AF5E8  7C 08 03 A6 */	mtlr r0
/* 802B2A0C 002AF5EC  4E 80 00 20 */	blr

.global it_802B2A10
it_802B2A10:
/* 802B2A10 002AF5F0  7C 08 02 A6 */	mflr r0
/* 802B2A14 002AF5F4  90 01 00 04 */	stw r0, 4(r1)
/* 802B2A18 002AF5F8  38 00 00 56 */	li r0, 0x56
/* 802B2A1C 002AF5FC  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 802B2A20 002AF600  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802B2A24 002AF604  FF E0 08 90 */	fmr f31, f1
/* 802B2A28 002AF608  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802B2A2C 002AF60C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802B2A30 002AF610  3B C5 00 00 */	addi r30, r5, 0
/* 802B2A34 002AF614  93 A1 00 74 */	stw r29, 0x74(r1)
/* 802B2A38 002AF618  3B A3 00 00 */	addi r29, r3, 0
/* 802B2A3C 002AF61C  90 01 00 28 */	stw r0, 0x28(r1)
/* 802B2A40 002AF620  80 A4 00 00 */	lwz r5, 0(r4)
/* 802B2A44 002AF624  80 04 00 04 */	lwz r0, 4(r4)
/* 802B2A48 002AF628  90 A1 00 40 */	stw r5, 0x40(r1)
/* 802B2A4C 002AF62C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B2A50 002AF630  80 04 00 08 */	lwz r0, 8(r4)
/* 802B2A54 002AF634  38 81 00 34 */	addi r4, r1, 0x34
/* 802B2A58 002AF638  90 01 00 48 */	stw r0, 0x48(r1)
/* 802B2A5C 002AF63C  4B FB 91 0D */	bl it_8026BB68
/* 802B2A60 002AF640  D3 E1 00 58 */	stfs f31, 0x58(r1)
/* 802B2A64 002AF644  38 A0 00 00 */	li r5, 0
/* 802B2A68 002AF648  C0 02 D5 E0 */	lfs f0, it_804DCFC0@sda21(r2)
/* 802B2A6C 002AF64C  38 80 00 01 */	li r4, 1
/* 802B2A70 002AF650  B0 A1 00 5C */	sth r5, 0x5c(r1)
/* 802B2A74 002AF654  38 61 00 20 */	addi r3, r1, 0x20
/* 802B2A78 002AF658  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802B2A7C 002AF65C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802B2A80 002AF660  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802B2A84 002AF664  93 A1 00 20 */	stw r29, 0x20(r1)
/* 802B2A88 002AF668  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802B2A8C 002AF66C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B2A90 002AF670  88 01 00 64 */	lbz r0, 0x64(r1)
/* 802B2A94 002AF674  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802B2A98 002AF678  98 01 00 64 */	stb r0, 0x64(r1)
/* 802B2A9C 002AF67C  90 A1 00 60 */	stw r5, 0x60(r1)
/* 802B2AA0 002AF680  4B FB 60 79 */	bl Item_80268B18
/* 802B2AA4 002AF684  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B2AA8 002AF688  41 82 00 14 */	beq .L_802B2ABC
/* 802B2AAC 002AF68C  38 7F 00 00 */	addi r3, r31, 0
/* 802B2AB0 002AF690  38 9D 00 00 */	addi r4, r29, 0
/* 802B2AB4 002AF694  38 BE 00 00 */	addi r5, r30, 0
/* 802B2AB8 002AF698  4B FB 80 9D */	bl Item_8026AB54
.L_802B2ABC:
/* 802B2ABC 002AF69C  7F E3 FB 78 */	mr r3, r31
/* 802B2AC0 002AF6A0  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 802B2AC4 002AF6A4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802B2AC8 002AF6A8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802B2ACC 002AF6AC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 802B2AD0 002AF6B0  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 802B2AD4 002AF6B4  38 21 00 88 */	addi r1, r1, 0x88
/* 802B2AD8 002AF6B8  7C 08 03 A6 */	mtlr r0
/* 802B2ADC 002AF6BC  4E 80 00 20 */	blr

.global it_802B2AE0
it_802B2AE0:
/* 802B2AE0 002AF6C0  7C 08 02 A6 */	mflr r0
/* 802B2AE4 002AF6C4  38 80 00 00 */	li r4, 0
/* 802B2AE8 002AF6C8  90 01 00 04 */	stw r0, 4(r1)
/* 802B2AEC 002AF6CC  38 A0 00 02 */	li r5, 2
/* 802B2AF0 002AF6D0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2AF4 002AF6D4  4B FB 63 69 */	bl Item_80268E5C
/* 802B2AF8 002AF6D8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2AFC 002AF6DC  38 21 00 08 */	addi r1, r1, 8
/* 802B2B00 002AF6E0  7C 08 03 A6 */	mtlr r0
/* 802B2B04 002AF6E4  4E 80 00 20 */	blr

.global it_802B2B08
it_802B2B08:
/* 802B2B08 002AF6E8  7C 08 02 A6 */	mflr r0
/* 802B2B0C 002AF6EC  38 80 00 01 */	li r4, 1
/* 802B2B10 002AF6F0  90 01 00 04 */	stw r0, 4(r1)
/* 802B2B14 002AF6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B2B18 002AF6F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B2B1C 002AF6FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B2B20 002AF700  7C 7E 1B 78 */	mr r30, r3
/* 802B2B24 002AF704  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 802B2B28 002AF708  80 C5 00 C4 */	lwz r6, 0xc4(r5)
/* 802B2B2C 002AF70C  38 A0 00 02 */	li r5, 2
/* 802B2B30 002AF710  83 E6 00 04 */	lwz r31, 4(r6)
/* 802B2B34 002AF714  4B FB 63 29 */	bl Item_80268E5C
/* 802B2B38 002AF718  7F C3 F3 78 */	mr r3, r30
/* 802B2B3C 002AF71C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 802B2B40 002AF720  4B FC 26 19 */	bl it_80275158
/* 802B2B44 002AF724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B2B48 002AF728  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B2B4C 002AF72C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B2B50 002AF730  38 21 00 20 */	addi r1, r1, 0x20
/* 802B2B54 002AF734  7C 08 03 A6 */	mtlr r0
/* 802B2B58 002AF738  4E 80 00 20 */	blr

.global it_802B2B5C
it_802B2B5C:
/* 802B2B5C 002AF73C  7C 08 02 A6 */	mflr r0
/* 802B2B60 002AF740  90 01 00 04 */	stw r0, 4(r1)
/* 802B2B64 002AF744  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2B68 002AF748  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802B2B6C 002AF74C  C0 02 D5 E0 */	lfs f0, it_804DCFC0@sda21(r2)
/* 802B2B70 002AF750  C0 24 0D 44 */	lfs f1, 0xd44(r4)
/* 802B2B74 002AF754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B2B78 002AF758  4C 40 13 82 */	cror 2, 0, 2
/* 802B2B7C 002AF75C  40 82 00 0C */	bne .L_802B2B88
/* 802B2B80 002AF760  48 00 00 B9 */	bl it_802B2C38
/* 802B2B84 002AF764  48 00 00 10 */	b .L_802B2B94
.L_802B2B88:
/* 802B2B88 002AF768  C0 02 D5 E4 */	lfs f0, it_804DCFC4@sda21(r2)
/* 802B2B8C 002AF76C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802B2B90 002AF770  D0 04 0D 44 */	stfs f0, 0xd44(r4)
.L_802B2B94:
/* 802B2B94 002AF774  38 60 00 00 */	li r3, 0
/* 802B2B98 002AF778  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2B9C 002AF77C  38 21 00 08 */	addi r1, r1, 8
/* 802B2BA0 002AF780  7C 08 03 A6 */	mtlr r0
/* 802B2BA4 002AF784  4E 80 00 20 */	blr

.global it_802B2BA8
it_802B2BA8:
/* 802B2BA8 002AF788  7C 08 02 A6 */	mflr r0
/* 802B2BAC 002AF78C  90 01 00 04 */	stw r0, 4(r1)
/* 802B2BB0 002AF790  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2BB4 002AF794  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802B2BB8 002AF798  80 84 00 CC */	lwz r4, 0xcc(r4)
/* 802B2BBC 002AF79C  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802B2BC0 002AF7A0  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 802B2BC4 002AF7A4  4B FB FC 9D */	bl it_80272860
/* 802B2BC8 002AF7A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2BCC 002AF7AC  38 21 00 08 */	addi r1, r1, 8
/* 802B2BD0 002AF7B0  7C 08 03 A6 */	mtlr r0
/* 802B2BD4 002AF7B4  4E 80 00 20 */	blr

.global it_802B2BD8
it_802B2BD8:
/* 802B2BD8 002AF7B8  7C 08 02 A6 */	mflr r0
/* 802B2BDC 002AF7BC  3C 80 80 2B */	lis r4, it_802B2C38@ha
/* 802B2BE0 002AF7C0  90 01 00 04 */	stw r0, 4(r1)
/* 802B2BE4 002AF7C4  38 84 2C 38 */	addi r4, r4, it_802B2C38@l
/* 802B2BE8 002AF7C8  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2BEC 002AF7CC  4B FB B9 B5 */	bl it_8026E5A0
/* 802B2BF0 002AF7D0  38 60 00 00 */	li r3, 0
/* 802B2BF4 002AF7D4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2BF8 002AF7D8  38 21 00 08 */	addi r1, r1, 8
/* 802B2BFC 002AF7DC  7C 08 03 A6 */	mtlr r0
/* 802B2C00 002AF7E0  4E 80 00 20 */	blr

.global it_802B2C04
it_802B2C04:
/* 802B2C04 002AF7E4  7C 08 02 A6 */	mflr r0
/* 802B2C08 002AF7E8  90 01 00 04 */	stw r0, 4(r1)
/* 802B2C0C 002AF7EC  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2C10 002AF7F0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802B2C14 002AF7F4  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802B2C18 002AF7F8  2C 00 00 02 */	cmpwi r0, 2
/* 802B2C1C 002AF7FC  41 82 00 08 */	beq .L_802B2C24
/* 802B2C20 002AF800  48 00 00 19 */	bl it_802B2C38
.L_802B2C24:
/* 802B2C24 002AF804  38 60 00 00 */	li r3, 0
/* 802B2C28 002AF808  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2C2C 002AF80C  38 21 00 08 */	addi r1, r1, 8
/* 802B2C30 002AF810  7C 08 03 A6 */	mtlr r0
/* 802B2C34 002AF814  4E 80 00 20 */	blr

.global it_802B2C38
it_802B2C38:
/* 802B2C38 002AF818  7C 08 02 A6 */	mflr r0
/* 802B2C3C 002AF81C  38 80 00 02 */	li r4, 2
/* 802B2C40 002AF820  90 01 00 04 */	stw r0, 4(r1)
/* 802B2C44 002AF824  38 A0 00 12 */	li r5, 0x12
/* 802B2C48 002AF828  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B2C4C 002AF82C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B2C50 002AF830  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B2C54 002AF834  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802B2C58 002AF838  93 81 00 20 */	stw r28, 0x20(r1)
/* 802B2C5C 002AF83C  7C 7C 1B 78 */	mr r28, r3
/* 802B2C60 002AF840  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 802B2C64 002AF844  83 BC 00 28 */	lwz r29, 0x28(r28)
/* 802B2C68 002AF848  80 DF 00 C4 */	lwz r6, 0xc4(r31)
/* 802B2C6C 002AF84C  83 C6 00 04 */	lwz r30, 4(r6)
/* 802B2C70 002AF850  4B FB 61 ED */	bl Item_80268E5C
/* 802B2C74 002AF854  7F 83 E3 78 */	mr r3, r28
/* 802B2C78 002AF858  4B FB 8E CD */	bl it_8026BB44
/* 802B2C7C 002AF85C  38 7C 00 00 */	addi r3, r28, 0
/* 802B2C80 002AF860  38 80 00 0C */	li r4, 0xc
/* 802B2C84 002AF864  38 A0 00 0A */	li r5, 0xa
/* 802B2C88 002AF868  4B FC 09 11 */	bl it_80273598
/* 802B2C8C 002AF86C  7F 83 E3 78 */	mr r3, r28
/* 802B2C90 002AF870  4B FB 90 95 */	bl it_8026BD24
/* 802B2C94 002AF874  7F 83 E3 78 */	mr r3, r28
/* 802B2C98 002AF878  4B FC 24 F5 */	bl it_8027518C
/* 802B2C9C 002AF87C  7F 83 E3 78 */	mr r3, r28
/* 802B2CA0 002AF880  4B FC 07 B5 */	bl it_80273454
/* 802B2CA4 002AF884  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802B2CA8 002AF888  38 7C 00 00 */	addi r3, r28, 0
/* 802B2CAC 002AF88C  38 FD 00 00 */	addi r7, r29, 0
/* 802B2CB0 002AF890  4C C6 31 82 */	crclr 6
/* 802B2CB4 002AF894  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
/* 802B2CB8 002AF898  38 A0 00 01 */	li r5, 1
/* 802B2CBC 002AF89C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2CC0 002AF8A0  38 C0 04 CE */	li r6, 0x4ce
/* 802B2CC4 002AF8A4  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2CC8 002AF8A8  4B DB 4A 29 */	bl efAsync_Spawn
/* 802B2CCC 002AF8AC  C0 02 D5 E4 */	lfs f0, it_804DCFC4@sda21(r2)
/* 802B2CD0 002AF8B0  38 7C 00 00 */	addi r3, r28, 0
/* 802B2CD4 002AF8B4  38 FD 00 00 */	addi r7, r29, 0
/* 802B2CD8 002AF8B8  4C C6 31 82 */	crclr 6
/* 802B2CDC 002AF8BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802B2CE0 002AF8C0  39 01 00 1C */	addi r8, r1, 0x1c
/* 802B2CE4 002AF8C4  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2CE8 002AF8C8  38 A0 00 04 */	li r5, 4
/* 802B2CEC 002AF8CC  38 C0 04 CF */	li r6, 0x4cf
/* 802B2CF0 002AF8D0  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2CF4 002AF8D4  4B DB 49 FD */	bl efAsync_Spawn
/* 802B2CF8 002AF8D8  3C 80 00 04 */	lis r4, 0x00044618@ha
/* 802B2CFC 002AF8DC  38 7F 00 00 */	addi r3, r31, 0
/* 802B2D00 002AF8E0  38 84 46 18 */	addi r4, r4, 0x00044618@l
/* 802B2D04 002AF8E4  38 A0 00 7F */	li r5, 0x7f
/* 802B2D08 002AF8E8  38 C0 00 40 */	li r6, 0x40
/* 802B2D0C 002AF8EC  4B FB 81 79 */	bl Item_8026AE84
/* 802B2D10 002AF8F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B2D14 002AF8F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B2D18 002AF8F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B2D1C 002AF8FC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802B2D20 002AF900  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802B2D24 002AF904  38 21 00 30 */	addi r1, r1, 0x30
/* 802B2D28 002AF908  7C 08 03 A6 */	mtlr r0
/* 802B2D2C 002AF90C  4E 80 00 20 */	blr

.global it_802B2D30
it_802B2D30:
/* 802B2D30 002AF910  7C 08 02 A6 */	mflr r0
/* 802B2D34 002AF914  90 01 00 04 */	stw r0, 4(r1)
/* 802B2D38 002AF918  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2D3C 002AF91C  4B FC 24 9D */	bl it_802751D8
/* 802B2D40 002AF920  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2D44 002AF924  38 21 00 08 */	addi r1, r1, 8
/* 802B2D48 002AF928  7C 08 03 A6 */	mtlr r0
/* 802B2D4C 002AF92C  4E 80 00 20 */	blr

.global it_802B2D50
it_802B2D50:
/* 802B2D50 002AF930  7C 08 02 A6 */	mflr r0
/* 802B2D54 002AF934  90 01 00 04 */	stw r0, 4(r1)
/* 802B2D58 002AF938  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 802B2D5C 002AF93C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 802B2D60 002AF940  93 C1 00 30 */	stw r30, 0x30(r1)
/* 802B2D64 002AF944  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 802B2D68 002AF948  93 81 00 28 */	stw r28, 0x28(r1)
/* 802B2D6C 002AF94C  7C 7C 1B 78 */	mr r28, r3
/* 802B2D70 002AF950  83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 802B2D74 002AF954  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802B2D78 002AF958  2C 00 00 02 */	cmpwi r0, 2
/* 802B2D7C 002AF95C  41 82 00 BC */	beq .L_802B2E38
/* 802B2D80 002AF960  80 BD 00 C4 */	lwz r5, 0xc4(r29)
/* 802B2D84 002AF964  38 7C 00 00 */	addi r3, r28, 0
/* 802B2D88 002AF968  83 DC 00 28 */	lwz r30, 0x28(r28)
/* 802B2D8C 002AF96C  38 80 00 02 */	li r4, 2
/* 802B2D90 002AF970  83 E5 00 04 */	lwz r31, 4(r5)
/* 802B2D94 002AF974  38 A0 00 12 */	li r5, 0x12
/* 802B2D98 002AF978  4B FB 60 C5 */	bl Item_80268E5C
/* 802B2D9C 002AF97C  7F 83 E3 78 */	mr r3, r28
/* 802B2DA0 002AF980  4B FB 8D A5 */	bl it_8026BB44
/* 802B2DA4 002AF984  38 7C 00 00 */	addi r3, r28, 0
/* 802B2DA8 002AF988  38 80 00 0C */	li r4, 0xc
/* 802B2DAC 002AF98C  38 A0 00 0A */	li r5, 0xa
/* 802B2DB0 002AF990  4B FC 07 E9 */	bl it_80273598
/* 802B2DB4 002AF994  7F 83 E3 78 */	mr r3, r28
/* 802B2DB8 002AF998  4B FB 8F 6D */	bl it_8026BD24
/* 802B2DBC 002AF99C  7F 83 E3 78 */	mr r3, r28
/* 802B2DC0 002AF9A0  4B FC 23 CD */	bl it_8027518C
/* 802B2DC4 002AF9A4  7F 83 E3 78 */	mr r3, r28
/* 802B2DC8 002AF9A8  4B FC 06 8D */	bl it_80273454
/* 802B2DCC 002AF9AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802B2DD0 002AF9B0  38 7C 00 00 */	addi r3, r28, 0
/* 802B2DD4 002AF9B4  4C C6 31 82 */	crclr 6
/* 802B2DD8 002AF9B8  7F C7 F3 78 */	mr r7, r30
/* 802B2DDC 002AF9BC  D0 1D 0D 44 */	stfs f0, 0xd44(r29)
/* 802B2DE0 002AF9C0  38 A0 00 01 */	li r5, 1
/* 802B2DE4 002AF9C4  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2DE8 002AF9C8  38 C0 04 CE */	li r6, 0x4ce
/* 802B2DEC 002AF9CC  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2DF0 002AF9D0  4B DB 49 01 */	bl efAsync_Spawn
/* 802B2DF4 002AF9D4  C0 02 D5 E4 */	lfs f0, it_804DCFC4@sda21(r2)
/* 802B2DF8 002AF9D8  38 7C 00 00 */	addi r3, r28, 0
/* 802B2DFC 002AF9DC  4C C6 31 82 */	crclr 6
/* 802B2E00 002AF9E0  7F C7 F3 78 */	mr r7, r30
/* 802B2E04 002AF9E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802B2E08 002AF9E8  39 01 00 20 */	addi r8, r1, 0x20
/* 802B2E0C 002AF9EC  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2E10 002AF9F0  38 A0 00 04 */	li r5, 4
/* 802B2E14 002AF9F4  38 C0 04 CF */	li r6, 0x4cf
/* 802B2E18 002AF9F8  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2E1C 002AF9FC  4B DB 48 D5 */	bl efAsync_Spawn
/* 802B2E20 002AFA00  3C 80 00 04 */	lis r4, 0x00044618@ha
/* 802B2E24 002AFA04  38 7D 00 00 */	addi r3, r29, 0
/* 802B2E28 002AFA08  38 84 46 18 */	addi r4, r4, 0x00044618@l
/* 802B2E2C 002AFA0C  38 A0 00 7F */	li r5, 0x7f
/* 802B2E30 002AFA10  38 C0 00 40 */	li r6, 0x40
/* 802B2E34 002AFA14  4B FB 80 51 */	bl Item_8026AE84
.L_802B2E38:
/* 802B2E38 002AFA18  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802B2E3C 002AFA1C  38 60 00 00 */	li r3, 0
/* 802B2E40 002AFA20  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 802B2E44 002AFA24  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 802B2E48 002AFA28  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 802B2E4C 002AFA2C  83 81 00 28 */	lwz r28, 0x28(r1)
/* 802B2E50 002AFA30  38 21 00 38 */	addi r1, r1, 0x38
/* 802B2E54 002AFA34  7C 08 03 A6 */	mtlr r0
/* 802B2E58 002AFA38  4E 80 00 20 */	blr

.global it_802B2E5C
it_802B2E5C:
/* 802B2E5C 002AFA3C  7C 08 02 A6 */	mflr r0
/* 802B2E60 002AFA40  90 01 00 04 */	stw r0, 4(r1)
/* 802B2E64 002AFA44  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2E68 002AFA48  4B FC 01 C9 */	bl it_80273030
/* 802B2E6C 002AFA4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2E70 002AFA50  38 21 00 08 */	addi r1, r1, 8
/* 802B2E74 002AFA54  7C 08 03 A6 */	mtlr r0
/* 802B2E78 002AFA58  4E 80 00 20 */	blr

.global it_802B2E7C
it_802B2E7C:
/* 802B2E7C 002AFA5C  7C 08 02 A6 */	mflr r0
/* 802B2E80 002AFA60  90 01 00 04 */	stw r0, 4(r1)
/* 802B2E84 002AFA64  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 802B2E88 002AFA68  93 E1 00 34 */	stw r31, 0x34(r1)
/* 802B2E8C 002AFA6C  93 C1 00 30 */	stw r30, 0x30(r1)
/* 802B2E90 002AFA70  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 802B2E94 002AFA74  93 81 00 28 */	stw r28, 0x28(r1)
/* 802B2E98 002AFA78  7C 7C 1B 78 */	mr r28, r3
/* 802B2E9C 002AFA7C  83 A3 00 2C */	lwz r29, 0x2c(r3)
/* 802B2EA0 002AFA80  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 802B2EA4 002AFA84  2C 00 00 02 */	cmpwi r0, 2
/* 802B2EA8 002AFA88  41 82 00 BC */	beq .L_802B2F64
/* 802B2EAC 002AFA8C  80 BD 00 C4 */	lwz r5, 0xc4(r29)
/* 802B2EB0 002AFA90  38 7C 00 00 */	addi r3, r28, 0
/* 802B2EB4 002AFA94  83 DC 00 28 */	lwz r30, 0x28(r28)
/* 802B2EB8 002AFA98  38 80 00 02 */	li r4, 2
/* 802B2EBC 002AFA9C  83 E5 00 04 */	lwz r31, 4(r5)
/* 802B2EC0 002AFAA0  38 A0 00 12 */	li r5, 0x12
/* 802B2EC4 002AFAA4  4B FB 5F 99 */	bl Item_80268E5C
/* 802B2EC8 002AFAA8  7F 83 E3 78 */	mr r3, r28
/* 802B2ECC 002AFAAC  4B FB 8C 79 */	bl it_8026BB44
/* 802B2ED0 002AFAB0  38 7C 00 00 */	addi r3, r28, 0
/* 802B2ED4 002AFAB4  38 80 00 0C */	li r4, 0xc
/* 802B2ED8 002AFAB8  38 A0 00 0A */	li r5, 0xa
/* 802B2EDC 002AFABC  4B FC 06 BD */	bl it_80273598
/* 802B2EE0 002AFAC0  7F 83 E3 78 */	mr r3, r28
/* 802B2EE4 002AFAC4  4B FB 8E 41 */	bl it_8026BD24
/* 802B2EE8 002AFAC8  7F 83 E3 78 */	mr r3, r28
/* 802B2EEC 002AFACC  4B FC 22 A1 */	bl it_8027518C
/* 802B2EF0 002AFAD0  7F 83 E3 78 */	mr r3, r28
/* 802B2EF4 002AFAD4  4B FC 05 61 */	bl it_80273454
/* 802B2EF8 002AFAD8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802B2EFC 002AFADC  38 7C 00 00 */	addi r3, r28, 0
/* 802B2F00 002AFAE0  4C C6 31 82 */	crclr 6
/* 802B2F04 002AFAE4  7F C7 F3 78 */	mr r7, r30
/* 802B2F08 002AFAE8  D0 1D 0D 44 */	stfs f0, 0xd44(r29)
/* 802B2F0C 002AFAEC  38 A0 00 01 */	li r5, 1
/* 802B2F10 002AFAF0  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2F14 002AFAF4  38 C0 04 CE */	li r6, 0x4ce
/* 802B2F18 002AFAF8  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2F1C 002AFAFC  4B DB 47 D5 */	bl efAsync_Spawn
/* 802B2F20 002AFB00  C0 02 D5 E4 */	lfs f0, it_804DCFC4@sda21(r2)
/* 802B2F24 002AFB04  38 7C 00 00 */	addi r3, r28, 0
/* 802B2F28 002AFB08  4C C6 31 82 */	crclr 6
/* 802B2F2C 002AFB0C  7F C7 F3 78 */	mr r7, r30
/* 802B2F30 002AFB10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802B2F34 002AFB14  39 01 00 20 */	addi r8, r1, 0x20
/* 802B2F38 002AFB18  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 802B2F3C 002AFB1C  38 A0 00 04 */	li r5, 4
/* 802B2F40 002AFB20  38 C0 04 CF */	li r6, 0x4cf
/* 802B2F44 002AFB24  38 84 0B C0 */	addi r4, r4, 0xbc0
/* 802B2F48 002AFB28  4B DB 47 A9 */	bl efAsync_Spawn
/* 802B2F4C 002AFB2C  3C 80 00 04 */	lis r4, 0x00044618@ha
/* 802B2F50 002AFB30  38 7D 00 00 */	addi r3, r29, 0
/* 802B2F54 002AFB34  38 84 46 18 */	addi r4, r4, 0x00044618@l
/* 802B2F58 002AFB38  38 A0 00 7F */	li r5, 0x7f
/* 802B2F5C 002AFB3C  38 C0 00 40 */	li r6, 0x40
/* 802B2F60 002AFB40  4B FB 7F 25 */	bl Item_8026AE84
.L_802B2F64:
/* 802B2F64 002AFB44  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802B2F68 002AFB48  38 60 00 00 */	li r3, 0
/* 802B2F6C 002AFB4C  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 802B2F70 002AFB50  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 802B2F74 002AFB54  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 802B2F78 002AFB58  83 81 00 28 */	lwz r28, 0x28(r1)
/* 802B2F7C 002AFB5C  38 21 00 38 */	addi r1, r1, 0x38
/* 802B2F80 002AFB60  7C 08 03 A6 */	mtlr r0
/* 802B2F84 002AFB64  4E 80 00 20 */	blr

.global it_802B2F88
it_802B2F88:
/* 802B2F88 002AFB68  7C 08 02 A6 */	mflr r0
/* 802B2F8C 002AFB6C  90 01 00 04 */	stw r0, 4(r1)
/* 802B2F90 002AFB70  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2F94 002AFB74  4B FC 00 E5 */	bl itColl_BounceOffShield
/* 802B2F98 002AFB78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2F9C 002AFB7C  38 21 00 08 */	addi r1, r1, 8
/* 802B2FA0 002AFB80  7C 08 03 A6 */	mtlr r0
/* 802B2FA4 002AFB84  4E 80 00 20 */	blr

.global it_802B2FA8
it_802B2FA8:
/* 802B2FA8 002AFB88  7C 08 02 A6 */	mflr r0
/* 802B2FAC 002AFB8C  90 01 00 04 */	stw r0, 4(r1)
/* 802B2FB0 002AFB90  94 21 FF F8 */	stwu r1, -8(r1)
/* 802B2FB4 002AFB94  4B FB 88 E1 */	bl it_8026B894
/* 802B2FB8 002AFB98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B2FBC 002AFB9C  38 21 00 08 */	addi r1, r1, 8
/* 802B2FC0 002AFBA0  7C 08 03 A6 */	mtlr r0
/* 802B2FC4 002AFBA4  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F7118
it_803F7118:
    .4byte -1
    .4byte NULL
    .4byte NULL
    .4byte NULL
    .4byte 0
    .4byte it_802B2B5C
    .4byte it_802B2BA8
    .4byte it_802B2BD8
    .4byte 1
    .4byte it_802B2D30
    .4byte NULL
    .4byte NULL
.global it_803F7148
it_803F7148:
    .asciz "translate"


.section .sdata
    .balign 8
.global it_804D5488
it_804D5488:
    .asciz "jobj.h"
    .balign 4
.global it_804D5490
it_804D5490:
    .asciz "jobj"


.section .sdata2
    .balign 8
.global it_804DCFC0
it_804DCFC0:
    .4byte 0x00000000
.global it_804DCFC4
it_804DCFC4:
    .4byte 0x3F800000
