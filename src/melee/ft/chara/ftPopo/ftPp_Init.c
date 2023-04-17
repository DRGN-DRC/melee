#include "ft/forward.h"

#include "fticeclimber.h"
#include "fticeclimber1.h"

#include "ft/fighter.h"
#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ftcamera.h"
#include "ft/ftparts.h"
#include "ft/types.h"
#include "it/it_27CF.h"
#include "lb/lb_00B0.h"

#include <baselib/gobj.h>

MotionState ftPp_Init_MotionStateTable[] = {
    { 295, 0x00340111, 0x12800000, ftPp_SpecialN_Anim, ftPp_SpecialN_IASA,
      ftPp_SpecialN_Phys, ftPp_SpecialN_Coll, ftCamera_UpdateCameraBox },
    { 296, 0x00340511, 0x12800000, ftPp_SpecialAirN_Anim, ftPp_SpecialAirN_IASA,
      ftPp_SpecialAirN_Phys, ftPp_SpecialAirN_Coll, ftCamera_UpdateCameraBox },
    { 297, 0x00340212, 0x13800000, ftPp_SpecialS_Anim, ftPp_SpecialS_IASA,
      ftPp_SpecialS_Phys, ftPp_SpecialS_Coll, ftCamera_UpdateCameraBox },
    { 298, 0x00340212, 0x13800000, ftPp_SpecialSTogether_Anim, ftPp_SpecialSTogether_IASA,
      ftPp_SpecialSTogether_Phys, ftPp_SpecialSTogether_Coll, ftCamera_UpdateCameraBox },
    { 299, 0x00340612, 0x13800000, ftPp_SpecialAirS_Anim, ftPp_SpecialAirS_IASA,
      ftPp_SpecialAirS_Phys, ftPp_SpecialAirS_Coll, ftCamera_UpdateCameraBox },
    { 300, 0x00340612, 0x13800000, ftPp_SpecialAirSTogether_Anim, ftPp_SpecialAirSTogether_IASA,
      ftPp_SpecialAirSTogether_Phys, ftPp_SpecialAirSTogether_Coll, ftCamera_UpdateCameraBox },
    { 301, 0x00340213, 0x14000000, ftPp_SpecialHiStart_Anim, ftPp_SpecialHiStart_IASA,
      ftPp_SpecialHiStart_Phys, ftPp_SpecialHiStart_Coll, ftCamera_UpdateCameraBox },
    { 302, 0x00340213, 0x14000000, ftPp_SpecialHi_Anim, ftPp_SpecialHi_IASA,
      ftPp_SpecialHi_Phys, ftPp_SpecialHi_Coll, ftCamera_UpdateCameraBox },
    { 303, 0x00340213, 0x14000000, ftPp_MS_349_Anim, ftPp_MS_349_IASA,
      ftPp_MS_349_Phys, ftPp_MS_349_Coll, ftCamera_UpdateCameraBox },
    { 304, 0x00340213, 0x14000000, ftPp_SpecialHiFail_Anim, ftPp_SpecialHiFail_IASA,
      ftPp_SpecialHiFail_Phys, ftPp_SpecialHiFail_Coll, ftCamera_UpdateCameraBox },
    { 305, 0x00340213, 0x14000000, ftPp_SpecialHiFailEnd_Anim, ftPp_SpecialHiFailEnd_IASA,
      ftPp_SpecialHiFailEnd_Phys, ftPp_SpecialHiFailEnd_Coll, ftCamera_UpdateCameraBox },
    { 306, 0x00340613, 0x14000000, ftPp_SpecialAirHiStart_Anim, ftPp_SpecialAirHiStart_IASA,
      ftPp_SpecialAirHiStart_Phys, ftPp_SpecialAirHiStart_Coll, ftCamera_UpdateCameraBox },
    { 307, 0x00340613, 0x14000000, ftPp_SpecialAirHi_Anim, ftPp_SpecialAirHi_IASA,
      ftPp_SpecialAirHi_Phys, ftPp_SpecialAirHi_Coll, ftCamera_UpdateCameraBox },
    { 308, 0x00340613, 0x14000000, ftPp_SpecialAirHiFail_Anim, ftPp_SpecialAirHiFail_IASA,
      ftPp_SpecialAirHiFail_Phys, ftPp_SpecialAirHiFail_Coll, ftCamera_UpdateCameraBox },
    { 309, 0x00340613, 0x14000000, ftPp_SpecialAirHiFailEnd_Anim, ftPp_SpecialAirHiFailEnd_IASA,
      ftPp_SpecialAirHiFailEnd_Phys, ftPp_SpecialAirHiFailEnd_Coll, ftCamera_UpdateCameraBox },
    { 310, 0x00340613, 0x14000000, ftPp_SpecialLw_Anim, ftPp_SpecialLw_IASA,
      ftPp_SpecialLw_Phys, ftPp_SpecialLw_Coll, ftCamera_UpdateCameraBox },
    { 311, 0x00340014, 0x15800000, ftPp_SpecialAirLw_Anim, ftPp_SpecialAirLw_IASA,
      ftPp_SpecialAirLw_Phys, ftPp_SpecialAirLw_Coll, ftCamera_UpdateCameraBox },
    { 312, 0x00340414, 0x15800000, ftPp_SpecialLw_80122A8C, ftPp_SpecialLw_80122B10,
      ftPp_SpecialLw_80122B34, ftPp_SpecialLw_80122D04, ftCamera_UpdateCameraBox },
    { 313, 0x00340212, 0x13800000, ftNn_Init_80123CA4, ftNn_Init_80123E58,
      ftNn_Init_80123E60, ftNn_Init_80123F98, ftCamera_UpdateCameraBox },
    { 314, 0x00340612, 0x13800000, ftNn_Init_80123D68, ftNn_Init_80123E5C,
      ftNn_Init_80123EFC, ftNn_Init_801241A0, ftCamera_UpdateCameraBox },
    { 315, 0x00340213, 0x14000000, ftNn_Init_80123348, ftNn_Init_80123388,
      ftNn_Init_80123390, ftNn_Init_801233F0, ftCamera_UpdateCameraBox },
    { 316, 0x00340213, 0x14000000, ftNn_Init_80123448, ftNn_Init_801234E4,
      ftNn_Init_801234EC, ftNn_Init_801235BC, ftCamera_UpdateCameraBox },
    { 317, 0x00340213, 0x14000000, NULL, NULL, NULL, NULL,
      ftCamera_UpdateCameraBox },
    { 318, 0x00340613, 0x14000000, ftNn_Init_80123384, ftNn_Init_8012338C,
      ftNn_Init_801233EC, ftNn_Init_801233F4, ftCamera_UpdateCameraBox },
    { 319, 0x00340613, 0x14000000, ftNn_Init_80123484, ftNn_Init_801234E8,
      ftNn_Init_8012350C, ftNn_Init_801235F8, ftCamera_UpdateCameraBox },
    { 320, 0x00340613, 0x14000000, NULL, NULL, NULL, NULL,
      ftCamera_UpdateCameraBox },
};

