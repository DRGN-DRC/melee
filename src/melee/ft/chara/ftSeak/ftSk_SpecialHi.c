#include "ft/forward.h"
#include "ftSeak/forward.h"

#include "ftSeak/ftSk_SpecialHi.h"

#include "ef/eflib.h"
#include "ef/efsync.h"
#include "ft/fighter.h"
#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ftcliffcommon.h"
#include "ft/ftcommon.h"
#include "ft/inlines.h"
#include "ft/types.h"
#include "it/items/itseakvanish.h"
#include "lb/lb_00B0.h"

#include <math.h>
#include <placeholder.h>
#include <baselib/gobj.h>

/* 112F48 */ static void ftSk_SpecialHi_80112F48(Fighter_GObj* gobj);
/* 112FA8 */ static void ftSk_SpecialHi_80112FA8(Fighter_GObj* gobj);
/* 113038 */ static void fn_80113038(Fighter_GObj* gobj);

static float const ftSk_Init_804D9660 = 0;
static float const ftSk_Init_804D9664 = 1;
static double const ftSk_Init_804D9668 = S32_TO_F32;
static float const ftSk_Init_804D9670 = deg_to_rad;
static float const ftSk_Init_804D9674 = 90;
static double const ftSk_Init_804D9678 = 0.5;
static double const ftSk_Init_804D9680 = 3;
static float const ftSk_Init_804D9688 = M_PI / 2;
static float const ftSk_Init_804D968C = 35;
static float const ftSk_Init_804D9690 = 0.001;
static float const ftSk_Init_804D9694 = 10;

void fn_80112ED8(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (!fp->x2219_b0) {
        ftSk_SpecialHi_80112F48(gobj);
        ftSk_SpecialHi_80112FA8(gobj);
        ft_80088148(fp, 115, 127, 64);
    }
    fp->accessory4_cb = NULL;
}

void ftSk_SpecialHi_80112F48(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    u8 _[4];
    {
        Vec3 pos;
        u8 _[4];
        lb_8000B1CC(fp->parts[FtPart_HipN].joint, 0, &pos);
        pos.z = 0;
        it_802B1C60(gobj, &pos, fp->facing_dir);
    }
}

void ftSk_SpecialHi_80112FA8(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    Vec3 pos;
    lb_8000B1CC(fp->parts[FtPart_HipN].joint, 0, &pos);
    if (!fp->x2219_b0) {
        efSync_Spawn(1284, gobj, &pos);
        fp->x2219_b0 = true;
    }
    fp->pre_hitlag_cb = efLib_PauseAll;
    fp->post_hitlag_cb = efLib_ResumeAll;
}

void fn_80113038(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    Vec3 pos;
    if (!fp->x2219_b0) {
        lb_8000B1CC(fp->parts[FtPart_HipN].joint, 0, &pos);
        efSync_Spawn(1285, gobj, &pos);
        fp->x2219_b0 = true;
    }
    fp->pre_hitlag_cb = efLib_PauseAll;
    fp->post_hitlag_cb = efLib_ResumeAll;
    fp->accessory4_cb = NULL;
}

void ftSk_SpecialHi_Enter(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    u8 _[20];
    fp->cmd_vars[0] = 0;
    fp->mv.sk.specialhi.xC = 0;
    Fighter_ChangeMotionState(gobj, ftSk_MS_SpecialHiStart_0, 0, 0, 1, 0,
                              NULL);
    ftAnim_8006EBA4(gobj);
}

void ftSk_SpecialAirHi_Enter(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftSeakAttributes* da = fp->dat_attrs;
    u8 _[20];
    fp->cmd_vars[0] = 0;
    fp->mv.sk.specialhi.xC = 0;
    fp->self_vel.y = da->self_vel_y;
    Fighter_ChangeMotionState(gobj, ftSk_MS_SpecialAirHiStart_0, 0, 0, 1, 0,
                              NULL);
    ftAnim_8006EBA4(gobj);
}

// 801131D0 - 8011320C (0x3C bytes)
void ftSk_SpecialAirHiStart_0_Anim(HSD_GObj* gobj)
{
    if (ftAnim_IsFramesRemaining((Fighter_GObj*) gobj) == 0) {
        ftSk_SpecialHi_80113A30(gobj);
    }
}

// 8011320C - 80113210 (0x4 bytes)
void ftSk_SpecialHiStart_0_IASA(HSD_GObj* gobj)
{
    return;
}

// Interrupt_SheikUpBStartAir
// 80113210 - 80113214 (0x4 bytes)
void ftSk_SpecialAirHiStart_0_IASA(HSD_GObj* gobj)
{
    return;
}

// 80113214 - 80113234 (0x20 bytes)
void ftSk_SpecialHiStart_0_Phys(HSD_GObj* gobj)
{
    ft_80084F3C((Fighter_GObj*) gobj);
}

// 80113234 - 80113278 (0x44 bytes)
// https://decomp.me/scratch/HpXlE
void ftSk_SpecialAirHiStart_0_Phys(HSD_GObj* gobj)
{
    Fighter* fp;
    ftSeakAttributes* attr;
    f32 unused[4];

    fp = gobj->user_data;
    attr = fp->dat_attrs;
    ftCommon_8007D494((Fighter*) fp, attr->x30, attr->x34);
    ftCommon_8007D268((Fighter*) fp);
}

