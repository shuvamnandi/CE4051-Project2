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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/lab4/fft_tb.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


static void work_a_1976856439_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5136);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 6208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5136);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1976856439_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 5576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(135, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 5384);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4048U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 5384);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(139, ng0);
    t2 = (t0 + 6272);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(142, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_1976856439_2372691052_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    int64 t13;

LAB0:    t1 = (t0 + 5824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(150, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 != 0)
        goto LAB4;

LAB6:
LAB5:    xsi_set_current_line(159, ng0);
    t2 = (t0 + 4048U);
    t3 = *((char **)t2);
    t13 = *((int64 *)t3);
    t2 = (t0 + 5632);
    xsi_process_wait(t2, t13);

LAB12:    *((char **)t1) = &&LAB13;

LAB1:    return;
LAB4:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 4496U);
    t6 = std_textio_endfile(t2);
    t7 = (!(t6));
    if (t7 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(156, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t8 = (t0 + 6336);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 16U);
    xsi_driver_first_trans_fast(t8);

LAB8:    goto LAB5;

LAB7:    xsi_set_current_line(152, ng0);
    t8 = (t0 + 5632);
    t9 = (t0 + 4496U);
    t10 = (t0 + 4672U);
    std_textio_readline(STD_TEXTIO, t8, t9, t10);
    xsi_set_current_line(153, ng0);
    t2 = (t0 + 5632);
    t3 = (t0 + 4672U);
    t8 = (t0 + 4168U);
    t9 = *((char **)t8);
    t8 = (t0 + 8772U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t9, t8);
    xsi_set_current_line(154, ng0);
    t2 = (t0 + 4168U);
    t3 = *((char **)t2);
    t2 = (t0 + 6336);
    t8 = (t2 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 16U);
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    goto LAB2;

LAB11:    goto LAB10;

LAB13:    goto LAB11;

}


extern void work_a_1976856439_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1976856439_2372691052_p_0,(void *)work_a_1976856439_2372691052_p_1,(void *)work_a_1976856439_2372691052_p_2};
	xsi_register_didat("work_a_1976856439_2372691052", "isim/fft_tb_isim_beh.exe.sim/work/a_1976856439_2372691052.didat");
	xsi_register_executes(pe);
}
