.include "macros.inc"
.file "spline.c"

# 0x00000000 - 0x000008DC
.text
.balign 4

.fn splGetHelmite, global
/* 00000000 00000040  ED 62 00 B2 */	fmuls f11, f2, f2
/* 00000004 00000044  C0 00 00 00 */	lfs f0, HSD_Spline_804DE624@sda21(r0)
/* 00000008 00000048  ED 41 00 72 */	fmuls f10, f1, f1
/* 0000000C 0000004C  C1 00 00 00 */	lfs f8, HSD_Spline_804DE620@sda21(r0)
/* 00000010 00000050  C0 E0 00 00 */	lfs f7, HSD_Spline_804DE628@sda21(r0)
/* 00000014 00000054  ED 2B 00 B2 */	fmuls f9, f11, f2
/* 00000018 00000058  EC 00 02 F2 */	fmuls f0, f0, f11
/* 0000001C 0000005C  ED 6B 00 72 */	fmuls f11, f11, f1
/* 00000020 00000060  ED 2A 02 72 */	fmuls f9, f10, f9
/* 00000024 00000064  ED 40 02 B2 */	fmuls f10, f0, f10
/* 00000028 00000068  EC 08 02 72 */	fmuls f0, f8, f9
/* 0000002C 0000006C  ED 29 58 28 */	fsubs f9, f9, f11
/* 00000030 00000070  EC 20 00 72 */	fmuls f1, f0, f1
/* 00000034 00000074  ED 09 58 28 */	fsubs f8, f9, f11
/* 00000038 00000078  FC 00 08 50 */	fneg f0, f1
/* 0000003C 0000007C  EC 21 50 28 */	fsubs f1, f1, f10
/* 00000040 00000080  EC 42 40 2A */	fadds f2, f2, f8
/* 00000044 00000084  EC 00 50 2A */	fadds f0, f0, f10
/* 00000048 00000088  EC 27 08 2A */	fadds f1, f7, f1
/* 0000004C 0000008C  EC 04 00 32 */	fmuls f0, f4, f0
/* 00000050 00000090  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 00000054 00000094  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 00000058 00000098  EC 26 02 7A */	fmadds f1, f6, f9, f0
/* 0000005C 0000009C  4E 80 00 20 */	blr
.endfn splGetHelmite

