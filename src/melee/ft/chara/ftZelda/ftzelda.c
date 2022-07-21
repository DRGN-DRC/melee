#include "ftzelda.h"

void ftZelda_OnDeath(HSD_GObj* fighterObj) {
    Fighter* fighter = fighterObj->user_data;
    func_80074A4C(fighterObj, 0, 0);
    func_80074A4C(fighterObj, 1, 0);
    fighter->sa.zelda.x222C = 0;
}

void ftZelda_OnLoad(HSD_GObj* fighterObj) {
    Fighter* fighter = fighterObj->user_data;
    void** item_list = fighter->x10C_ftData->x48_items;
    
    PUSH_ATTRS(fighter, ftZeldaAttributes);
    
    func_8026B3F8(item_list[0], 0x6CU);
    func_8026B3F8(item_list[1], 0x6DU);
}

void ftZelda_801393AC(HSD_GObj* fighterObj) {
    ftZelda_8013B5EC(fighterObj);
}

void ftZelda_OnItemPickup(HSD_GObj* fighterObj, BOOL bool) {
    Fighter_OnItemPickup(fighterObj, bool, 1, 1);
}

void ftZelda_OnItemInvisible(HSD_GObj *fighterObj) {
    Fighter_OnItemInvisible(fighterObj, 1);
}

void ftZelda_OnItemVisible(HSD_GObj *fighterObj) {
    Fighter_OnItemVisible(fighterObj, 1);
}

void ftZelda_OnItemDrop(HSD_GObj* fighterObj, BOOL bool1) {
    Fighter_OnItemDrop(fighterObj, bool1, 1, 1);
}

void ftZelda_LoadSpecialAttrs(HSD_GObj* gobj) {
    COPY_ATTRS(gobj, ftZeldaAttributes);
}

void ftZelda_801395C8(HSD_GObj* fighterObj) {
    s32 unused[2];
    s32 result = func_80074A74(fighterObj, 1);
    if (result == -1) {
        func_80074A4C(fighterObj, 1, 0);
    } else {
        func_80074A4C(fighterObj, 1, -1);
    }
}

void ftZelda_OnKnockbackEnter(HSD_GObj* fighterObj) {
    Fighter_OnKnockbackEnter(fighterObj, 1);
}

void ftZelda_OnKnockbackExit(HSD_GObj* fighterObj) {
    Fighter_OnKnockbackExit(fighterObj, 1);
}

// 801396AC - 801396E0 (0x34 bytes)
// https://decomp.me/scratch/UHxFc
void ftZelda_801396AC(HSD_GObj* fighterObj) {
    Fighter* fighter = getFighter(fighterObj);
    ftZelda_801396E0(fighterObj);
    fighter->cb.x21BC_callback_Accessory4 = 0;
}

// 801396E0 - 8013979C (0xBC bytes)
// https://decomp.me/scratch/ZIrBS
void func_801396E0(HSD_GObj* fighterObj) {
    Point3d sp10;
    Fighter* fighter = getFighter(fighterObj);
    u8 flag = fighter->x2219_flag.bits.b0;
    
    if (flag == 0) {
        func_8000B1CC(fighter->x5E8_fighterBones[4].x0_jobj, NULL, &sp10);
        
        if ((s32) fighter->xE0_ground_or_air == 0) {
            ef_Spawn(0x4F6, fighterObj, fighter->x5E8_fighterBones->x0_jobj);
        } else {
            ef_Spawn(0x4F7, fighterObj, fighter->x5E8_fighterBones->x0_jobj);
        }
        fighter->x2219_flag.bits.b0 = 1L;
    }
    fighter->cb.x21D4_callback_EnterHitlag = efLib_PauseAll;
    fighter->cb.x21D8_callback_ExitHitlag = efLib_ResumeAll;
}

// 8013979C - 80139834 (0x98 bytes)
// https://decomp.me/scratch/yRI2F
void ftZelda_8013979C(HSD_GObj* fighterObj) {
    Point3d sp10;
    u8 flag;
    Fighter* fighter = getFighter(fighterObj);

    func_8000B1CC(fighter->x5E8_fighterBones[4].x0_jobj, NULL, &sp10);

    flag = fighter->x2219_flag.bits.b0;
    if (flag == 0) {
        ef_Spawn(0x505, fighterObj, &sp10);
        fighter->x2219_flag.bits.b0 = 1L;
    }
    fighter->cb.x21D4_callback_EnterHitlag = efLib_PauseAll;
    fighter->cb.x21D8_callback_ExitHitlag = efLib_ResumeAll;
    fighter->cb.x21BC_callback_Accessory4 = 0;
}

