#include "keyboard_internal.h"
#include "stdint.h";

uint16_t  key_limits[12][2] = {
		{1975, 2055}, //0
		{4055, 5035}, //1
		{3692, 3772}, //2
		{3381, 3461}, //3
		{3111, 3191}, //4
		{2885, 2965}, //5
		{2689, 2769}, //6
		{2497, 2577}, //7
		{2346, 2426}, //8
		{2212, 2292}, //9
		{2080, 2160}, //10
		{1877, 1957} //11
};

uint8_t key_buff[3]={0,1,2};
uint8_t key_buff_index=0;

void add_key_value(uint16_t key_value)
{
	uint8_t flag=0;
	for(uint8_t i=0; i<12; i++){
		if ( (key_value>=key_limits[i][0])&&(key_value<=key_limits[i][1]) ){
			key_buff[key_buff_index]=i;
			key_buff_index++;
			flag=1;
			break;
		}
	}
	if (flag==0){
		key_buff[key_buff_index]=12;
		key_buff_index++;
	}
	if (key_buff_index>2)
		key_buff_index=0;
	check_key_pressed();
}