.fn splGetSplinePoint, global
/* 00000060 000000A0  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 00000064 000000A4  C1 00 00 00 */	lfs f8, HSD_Spline_804DE638@sda21(r0)
/* 00000068 000000A8  FC 01 40 40 */	fcmpo cr0, f1, f8
/* 0000006C 000000AC  41 80 04 90 */	blt .L_000004FC
/* 00000070 000000B0  C0 00 00 00 */	lfs f0, HSD_Spline_804DE628@sda21(r0)
/* 00000074 000000B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000078 000000B8  40 81 00 08 */	ble .L_00000080
/* 0000007C 000000BC  48 00 04 80 */	b .L_000004FC
.L_00000080:
/* 00000080 000000C0  40 80 03 24 */	bge .L_000003A4
/* 00000084 000000C4  A8 A4 00 02 */	lha r5, 0x2(r4)
/* 00000088 000000C8  3C C0 43 30 */	lis r6, 0x4330
/* 0000008C 000000CC  88 04 00 00 */	lbz r0, 0x0(r4)
/* 00000090 000000D0  38 A5 FF FF */	subi r5, r5, 0x1
/* 00000094 000000D4  C8 60 00 00 */	lfd f3, HSD_Spline_804DE640@sda21(r0)
/* 00000098 000000D8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0000009C 000000DC  90 A1 00 54 */	stw r5, 0x54(r1)
/* 000000A0 000000E0  2C 00 00 02 */	cmpwi r0, 0x2
/* 000000A4 000000E4  90 C1 00 50 */	stw r6, 0x50(r1)
/* 000000A8 000000E8  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 000000AC 000000EC  EC 42 18 28 */	fsubs f2, f2, f3
/* 000000B0 000000F0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 000000B4 000000F4  FC 20 10 1E */	fctiwz f1, f2
/* 000000B8 000000F8  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 000000BC 000000FC  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 000000C0 00000100  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 000000C4 00000104  7C A5 07 34 */	extsh r5, r5
/* 000000C8 00000108  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 000000CC 0000010C  80 E1 00 4C */	lwz r7, 0x4c(r1)
/* 000000D0 00000110  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 000000D4 00000114  90 C1 00 38 */	stw r6, 0x38(r1)
/* 000000D8 00000118  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 000000DC 0000011C  EC 21 18 28 */	fsubs f1, f1, f3
/* 000000E0 00000120  EC 42 08 28 */	fsubs f2, f2, f1
/* 000000E4 00000124  41 82 01 1C */	beq .L_00000200
/* 000000E8 00000128  40 80 00 14 */	bge .L_000000FC
/* 000000EC 0000012C  2C 00 00 00 */	cmpwi r0, 0x0
/* 000000F0 00000130  41 82 00 18 */	beq .L_00000108
/* 000000F4 00000134  40 80 00 64 */	bge .L_00000158
/* 000000F8 00000138  48 00 04 04 */	b .L_000004FC
.L_000000FC:
/* 000000FC 0000013C  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000100 00000140  40 80 03 FC */	bge .L_000004FC
/* 00000104 00000144  48 00 01 CC */	b .L_000002D0
.L_00000108:
/* 00000108 00000148  7C E0 07 34 */	extsh r0, r7
/* 0000010C 0000014C  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00000110 00000150  1C 00 00 0C */	mulli r0, r0, 0xc
/* 00000114 00000154  7C 84 02 14 */	add r4, r4, r0
/* 00000118 00000158  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000011C 0000015C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 00000120 00000160  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000124 00000164  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 00000128 00000168  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 0000012C 0000016C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 00000130 00000170  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 00000134 00000174  EC 00 08 28 */	fsubs f0, f0, f1
/* 00000138 00000178  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 0000013C 0000017C  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 00000140 00000180  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 00000144 00000184  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 00000148 00000188  EC 00 08 28 */	fsubs f0, f0, f1
/* 0000014C 0000018C  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 00000150 00000190  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 00000154 00000194  48 00 03 A8 */	b .L_000004FC
.L_00000158:
/* 00000158 00000198  EC A0 10 28 */	fsubs f5, f0, f2
/* 0000015C 0000019C  C0 20 00 00 */	lfs f1, HSD_Spline_804DE624@sda21(r0)
/* 00000160 000001A0  ED 02 00 B2 */	fmuls f8, f2, f2
/* 00000164 000001A4  7C E0 07 34 */	extsh r0, r7
/* 00000168 000001A8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 0000016C 000001AC  EC 85 01 72 */	fmuls f4, f5, f5
/* 00000170 000001B0  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00000174 000001B4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 00000178 000001B8  7C 84 02 14 */	add r4, r4, r0
/* 0000017C 000001BC  EC 61 02 32 */	fmuls f3, f1, f8
/* 00000180 000001C0  EC C0 01 32 */	fmuls f6, f0, f4
/* 00000184 000001C4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 00000188 000001C8  EC E4 01 72 */	fmuls f7, f4, f5
/* 0000018C 000001CC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00000190 000001D0  EC A3 01 72 */	fmuls f5, f3, f5
/* 00000194 000001D4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 00000198 000001D8  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 0000019C 000001DC  EC 88 00 B2 */	fmuls f4, f8, f2
/* 000001A0 000001E0  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 000001A4 000001E4  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 000001A8 000001E8  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 000001AC 000001EC  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 000001B0 000001F0  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 000001B4 000001F4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 000001B8 000001F8  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 000001BC 000001FC  EC 00 01 B2 */	fmuls f0, f0, f6
/* 000001C0 00000200  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 000001C4 00000204  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 000001C8 00000208  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 000001CC 0000020C  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 000001D0 00000210  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 000001D4 00000214  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 000001D8 00000218  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 000001DC 0000021C  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 000001E0 00000220  EC 00 01 B2 */	fmuls f0, f0, f6
/* 000001E4 00000224  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 000001E8 00000228  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 000001EC 0000022C  EC 01 01 FA */	fmadds f0, f1, f7, f0
/* 000001F0 00000230  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 000001F4 00000234  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 000001F8 00000238  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 000001FC 0000023C  48 00 03 00 */	b .L_000004FC
.L_00000200:
/* 00000200 00000240  ED 82 00 B2 */	fmuls f12, f2, f2
/* 00000204 00000244  C0 20 00 00 */	lfs f1, HSD_Spline_804DE634@sda21(r0)
/* 00000208 00000248  7C E0 07 34 */	extsh r0, r7
/* 0000020C 0000024C  C0 E0 00 00 */	lfs f7, HSD_Spline_804DE624@sda21(r0)
/* 00000210 00000250  ED 40 10 28 */	fsubs f10, f0, f2
/* 00000214 00000254  ED 6C 00 B2 */	fmuls f11, f12, f2
/* 00000218 00000258  C1 20 00 00 */	lfs f9, HSD_Spline_804DE62C@sda21(r0)
/* 0000021C 0000025C  EC 21 03 32 */	fmuls f1, f1, f12
/* 00000220 00000260  C0 80 00 00 */	lfs f4, HSD_Spline_804DE630@sda21(r0)
/* 00000224 00000264  EC A9 02 B2 */	fmuls f5, f9, f10
/* 00000228 00000268  EC 67 0A F8 */	fmsubs f3, f7, f11, f1
/* 0000022C 0000026C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 00000230 00000270  FC 20 58 50 */	fneg f1, f11
/* 00000234 00000274  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00000238 00000278  ED 0A 01 72 */	fmuls f8, f10, f5
/* 0000023C 0000027C  7C 84 02 14 */	add r4, r4, r0
/* 00000240 00000280  EC C4 18 2A */	fadds f6, f4, f3
/* 00000244 00000284  EC A1 60 2A */	fadds f5, f1, f12
/* 00000248 00000288  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 0000024C 0000028C  EC 2A 02 32 */	fmuls f1, f10, f8
/* 00000250 00000290  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00000254 00000294  ED 49 01 B2 */	fmuls f10, f9, f6
/* 00000258 00000298  EC C2 28 2A */	fadds f6, f2, f5
/* 0000025C 0000029C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 00000260 000002A0  ED 09 02 F2 */	fmuls f8, f9, f11
/* 00000264 000002A4  C0 A4 00 24 */	lfs f5, 0x24(r4)
/* 00000268 000002A8  EC C7 01 BA */	fmadds f6, f7, f6, f0
/* 0000026C 000002AC  EC 03 02 B2 */	fmuls f0, f3, f10
/* 00000270 000002B0  EC C9 01 B2 */	fmuls f6, f9, f6
/* 00000274 000002B4  EC 04 00 7A */	fmadds f0, f4, f1, f0
/* 00000278 000002B8  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 0000027C 000002BC  EC 05 02 3A */	fmadds f0, f5, f8, f0
/* 00000280 000002C0  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 00000284 000002C4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 00000288 000002C8  C0 44 00 04 */	lfs f2, 0x4(r4)
/* 0000028C 000002CC  EC 00 02 B2 */	fmuls f0, f0, f10
/* 00000290 000002D0  C0 64 00 1C */	lfs f3, 0x1c(r4)
/* 00000294 000002D4  C0 84 00 28 */	lfs f4, 0x28(r4)
/* 00000298 000002D8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 0000029C 000002DC  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 000002A0 000002E0  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 000002A4 000002E4  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 000002A8 000002E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 000002AC 000002EC  C0 44 00 08 */	lfs f2, 0x8(r4)
/* 000002B0 000002F0  EC 00 02 B2 */	fmuls f0, f0, f10
/* 000002B4 000002F4  C0 64 00 20 */	lfs f3, 0x20(r4)
/* 000002B8 000002F8  C0 84 00 2C */	lfs f4, 0x2c(r4)
/* 000002BC 000002FC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000002C0 00000300  EC 03 01 BA */	fmadds f0, f3, f6, f0
/* 000002C4 00000304  EC 04 02 3A */	fmadds f0, f4, f8, f0
/* 000002C8 00000308  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 000002CC 0000030C  48 00 02 30 */	b .L_000004FC
.L_000002D0:
/* 000002D0 00000310  ED 22 00 B2 */	fmuls f9, f2, f2
/* 000002D4 00000314  7C E0 07 34 */	extsh r0, r7
/* 000002D8 00000318  C1 44 00 04 */	lfs f10, 0x4(r4)
/* 000002DC 0000031C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 000002E0 00000320  C0 60 00 00 */	lfs f3, HSD_Spline_804DE624@sda21(r0)
/* 000002E4 00000324  C0 E0 00 00 */	lfs f7, HSD_Spline_804DE620@sda21(r0)
/* 000002E8 00000328  ED 09 00 B2 */	fmuls f8, f9, f2
/* 000002EC 0000032C  EC 2A 18 28 */	fsubs f1, f10, f3
/* 000002F0 00000330  80 84 00 08 */	lwz r4, 0x8(r4)
/* 000002F4 00000334  EC 87 50 28 */	fsubs f4, f7, f10
/* 000002F8 00000338  FC A0 40 50 */	fneg f5, f8
/* 000002FC 0000033C  EC 21 02 72 */	fmuls f1, f1, f9
/* 00000300 00000340  EC 67 1A BC */	fnmsubs f3, f7, f10, f3
/* 00000304 00000344  7C 84 02 14 */	add r4, r4, r0
/* 00000308 00000348  EC C7 2A 7A */	fmadds f6, f7, f9, f5
/* 0000030C 0000034C  EC A4 0A 3A */	fmadds f5, f4, f8, f1
/* 00000310 00000350  EC 8A 38 28 */	fsubs f4, f10, f7
/* 00000314 00000354  EC C6 10 28 */	fsubs f6, f6, f2
/* 00000318 00000358  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 0000031C 0000035C  EC E0 28 2A */	fadds f7, f0, f5
/* 00000320 00000360  EC 63 02 72 */	fmuls f3, f3, f9
/* 00000324 00000364  EC CA 01 B2 */	fmuls f6, f10, f6
/* 00000328 00000368  EC 01 01 F2 */	fmuls f0, f1, f7
/* 0000032C 0000036C  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00000330 00000370  EC 84 1A 3A */	fmadds f4, f4, f8, f3
/* 00000334 00000374  EC 68 48 28 */	fsubs f3, f8, f9
/* 00000338 00000378  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 0000033C 0000037C  EC AA 20 BA */	fmadds f5, f10, f2, f4
/* 00000340 00000380  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 00000344 00000384  EC 8A 00 F2 */	fmuls f4, f10, f3
/* 00000348 00000388  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 0000034C 0000038C  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 00000350 00000390  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 00000354 00000394  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 00000358 00000398  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 0000035C 0000039C  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 00000360 000003A0  EC 00 01 F2 */	fmuls f0, f0, f7
/* 00000364 000003A4  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 00000368 000003A8  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 0000036C 000003AC  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 00000370 000003B0  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 00000374 000003B4  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 00000378 000003B8  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 0000037C 000003BC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 00000380 000003C0  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 00000384 000003C4  EC 00 01 F2 */	fmuls f0, f0, f7
/* 00000388 000003C8  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 0000038C 000003CC  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 00000390 000003D0  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 00000394 000003D4  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 00000398 000003D8  EC 03 01 3A */	fmadds f0, f3, f4, f0
/* 0000039C 000003DC  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 000003A0 000003E0  48 00 01 5C */	b .L_000004FC
.L_000003A4:
/* 000003A4 000003E4  88 04 00 00 */	lbz r0, 0x0(r4)
/* 000003A8 000003E8  A8 A4 00 02 */	lha r5, 0x2(r4)
/* 000003AC 000003EC  2C 00 00 02 */	cmpwi r0, 0x2
/* 000003B0 000003F0  38 A5 FF FF */	subi r5, r5, 0x1
/* 000003B4 000003F4  41 82 00 7C */	beq .L_00000430
/* 000003B8 000003F8  40 80 00 14 */	bge .L_000003CC
/* 000003BC 000003FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 000003C0 00000400  41 82 00 18 */	beq .L_000003D8
/* 000003C4 00000404  40 80 00 40 */	bge .L_00000404
/* 000003C8 00000408  48 00 01 34 */	b .L_000004FC
.L_000003CC:
/* 000003CC 0000040C  2C 00 00 04 */	cmpwi r0, 0x4
/* 000003D0 00000410  40 80 01 2C */	bge .L_000004FC
/* 000003D4 00000414  48 00 00 FC */	b .L_000004D0
.L_000003D8:
/* 000003D8 00000418  7C A0 07 34 */	extsh r0, r5
/* 000003DC 0000041C  80 84 00 08 */	lwz r4, 0x8(r4)
/* 000003E0 00000420  1C 00 00 0C */	mulli r0, r0, 0xc
/* 000003E4 00000424  7C A4 02 14 */	add r5, r4, r0
/* 000003E8 00000428  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000003EC 0000042C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000003F0 00000430  90 83 00 00 */	stw r4, 0x0(r3)
/* 000003F4 00000434  90 03 00 04 */	stw r0, 0x4(r3)
/* 000003F8 00000438  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000003FC 0000043C  90 03 00 08 */	stw r0, 0x8(r3)
/* 00000400 00000440  48 00 00 FC */	b .L_000004FC
.L_00000404:
/* 00000404 00000444  7C A0 07 34 */	extsh r0, r5
/* 00000408 00000448  80 84 00 08 */	lwz r4, 0x8(r4)
/* 0000040C 0000044C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 00000410 00000450  7C A4 02 14 */	add r5, r4, r0
/* 00000414 00000454  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00000418 00000458  80 05 00 04 */	lwz r0, 0x4(r5)
/* 0000041C 0000045C  90 83 00 00 */	stw r4, 0x0(r3)
/* 00000420 00000460  90 03 00 04 */	stw r0, 0x4(r3)
/* 00000424 00000464  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00000428 00000468  90 03 00 08 */	stw r0, 0x8(r3)
/* 0000042C 0000046C  48 00 00 D0 */	b .L_000004FC
.L_00000430:
/* 00000430 00000470  FC 20 00 50 */	fneg f1, f0
/* 00000434 00000474  7C A0 07 34 */	extsh r0, r5
/* 00000438 00000478  1C A0 00 0C */	mulli r5, r0, 0xc
/* 0000043C 0000047C  80 04 00 08 */	lwz r0, 0x8(r4)
/* 00000440 00000480  C0 E0 00 00 */	lfs f7, HSD_Spline_804DE62C@sda21(r0)
/* 00000444 00000484  EC 41 00 2A */	fadds f2, f1, f0
/* 00000448 00000488  38 85 FF F4 */	subi r4, r5, 0xc
/* 0000044C 0000048C  7C 80 22 14 */	add r4, r0, r4
/* 00000450 00000490  C0 C0 00 00 */	lfs f6, HSD_Spline_804DE624@sda21(r0)
/* 00000454 00000494  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 00000458 00000498  EC A0 10 2A */	fadds f5, f0, f2
/* 0000045C 0000049C  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00000460 000004A0  EC 21 01 F2 */	fmuls f1, f1, f7
/* 00000464 000004A4  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 00000468 000004A8  C0 84 00 24 */	lfs f4, 0x24(r4)
/* 0000046C 000004AC  EC A6 01 7A */	fmadds f5, f6, f5, f0
/* 00000470 000004B0  EC 02 0A 3A */	fmadds f0, f2, f8, f1
/* 00000474 000004B4  EC A7 01 72 */	fmuls f5, f7, f5
/* 00000478 000004B8  EC 03 01 7A */	fmadds f0, f3, f5, f0
/* 0000047C 000004BC  EC 04 01 FA */	fmadds f0, f4, f7, f0
/* 00000480 000004C0  D0 03 00 00 */	stfs f0, 0x0(r3)
/* 00000484 000004C4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 00000488 000004C8  C0 24 00 04 */	lfs f1, 0x4(r4)
/* 0000048C 000004CC  EC 00 01 F2 */	fmuls f0, f0, f7
/* 00000490 000004D0  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 00000494 000004D4  C0 64 00 28 */	lfs f3, 0x28(r4)
/* 00000498 000004D8  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 0000049C 000004DC  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 000004A0 000004E0  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 000004A4 000004E4  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 000004A8 000004E8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 000004AC 000004EC  C0 24 00 08 */	lfs f1, 0x8(r4)
/* 000004B0 000004F0  EC 00 01 F2 */	fmuls f0, f0, f7
/* 000004B4 000004F4  C0 44 00 20 */	lfs f2, 0x20(r4)
/* 000004B8 000004F8  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 000004BC 000004FC  EC 01 02 3A */	fmadds f0, f1, f8, f0
/* 000004C0 00000500  EC 02 01 7A */	fmadds f0, f2, f5, f0
/* 000004C4 00000504  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 000004C8 00000508  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 000004CC 0000050C  48 00 00 30 */	b .L_000004FC
.L_000004D0:
/* 000004D0 00000510  7C A0 07 34 */	extsh r0, r5
/* 000004D4 00000514  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 000004D8 00000518  1C 80 00 0C */	mulli r4, r0, 0xc
/* 000004DC 0000051C  38 04 00 0C */	addi r0, r4, 0xc
/* 000004E0 00000520  7C A5 02 14 */	add r5, r5, r0
/* 000004E4 00000524  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000004E8 00000528  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000004EC 0000052C  90 83 00 00 */	stw r4, 0x0(r3)
/* 000004F0 00000530  90 03 00 04 */	stw r0, 0x4(r3)
/* 000004F4 00000534  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000004F8 00000538  90 03 00 08 */	stw r0, 0x8(r3)
.L_000004FC:
/* 000004FC 0000053C  38 21 00 58 */	addi r1, r1, 0x58
/* 00000500 00000540  4E 80 00 20 */	blr
.endfn splGetSplinePoint

