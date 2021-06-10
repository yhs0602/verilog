/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/csehome/gunhee2001/Final/DataMemory.v";
static int ng1[] = {0, 0};
static int ng2[] = {16, 0};
static int ng3[] = {1, 0};



static void Initial_33_0(char *t0)
{
    char t5[8];
    char t16[8];
    char t17[8];
    char t38[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t28;
    int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB3:    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    xsi_vlog_signed_less(t5, 32, t3, 32, t4, 32);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB6:    xsi_set_current_line(35, ng0);
    t12 = (t0 + 2408);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t0 + 2248);
    t18 = (t0 + 2248);
    t19 = (t18 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2248);
    t22 = (t21 + 64U);
    t23 = *((char **)t22);
    t24 = (t0 + 2408);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_convert_array_indices(t16, t17, t20, t23, 2, 1, t26, 32, 1);
    t27 = (t16 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (!(t28));
    t30 = (t17 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB7;

LAB8:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_signed_unary_minus(t5, 32, t3, 32);
    t4 = (t0 + 2248);
    t6 = (t0 + 2248);
    t12 = (t6 + 72U);
    t13 = *((char **)t12);
    t14 = (t0 + 2248);
    t15 = (t14 + 64U);
    t18 = *((char **)t15);
    t19 = (t0 + 2408);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = ((char*)((ng2)));
    memset(t38, 0, 8);
    xsi_vlog_signed_add(t38, 32, t21, 32, t22, 32);
    xsi_vlog_generic_convert_array_indices(t16, t17, t13, t18, 2, 1, t38, 32, 1);
    t23 = (t16 + 4);
    t7 = *((unsigned int *)t23);
    t29 = (!(t7));
    t24 = (t17 + 4);
    t8 = *((unsigned int *)t24);
    t32 = (!(t8));
    t33 = (t29 && t32);
    if (t33 == 1)
        goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_signed_add(t5, 32, t3, 32, t4, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 32);
    goto LAB3;

LAB7:    t34 = *((unsigned int *)t16);
    t35 = *((unsigned int *)t17);
    t36 = (t34 - t35);
    t37 = (t36 + 1);
    xsi_vlogvar_assign_value(t15, t14, 0, *((unsigned int *)t17), t37);
    goto LAB8;

LAB9:    t9 = *((unsigned int *)t16);
    t10 = *((unsigned int *)t17);
    t36 = (t9 - t10);
    t37 = (t36 + 1);
    xsi_vlogvar_assign_value(t4, t5, 0, *((unsigned int *)t17), t37);
    goto LAB10;

}

static void Always_40_1(char *t0)
{
    char t6[8];
    char t30[8];
    char t31[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    int t41;
    char *t42;
    int t43;
    int t44;
    int t45;
    int t46;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;

LAB0:    t1 = (t0 + 3568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 3888);
    *((int *)t2) = 1;
    t3 = (t0 + 3600);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(40, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(47, ng0);

LAB22:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t31, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB26;

LAB23:    if (t18 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t31) = 1;

LAB26:    memset(t30, 0, 8);
    t8 = (t31 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t31);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t8) != 0)
        goto LAB29;

LAB30:    t22 = (t30 + 4);
    t48 = *((unsigned int *)t30);
    t49 = *((unsigned int *)t22);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB31;

LAB32:    t51 = *((unsigned int *)t30);
    t52 = (~(t51));
    t53 = *((unsigned int *)t22);
    t54 = (t52 || t53);
    if (t54 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t22) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t30) > 0)
        goto LAB37;

LAB38:    memcpy(t6, t39, 8);

LAB39:    t42 = (t0 + 2088);
    xsi_vlogvar_assign_value(t42, t6, 0, 0, 8);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB43;

LAB40:    if (t18 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t6) = 1;

LAB43:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB44;

LAB45:
LAB46:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);

LAB13:    xsi_set_current_line(42, ng0);
    xsi_set_current_line(42, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2408);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);

LAB14:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t9 = *((unsigned int *)t7);
    t10 = (~(t9));
    t11 = *((unsigned int *)t6);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB15;

LAB16:    goto LAB12;

LAB15:    xsi_set_current_line(42, ng0);

