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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_09226076520668205295_3744602808_init();
    work_m_12870161516826069983_2058220583_init();
    work_m_07201746244936963528_0967961054_init();
    work_m_17261632932814002012_2601983858_init();
    work_m_17190653717568061426_0273213086_init();
    work_m_17261632932814002012_1989334135_init();
    work_m_04060488977205698780_3190593924_init();
    work_m_06027557282269225015_3098657832_init();
    work_m_12695729055395639362_0886308060_init();
    work_m_09447734487879740674_2461264495_init();
    work_m_15253464351645407509_1733832700_init();
    work_m_03227599337504316142_2529998690_init();
    work_m_06290405437793531702_2973510161_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_06290405437793531702_2973510161");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}