void ftZelda_801396AC(HSD_GObj*);
extern f32 lbl_804D9B98;
extern f32 lbl_804D9B9C;
extern f32 lbl_804D9BA0;
extern f32 lbl_804D9BA4;
extern f32 lbl_804D9BA8;

extern f32 lbl_804D9BB8;
extern f32 lbl_804D9BBC;

// 80139834 - 801398E8 (0xB4 bytes)
// https://decomp.me/scratch/Ie9jz
// https://decomp.me/scratch/52XE3
void ftZelda_SpecialHi_StartAction(HSD_GObj* fighterObj) {
    Vec sp24;
    HSD_JObj* jObj;
    s32 arg1; // this is unused
    HSD_GObj* gObj;  // this is unused
    Fighter* fighter = getFighterPlus(fighterObj);

    fighter->xEC_ground_vel = 0.0f;
    fighter->x80_self_vel.y = 0.0f;
    fighter->x80_self_vel.x = 0.0f;
    Fighter_ActionStateChange_800693AC(fighterObj, 0x15D, 0, NULL, 0.0f, 1.0f, 0.0f);
    func_8006EBA4(fighterObj);
    fighter = getFighterPlus(fighterObj);
    fighter->x2200_ftcmd_var0 = 0;
    fighter->x234C_stateVar4 = 0;
    
    jObj = fighter->x5E8_fighterBones[func_8007500C(fighter, 4)].x0_jobj;
    
    func_8000B1CC(jObj, NULL, &sp24); 
    
    func_800119DC(&sp24, 0x78, lbl_804D9B98, lbl_804D9B9C, lbl_804D9BA0);
    fighter->cb.x21BC_callback_Accessory4 = &ftZelda_801396AC;
}

// 801398E8 - 801399B4 (0xCC bytes)
// https://decomp.me/scratch/9NUks
void ftZelda_SpecialAirHi_StartAction(HSD_GObj* fighterObj) {
    Point3d sp28;
    s32 unused[7];
    s32 boneIndex;
    Fighter* fighter = getFighter(fighterObj);
    HSD_JObj* jObj;
    ftZeldaAttributes* attributes = fighter->x2D4_specialAttributes;
        
    fighter->x80_self_vel.x = (f32) fighter->x80_self_vel.x / attributes->x38;
    fighter->x80_self_vel.y = (f32) fighter->x80_self_vel.y / attributes->x3C;
    Fighter_ActionStateChange_800693AC(fighterObj, 0x160, 0, NULL, lbl_804D9BA4, lbl_804D9BA8, lbl_804D9BA4);
    func_8006EBA4(fighterObj);
    
    fighter = getFighter(fighterObj);
    fighter->x2200_ftcmd_var0 = 0;
    fighter->x234C_stateVar4 = 0;
    
    boneIndex = func_8007500C(fighter, 4);
    jObj = fighter->x5E8_fighterBones[boneIndex].x0_jobj;
    func_8000B1CC(jObj, NULL, &sp28);
    
    func_800119DC(&sp28, 0x78, lbl_804D9B98, lbl_804D9B9C, lbl_804D9BA0);
    fighter->cb.x21BC_callback_Accessory4 = &ftZelda_801396AC;
}

// 801399B4 - 801399F0 (0x3C bytes)
// https://decomp.me/scratch/wsgNa
void ftZelda_801399B4(HSD_GObj* arg0) {
    if (ftAnim_IsFramesRemaining(arg0) == 0) {
        ftZelda_8013A058(arg0);
    }
}

// 801399F0 - 80139A2C (0x3C bytes)
// https://decomp.me/scratch/3f62U
void lbl_801399F0(HSD_GObj* arg0) {
    if (ftAnim_IsFramesRemaining(arg0) == 0) {
        func_8013A244(arg0);
    }
}

void ftZelda_80139A2C(HSD_GObj* arg0) {}
void ftZelda_80139A30(HSD_GObj* arg0) {}

// 80139A34 - 80139A54 (0x20 bytes)
void ftZelda_80139A34(HSD_GObj* arg0) {
    func_80084F3C(arg0);
}

