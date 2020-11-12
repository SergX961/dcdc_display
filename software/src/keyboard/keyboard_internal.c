#include "keyboard_internal.h"
#include "paper_screen_internal.h";

uint8_t key_pressed_flag=0;

void check_key_pressed(){
	if ( (key_buff[0]==key_buff[1])&&(key_buff[1]==key_buff[2])&&(key_buff[0]!=12) ){
		if (key_pressed_flag==0) {
			on_key_pressed(key_buff[0]);
		}
		key_pressed_flag=1;
	}
	else
		key_pressed_flag=0;
}

void on_key_pressed(uint8_t key){
	if (key<10){
	uint8_t str[20];
	sprintf(str, "Key - %d", key);
	clear_paper_screen();
	draw_string(20, 50, str);
	display_screen();
	}
	else if (key==10){
		clear_paper_screen();
		draw_sys_info();
		display_screen();
	}

}
