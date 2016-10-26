/*
 * oled.c
 */

#include "oled.h"
#include "stdlib.h"
#include "font.h"


u8 OLED_GRAM[128][8];

void OLED_Refresh_Gram(void)
{
	u8 i,n;
	for(i=0;i<8;i++)
	{
		write_cmd (0xb0+i);
		write_cmd (0x02);
		write_cmd (0x10);
		for(n=0;n<128;n++)write_data(OLED_GRAM[n][i]);
	}
}


void write_cmd(u8 data)
{
	u8 i;
	Clr_OLED_DC;

	for(i=0;i<8;i++)
	{
		Clr_OLED_SCLK;

		if(data&0x80)
			Set_OLED_SDIN;
		else
			Clr_OLED_SDIN;
		Set_OLED_SCLK;
		data<<=1;
	}

}


void write_data(u8 data)
{
	u8 i;
	Set_OLED_DC;

	for(i=0;i<8;i++)
	{
		Clr_OLED_SCLK;

		if(data&0x80)
			Set_OLED_SDIN;
		else
			Clr_OLED_SDIN;
		Set_OLED_SCLK;
		data<<=1;
	}

}

void OLED_Display_On(void)
{
	write_cmd(0X8D);
	write_cmd(0X14);
	write_cmd(0XAF);
}
//¹Ø±ÕOLEDÏÔÊ¾
void OLED_Display_Off(void)
{
	write_cmd(0X8D);
	write_cmd(0X10);
	write_cmd(0XAE);
	Set_OLED_VDD;
	Set_OLED_VBAT;
}

void OLED_Clear(void)
{
	u8 i,n;
	for(i=0;i<8;i++)
		for(n=0;n<128;n++)
			OLED_GRAM[n][i]=0X00;
	OLED_Refresh_Gram();
}

void OLED_DrawPoint(u8 x,u8 y,u8 t)
{
	u8 pos,bx,temp=0;
	
	if(x>127||y>63)
		return;
	pos=7-y/8;
	bx=y%8;
	temp=1<<(7-bx);
	
	if(t)
		OLED_GRAM[x][pos]|=temp;
	else
		OLED_GRAM[x][pos]&=~temp;
}

void OLED_Fill(u8 x1,u8 y1,u8 x2,u8 y2,u8 dot)
{
	u8 x,y;
	for(x=x1;x<=x2;x++)
	{
		for(y=y1;y<=y2;y++)
			OLED_DrawPoint(x,y,dot);
	}
	OLED_Refresh_Gram();
}


void OLED_ShowChar(u8 x,u8 y,u8 chr,u8 size,u8 mode)
{
	u8 temp,t,t1;
	u8 y0=y;
	chr=chr-' ';
	for(t=0;t<size;t++)
	{
		if(size==12)temp=asc2_1206[chr][t];
		else temp=asc2_1608[chr][t];
		for(t1=0;t1<8;t1++)
		{
			if(temp&0x80)OLED_DrawPoint(x,y,mode);
			else OLED_DrawPoint(x,y,!mode);
			temp<<=1;
			y++;
			if((y-y0)==size)
			{
				y=y0;
				x++;
				break;
			}
		}
	}
}


u32 mypow(u8 m,u8 n)
{
	u32 result=1;
	while(n--)result*=m;
	return result;
}


void OLED_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 size)
{
	u8 t,temp;
	u8 enshow=0;
	for(t=0;t<len;t++)
	{
		temp=(num/mypow(10,len-t-1))%10;
		if(enshow==0&&t<(len-1))
		{
			if(temp==0)
			{
				OLED_ShowChar(x+(size/2)*t,y,' ',size,1);
				continue;
			}else enshow=1;

		}
		OLED_ShowChar(x+(size/2)*t,y,temp+'0',size,1);
	}
}


void OLED_ShowString(u8 x,u8 y,const u8 *p)
{
	#define MAX_CHAR_POSX 122
	#define MAX_CHAR_POSY 58
	while(*p!='\0')
	{
		if(x>MAX_CHAR_POSX){x=0;y+=16;}
		if(y>MAX_CHAR_POSY){y=x=0;OLED_Clear();}
		OLED_ShowChar(x,y,*p,16,1);
		x+=8;
		p++;
	}
}


void OLED_Equalizer_128(u8 *data)
{
	int x,y;
	for (x=0;x<128;x++)
	{
		//printf("0x%x\n\r", data[x]);
		for (y=0;y<=data[x];y++)
			OLED_DrawPoint(128-x,y,1);
	}
	OLED_Refresh_Gram();
}


void OLED_Init(void)
{
	Clr_OLED_VDD;
	usleep(300);		// 300us
	Clr_OLED_RES;
	usleep(30000);		// 30ms
	Set_OLED_RES;
	usleep(30000);		// 30ms
	Clr_OLED_VBAT;

	write_cmd(0xAE);
	write_cmd(0xD5);
	write_cmd(0x80);
	write_cmd(0xA8);
	write_cmd(0X3F);
	write_cmd(0xD3);
	write_cmd(0X00);

	write_cmd(0x40);

	write_cmd(0x8D);
	write_cmd(0x14);


	write_cmd(0x20);
	write_cmd(0x02);
	write_cmd(0xA1);
	write_cmd(0xC0);
	write_cmd(0xDA);
	write_cmd(0x12);

	write_cmd(0x81);
	write_cmd(0xEF);
	write_cmd(0xD9);
	write_cmd(0xf1);
	write_cmd(0xDB);
	write_cmd(0x30);

	write_cmd(0xA4);
	write_cmd(0xA6);
	write_cmd(0xAF);
	OLED_Clear();
}
// end of files