LAB17:    xsi_set_current_line(43, ng0);
    t8 = (t0 + 2408);
    t21 = (t8 + 56U);
    t22 = *((char **)t21);
    t28 = (t0 + 2248);
    t29 = (t0 + 2248);
    t32 = (t29 + 72U);
    t33 = *((char **)t32);
    t34 = (t0 + 2248);
    t35 = (t34 + 64U);
    t36 = *((char **)t35);
    t37 = (t0 + 2408);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    xsi_vlog_generic_convert_array_indices(t30, t31, t33, t36, 2, 1, t39, 32, 1);
    t40 = (t30 + 4);
    t14 = *((unsigned int *)t40);
    t41 = (!(t14));
    t42 = (t31 + 4);
    t15 = *((unsigned int *)t42);
    t43 = (!(t15));
    t44 = (t41 && t43);
    if (t44 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    xsi_vlog_signed_unary_minus(t6, 32, t4, 32);
    t5 = (t0 + 2248);
    t7 = (t0 + 2248);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 2248);
    t28 = (t22 + 64U);
    t29 = *((char **)t28);
    t32 = (t0 + 2408);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = ((char*)((ng2)));
    memset(t47, 0, 8);
    xsi_vlog_signed_add(t47, 32, t34, 32, t35, 32);
    xsi_vlog_generic_convert_array_indices(t30, t31, t21, t29, 2, 1, t47, 32, 1);
    t36 = (t30 + 4);
    t9 = *((unsigned int *)t36);
    t41 = (!(t9));
    t37 = (t31 + 4);
    t10 = *((unsigned int *)t37);
    t43 = (!(t10));
    t44 = (t41 && t43);
    if (t44 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB14;

LAB18:    t16 = *((unsigned int *)t30);
    t17 = *((unsigned int *)t31);
    t45 = (t16 - t17);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t28, t22, 0, *((unsigned int *)t31), t46);
    goto LAB19;

LAB20:    t11 = *((unsigned int *)t30);
    t12 = *((unsigned int *)t31);
    t45 = (t11 - t12);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t5, t6, 0, *((unsigned int *)t31), t46);
    goto LAB21;

LAB25:    t7 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB26;

LAB27:    *((unsigned int *)t30) = 1;
    goto LAB30;

LAB29:    t21 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB30;

LAB31:    t28 = (t0 + 2248);
    t29 = (t28 + 56U);
    t32 = *((char **)t29);
    t33 = (t0 + 2248);
    t34 = (t33 + 72U);
    t35 = *((char **)t34);
    t36 = (t0 + 2248);
    t37 = (t36 + 64U);
    t38 = *((char **)t37);
    t39 = (t0 + 1048U);
    t40 = *((char **)t39);
    xsi_vlog_generic_get_array_select_value(t47, 32, t32, t35, t38, 2, 1, t40, 8, 2);
    goto LAB32;

LAB33:    t39 = ((char*)((ng1)));
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t6, 32, t47, 32, t39, 32);
    goto LAB39;

LAB37:    memcpy(t6, t47, 8);
    goto LAB39;

LAB42:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(49, ng0);

LAB47:    xsi_set_current_line(50, ng0);
    t21 = (t0 + 1208U);
    t22 = *((char **)t21);
    t21 = (t0 + 2248);
    t28 = (t0 + 2248);
    t29 = (t28 + 72U);
    t32 = *((char **)t29);
    t33 = (t0 + 2248);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 1048U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t30, t31, t32, t35, 2, 1, t37, 8, 2);
    t36 = (t30 + 4);
    t48 = *((unsigned int *)t36);
    t41 = (!(t48));
    t38 = (t31 + 4);
    t49 = *((unsigned int *)t38);
    t43 = (!(t49));
    t44 = (t41 && t43);
    if (t44 == 1)
        goto LAB48;

LAB49:    goto LAB46;

LAB48:    t50 = *((unsigned int *)t30);
    t51 = *((unsigned int *)t31);
    t45 = (t50 - t51);
    t46 = (t45 + 1);
    xsi_vlogvar_assign_value(t21, t22, 0, *((unsigned int *)t31), t46);
    goto LAB49;

}


extern void work_m_18037292429535182116_2461264495_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Always_40_1};
	xsi_register_didat("work_m_18037292429535182116_2461264495", "isim/Main_isim_beh.exe.sim/work/m_18037292429535182116_2461264495.didat");
	xsi_register_executes(pe);
}
