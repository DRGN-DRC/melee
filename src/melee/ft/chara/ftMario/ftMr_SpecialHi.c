#include "ftmario.h"

#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ftparts.h"

#include <baselib/random.h>

void ftMr_SpecialHi_Enter(HSD_GObj* gobj)
{
    Fighter* fp;

    fp = GET_FIGHTER(gobj);
    fp->x2200_ftcmd_var0 = 0;
    fp->x2210_ThrowFlags.flags = 0;
    Fighter_ChangeMotionState(gobj, AS_MARIO_SPECIALHI, 0, NULL, 0.0f, 1.0f,
                              0.0f);
    ftAnim_8006EBA4(gobj);
}

void ftMr_SpecialAirHi_Enter(HSD_GObj* gobj)
{
    Fighter* fp;
    ftMarioAttributes* sa;

    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    fp = GET_FIGHTER(gobj);
    sa = (ftMarioAttributes*) fp->x2D4_specialAttributes;
    fp->x2200_ftcmd_var0 = 0;
    fp->x2210_ThrowFlags.flags = 0;
    fp->x80_self_vel.y = 0.0f;
    fp->x80_self_vel.x =
        (f32) (fp->x80_self_vel.x * sa->x2C_MARIO_SUPERJUMP_VEL_X);
    Fighter_ChangeMotionState(gobj, AS_MARIO_SPECIALAIRHI, 0, NULL, 0.0f, 1.0f,
                              0.0f);
    ftAnim_8006EBA4(gobj);
}

// 0x800E1B24
void ftMr_SpecialHi_Anim(HSD_GObj* gobj)
{
    Fighter* fp;
    ftMarioAttributes* sa;

    fp = GET_FIGHTER(gobj);
    sa = (ftMarioAttributes*) fp->x2D4_specialAttributes;
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ft_80096900(gobj, 0, 1, 0, sa->x18_MARIO_SUPERJUMP_FREEFALL_MOBILITY,
                    sa->x1C_MARIO_SUPERJUMP_LANDING_LAG);
    }
}

// 0x800E1B84
void ftMr_SpecialAirHi_Anim(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    ftMr_SpecialHi_Anim(gobj);
}

#define DEGREES_TO_RADIANS (3.14159265359f / 180.0f)
#define HALF_PI (M_PI / 2)

#define abs(x) (x < 0.0f ? -x : x)

// https://decomp.me/scratch/9AoMu
inline void ftMario_SpecialHi_CalcAngle(HSD_GObj* gobj)
{
    Fighter* fp;
    ftMarioAttributes* sa;

    f32 inputStickangle, lstick_x;
    f32 tmp_expr;
    f32 tmp;

    s32 throwflag_flag;
    fp = GET_FIGHTER(gobj);

    sa = (ftMarioAttributes*) fp->x2D4_specialAttributes;

    lstick_x = abs(fp->input.x620_lstick_x);

    if ((s32) fp->x2200_ftcmd_var0 == 0U) {
        if (lstick_x > sa->x24_MARIO_SUPERJUMP_MOMENTUM_STICK_RANGE) {
            tmp_expr =
                (f32) ((f64) sa->x28_MARIO_SUPERJUMP_ANGLE_DIFF *
                       ((f64) (lstick_x -
                               sa->x24_MARIO_SUPERJUMP_MOMENTUM_STICK_RANGE) /
                        (1.0 -
                         (f64) sa->x24_MARIO_SUPERJUMP_MOMENTUM_STICK_RANGE)));

            tmp = (fp->input.x620_lstick_x > 0.0f)
                      ? -(DEGREES_TO_RADIANS * tmp_expr)
                      : (DEGREES_TO_RADIANS * tmp_expr);
            inputStickangle = fp->x6BC_inputStickangle;

            if (abs(tmp) > abs(inputStickangle)) {
                fp->x6BC_inputStickangle = tmp;
            }
        }
    }

    if (fp->x2210_ThrowFlags.b3 != 0) {
        fp->x2210_ThrowFlags.b3 = 0;
        throwflag_flag = 1;
    } else {
        throwflag_flag = 0;
    }
    if (throwflag_flag != 0) {
        if (abs(fp->input.x620_lstick_x) >
            sa->x20_MARIO_SUPERJUMP_REVERSE_STICK_RANGE)
        {
            ftCommon_8007D9FC(fp);
            ftParts_80075AF0(fp, 0, (f32) (HALF_PI * (f64) fp->facing_dir));
        }
    }
}

// 0x800E1BE4
void ftMr_SpecialHi_IASA(HSD_GObj* gobj)
{
    ftMario_SpecialHi_CalcAngle(gobj);
}

// 0x800E1D2C
void ftMr_SpecialAirHi_IASA(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[16];
#endif

    ftMario_SpecialHi_CalcAngle(gobj);
}

// 0x800E1E74
// https://decomp.me/scratch/8axfI
void ftMr_SpecialHi_Phys(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (fp->xE0_ground_or_air == GA_Air) {
        ft_80085154(gobj);
    } else {
        ft_80084FA8(gobj);
    }
}

// 0x800E1EAC
// https://decomp.me/scratch/1jYsR
void ftMr_SpecialAirHi_Phys(HSD_GObj* gobj)
{
    Fighter* fp;
    ftMarioAttributes* sa;
    struct attr* attr_ptr;

    fp = getFighter(gobj);
    sa = GetMarioAttr(fp);
    attr_ptr = &(fp->x110_attr);

    if ((u32) fp->x2200_ftcmd_var0 != 0U) {
        ft_80085154(gobj);
        fp->x80_self_vel.x =
            (f32) (fp->x80_self_vel.x * sa->x34_MARIO_SUPERJUMP_VEL_MUL);
        fp->x80_self_vel.y =
            (f32) (fp->x80_self_vel.y * sa->x34_MARIO_SUPERJUMP_VEL_MUL);
        fp->x80_self_vel.z =
            (f32) (fp->x80_self_vel.z * sa->x34_MARIO_SUPERJUMP_VEL_MUL);
        return;
    }
    ftCommon_8007D494(fp, sa->x30_MARIO_SUPERJUMP_GRAVITY,
                      attr_ptr->x170_TerminalVelocity);
    ftCommon_8007CF58(fp);
}

// 0x800E1F40
// https://decomp.me/scratch/5eIAp
void ftMr_SpecialHi_CheckLanding(HSD_GObj* gobj)
{
    Fighter* fp;
    ftMarioAttributes* sa;

    fp = GET_FIGHTER(gobj);

    sa = (ftMarioAttributes*) fp->x2D4_specialAttributes;
    ft_800D5CB0(gobj, 0, sa->x1C_MARIO_SUPERJUMP_LANDING_LAG);
}

// 0x800E1F70
// https://decomp.me/scratch/k2DCy
void ftMr_SpecialHi_Coll(HSD_GObj* gobj)
{
    Fighter* fp;

    fp = GET_FIGHTER(gobj);
    if (fp->xE0_ground_or_air == GA_Air) {
        if (fp->x2200_ftcmd_var0 == 0 || fp->x80_self_vel.y >= 0.0f) {
            ft_80083B68(gobj);
        } else {
            ft_800831CC(gobj, &ft_80096CC8, &ftMr_SpecialHi_CheckLanding);
        }
    } else {
        ft_80084104(gobj);
    }
}

// 0x800E1FE0
void ftMr_SpecialAirHi_Coll(HSD_GObj* gobj)
{
    ftMr_SpecialHi_Coll(gobj);
}