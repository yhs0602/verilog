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
static const char *ng0 = "/csehome/gunhee2001/Final/pctest.v";
static int ng1[] = {0, 0};
static int ng2[] = {10000, 0};
static int ng3[] = {10, 0};



static void Initial_41_0(char *t0)
{
    char t11[8];
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);

LAB4:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2328);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4264);
    *((int *)t8) = t7;

LAB6:    t9 = (t0 + 4264);
    if (*((int *)t9) > 0)
        goto LAB7;

LAB8:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t2 + 4);
    t4 = *((unsigned int *)t3);
    t5 = (~(t4));
    t6 = *((unsigned int *)t2);
    t7 = (t6 & t5);
    t8 = (t0 + 4268);
    *((int *)t8) = t7;

LAB17:    t9 = (t0 + 4268);
    if (*((int *)t9) > 0)
        goto LAB18;

LAB19:    goto LAB1;

LAB7:    xsi_set_current_line(49, ng0);

LAB9:    xsi_set_current_line(50, ng0);
    t10 = (t0 + 2328);
    xsi_process_wait(t10, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    memset(t11, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t12 = (t6 & t5);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t9) == 0)
        goto LAB11;

LAB13:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;

LAB14:    t14 = (t11 + 4);
    t15 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    t17 = (~(t16));
    *((unsigned int *)t11) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB16;

LAB15:    t22 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t11, 0, 0, 1);
    t2 = (t0 + 4264);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB6;

LAB11:    *((unsigned int *)t11) = 1;
    goto LAB14;

LAB16:    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t11) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB15;

LAB18:    xsi_set_current_line(54, ng0);

LAB20:    xsi_set_current_line(55, ng0);
    t10 = (t0 + 2328);
    xsi_process_wait(t10, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    memset(t11, 0, 8);
    t9 = (t8 + 4);
    t4 = *((unsigned int *)t9);
    t5 = (~(t4));
    t6 = *((unsigned int *)t8);
    t12 = (t6 & t5);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t9) == 0)
        goto LAB22;

LAB24:    t10 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t10) = 1;

LAB25:    t14 = (t11 + 4);
    t15 = (t8 + 4);
    t16 = *((unsigned int *)t8);
    t17 = (~(t16));
    *((unsigned int *)t11) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB27;

LAB26:    t22 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t11, 0, 0, 1);
    t2 = (t0 + 4268);
    t7 = *((int *)t2);
    *((int *)t2) = (t7 - 1);
    goto LAB17;

LAB22:    *((unsigned int *)t11) = 1;
    goto LAB25;

LAB27:    t18 = *((unsigned int *)t11);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t11) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB26;

}


extern void work_m_11434482761921419628_4208083537_init()
{
	static char *pe[] = {(void *)Initial_41_0};
	xsi_register_didat("work_m_11434482761921419628_4208083537", "isim/pctest_isim_beh.exe.sim/work/m_11434482761921419628_4208083537.didat");
	xsi_register_executes(pe);
}