// 80113278 - 801132B4 (0x3C bytes)
void ftSk_SpecialHiStart_0_Coll(HSD_GObj* gobj)
{
    if (ft_80082708((Fighter_GObj*) gobj) == GA_Ground) {
        ftSk_SpecialHi_80113324(gobj);
    }
}

// 801132B4 - 80113324 (0x70 bytes)
// https://decomp.me/scratch/C7jWu
void ftSk_SpecialAirHiStart_0_Coll(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    s32 direction; // r4
    s32 groundOrLedge;

    if (fp->facing_dir < ftSk_Init_804D9660) {
        direction = -1;
    } else {
        direction = 1;
    }

    groundOrLedge = ft_CheckGroundAndLedge((Fighter_GObj*) gobj, direction);

    if (groundOrLedge != 0) {
        ftSk_SpecialHi_80113390(gobj);
    } else if (ftCliffCommon_80081298((Fighter_GObj*) gobj) == 0) {
        return;
    }
}

// 80113324 - 80113390 (0x6C bytes)
void ftSk_SpecialHi_80113324(Fighter_GObj* gobj)
{
    Fighter* fp;

    fp = gobj->user_data;
    ftCommon_8007D60C(fp);
    Fighter_ChangeMotionState(gobj, 0x166, 0x0C4C508EU, fp->cur_anim_frame,
                              ftSk_Init_804D9664, ftSk_Init_804D9660, NULL);
    fp->accessory4_cb = fn_80112ED8;
}

// 80113390 - 801133FC (0x6C bytes)
void ftSk_SpecialHi_80113390(Fighter_GObj* gobj)
{
    Fighter* fp;

    fp = gobj->user_data;
    ftCommon_8007D7FC(fp);
    Fighter_ChangeMotionState(gobj, 0x163, 0x0C4C508EU, fp->cur_anim_frame,
                              ftSk_Init_804D9664, ftSk_Init_804D9660, NULL);
    fp->accessory4_cb = fn_80112ED8;
}

// 801133FC - 80113438 (0x3C bytes)
// https://decomp.me/scratch/6l76B
void ftSk_SpecialHiStart_1_Anim(HSD_GObj* gobj)
{
    Fighter* fp;

    fp = gobj->user_data;
    fp->mv.sk.specialn.x0 -= 1;

    if (0 >= fp->mv.sk.specialn.x0) {
        ftSk_SpecialHi_80113EAC(gobj);
    }
}

// Animation_SheikUpBTravel
// 80113438 - 80113474 (0x3C bytes)
void ftSk_SpecialAirHiStart_1_Anim(HSD_GObj* gobj)
{
    Fighter* fp;

    fp = gobj->user_data;
    fp->mv.sk.specialn.x0 -= 1;

    if (0 >= fp->mv.sk.specialn.x0) {
        ftSk_SpecialHi_80113F68(gobj);
    }
}

// 80113474 - 80113478 (0x4 bytes)
void ftSk_SpecialHiStart_1_IASA(HSD_GObj* gobj)
{
    return;
}

// Interrupt_SheikUpBTravelAir
// 80113478 - 8011347C (0x4 bytes)
void ftSk_SpecialAirHiStart_1_IASA(HSD_GObj* gobj)
{
    return;
}

// Physics_SheikUpBTravelAir
// 8011347C - 8011349C (0x20 bytes)
void ftSk_SpecialHiStart_1_Phys(HSD_GObj* gobj)
{
    ftCommon_8007CB74((Fighter_GObj*) gobj);
}

// 8011349C - 801134A0 (0x4 bytes)
void ftSk_SpecialAirHiStart_1_Phys(HSD_GObj* gobj)
{
    return;
}

// 801134A0 - 80113540 (0xA0 bytes)
// https://decomp.me/scratch/dULMS

// 80113540 - 8011374C (0x20C bytes)

// AS_SheikUpBGroundtoAirFall?
// 8011374C - 801137C8 (0x7C bytes)

// AS_SheikUpBLand
// 801137C8 - 80113838 (0x70 bytes)

// AS_SheikUpBTravelGround
// 80113838 - 80113A30 (0x1F8 bytes)

// AS_SheikUpBTravelAir
// 80113A30 - 80113C40 (0x210 bytes)

// 80113C40 - 80113C7C (0x3C bytes)

// 80113C7C - 80113CDC (0x60 bytes)

// 80113CDC - 80113CE0 (0x4 bytes)

// Interrupt_SheikUpBEndAir
// 80113CE0 - 80113CE4 (0x4 bytes)

// 80113CE4 - 80113D04 (0x20 bytes)

// 80113D04 - 80113D80 (0x7C bytes)

// 80113D80 - 80113DBC (0x3C bytes)

// 80113DBC - 80113E40 (0x84 bytes)

// 80113E40 - 80113EAC (0x6C bytes)

// 80113EAC - 80113F68 (0xBC bytes)

// AS_SheikUpBFall
// 80113F68 - 80114034 (0xCC bytes)
