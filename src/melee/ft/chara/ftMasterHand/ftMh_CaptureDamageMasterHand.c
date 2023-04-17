#include "ftMasterHand/ftMh_CaptureDamageMasterHand.h"

#include "ft/fighter.h"
#include "ft/ftanim.h"
#include "ft/ftcommon.h"

// 80155C88 152868
void ftMh_CaptureDamageMasterHand_IASA(HSD_GObj* gobj)
{
    return;
}

// 80155C8C 15286C
void ftMh_CaptureDamageMasterHand_Phys(HSD_GObj* gobj)
{
    return;
}

// 80155C90 152870
void ftMh_CaptureDamageMasterHand_Coll(HSD_GObj* gobj)
{
    return;
}

// 80155C94 152874
// https://decomp.me/scratch/8Kpd7
void ftMh_CaptureDamageMasterHand_80155C94(HSD_GObj* gobj)
{
    Fighter* fp = gobj->user_data;
    Fighter_ChangeMotionState(gobj, 0x149, 0, 0, 0.0f, 1.0f, 0.0f);
    fp->x221E_flag.bits.b0 = true;
    ftCommon_8007E2F4(fp, 0x1FF);
    fp->x2220_flag.bits.b3 = true;
    ftAnim_8006EBA4(gobj);
}