.fn splArcLengthGetParameter, global
/* 00000504 00000544  7C 08 02 A6 */	mflr r0
/* 00000508 00000548  90 01 00 04 */	stw r0, 0x4(r1)
/* 0000050C 0000054C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 00000510 00000550  DB E1 00 D8 */	stfd f31, 0xd8(r1)
/* 00000514 00000554  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 00000518 00000558  DB A1 00 C8 */	stfd f29, 0xc8(r1)
/* 0000051C 0000055C  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 00000520 00000560  DB 61 00 B8 */	stfd f27, 0xb8(r1)
/* 00000524 00000564  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 00000528 00000568  DB 21 00 A8 */	stfd f25, 0xa8(r1)
/* 0000052C 0000056C  DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 00000530 00000570  DA E1 00 98 */	stfd f23, 0x98(r1)
/* 00000534 00000574  DA C1 00 90 */	stfd f22, 0x90(r1)
/* 00000538 00000578  DA A1 00 88 */	stfd f21, 0x88(r1)
/* 0000053C 0000057C  DA 81 00 80 */	stfd f20, 0x80(r1)
/* 00000540 00000580  DA 61 00 78 */	stfd f19, 0x78(r1)
/* 00000544 00000584  DA 41 00 70 */	stfd f18, 0x70(r1)
/* 00000548 00000588  DA 21 00 68 */	stfd f17, 0x68(r1)
/* 0000054C 0000058C  DA 01 00 60 */	stfd f16, 0x60(r1)
/* 00000550 00000590  D9 E1 00 58 */	stfd f15, 0x58(r1)
/* 00000554 00000594  BF 61 00 44 */	stmw r27, 0x44(r1)
/* 00000558 00000598  7C 7B 1B 78 */	mr r27, r3
/* 0000055C 0000059C  3B 80 00 00 */	li r28, 0x0
/* 00000560 000005A0  C3 E0 00 00 */	lfs f31, HSD_Spline_804DE638@sda21(r0)
/* 00000564 000005A4  C3 C0 00 00 */	lfs f30, HSD_Spline_804DE628@sda21(r0)
/* 00000568 000005A8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 0000056C 000005AC  4C 40 13 82 */	cror eq, lt, eq
/* 00000570 000005B0  40 82 00 0C */	bne .L_0000057C
/* 00000574 000005B4  FC 20 F8 90 */	fmr f1, f31
/* 00000578 000005B8  48 00 02 C4 */	b .L_0000083C
.L_0000057C:
/* 0000057C 000005BC  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 00000580 000005C0  4C 41 13 82 */	cror eq, gt, eq
/* 00000584 000005C4  40 82 00 0C */	bne .L_00000590
/* 00000588 000005C8  FC 20 F0 90 */	fmr f1, f30
/* 0000058C 000005CC  48 00 02 B0 */	b .L_0000083C
.L_00000590:
/* 00000590 000005D0  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 00000594 000005D4  7C 83 23 78 */	mr r3, r4
/* 00000598 000005D8  48 00 00 0C */	b .L_000005A4
.L_0000059C:
/* 0000059C 000005DC  38 63 00 04 */	addi r3, r3, 0x4
/* 000005A0 000005E0  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000005A4:
/* 000005A4 000005E4  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 000005A8 000005E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 000005AC 000005EC  41 80 FF F0 */	blt .L_0000059C
/* 000005B0 000005F0  88 1B 00 00 */	lbz r0, 0x0(r27)
/* 000005B4 000005F4  2C 00 00 00 */	cmpwi r0, 0x0
/* 000005B8 000005F8  41 82 00 14 */	beq .L_000005CC
/* 000005BC 000005FC  41 80 02 3C */	blt .L_000007F8
/* 000005C0 00000600  2C 00 00 04 */	cmpwi r0, 0x4
/* 000005C4 00000604  40 80 02 34 */	bge .L_000007F8
/* 000005C8 00000608  48 00 00 24 */	b .L_000005EC
.L_000005CC:
/* 000005CC 0000060C  57 80 10 3A */	slwi r0, r28, 2
/* 000005D0 00000610  7C 64 02 14 */	add r3, r4, r0
/* 000005D4 00000614  7C 44 04 2E */	lfsx f2, r4, r0
/* 000005D8 00000618  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 000005DC 0000061C  EC 21 10 28 */	fsubs f1, f1, f2
/* 000005E0 00000620  EC 00 10 28 */	fsubs f0, f0, f2
/* 000005E4 00000624  EF A1 00 24 */	fdivs f29, f1, f0
/* 000005E8 00000628  48 00 02 10 */	b .L_000007F8
.L_000005EC:
/* 000005EC 0000062C  57 80 10 3A */	slwi r0, r28, 2
/* 000005F0 00000630  C3 20 00 00 */	lfs f25, HSD_Spline_804DE638@sda21(r0)
/* 000005F4 00000634  7C 04 04 2E */	lfsx f0, r4, r0
/* 000005F8 00000638  1F BC 00 14 */	mulli r29, r28, 0x14
/* 000005FC 0000063C  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 00000600 00000640  FE A0 C8 90 */	fmr f21, f25
/* 00000604 00000644  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000608 00000648  FE 80 C8 90 */	fmr f20, f25
/* 0000060C 0000064C  C3 60 00 00 */	lfs f27, HSD_Spline_804DE648@sda21(r0)
/* 00000610 00000650  EE C2 00 32 */	fmuls f22, f2, f0
/* 00000614 00000654  C3 40 00 00 */	lfs f26, HSD_Spline_804DE630@sda21(r0)
/* 00000618 00000658  C3 80 00 00 */	lfs f28, HSD_Spline_804DE620@sda21(r0)
/* 0000061C 0000065C  C2 40 00 00 */	lfs f18, HSD_Spline_804DE654@sda21(r0)
/* 00000620 00000660  C2 20 00 00 */	lfs f17, HSD_Spline_804DE650@sda21(r0)
/* 00000624 00000664  C2 00 00 00 */	lfs f16, HSD_Spline_804DE64C@sda21(r0)
/* 00000628 00000668  C1 E0 00 00 */	lfs f15, HSD_Spline_804DE624@sda21(r0)
/* 0000062C 0000066C  48 00 01 B0 */	b .L_000007DC
.L_00000630:
/* 00000630 00000670  EC 1F F0 2A */	fadds f0, f31, f30
/* 00000634 00000674  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 00000638 00000678  C3 00 00 00 */	lfs f24, HSD_Spline_804DE638@sda21(r0)
/* 0000063C 0000067C  3B E0 00 02 */	li r31, 0x2
/* 00000640 00000680  7F C0 EA 14 */	add r30, r0, r29
/* 00000644 00000684  EC 20 04 72 */	fmuls f1, f0, f17
/* 00000648 00000688  EC 01 F8 28 */	fsubs f0, f1, f31
/* 0000064C 0000068C  FF A0 08 90 */	fmr f29, f1
/* 00000650 00000690  EE E0 04 32 */	fmuls f23, f0, f16
/* 00000654 00000694  EE 7F B8 2A */	fadds f19, f31, f23
.L_00000658:
/* 00000658 00000698  57 E0 07 FF */	clrlwi. r0, r31, 31
/* 0000065C 0000069C  40 82 00 58 */	bne .L_000006B4
/* 00000660 000006A0  EC F3 04 F2 */	fmuls f7, f19, f19
/* 00000664 000006A4  C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 00000668 000006A8  C0 5E 00 00 */	lfs f2, 0x0(r30)
/* 0000066C 000006AC  C0 7E 00 08 */	lfs f3, 0x8(r30)
/* 00000670 000006B0  EC C7 04 F2 */	fmuls f6, f7, f19
/* 00000674 000006B4  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 00000678 000006B8  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 0000067C 000006BC  EC 26 04 F2 */	fmuls f1, f6, f19
/* 00000680 000006C0  EC 00 01 B2 */	fmuls f0, f0, f6
/* 00000684 000006C4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00000688 000006C8  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 0000068C 000006CC  EC 04 04 FA */	fmadds f0, f4, f19, f0
/* 00000690 000006D0  EC 25 00 2A */	fadds f1, f5, f0
/* 00000694 000006D4  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 00000698 000006D8  40 80 00 10 */	bge .L_000006A8
/* 0000069C 000006DC  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 000006A0 000006E0  40 81 00 08 */	ble .L_000006A8
/* 000006A4 000006E4  FC 20 C8 90 */	fmr f1, f25
.L_000006A8:
/* 000006A8 000006E8  48 00 00 01 */	bl sqrtf__Ff
/* 000006AC 000006EC  EF 1A C0 7A */	fmadds f24, f26, f1, f24
/* 000006B0 000006F0  48 00 00 54 */	b .L_00000704
.L_000006B4:
/* 000006B4 000006F4  EC F3 04 F2 */	fmuls f7, f19, f19
/* 000006B8 000006F8  C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 000006BC 000006FC  C0 5E 00 00 */	lfs f2, 0x0(r30)
/* 000006C0 00000700  C0 7E 00 08 */	lfs f3, 0x8(r30)
/* 000006C4 00000704  EC C7 04 F2 */	fmuls f6, f7, f19
/* 000006C8 00000708  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 000006CC 0000070C  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 000006D0 00000710  EC 26 04 F2 */	fmuls f1, f6, f19
/* 000006D4 00000714  EC 00 01 B2 */	fmuls f0, f0, f6
/* 000006D8 00000718  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 000006DC 0000071C  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 000006E0 00000720  EC 04 04 FA */	fmadds f0, f4, f19, f0
/* 000006E4 00000724  EC 25 00 2A */	fadds f1, f5, f0
/* 000006E8 00000728  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 000006EC 0000072C  40 80 00 10 */	bge .L_000006FC
/* 000006F0 00000730  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 000006F4 00000734  40 81 00 08 */	ble .L_000006FC
/* 000006F8 00000738  FC 20 C8 90 */	fmr f1, f25
.L_000006FC:
/* 000006FC 0000073C  48 00 00 01 */	bl sqrtf__Ff
/* 00000700 00000740  EF 1C C0 7A */	fmadds f24, f28, f1, f24
.L_00000704:
/* 00000704 00000744  3B FF 00 01 */	addi r31, r31, 0x1
/* 00000708 00000748  EE 73 B8 2A */	fadds f19, f19, f23
/* 0000070C 0000074C  2C 1F 00 08 */	cmpwi r31, 0x8
/* 00000710 00000750  40 81 FF 48 */	ble .L_00000658
/* 00000714 00000754  EC FF 07 F2 */	fmuls f7, f31, f31
/* 00000718 00000758  C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 0000071C 0000075C  C0 5E 00 00 */	lfs f2, 0x0(r30)
/* 00000720 00000760  C0 7E 00 08 */	lfs f3, 0x8(r30)
/* 00000724 00000764  EC C7 07 F2 */	fmuls f6, f7, f31
/* 00000728 00000768  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 0000072C 0000076C  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 00000730 00000770  EC 26 07 F2 */	fmuls f1, f6, f31
/* 00000734 00000774  EC 00 01 B2 */	fmuls f0, f0, f6
/* 00000738 00000778  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 0000073C 0000077C  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 00000740 00000780  EC 04 07 FA */	fmadds f0, f4, f31, f0
/* 00000744 00000784  EC 25 00 2A */	fadds f1, f5, f0
/* 00000748 00000788  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 0000074C 0000078C  40 80 00 10 */	bge .L_0000075C
/* 00000750 00000790  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 00000754 00000794  40 81 00 08 */	ble .L_0000075C
/* 00000758 00000798  FC 20 A8 90 */	fmr f1, f21
.L_0000075C:
/* 0000075C 0000079C  48 00 00 01 */	bl sqrtf__Ff
/* 00000760 000007A0  EC FD 07 72 */	fmuls f7, f29, f29
/* 00000764 000007A4  C0 1E 00 04 */	lfs f0, 0x4(r30)
/* 00000768 000007A8  FE 60 08 90 */	fmr f19, f1
/* 0000076C 000007AC  C0 5E 00 00 */	lfs f2, 0x0(r30)
/* 00000770 000007B0  C0 7E 00 08 */	lfs f3, 0x8(r30)
/* 00000774 000007B4  EC C7 07 72 */	fmuls f6, f7, f29
/* 00000778 000007B8  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 0000077C 000007BC  C0 BE 00 10 */	lfs f5, 0x10(r30)
/* 00000780 000007C0  EC 26 07 72 */	fmuls f1, f6, f29
/* 00000784 000007C4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 00000788 000007C8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 0000078C 000007CC  EC 03 01 FA */	fmadds f0, f3, f7, f0
/* 00000790 000007D0  EC 04 07 7A */	fmadds f0, f4, f29, f0
/* 00000794 000007D4  EC 25 00 2A */	fadds f1, f5, f0
/* 00000798 000007D8  FC 01 A0 40 */	fcmpo cr0, f1, f20
/* 0000079C 000007DC  40 80 00 10 */	bge .L_000007AC
/* 000007A0 000007E0  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 000007A4 000007E4  40 81 00 08 */	ble .L_000007AC
/* 000007A8 000007E8  FC 20 A0 90 */	fmr f1, f20
.L_000007AC:
/* 000007AC 000007EC  48 00 00 01 */	bl sqrtf__Ff
/* 000007B0 000007F0  EC 18 98 2A */	fadds f0, f24, f19
/* 000007B4 000007F4  EC 00 08 2A */	fadds f0, f0, f1
/* 000007B8 000007F8  EC 17 00 32 */	fmuls f0, f23, f0
/* 000007BC 000007FC  EC 20 78 24 */	fdivs f1, f0, f15
/* 000007C0 00000800  EC 12 08 2A */	fadds f0, f18, f1
/* 000007C4 00000804  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 000007C8 00000808  40 80 00 0C */	bge .L_000007D4
/* 000007CC 0000080C  FF C0 E8 90 */	fmr f30, f29
/* 000007D0 00000810  48 00 00 0C */	b .L_000007DC
.L_000007D4:
/* 000007D4 00000814  FF E0 E8 90 */	fmr f31, f29
/* 000007D8 00000818  EE D6 08 28 */	fsubs f22, f22, f1
.L_000007DC:
/* 000007DC 0000081C  EC 1F F0 28 */	fsubs f0, f31, f30
/* 000007E0 00000820  FC 00 C8 40 */	fcmpo cr0, f0, f25
/* 000007E4 00000824  40 80 00 08 */	bge .L_000007EC
/* 000007E8 00000828  FC 00 00 50 */	fneg f0, f0
.L_000007EC:
/* 000007EC 0000082C  FC 00 90 40 */	fcmpo cr0, f0, f18
/* 000007F0 00000830  4C 41 13 82 */	cror eq, gt, eq
/* 000007F4 00000834  41 82 FE 3C */	beq .L_00000630
.L_000007F8:
/* 000007F8 00000838  A8 1B 00 02 */	lha r0, 0x2(r27)
/* 000007FC 0000083C  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 00000800 00000840  90 61 00 3C */	stw r3, 0x3c(r1)
/* 00000804 00000844  3C 60 43 30 */	lis r3, 0x4330
/* 00000808 00000848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000080C 0000084C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000810 00000850  C8 60 00 00 */	lfd f3, HSD_Spline_804DE640@sda21(r0)
/* 00000814 00000854  90 61 00 38 */	stw r3, 0x38(r1)
/* 00000818 00000858  C0 00 00 00 */	lfs f0, HSD_Spline_804DE628@sda21(r0)
/* 0000081C 0000085C  90 61 00 30 */	stw r3, 0x30(r1)
/* 00000820 00000860  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 00000824 00000864  C8 21 00 30 */	lfd f1, 0x30(r1)
/* 00000828 00000868  EC 42 18 28 */	fsubs f2, f2, f3
/* 0000082C 0000086C  EC 21 18 28 */	fsubs f1, f1, f3
/* 00000830 00000870  EC 5D 10 2A */	fadds f2, f29, f2
/* 00000834 00000874  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000838 00000878  EC 22 00 24 */	fdivs f1, f2, f0
.L_0000083C:
/* 0000083C 0000087C  BB 61 00 44 */	lmw r27, 0x44(r1)
/* 00000840 00000880  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 00000844 00000884  CB E1 00 D8 */	lfd f31, 0xd8(r1)
/* 00000848 00000888  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 0000084C 0000088C  CB A1 00 C8 */	lfd f29, 0xc8(r1)
/* 00000850 00000890  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 00000854 00000894  CB 61 00 B8 */	lfd f27, 0xb8(r1)
/* 00000858 00000898  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 0000085C 0000089C  CB 21 00 A8 */	lfd f25, 0xa8(r1)
/* 00000860 000008A0  CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 00000864 000008A4  CA E1 00 98 */	lfd f23, 0x98(r1)
/* 00000868 000008A8  CA C1 00 90 */	lfd f22, 0x90(r1)
/* 0000086C 000008AC  CA A1 00 88 */	lfd f21, 0x88(r1)
/* 00000870 000008B0  CA 81 00 80 */	lfd f20, 0x80(r1)
/* 00000874 000008B4  CA 61 00 78 */	lfd f19, 0x78(r1)
/* 00000878 000008B8  CA 41 00 70 */	lfd f18, 0x70(r1)
/* 0000087C 000008BC  CA 21 00 68 */	lfd f17, 0x68(r1)
/* 00000880 000008C0  CA 01 00 60 */	lfd f16, 0x60(r1)
/* 00000884 000008C4  C9 E1 00 58 */	lfd f15, 0x58(r1)
/* 00000888 000008C8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 0000088C 000008CC  7C 08 03 A6 */	mtlr r0
/* 00000890 000008D0  4E 80 00 20 */	blr
.endfn splArcLengthGetParameter