char ftPp_Init_DatFilename[] = "PlPp.dat";
char ftPp_Init_DataName[] = "ftDataPopo";
char ftPp_Init_803CD628[] = "PlPpNr.dat";
char ftPp_Init_803CD634[] = "PlyPopo5K_Share_joint";
char ftPp_Init_803CD64C[] = "PlyPopo5K_Share_matanim_joint";
char ftPp_Init_803CD66C[] = "PlPpGr.dat";
char ftPp_Init_803CD678[] = "PlyPopo5KGr_Share_joint";
char ftPp_Init_803CD690[] = "PlyPopo5KGr_Share_matanim_joint";
char ftPp_Init_803CD6B0[] = "PlPpOr.dat";
char ftPp_Init_803CD6BC[] = "PlyPopo5KOr_Share_joint";
char ftPp_Init_803CD6D4[] = "PlyPopo5KOr_Share_matanim_joint";
char ftPp_Init_803CD6F4[] = "PlPpRe.dat";
char ftPp_Init_803CD700[] = "PlyPopo5KRe_Share_joint";
char ftPp_Init_803CD718[] = "PlyPopo5KRe_Share_matanim_joint";
char ftPp_Init_AnimDatFilename[] = "PlPpAJ.dat";

Fighter_DemoStrings ftPp_Init_DemoMotionFilenames = {
    "ftDemoResultMotionFilePopo",
    "ftDemoIntroMotionFilePopo",
    "ftDemoEndingMotionFilePopo",
    "ftDemoViWaitMotionFilePopo",
};

