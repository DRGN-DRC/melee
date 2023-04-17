#ifndef MELEE_FT_CHARA_FTICECLIMBER_FTICECLIMBER_H
#define MELEE_FT_CHARA_FTICECLIMBER_FTICECLIMBER_H

#include "ft/ftcommon.h"
#include "lb/lbvector.h"

typedef struct _ftIceClimberAttributes {
    f32 x0;
    f32 x4;
    f32 x8;
    f32 xC;
    f32 x10;
    f32 x14;
    f32 x18;
    s32 x1C;
    s32 x20;
    s32 x24;
    s32 x28;
    s32 x2C;
    u8 data_filler_1[0xC4 - 0x30];
    f32 xC4;
    f32 xC8;
    u8 data_filler_2[0x90];
} ftIceClimberAttributes;

void ftPp_Init_OnLoadForNana(Fighter* fp);
void ftPp_SpecialN_Anim(HSD_GObj*);
void ftPp_SpecialN_IASA(HSD_GObj*);
void ftPp_SpecialN_Phys(HSD_GObj*);
void ftPp_SpecialN_Coll(HSD_GObj*);
void ftPp_SpecialAirN_Anim(HSD_GObj*);
void ftPp_SpecialAirN_IASA(HSD_GObj*);
void ftPp_SpecialAirN_Phys(HSD_GObj*);
void ftPp_SpecialAirN_Coll(HSD_GObj*);
void ftPp_SpecialS_Anim(HSD_GObj*);
void ftPp_SpecialS_IASA(HSD_GObj*);
void ftPp_SpecialS_Phys(HSD_GObj*);
void ftPp_SpecialS_Coll(HSD_GObj*);
void ftPp_SpecialSTogether_Anim(HSD_GObj*);
void ftPp_SpecialSTogether_IASA(HSD_GObj*);
void ftPp_SpecialSTogether_Phys(HSD_GObj*);
void ftPp_SpecialSTogether_Coll(HSD_GObj*);
void ftPp_SpecialAirS_Anim(HSD_GObj*);
void ftPp_SpecialAirS_IASA(HSD_GObj*);
void ftPp_SpecialAirS_Phys(HSD_GObj*);
void ftPp_SpecialAirS_Coll(HSD_GObj*);
void ftPp_SpecialAirSTogether_Anim(HSD_GObj*);
void ftPp_SpecialAirSTogether_IASA(HSD_GObj*);
void ftPp_SpecialAirSTogether_Phys(HSD_GObj*);
void ftPp_SpecialAirSTogether_Coll(HSD_GObj*);
void ftPp_SpecialHiStart_Anim(HSD_GObj*);
void ftPp_SpecialHiStart_IASA(HSD_GObj*);
void ftPp_SpecialHiStart_Phys(HSD_GObj*);
void ftPp_SpecialHiStart_Coll(HSD_GObj*);
void ftPp_SpecialHi_Anim(HSD_GObj*);
void ftPp_SpecialHi_IASA(HSD_GObj*);
void ftPp_SpecialHi_Phys(HSD_GObj*);
void ftPp_SpecialHi_Coll(HSD_GObj*);
void ftPp_MS_349_Anim(HSD_GObj*);
void ftPp_MS_349_IASA(HSD_GObj*);
void ftPp_MS_349_Phys(HSD_GObj*);
void ftPp_MS_349_Coll(HSD_GObj*);
void ftPp_SpecialHiFail_Anim(HSD_GObj*);
void ftPp_SpecialHiFail_IASA(HSD_GObj*);
void ftPp_SpecialHiFail_Phys(HSD_GObj*);
void ftPp_SpecialHiFail_Coll(HSD_GObj*);
void ftPp_SpecialHiFailEnd_Anim(HSD_GObj*);
void ftPp_SpecialHiFailEnd_IASA(HSD_GObj*);
void ftPp_SpecialHiFailEnd_Phys(HSD_GObj*);
void ftPp_SpecialHiFailEnd_Coll(HSD_GObj*);
void ftPp_SpecialAirHiStart_Anim(HSD_GObj*);
void ftPp_SpecialAirHiStart_IASA(HSD_GObj*);
void ftPp_SpecialAirHiStart_Phys(HSD_GObj*);
void ftPp_SpecialAirHiStart_Coll(HSD_GObj*);
void ftPp_SpecialAirHi_Anim(HSD_GObj*);
void ftPp_SpecialAirHi_IASA(HSD_GObj*);
void ftPp_SpecialAirHi_Phys(HSD_GObj*);
void ftPp_SpecialAirHi_Coll(HSD_GObj*);
void ftPp_SpecialAirHiFail_Anim(HSD_GObj*);
void ftPp_SpecialAirHiFail_IASA(HSD_GObj*);
void ftPp_SpecialAirHiFail_Phys(HSD_GObj*);
void ftPp_SpecialAirHiFail_Coll(HSD_GObj*);
void ftPp_SpecialAirHiFailEnd_Anim(HSD_GObj*);
void ftPp_SpecialAirHiFailEnd_IASA(HSD_GObj*);
void ftPp_SpecialAirHiFailEnd_Phys(HSD_GObj*);
void ftPp_SpecialAirHiFailEnd_Coll(HSD_GObj*);
void ftPp_SpecialLw_Anim(HSD_GObj*);
void ftPp_SpecialLw_IASA(HSD_GObj*);
void ftPp_SpecialLw_Phys(HSD_GObj*);
void ftPp_SpecialLw_Coll(HSD_GObj*);
void ftPp_SpecialAirLw_Anim(HSD_GObj*);
void ftPp_SpecialAirLw_IASA(HSD_GObj*);
void ftPp_SpecialAirLw_Phys(HSD_GObj*);
void ftPp_SpecialAirLw_Coll(HSD_GObj*);
void ftPp_SpecialLw_80122A8C(HSD_GObj*);
void ftPp_SpecialLw_80122B10(HSD_GObj*);
void ftPp_SpecialLw_80122B34(HSD_GObj*);
void ftPp_SpecialLw_80122D04(HSD_GObj*);
void ftNn_Init_80123CA4(HSD_GObj*);
void ftNn_Init_80123E58(HSD_GObj*);
void ftNn_Init_80123E60(HSD_GObj*);
void ftNn_Init_80123F98(HSD_GObj*);
void ftNn_Init_80123D68(HSD_GObj*);
void ftNn_Init_80123E5C(HSD_GObj*);
void ftNn_Init_80123EFC(HSD_GObj*);
void ftNn_Init_801241A0(HSD_GObj*);
void ftNn_Init_80123348(HSD_GObj*);
void ftNn_Init_80123388(HSD_GObj*);
void ftNn_Init_80123390(HSD_GObj*);
void ftNn_Init_801233F0(HSD_GObj*);
void ftNn_Init_80123448(HSD_GObj*);
void ftNn_Init_801234E4(HSD_GObj*);
void ftNn_Init_801234EC(HSD_GObj*);
void ftNn_Init_801235BC(HSD_GObj*);
void ftNn_Init_80123384(HSD_GObj*);
void ftNn_Init_8012338C(HSD_GObj*);
void ftNn_Init_801233EC(HSD_GObj*);
void ftNn_Init_801233F4(HSD_GObj*);
void ftNn_Init_80123484(HSD_GObj*);
void ftNn_Init_801234E8(HSD_GObj*);
void ftNn_Init_8012350C(HSD_GObj*);
void ftNn_Init_801235F8(HSD_GObj*);
void ftPp_SpecialS_Enter(HSD_GObj*);
void ftPp_SpecialAirHi_Enter(HSD_GObj*);
void ftPp_SpecialAirLw_Enter(HSD_GObj*);
void ftPp_SpecialAirS_Enter(HSD_GObj*);
void ftPp_SpecialLw_Enter(HSD_GObj*);
void ftPp_SpecialHi_Enter(HSD_GObj*);

#endif