// 80139A54 - 80139A98 (0x44 bytes)
// https://decomp.me/scratch/dA7X6
void ftZelda_80139A54(HSD_GObj* fighterObj) {
    f32 attrs[2];
    Fighter* fighter;
    ftZeldaAttributes* attributes;

    fighter = fighterObj->user_data;
    attributes = fighter->x2D4_specialAttributes;
    attrs[0] = attributes->x40;
    attrs[1] = attributes->x44;
    
    func_8007D494(fighter, attrs[0], attrs[1]);
    func_8007CEF4(fighter);
}

// 80139A98 - 80139AD4 (0x3C bytes)
void ftZelda_80139A98(HSD_GObj* arg0) {
    if (func_80082708(arg0) == 0) {
        ftZelda_80139B44(arg0);
    }
}

//extern f32 lbl_804D9BA4;

// 80139AD4 - 80139B44 (0x70 bytes)
// https://decomp.me/scratch/btfXC
void ftZelda_80139AD4(HSD_GObj* fighterObj) {
    s32 result;
    f32 facingDirection;
    s32 ledgeGrabDir;
    Fighter* fighter = fighterObj->user_data;
    facingDirection = fighter->x2C_facing_direction;
    
    if (facingDirection < lbl_804D9BA4) {
        ledgeGrabDir = -1;
    }
    else {
        ledgeGrabDir = 1;
    }
    if (EnvColl_CheckGroundAndLedge(fighterObj, ledgeGrabDir) != 0) {
        ftZelda_80139BB0(fighterObj);
    } else {
        result = func_80081298(fighterObj);
        if (result == 0) {
            return;
        }
    }
}

// 80139B44 - 80139BB0 (0x6C bytes)
// https://decomp.me/scratch/XI2m5
void ftZelda_80139B44(HSD_GObj* fighterObj) {
    Fighter* fighter;

    fighter = fighterObj->user_data;
    func_8007D60C(fighter);
    Fighter_ActionStateChange_800693AC(fighterObj, 0x160, 0x0C4C508E, NULL, fighter->x894_currentAnimFrame, lbl_804D9BA8, lbl_804D9BA4);
    fighter->cb.x21BC_callback_Accessory4 = ftZelda_801396AC;
}

// 80139BB0 - 80139C1C (0x6C bytes)
// https://decomp.me/scratch/KOA33
void ftZelda_80139BB0(HSD_GObj* fighterObj) {
    Fighter* fighter;

    fighter = fighterObj->user_data;
    func_8007D7FC(fighter);
    Fighter_ActionStateChange_800693AC(fighterObj, 0x15D, 0x0C4C508E, NULL, fighter->x894_currentAnimFrame, lbl_804D9BA8, lbl_804D9BA4);
    fighter->cb.x21BC_callback_Accessory4 = ftZelda_801396AC;
}

// 80139C1C - 80139C58 (0x3C bytes)
// https://decomp.me/scratch/VCHRF
void ftZelda_80139C1C(HSD_GObj* fighterObj) {
    Fighter* fighter;

    fighter = getFighter(fighterObj);
    fighter->x2340_stateVar1 = (s32) (fighter->x2340_stateVar1 - 1);
    if ((s32) fighter->x2340_stateVar1 <= 0) {
        ftZelda_8013A6A8(fighterObj);
    }
}

// 80139C58 - 80139C94 (0x3C bytes)
// https://decomp.me/scratch/VCHRF
void ftZelda_80139C58(HSD_GObj* fighterObj) {
    Fighter* fighter;

    fighter = getFighter(fighterObj);
    fighter->x2340_stateVar1 = (s32) (fighter->x2340_stateVar1 - 1);
    if ((s32) fighter->x2340_stateVar1 <= 0) {
        ftZelda_8013A764(fighterObj);
    }
}

void ftZelda_80139C94(HSD_GObj* arg0) {}
void ftZelda_80139C98(HSD_GObj* arg0) {}

// 80139C9C - 80139CBC (0x20 bytes)
void ftZelda_80139C9C(HSD_GObj* arg0) {
    func_8007CB74(arg0);
}

void ftZelda_80139CBC(HSD_GObj* arg0) {}

// 80139CC0 - 80139D60 (0xA0 bytes)
// https://decomp.me/scratch/UKBQL
void ftZelda_80139CC0(HSD_GObj* fighterObj) {
    Fighter* fighter;
    s32 envFlags;
    CollData* collData;

    fighter = fighterObj->user_data;
    collData = &fighter->x6F0_collData;
    
    if (func_80082708(fighterObj) == 0) {
        envFlags = collData->x134_envFlags;
        if (((envFlags & 0x3F) != 0) || ((envFlags & 0xFC0) != 0)) {
            func_8007D60C(fighter);
            ftZelda_8013A764(fighterObj);
            return;
        }
        ftZelda_80139F6C(fighterObj);
    } else {
        envFlags = collData->x134_envFlags;
        if (((envFlags & 0x3F) != 0) || ((envFlags & 0xFC0) != 0)) {
            ftZelda_8013A6A8(fighterObj);
        }
    }    
}