Fighter_CostumeStrings ftPp_Init_CostumeStrings[] = {
    { ftPp_Init_803CD628, ftPp_Init_803CD634, ftPp_Init_803CD64C },
    { ftPp_Init_803CD66C, ftPp_Init_803CD678, ftPp_Init_803CD690 },
    { ftPp_Init_803CD6B0, ftPp_Init_803CD6BC, ftPp_Init_803CD6D4 },
    { ftPp_Init_803CD6F4, ftPp_Init_803CD700, ftPp_Init_803CD718 },
};

void ftPp_Init_OnItemPickup(HSD_GObj* gobj, bool bool)
{
    Fighter_OnItemPickup(gobj, bool, 1, 1);
}

void ftPp_Init_OnItemInvisible(HSD_GObj* gobj)
{
    Fighter_OnItemInvisible(gobj, 1);
}

void ftPp_Init_OnItemVisible(HSD_GObj* gobj)
{
    Fighter_OnItemVisible(gobj, 1);
}

void ftPp_Init_OnItemDrop(HSD_GObj* gobj, bool bool1)
{
    Fighter_OnItemDrop(gobj, bool1, 1, 1);
}

void ftPp_Init_OnLoadForNana(Fighter* fp)
{
    PUSH_ATTRS(fp, ftIceClimberAttributes);
}

void ftPp_Init_OnLoad(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    void** item_list = fp->x10C_ftData->x48_items;
    fp->x2222_flag.bits.b5 = 1;

    PUSH_ATTRS(fp, ftIceClimberAttributes);

    {
        ftIceClimberAttributes* attr = fp->x2D4_specialAttributes;
        fp->x40 = attr->x0;
        it_8026B3F8(item_list[0], 0x6AU);
        it_8026B3F8(item_list[1], 0x6BU);
        it_8026B3F8(item_list[2], 0x71U);
    }
}

void ftPp_Init_OnDeath(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftParts_80074A4C(gobj, 0U, 0);
    ftParts_80074A4C(gobj, 1U, 0);
    fp->ev.nn.x2234 = 0;
    fp->ev.nn.x222C = 0;
    fp->ev.nn.x2230.bits.b0 = false;
    fp->ev.nn.x2238 = 0;
    fp->ev.nn.x224C = 0;
    fp->ev.nn.x2250 = 0.0f;
}

void ftPp_Init_8011F060(HSD_GObj* gobj)
{
    ftPp_Init_8011F190(gobj);
    ftPp_SpecialHi_80122898(gobj);
    ftPp_SpecialS_80121164(gobj);
    ftPp_SpecialN_8011F68C(gobj);
}

void ftPp_Init_LoadSpecialAttrs(HSD_GObj* gobj)
{
    COPY_ATTRS(gobj, ftIceClimberAttributes);
}

void ftPp_Init_OnKnockbackEnter(HSD_GObj* gobj)
{
    Fighter_OnKnockbackEnter(gobj, true);
}

void ftPp_Init_OnKnockbackExit(HSD_GObj* gobj)
{
    Fighter_OnKnockbackExit(gobj, true);
}

void ftPp_Init_8011F16C(HSD_GObj* gobj, uint i)
{
    Fighter* fp = (Fighter*) HSD_GObjGetUserData(gobj);

    if (i != fp->ev.nn.x222C) {
        return;
    }

    fp->ev.nn.x222C = 0;
    fp->cb.x21E4_callback_OnDeath2 = NULL;
    fp->cb.x21DC_callback_OnTakeDamage = NULL;
}

void ftPp_Init_8011F190(HSD_GObj* gobj)
{
    Fighter* fp = (Fighter*) HSD_GObjGetUserData(gobj);

    if (fp->ev.nn.x222C == 0) {
        return;
    }

    it_802C17DC(fp->ev.nn.x222C);
    ftPp_Init_8011F16C(gobj, fp->ev.nn.x222C);
}

extern f32 const ftPp_Init_804D9838;
extern f32 const ftPp_Init_804D983C;

void ftPp_SpecialN_Enter(HSD_GObj* gobj)
{
    Fighter* fp = (Fighter*) HSD_GObjGetUserData(gobj);
    fp->x2210_ThrowFlags.flags = 0;
    fp->x2200_ftcmd_var0 = 0;
    fp->ev.nn.x222C = 0;

    Fighter_ChangeMotionState(gobj, 341, 0, NULL, ftPp_Init_804D9838, ftPp_Init_804D983C,
                              ftPp_Init_804D9838);

    ftAnim_8006EBA4(gobj);
    fp->cb.x21BC_callback_Accessory4 = &ftPp_SpecialN_8011F500;
}