.fn splArcLengthPoint, global
/* 00000894 000008D4  7C 08 02 A6 */	mflr r0
/* 00000898 000008D8  90 01 00 04 */	stw r0, 0x4(r1)
/* 0000089C 000008DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000008A0 000008E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000008A4 000008E4  3B E4 00 00 */	addi r31, r4, 0x0
/* 000008A8 000008E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 000008AC 000008EC  3B C3 00 00 */	addi r30, r3, 0x0
/* 000008B0 000008F0  38 7F 00 00 */	addi r3, r31, 0x0
/* 000008B4 000008F4  48 00 00 01 */	bl splArcLengthGetParameter
/* 000008B8 000008F8  38 7E 00 00 */	addi r3, r30, 0x0
/* 000008BC 000008FC  38 9F 00 00 */	addi r4, r31, 0x0
/* 000008C0 00000900  48 00 00 01 */	bl splGetSplinePoint
/* 000008C4 00000904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000008C8 00000908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 000008CC 0000090C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 000008D0 00000910  38 21 00 20 */	addi r1, r1, 0x20
/* 000008D4 00000914  7C 08 03 A6 */	mtlr r0
/* 000008D8 00000918  4E 80 00 20 */	blr
.endfn splArcLengthPoint

# 0x00000000 - 0x00000038
.section .sdata2, "a"
.balign 8