// 80139D60 - 80139F6C (0x20C bytes)
// https://decomp.me/scratch/OJ62l
void ftZelda_80139D60(HSD_GObj* fighterObj) {
    s32 ledgeGrabDir;
    s32 var_r0;
    s32 unused[2];
    f32 angle1, angle2, angle3;
    Fighter* fighter; // r31
    ftZeldaAttributes* attributes; // r30
    Fighter* fighter2;
    ftZeldaAttributes* attributes2;
    CollData* collData; // r29

    // Get the character, collision data, and character attributes
    fighter = fighterObj->user_data;
    collData = &fighter->x6F0_collData;
    attributes = fighter->x2D4_specialAttributes;
    fighter->x234C_stateVar4 = (s32) (fighter->x234C_stateVar4 + 1);

    // Determine facing direction
    if (fighter->x2C_facing_direction < lbl_804D9BA4) {
        ledgeGrabDir = -1;
    }
    else {
        ledgeGrabDir = 1;
    }
    
    if (EnvColl_CheckGroundAndLedge(fighterObj, ledgeGrabDir) != 0) {
        fighter2 = getFighter(fighterObj);
        attributes2 = fighter2->x2D4_specialAttributes;
        if ((f32) (fighter2->x234C_stateVar4 ^ 0x80000000) >= attributes2->x4C) {
            var_r0 = 1;
        } else if (func_8009A134(fighterObj) != 0) {
            var_r0 = 0;
        } else {
            var_r0 = 1;
        }
        if (var_r0 != 0) {
            ftZelda_80139FE8(fighterObj);
            return;
        }
    }
    if (func_80081298(fighterObj) == 0) {
        if ((collData->x134_envFlags & 0x6000) != 0) {
            f32 angle1 = lbvector_AngleXY(&collData->x190_vec, &fighter->x80_self_vel);
            if (angle1 > (lbl_804D9BB8 * (lbl_804D9BBC + attributes->x60))) {
                ftZelda_8013A764(fighterObj);
            }
        }
        if ((collData->x134_envFlags & 0x3F) != 0) {
            f32 angle2 = lbvector_AngleXY(&collData->x168_vec, &fighter->x80_self_vel);
            if (angle2 > (lbl_804D9BB8 * (lbl_804D9BBC + attributes->x60))) {
                ftZelda_8013A764(fighterObj);
            }
        }
        if ((collData->x134_envFlags & 0xFC0) != 0) {
            f32 angle3 = lbvector_AngleXY(&collData->x17C_vec, &fighter->x80_self_vel);
            if (angle3 > (lbl_804D9BB8 * (lbl_804D9BBC + attributes->x60))) {
                ftZelda_8013A764(fighterObj);
            }
        }
    }
}

// 80139F6C - 80139FE8 (0x7C bytes)
// https://decomp.me/scratch/HtMY4
void ftZelda_80139F6C(HSD_GObj* fighterObj) {
    Fighter* fighter;
    f32 temp_f2;
    s32 unused;

    fighter = getFighter(fighterObj);
    func_8007D60C(fighter);
    
    Fighter_ActionStateChange_800693AC(fighterObj, 0x161, 0x0C4C508E, NULL, fighter->x894_currentAnimFrame, 0.0f, 0.0f);
    
    fighter->x2223_flag.bits.b4 = 1;
    fighter->x221E_flag.bits.b0 = 1;
}

// 80139FE8 - 8013A058 (0x70 bytes)
// https://decomp.me/scratch/Jcxch
void ftZelda_80139FE8(HSD_GObj* fighterObj) {
    Fighter* fighter;
    f32 temp_f2;

    fighter = fighterObj->user_data;
    func_8007D7FC(fighter);

    Fighter_ActionStateChange_800693AC(fighterObj, 0x15E, 0x0C4C508E, NULL, fighter->x894_currentAnimFrame, 0.0f, 0.0f);
    
    fighter->x221E_flag.bits.b0 = 1;
}