extern f32 const ftPp_Init_804D9840;

void ftPp_SpecialAirN_Enter(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    Fighter* fp = (Fighter*) HSD_GObjGetUserData(gobj);
    ftIceClimberAttributes* icattr = fp->x2D4_specialAttributes;

    fp->x2210_ThrowFlags.flags = 0;
    fp->x2200_ftcmd_var0 = 0;
    fp->ev.nn.x222C = 0;

    if ((s32) fp->ev.nn.x224C == false) {
        fp->x80_self_vel.y = icattr->x4;
        fp->ev.nn.x224C = true;
        fp->ev.nn.x2250 = ftPp_Init_804D9838;
    } else {
        fp->ev.nn.x2250 = ftPp_Init_804D9840;
    }

    Fighter_ChangeMotionState(gobj, 342, 0, NULL, ftPp_Init_804D9838, ftPp_Init_804D983C,
                              ftPp_Init_804D9838);

    ftAnim_8006EBA4(gobj);
    fp->cb.x21BC_callback_Accessory4 = &ftPp_SpecialN_8011F500;
}

void ftPp_SpecialN_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ft_8008A2BC(gobj);
    }
}

void ftPp_SpecialAirN_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ft_800CC730(gobj);
    }
}

void ftPp_SpecialN_IASA(HSD_GObj* arg0) {}

void ftPp_SpecialAirN_IASA(HSD_GObj* arg0) {}

void ftPp_SpecialN_Phys(HSD_GObj* gobj)
{
    ft_80084F3C(gobj);
}

void ftPp_SpecialAirN_Phys(HSD_GObj* gobj)
{
    ft_80084EEC(gobj);
}

void ftPp_SpecialN_Coll(HSD_GObj* gobj)
{
    if (!ft_80082708(gobj)) {
        Fighter* fp1;
        fp1 = GET_FIGHTER(gobj);
        if (fp1->ev.nn.x222C != 0U) {
            Fighter* fp2;
            it_802C17DC(fp1->ev.nn.x222C);
            fp2 = GET_FIGHTER(gobj);
            if ((u32) fp1->ev.nn.x222C == (u32) fp2->ev.nn.x222C) {
                fp2->ev.nn.x222C = 0U;
                fp2->cb.x21E4_callback_OnDeath2 = 0U;
                fp2->cb.x21DC_callback_OnTakeDamage = 0U;
            }
        }
        ft_800CC730(gobj);
    }
}