.obj HSD_Spline_804DE620, global
	.4byte 0x40000000
.endobj HSD_Spline_804DE620

.obj HSD_Spline_804DE624, global
	.4byte 0x40400000
.endobj HSD_Spline_804DE624

.obj HSD_Spline_804DE628, global
	.4byte 0x3F800000
.endobj HSD_Spline_804DE628

.obj HSD_Spline_804DE62C, global
	.4byte 0x3E2AAAAB
.endobj HSD_Spline_804DE62C

.obj HSD_Spline_804DE630, global
	.4byte 0x40800000
.endobj HSD_Spline_804DE630

.obj HSD_Spline_804DE634, global
	.4byte 0x40C00000
.endobj HSD_Spline_804DE634

.obj HSD_Spline_804DE638, global
	.4byte 0x00000000
.endobj HSD_Spline_804DE638

.obj gap_11_804DE63C_sdata2, global
.hidden gap_11_804DE63C_sdata2
	.4byte 0x00000000
.endobj gap_11_804DE63C_sdata2

.obj HSD_Spline_804DE640, global
	.4byte 0x43300000
	.4byte 0x80000000
.endobj HSD_Spline_804DE640

.obj HSD_Spline_804DE648, global
	.4byte 0xBA83126F
.endobj HSD_Spline_804DE648

.obj HSD_Spline_804DE64C, global
	.4byte 0x3E000000
.endobj HSD_Spline_804DE64C

.obj HSD_Spline_804DE650, global
	.4byte 0x3F000000
.endobj HSD_Spline_804DE650

.obj HSD_Spline_804DE654, global
	.4byte 0x3727C5AC
.endobj HSD_Spline_804DE654