// 8013A058 - 8013A244 ()
// https://decomp.me/scratch/Y9w1M
// void ftZelda_8013A244(HSD_GObj* arg0);                      /* extern */
// s32 func_8009A134(HSD_GObj* arg0);                       /* extern */
// extern f32 lbl_804D9BA4; // 0
// extern f32 lbl_804D9BA8; // 1.0
extern f64 lbl_804D9BC0; // 1.75
extern f64 lbl_804D9BC8; // 2.125
extern f32 lbl_804D9BD0; // 1.5707963705062866
extern f32 lbl_804D9BD4; // 35.0
void ftZelda_8013A058(HSD_GObj* fighterObj) {
    f32 list[4];
    f32 unused[5];
    ftZeldaAttributes* attributes; // r31
    Fighter* fighter; // r30
    f32 temp_f0;
    f32 temp_f1;
    f32 temp_f1_5;
    f32 temp_f2;
    f32 var_f31;
    f32 var_f4;
    f32 temp_f5;
    f32 temp_f6;
    f64 temp_f1_2;
    f64 temp_f1_3;
    f64 temp_f1_4;
    f64 temp_f2_2;
    f64 temp_f3;
    CollData* collData;
    Fighter* fighter_2; // r30 (second use)
    ftZeldaAttributes* attributes_2;
    Vec3* someVar;

    fighter = fighterObj->user_data;
    attributes = fighter->x2D4_specialAttributes;
    collData = &fighter->x6F0_collData;
    temp_f2 = fighter->input.x620_lstick_x;
    temp_f1 = fighter->input.x624_lstick_y;
    temp_f2 = temp_f2 * temp_f2;
    temp_f1 = temp_f1 * temp_f1;
    temp_f5 = temp_f2 + temp_f1;
    var_f4 = temp_f5;
    
    if (temp_f5 > lbl_804D9BA4) {
        temp_f1_2 = __frsqrte(var_f4);
        temp_f3 = lbl_804D9BC0; // 1.75
        temp_f2_2 = lbl_804D9BC8;
        temp_f1_3 = temp_f3 * temp_f1_2 * -(((f64) var_f4 * (temp_f1_2 * temp_f1_2)) - temp_f2_2);
        temp_f1_4 = temp_f3 * temp_f1_3 * -(((f64) var_f4 * (temp_f1_3 * temp_f1_3)) - temp_f2_2);
        temp_f0 = (f32) ((f64) var_f4 * (temp_f3 * temp_f1_4 * - (((f64) var_f4 * (temp_f1_4 * temp_f1_4)) - temp_f2_2)));
        list[0] = temp_f0;
        temp_f5 = list[0];
    }
    temp_f0 = lbl_804D9BA8;
    var_f31 = temp_f5;
    if (temp_f5 > temp_f0) {
        var_f31 = temp_f0;
    }
    if (!(var_f31 < attributes->x50)) {
        someVar = &collData->x154_groundNormal;
        list[1] = fighter->input.x620_lstick_x;
        list[2] = fighter->input.x624_lstick_y;
        list[3] = lbl_804D9BA4;
        if (!(lbvector_AngleXY(someVar, (Point3d* ) &list[1]) < lbl_804D9BD0)) {
            if (func_8009A134(fighterObj) == 0) {
                func_8007D9FC(fighter);
                
                temp_f5 = func_someCalcAngle_80022C30(fighter->input.x624_lstick_y, fighter->input.x620_lstick_x * fighter->x2C_facing_direction);
                
                fighter->x2344_f32 = list[1];
                fighter->x2348_stateVar3_f32 = list[2];
                temp_f6 = ((attributes->x54 * var_f31) + attributes->x58) * cosf(temp_f5);
                fighter->xEC_ground_vel = fighter->x2C_facing_direction * temp_f6;
                
                Fighter_ActionStateChange_800693AC(fighterObj, 0x15E, 0, NULL, lbl_804D9BD4, lbl_804D9BA8, lbl_804D9BA4);
                func_8006EBA4(fighterObj);
                ftAnim_SetAnimRate(fighterObj, lbl_804D9BA4);
                
                fighter_2 = fighterObj->user_data;
                attributes_2 = fighter_2->x2D4_specialAttributes;
                fighter_2->x2340_stateVar1 = attributes_2->x48;
                fighter_2->x1968_jumpsUsed = (u8) fighter_2->x110_attr.x168_MaxJumps;
                fighter_2->x2223_flag.bits.b4 = 1;
                
                func_8007B62C(fighterObj, 2, attributes_2);
                fighter_2->x221E_flag.bits.b0 = 1;
                return;
            }
        }
    }
    func_8007D60C(fighter);
    ftZelda_8013A244(fighterObj);
}