#ifdef MWERKS_GEKKO
#pragma push
asm void ftPp_SpecialAirN_Coll(HSD_GObj*)
{ // clang-format off
    nofralloc
/* 8011F454 0011C034  7C 08 02 A6 */	mflr r0
/* 8011F458 0011C038  90 01 00 04 */	stw r0, 4(r1)
/* 8011F45C 0011C03C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011F460 0011C040  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011F464 0011C044  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8011F468 0011C048  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8011F46C 0011C04C  93 81 00 20 */	stw r28, 0x20(r1)
/* 8011F470 0011C050  7C 7C 1B 78 */	mr r28, r3
/* 8011F474 0011C054  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8011F478 0011C058  83 BF 02 D4 */	lwz r29, 0x2d4(r31)
/* 8011F47C 0011C05C  4B F6 28 91 */	bl ft_80081D0C
/* 8011F480 0011C060  2C 03 00 00 */	cmpwi r3, 0
/* 8011F484 0011C064  41 82 00 5C */	beq lbl_8011F4E0
/* 8011F488 0011C068  83 DC 00 2C */	lwz r30, 0x2c(r28)
/* 8011F48C 0011C06C  80 7E 22 2C */	lwz r3, 0x222c(r30)
/* 8011F490 0011C070  28 03 00 00 */	cmplwi r3, 0
/* 8011F494 0011C074  41 82 00 2C */	beq lbl_8011F4C0
/* 8011F498 0011C078  48 1A 23 45 */	bl it_802C17DC
/* 8011F49C 0011C07C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 8011F4A0 0011C080  80 7E 22 2C */	lwz r3, 0x222c(r30)
/* 8011F4A4 0011C084  80 04 22 2C */	lwz r0, 0x222c(r4)
/* 8011F4A8 0011C088  7C 03 00 40 */	cmplw r3, r0
/* 8011F4AC 0011C08C  40 82 00 14 */	bne lbl_8011F4C0
/* 8011F4B0 0011C090  38 00 00 00 */	li r0, 0
/* 8011F4B4 0011C094  90 04 22 2C */	stw r0, 0x222c(r4)
/* 8011F4B8 0011C098  90 04 21 E4 */	stw r0, 0x21e4(r4)
/* 8011F4BC 0011C09C  90 04 21 DC */	stw r0, 0x21dc(r4)
lbl_8011F4C0:
/* 8011F4C0 0011C0A0  38 00 00 00 */	li r0, 0
/* 8011F4C4 0011C0A4  90 1F 22 4C */	stw r0, 0x224c(r31)
/* 8011F4C8 0011C0A8  38 7C 00 00 */	addi r3, r28, 0
/* 8011F4CC 0011C0AC  38 80 00 00 */	li r4, 0
/* 8011F4D0 0011C0B0  C0 02 9E 58 */	lfs f0, ftPp_Init_804D9838
/* 8011F4D4 0011C0B4  D0 1F 22 50 */	stfs f0, 0x2250(r31)
/* 8011F4D8 0011C0B8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8011F4DC 0011C0BC  4B FB 67 D5 */	bl ft_800D5CB0
lbl_8011F4E0:
/* 8011F4E0 0011C0C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011F4E4 0011C0C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011F4E8 0011C0C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8011F4EC 0011C0CC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8011F4F0 0011C0D0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8011F4F4 0011C0D4  38 21 00 30 */	addi r1, r1, 0x30
/* 8011F4F8 0011C0D8  7C 08 03 A6 */	mtlr r0
/* 8011F4FC 0011C0DC  4E 80 00 20 */	blr
} // clang-format on
#pragma pop
#endif

