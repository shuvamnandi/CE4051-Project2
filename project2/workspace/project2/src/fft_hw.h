/*****************************************************************************
* Filename:          C:\Users\User\Desktop\Projects\Audio_project_6151\Audio_HW_implementation\Audio_HW_imp/drivers/fft_hw_v1_00_a/src/fft_hw.h
* Version:           1.00.a
* Description:       fft_hw Driver Header File
* Date:              Sat Oct 10 04:19:57 2015 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef FFT_HW_H
#define FFT_HW_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**************************** Type Definitions *****************************/


/**
 *
 * Write/Read 32 bit value to/from FFT_HW user logic memory (BRAM).
 *
 * @param   Address is the memory address of the FFT_HW device.
 * @param   Data is the value written to user logic memory.
 *
 * @return  The data from the user logic memory.
 *
 * @note
 * C-style signature:
 * 	void FFT_HW_mWriteMemory(Xuint32 Address, Xuint32 Data)
 * 	Xuint32 FFT_HW_mReadMemory(Xuint32 Address)
 *
 */
#define HW_WriteMemory(Address, Data) \
 	Xil_Out32(Address, (Xuint32)(Data))
#define HW_ReadMemory(Address) \
 	Xil_In32(Address)

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the FFT_HW instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus FFT_HW_SelfTest(void * baseaddr_p);

#endif /** FFT_HW_H */
