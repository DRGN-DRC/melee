#ifndef _fighter_h_
#define _fighter_h_

#include <dolphin/types.h>
#include <dolphin/mtx/mtxtypes.h>

#include "sysdolphin/baselib/gobj.h"

typedef struct { float x, y;    } Vec2;
typedef Vec Vec3;

typedef struct _ftData
{
	s32 filler_x0;
	/* 0x04 */ s32* ext_attr;
	s32 filler_x4[16];
	/* 0x48 */ void* x48_items;
	s32 filler_x48[4];
} ftData;

typedef struct _UnkFlagStruct {
    struct {
        u8 b0 : 1;
        u8 b1 : 1;
        u8 b2 : 1;
        u8 b3 : 1;
        u8 b4 : 1;
        u8 b5 : 1;
        u8 b6 : 1;
        u8 b7 : 1;
    } bits;
} UnkFlagStruct;

typedef struct _FighterBone
{
	/* 0x0 */ u32* x0_joint;
	/* 0x4 */ u32* x4_joint2; // used for interpolation
	u32 data_filler[2];
} FighterBone;

typedef struct _CollData
{
	u8 filler_x0[0xB4];
	/* 0xB4 */ Vec2 xB4_ecbCurrCorrect_right;
	/* 0xBC */ Vec2 xBC_ecbCurrCorrect_left;
	u8 filler_xBC[0x134 - 0xBC - 8];
	/* 0x134 */ int x134_envFlags;
	u8 filler_x134[0x160 - 0x134 - 4];
	/* 0x160 */ int x160_rightwall_index;
	u8 filler_x160[0x174 - 0x160 - 4];
	/* 0x174 */ int x174_leftwall_index;
	u8 filler_x174[0x1A0 - 0x174 - 4];
} CollData;

typedef struct _Fighter {
	u8 filler_x0[0xB0 - 0x0];
	/* 0xB0 */ Vec3 xB0_pos;
	u8 filler_xB0[0xC8 - 0xB0 - 12];
	/* 0xC8 */ Vec3 xC8_pos_delta;
	u8 filler_xC8[0xE0 - 0xC8 - 12];
	/* 0xE0 */ u32 xE0_airState;
	u8 filler_xE0[0x108 - 0xE4];
	/* 0x108 */ int* x108_costume_archive;
	/* 0x10C */ ftData* x10C_ftData;
	u8 filler_x10C[0x258 - 0x110];
	/* 0x258 */ f32 x258;
	u8 filler_x258[0x2D4 - 0x25C];
	/* 0x2D4 */ void* x2D4_specialAttributes;
	/* 0x2D8 */ void* x2D8_specialAttributes2;
	u8 filler_x2D8[0x5E8 - 0x2DC];
	/* 0x5E8 */ FighterBone* x5E8_fighterBones;
	u8 filler_x5E8[0x618 - 0x5EC];
	/* 0x618 */ s8 x618_flag;
	/* 0x619 */ s8 x619_flag;
	u8 filler_x619[0x620 - 0x61A];
	/* 0x620 */ f32 x620_lstick_x;
	u8 filler_x620[0x670 - 0x624];
	/* 0x670 */ u8 x670_timer_lstick_tilt_x;
	u8 filler_x670[0x6F0 - 0x671];
	/* 0x6F0 */ CollData x6F0_collData;
	u8 filler_x6F0[0x8AC - 0x6F0 - sizeof(CollData)];
	/* 0x8AC */ s32 x8AC_animSkeleton;
	u8 filler_x8AC[0x1969 - 0x8B0];
	/* 0x1969 */ u8 x1969_walljumpUsed;
	/* 0x196C */ int x196C;
	/* 0x1970 */ int x1970;
	/* 0x1974 */ void* x1974_heldItem;
	u8 filler_x1974[0x210C - 0x1978];
	/* 0x210C */ u8 x210C_walljumpInputTimer;
	u8 filler_x210C[3];
	/* 0x2110 */ f32 x2110_walljumpWallSide;
	u8 filler_x2110[0x2224 - 0x2114];
	/* 0x2224 */ UnkFlagStruct x2224_flag;
	u8 filler_x2225;
	/* 0x2226 */ UnkFlagStruct x2226_flag;
	u8 filler_x2227;
	/* 0x2228 */ UnkFlagStruct x2228_flag;
	u8 filler_x2228[3];
	/* 0x222C */ u32 x222C;
	/* 0x2230 */ u32 x2230;
	/* 0x2234 */ u32 x2234;
	/* 0x2238 */ u32 x2238;
	/* 0x223C */ u32 x223C;
	/* 0x2240 */ u32 x2240;
	/* 0x2244 */ u32 x2244;
	/* 0x2248 */ u32 x2248;
	/* 0x224C */ u32 x224C;
	u8 filler_x224C[0x2354-0x2250];
	/* 0x2354 */ float x2354_stateVar6;
	/* 0x2358 */ float x2358_stateVar7;
} Fighter;

typedef struct // ftCommonData
{
	u8 filler_x0[0x768-0x0];
	/* 0x768 */ float x768;
	/* 0x76C */ float x76C;
	/* 0x770 */ float x770;
	/* 0x774 */ s32 x774;
	// lots of more data following, exact size to be determined
} ftCommonData;

#endif