#ifdef MWERKS_GEKKO
#pragma push
asm void ftPp_SpecialN_8011F500(HSD_GObj*)
{ // clang-format off
    nofralloc
/* 8011F500 0011C0E0  7C 08 02 A6 */	mflr r0
/* 8011F504 0011C0E4  90 01 00 04 */	stw r0, 4(r1)
/* 8011F508 0011C0E8  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8011F50C 0011C0EC  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8011F510 0011C0F0  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8011F514 0011C0F4  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8011F518 0011C0F8  7C 7D 1B 78 */	mr r29, r3
/* 8011F51C 0011C0FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8011F520 0011C100  80 03 22 00 */	lwz r0, 0x2200(r3)
/* 8011F524 0011C104  3B E3 00 00 */	addi r31, r3, 0
/* 8011F528 0011C108  28 00 00 00 */	cmplwi r0, 0
/* 8011F52C 0011C10C  41 82 01 44 */	beq lbl_8011F670
/* 8011F530 0011C110  28 00 00 01 */	cmplwi r0, 1
/* 8011F534 0011C114  40 82 00 A0 */	bne lbl_8011F5D4
/* 8011F538 0011C118  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 8011F53C 0011C11C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8011F540 0011C120  83 DF 02 D4 */	lwz r30, 0x2d4(r31)
/* 8011F544 0011C124  38 80 00 00 */	li r4, 0
/* 8011F548 0011C128  80 63 00 00 */	lwz r3, 0(r3)
/* 8011F54C 0011C12C  4B EE BC 81 */	bl lb_8000B1CC
/* 8011F550 0011C130  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8011F554 0011C134  7F A3 EB 78 */	mr r3, r29
/* 8011F558 0011C138  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8011F55C 0011C13C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8011F560 0011C140  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8011F564 0011C144  38 A0 00 6A */	li r5, 0x6a
/* 8011F568 0011C148  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8011F56C 0011C14C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011F570 0011C150  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8011F574 0011C154  C0 1F 22 50 */	lfs f0, 0x2250(r31)
/* 8011F578 0011C158  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8011F57C 0011C15C  EC 01 00 2A */	fadds f0, f1, f0
/* 8011F580 0011C160  EC 02 00 2A */	fadds f0, f2, f0
/* 8011F584 0011C164  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8011F588 0011C168  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8011F58C 0011C16C  48 1A 20 05 */	bl it_802C1590
/* 8011F590 0011C170  90 7F 22 2C */	stw r3, 0x222c(r31)
/* 8011F594 0011C174  3C 80 00 02 */	lis r4, 0x0001FBE5@ha
/* 8011F598 0011C178  38 7F 00 00 */	addi r3, r31, 0
/* 8011F59C 0011C17C  38 84 FB E5 */	addi r4, r4, 0x0001FBE5@l
/* 8011F5A0 0011C180  38 A0 00 7F */	li r5, 0x7f
/* 8011F5A4 0011C184  38 C0 00 40 */	li r6, 0x40
/* 8011F5A8 0011C188  4B F6 8B A1 */	bl ft_80088148
/* 8011F5AC 0011C18C  80 1F 22 2C */	lwz r0, 0x222c(r31)
/* 8011F5B0 0011C190  28 00 00 00 */	cmplwi r0, 0
/* 8011F5B4 0011C194  41 82 00 14 */	beq lbl_8011F5C8
/* 8011F5B8 0011C198  3C 60 80 12 */	lis r3, ftPp_Init_8011F060@ha
/* 8011F5BC 0011C19C  38 03 F0 60 */	addi r0, r3, ftPp_Init_8011F060@l
/* 8011F5C0 0011C1A0  90 1F 21 E4 */	stw r0, 0x21e4(r31)
/* 8011F5C4 0011C1A4  90 1F 21 DC */	stw r0, 0x21dc(r31)
lbl_8011F5C8:
/* 8011F5C8 0011C1A8  38 00 00 00 */	li r0, 0
/* 8011F5CC 0011C1AC  90 1F 22 00 */	stw r0, 0x2200(r31)
/* 8011F5D0 0011C1B0  48 00 00 A0 */	b lbl_8011F670
lbl_8011F5D4:
/* 8011F5D4 0011C1B4  28 00 00 02 */	cmplwi r0, 2
/* 8011F5D8 0011C1B8  40 82 00 98 */	bne lbl_8011F670
/* 8011F5DC 0011C1BC  80 7F 22 2C */	lwz r3, 0x222c(r31)
/* 8011F5E0 0011C1C0  28 03 00 00 */	cmplwi r3, 0
/* 8011F5E4 0011C1C4  41 82 00 8C */	beq lbl_8011F670
/* 8011F5E8 0011C1C8  48 1A 21 11 */	bl it_802C16F8
/* 8011F5EC 0011C1CC  38 00 00 00 */	li r0, 0
/* 8011F5F0 0011C1D0  90 1F 22 00 */	stw r0, 0x2200(r31)
/* 8011F5F4 0011C1D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8011F5F8 0011C1D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8011F5FC 0011C1DC  40 82 00 20 */	bne lbl_8011F61C
/* 8011F600 0011C1E0  3C 80 00 02 */	lis r4, 0x0001FC5D@ha
/* 8011F604 0011C1E4  38 7F 00 00 */	addi r3, r31, 0
/* 8011F608 0011C1E8  38 84 FC 5D */	addi r4, r4, 0x0001FC5D@l
/* 8011F60C 0011C1EC  38 A0 00 7F */	li r5, 0x7f
/* 8011F610 0011C1F0  38 C0 00 40 */	li r6, 0x40
/* 8011F614 0011C1F4  4B F6 8B C5 */	bl ft_800881D8
/* 8011F618 0011C1F8  48 00 00 1C */	b lbl_8011F634
lbl_8011F61C:
/* 8011F61C 0011C1FC  3C 80 00 02 */	lis r4, 0x0001FC2A@ha
/* 8011F620 0011C200  38 7F 00 00 */	addi r3, r31, 0
/* 8011F624 0011C204  38 84 FC 2A */	addi r4, r4, 0x0001FC2A@l
/* 8011F628 0011C208  38 A0 00 7F */	li r5, 0x7f
/* 8011F62C 0011C20C  38 C0 00 40 */	li r6, 0x40
/* 8011F630 0011C210  4B F6 8B A9 */	bl ft_800881D8
lbl_8011F634:
/* 8011F634 0011C214  3C 80 00 02 */	lis r4, 0x0001FBE8@ha
/* 8011F638 0011C218  38 7F 00 00 */	addi r3, r31, 0
/* 8011F63C 0011C21C  38 84 FB E8 */	addi r4, r4, 0x0001FBE8@l
/* 8011F640 0011C220  38 A0 00 7F */	li r5, 0x7f
/* 8011F644 0011C224  38 C0 00 40 */	li r6, 0x40
/* 8011F648 0011C228  4B F6 8B 01 */	bl ft_80088148
/* 8011F64C 0011C22C  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 8011F650 0011C230  80 7F 22 2C */	lwz r3, 0x222c(r31)
/* 8011F654 0011C234  80 04 22 2C */	lwz r0, 0x222c(r4)
/* 8011F658 0011C238  7C 03 00 40 */	cmplw r3, r0
/* 8011F65C 0011C23C  40 82 00 14 */	bne lbl_8011F670
/* 8011F660 0011C240  38 00 00 00 */	li r0, 0
/* 8011F664 0011C244  90 04 22 2C */	stw r0, 0x222c(r4)
/* 8011F668 0011C248  90 04 21 E4 */	stw r0, 0x21e4(r4)
/* 8011F66C 0011C24C  90 04 21 DC */	stw r0, 0x21dc(r4)
lbl_8011F670:
/* 8011F670 0011C250  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8011F674 0011C254  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8011F678 0011C258  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8011F67C 0011C25C  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8011F680 0011C260  38 21 00 38 */	addi r1, r1, 0x38
/* 8011F684 0011C264  7C 08 03 A6 */	mtlr r0
/* 8011F688 0011C268  4E 80 00 20 */	blr
} // clang-format on
#pragma pop
#endif

