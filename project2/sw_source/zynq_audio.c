


#include <stdio.h>
#include "audio.h"
#include "oled.h"
#include "sleep.h"
#include <stdlib.h>


int main()
{

	Xint16 audio_data[128];
	int i;
	u8 *oled_equalizer_buf=(u8 *)malloc(128*sizeof(u8));
	Xil_Out32(OLED_BASE_ADDR,0xff);
	OLED_Init();			//OLED init
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig(); //Enable core clock for ADAU1761
	AudioConfigure();

	xil_printf("ADAU1761 configured\n\r");

	/*
	 * Perform continuous read and writes from the codec that result in a loopback
	 * from Line in to Line out
	 */

	while(1)
	{
		get_audio(audio_data);
		int stretch = 128; // <- Why is this 128?
		for(i = 0;i < stretch; i++)
		{
			oled_equalizer_buf[i] = audio_data[i] >> 18; // <- This is the setting needed for actual Headphone input
														 // With this, you should see something happening in the OLED
			//oled_equalizer_buf[i] = 25; // <- Try something like this to see what happens!

			// Hint: What is the resolution of OLED???
		}
		OLED_Clear();
		OLED_Equalizer_128(oled_equalizer_buf);
	}
    return 0;
}
