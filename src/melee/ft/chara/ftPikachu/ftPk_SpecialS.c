#include "lb/forward.h"

#include "ft/chara/ftPikachu/ftpikachu.h"
#include "ft/ft_081B.h"
#include "ft/ft_0877.h"
#include "ft/ftcoll.h"
#include "ft/inlines.h"

void ftPk_SpecialS_Enter(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    fp->cb.x21EC_callback = ftPk_SpecialN_80124DC8;

    fp->xEC_ground_vel /= sa->x30;
    Fighter_ChangeMotionState(gobj, 343, 0, 0, 0, 1, 0);
    ftAnim_8006EBA4(gobj);
}

void ftPk_SpecialAirS_Enter(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    fp->cb.x21EC_callback = ftPk_SpecialN_80124DC8;

    fp->x80_self_vel.x /= sa->x30;
    fp->x80_self_vel.y = 0;
    Fighter_ChangeMotionState(gobj, 348, 0, 0, 0, 1, 0);
    ftAnim_8006EBA4(gobj);
}

void ftPk_SpecialS_ZeroVelocity(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    fp->x80_self_vel.x = 0;

    if (fp->x80_self_vel.y >= 0) {
        fp->x80_self_vel.y = 0;
    }

    ftPk_SpecialS_ChangeMotion_Unk12(gobj);
}

void ftPk_SpecialSStart_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk04(gobj);
    }
}

void ftPk_SpecialAirSStart_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk05(gobj);
    }
}

void ftPk_SpecialSStart_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialAirSStart_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialSStart_Phys(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = getFtSpecialAttrsD(fp);
    f32 pika_attr_x34 = sa->x34;
    ftCommon_8007C930(fp, pika_attr_x34);
    ftCommon_8007CB74(gobj);
}

void ftPk_SpecialAirSStart_Phys(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* pika_attr = getFtSpecialAttrsD(fp);
    struct attr* attr = &fp->x110_attr;

    if (fp->x2200_ftcmd_var0) {
        ftCommon_8007D494(fp, pika_attr->x38, attr->x170_TerminalVelocity);
    }

    ftCommon_8007CE94(fp, pika_attr->x34);
}