extern f32 const ftPp_Init_804D9848;

#ifdef MWERKS_GEKKO
#pragma push
asm void ftPp_SpecialN_8011F68C(HSD_GObj*)
{ // clang-format off
    nofralloc
/* 8011F68C 0011C26C  7C 08 02 A6 */	mflr r0
/* 8011F690 0011C270  38 80 00 00 */	li r4, 0
/* 8011F694 0011C274  90 01 00 04 */	stw r0, 4(r1)
/* 8011F698 0011C278  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8011F69C 0011C27C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8011F6A0 0011C280  7C 7F 1B 78 */	mr r31, r3
/* 8011F6A4 0011C284  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8011F6A8 0011C288  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8011F6AC 0011C28C  C0 22 9E 68 */	lfs f1, ftPp_Init_804D9848
/* 8011F6B0 0011C290  38 7E 00 00 */	addi r3, r30, 0
/* 8011F6B4 0011C294  4B F5 62 79 */	bl ftParts_8007592C
/* 8011F6B8 0011C298  7F E3 FB 78 */	mr r3, r31
/* 8011F6BC 0011C29C  4B F4 D9 01 */	bl Fighter_UnkSetFlag_8006CFBC
/* 8011F6C0 0011C2A0  80 7E 1A 5C */	lwz r3, 0x1a5c(r30)
/* 8011F6C4 0011C2A4  28 03 00 00 */	cmplwi r3, 0
/* 8011F6C8 0011C2A8  41 82 00 14 */	beq lbl_8011F6DC
/* 8011F6CC 0011C2AC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8011F6D0 0011C2B0  4B F4 D8 ED */	bl Fighter_UnkSetFlag_8006CFBC
/* 8011F6D4 0011C2B4  38 00 00 00 */	li r0, 0
/* 8011F6D8 0011C2B8  90 1F 1A 5C */	stw r0, 0x1a5c(r31)
lbl_8011F6DC:
/* 8011F6DC 0011C2BC  38 00 00 00 */	li r0, 0
/* 8011F6E0 0011C2C0  90 1E 1A 5C */	stw r0, 0x1a5c(r30)
/* 8011F6E4 0011C2C4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8011F6E8 0011C2C8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8011F6EC 0011C2CC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8011F6F0 0011C2D0  38 21 00 28 */	addi r1, r1, 0x28
/* 8011F6F4 0011C2D4  7C 08 03 A6 */	mtlr r0
/* 8011F6F8 0011C2D8  4E 80 00 20 */	blr
} // clang-format on
#pragma pop
#endif

bool ftPp_SpecialN_8011F6FC(HSD_GObj* gobj)
{
    if (gobj != NULL) {
        Fighter* fp = GET_FIGHTER(gobj);

        if (fp != NULL) {
            return fp->x2204_ftcmd_var1;
        }
    }

    return true;
}