void ftPk_SpecialSStart_Coll(HSD_GObj* gobj)
{
    if (!ft_80082708(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk00(gobj);
    }
}

void ftPk_SpecialAirSStart_Coll(HSD_GObj* gobj)
{
    if (ft_80081D0C(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk01(gobj);
    }
}

static const Fighter_MotionStateChangeFlags transition_flags0 =
    FtStateChange_PreserveColAnimHitStatus | FtStateChange_SkipUpdateMatAnim |
    FtStateChange_PreserveSfx | FtStateChange_SkipUpdateColAnim |
    FtStateChange_UpdateCmd | FtStateChange_SkipUpdateItemVis |
    FtStateChange_Unk_19 | FtStateChange_SkipUpdateModelPartVis |
    FtStateChange_SkipUpdateModelFlag | FtStateChange_Unk_27;

void ftPk_SpecialS_ChangeMotion_Unk00(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D5D4(fp);
    Fighter_ChangeMotionState(gobj, 348, transition_flags0, 0,
                              fp->x894_currentAnimFrame, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk01(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D7FC(fp);
    Fighter_ChangeMotionState(gobj, 343, transition_flags0, 0,
                              fp->x894_currentAnimFrame, 1.0f, 0.0f);
}

void ftPk_SpecialSCharge_Anim(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[4];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftCommon_8007DB24(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect0;
    }

    fp->sv.pk.unk3.x0++;

    if (fp->sv.pk.unk3.x0 > sa->x24) {
        ftPk_SpecialS_ChangeMotion_Unk08(gobj);
    }
}

void ftPk_SpecialAirSCharge_Anim(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftCommon_8007DB24(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect0;
    }

    fp->sv.pk.unk3.x0++;

    if (fp->sv.pk.unk3.x0 > sa->x24) {
        ftPk_SpecialS_ChangeMotion_Unk09(gobj);
    }
}

void ftPk_SpecialSCharge_IASA(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (!(fp->input.x65C_heldInputs & HSD_BUTTON_B)) {
        ftPk_SpecialS_ChangeMotion_Unk08(gobj);
    }
}

void ftPk_SpecialAirSCharge_IASA(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (!(fp->input.x65C_heldInputs & HSD_BUTTON_B)) {
        ftPk_SpecialS_ChangeMotion_Unk09(gobj);
    }
}

void ftPk_SpecialSCharge_Phys(HSD_GObj* gobj)
{
    ft_80084F3C(gobj);
}

void ftPk_SpecialAirSCharge_Phys(HSD_GObj* gobj)
{
    ft_80084EEC(gobj);
}

void ftPk_SpecialSCharge_Coll(HSD_GObj* gobj)
{
    if (!ft_80082708(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk02(gobj);
    }
}

void ftPk_SpecialAirSCharge_Coll(HSD_GObj* gobj)
{
    if (ft_80081D0C(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk03(gobj);
    }
}

static Fighter_MotionStateChangeFlags const transition_flags1 =
    FtStateChange_PreserveGfx | FtStateChange_PreserveColAnimHitStatus |
    FtStateChange_SkipUpdateMatAnim | FtStateChange_PreserveSfx |
    FtStateChange_SkipUpdateColAnim | FtStateChange_UpdateCmd |
    FtStateChange_SkipUpdateItemVis | FtStateChange_Unk_19 |
    FtStateChange_SkipUpdateModelPartVis | FtStateChange_SkipUpdateModelFlag |
    FtStateChange_Unk_27;

void ftPk_SpecialS_ChangeMotion_Unk02(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D5D4(fp);
    Fighter_ChangeMotionState(gobj, 349, transition_flags1, 0,
                              fp->x894_currentAnimFrame, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk03(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D7FC(fp);
    Fighter_ChangeMotionState(gobj, 344, transition_flags1, 0,
                              fp->x894_currentAnimFrame, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk04(HSD_GObj* gobj)
{
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter_ChangeMotionState(gobj, 344, FtStateChange_PreserveSfx, 0, 0, 1,
                              0);

    {
        Fighter* fp = GET_FIGHTER(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect0;
    }
}

void ftPk_SpecialS_ChangeMotion_Unk05(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter_ChangeMotionState(gobj, 349, FtStateChange_PreserveSfx, 0, 0, 1,
                              0);

    {
        Fighter* fp = GET_FIGHTER(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect0;
    }
}

void ftPk_SpecialSLaunch_Anim(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[16];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    if (fp->x914[0].state == HitCapsule_Enabled) {
        f32 damage_amount = fp->sv.pk.unk3.x0 * sa->x2C + sa->x28;
        ftColl_8007ABD0(&fp->x914[0], damage_amount, gobj);
    }

    if (fp->x2200_ftcmd_var0) {
        ftCommon_8007D5D4(fp);
        ftPk_SpecialS_ChangeMotion_Unk10(gobj);
    }
}

void ftPk_SpecialAirSLaunch_Anim(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[16];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    if (fp->x914[0].state == HitCapsule_Enabled) {
        f32 damage_amount = fp->sv.pk.unk3.x0 * sa->x2C + sa->x28;
        ftColl_8007ABD0(&fp->x914[0], damage_amount, gobj);
    }

    if (fp->x2200_ftcmd_var0) {
        ftPk_SpecialS_ChangeMotion_Unk10(gobj);
    }
}

void ftPk_SpecialSLaunch_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialAirSLaunch_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialSLaunch_Phys(HSD_GObj* gobj)
{
    ft_80084F3C(gobj);
}

void ftPk_SpecialAirSLaunch_Phys(HSD_GObj* gobj)
{
    ft_80084EEC(gobj);
}

void ftPk_SpecialSLaunch_Coll(HSD_GObj* gobj)
{
    if (!ft_80082708(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk06(gobj);
    }
}

void ftPk_SpecialAirSLaunch_Coll(HSD_GObj* gobj)
{
    if (ft_80081D0C(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk07(gobj);
    }
}

static Fighter_MotionStateChangeFlags const transition_flags2 =
    FtStateChange_PreserveGfx | FtStateChange_PreserveColAnimHitStatus |
    FtStateChange_SkipUpdateMatAnim | FtStateChange_SkipUpdateColAnim |
    FtStateChange_UpdateCmd | FtStateChange_SkipUpdateItemVis |
    FtStateChange_Unk_19 | FtStateChange_SkipUpdateModelPartVis |
    FtStateChange_SkipUpdateModelFlag | FtStateChange_Unk_27;

void ftPk_SpecialS_ChangeMotion_Unk06(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D5D4(fp);
    Fighter_ChangeMotionState(gobj, 352, transition_flags2, 0,
                              fp->x894_currentAnimFrame, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk07(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftCommon_8007D7FC(fp);
    Fighter_ChangeMotionState(gobj, 347, transition_flags2, 0,
                              fp->x894_currentAnimFrame, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk08(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter_ChangeMotionState(gobj, 347, 0, 0, 0, 1, 0);
    {
        Fighter* fp = GET_FIGHTER(gobj);
        fp->x2200_ftcmd_var0 = 0;
        ftCommon_8007DB24(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect1;
    }
}

void ftPk_SpecialS_ChangeMotion_Unk09(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter_ChangeMotionState(gobj, 352, 0, 0, 0, 1, 0);

    {
        Fighter* fp = GET_FIGHTER(gobj);
        fp->x2200_ftcmd_var0 = 0;
        ftCommon_8007DB24(gobj);
        fp->cb.x21BC_callback_Accessory4 = &ftPk_SpecialN_SpawnEffect1;
    }
}

void ftPk_MS_345_Anim(HSD_GObj* arg0) {}

void ftPk_SpecialAirS_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ftPk_SpecialS_ChangeMotion_Unk12(gobj);
    }
}

void ftPk_MS_345_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialAirS_IASA(HSD_GObj* arg0) {}

void ftPk_MS_345_Phys(HSD_GObj* arg0) {}

void ftPk_SpecialAirS_Phys(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* pika_attr = fp->x2D4_specialAttributes;

    if (fp->x2200_ftcmd_var0 != 0) {
        ftCommon_8007D494(fp, pika_attr->x58, pika_attr->x4C);
    } else {
        ftCommon_8007D494(fp, pika_attr->x48, pika_attr->x4C);
    }

    if (fp->x2200_ftcmd_var0 != 0) {
        ftCommon_8007CE94(fp, pika_attr->x54);
    }
}

void ftPk_MS_345_Coll(HSD_GObj* arg0) {}

void ftPk_SpecialAirS_Coll(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    CollData* collData = &fp->x6F0_collData;

    if (ft_80081D0C(gobj)) {
        ftCommon_8007D7FC(fp);
        ftPk_SpecialS_ChangeMotion_Unk11(gobj);
    }

    if (collData->x134_envFlags & MPCOLL_RIGHTWALL ||
        collData->x134_envFlags & MPCOLL_LEFTWALL)
    {
        ftPk_SpecialS_ChangeMotion_Unk12(gobj);
    }
}

static Fighter_MotionStateChangeFlags const transition_flags3 =
    FtStateChange_PreserveGfx | FtStateChange_SkipUpdateHit;

void ftPk_SpecialS_ChangeMotion_Unk10(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    fp->x2200_ftcmd_var0 = 0;

    fp->x80_self_vel.x = sa->x40 * fp->sv.pk.unk3.x0 + sa->x3C;
    fp->x80_self_vel.x *= fp->facing_dir;

    {
        f32 temp = 0.5f * fp->sv.pk.unk3.x0 / sa->x24;
        fp->x80_self_vel.y = 0.5f * sa->x44 + sa->x44 * temp;
    }

    Fighter_ChangeMotionState(gobj, 350, transition_flags3, 0,
                              fp->x894_currentAnimFrame, 1, 0);

    fp->cb.x21F8_callback = &ftCommon_8007F76C;
    fp->cb.x21C0_callback_OnGiveDamage = &ftPk_SpecialS_ZeroVelocity;
}

void ftPk_SpecialSLanding_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ft_8008A2BC(gobj);
    }
}

void ftPk_SpecialAirSEnd_Anim(HSD_GObj* gobj)
{
    if (!ftAnim_IsFramesRemaining(gobj)) {
        ft_800CC730(gobj);
    }
}

void ftPk_SpecialSLanding_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialAirSEnd_IASA(HSD_GObj* arg0) {}

void ftPk_SpecialSLanding_Phys(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;
    ftCommon_8007C930(fp, sa->x54);
    ftCommon_8007CB74(gobj);
}

void ftPk_SpecialAirSEnd_Phys(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;
    ftCommon_8007D494(fp, sa->x58, fp->x110_attr.x170_TerminalVelocity);
    ftCommon_8007CE94(fp, sa->x54);
}

void ftPk_SpecialSLanding_Coll(HSD_GObj* gobj)
{
    if (!ft_80082708(gobj)) {
        ft_800CC730(gobj);
    }
}

void ftPk_SpecialAirSEnd_Coll(HSD_GObj* gobj)
{
    Fighter* fp = GET_FIGHTER(gobj);
    if (ft_80081D0C(gobj)) {
        ftCommon_8007D7FC(fp);
        ftPk_SpecialS_ChangeMotion_Unk11(gobj);
    }
}

void ftPk_SpecialS_ChangeMotion_Unk11(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    fp->x2200_ftcmd_var0 = 0;
    fp->xEC_ground_vel /= sa->x50;

    Fighter_ChangeMotionState(gobj, 346, 0, 0, 0, 1, 0);
}

void ftPk_SpecialS_ChangeMotion_Unk12(HSD_GObj* gobj)
{
    /// @todo Unused stack.
#ifdef MUST_MATCH
    u8 _[8];
#endif

    Fighter* fp = GET_FIGHTER(gobj);
    ftPikachuAttributes* sa = fp->x2D4_specialAttributes;

    fp->x2200_ftcmd_var0 = 0;
    fp->x80_self_vel.x /= sa->x50;

    Fighter_ChangeMotionState(gobj, 351, 0, 0, 0, 1, 0);
}