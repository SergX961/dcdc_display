#include "keyboard_internal.h"
#include "paper_screen.h"
#include <stdio.h>

uint8_t key_pressed_flag=0;
uint8_t screen_mode;
void (* key_func[12])(uint8_t param);
uint8_t input_value[3]={0,0,0};
uint8_t value_index=0;

//eampty func
void eampty_key (uint8_t param){

}
//обработка простого нажатия на цифру
void digit_key (uint8_t param){
	uint8_t str[20];
	sprintf((char *)str, "Key - %d", param);

	if (value_index<3){
		input_value[value_index]=param;
		value_index++;
	}
	draw_change_parametr_screen(input_value);
}

void enter_key (uint8_t param){
	uint8_t ret_value[3];
	if (value_index==1){
		sprintf((char *)ret_value, "%d",input_value[0]);
	}
	else if (value_index==2){
		sprintf((char *)ret_value, "%d%d",input_value[0], input_value[1]);
	}
	else if (value_index==3){
		sprintf((char *)ret_value, "%d%d%d",input_value[0], input_value[1], input_value[2]);
	}
	set_info_value(ret_value);
	input_value[0]=0;
	input_value[1]=0;
	input_value[2]=0;
	value_index=0;
	set_screen_mode(1);
}
void cancel_key (uint8_t param){
	input_value[0]=0;
	input_value[1]=0;
	input_value[2]=0;
	value_index=0;
	set_screen_mode(1);
}

//отображение основного экрана
void draw_sys_info_key (uint8_t param){
	draw_main_screen();

}

//отображение побочного экрана
void change_parametr_screen (uint8_t param){
	if (param==4){
		draw_menu_parametr_screen(2);
	}
	if (param==6){
		draw_menu_parametr_screen(1);
	}
}

//смена режима Основной\Второстепенный экран
void change_screen_mode (uint8_t param){
	if (screen_mode==0)
		set_screen_mode(1);
	else if (screen_mode==1)
		set_screen_mode(0);
}

void to_input_screen (uint8_t param){
	set_screen_mode(2);
}

void on_key_pressed (uint8_t key) {
	if (key<10){
		key_func[key](key);
	}
	else if (key==10){
		key_func[10](key);
	}
	else if (key==11){
		key_func[11](key);
	}

}

void set_screen_mode (uint8_t new_mode){
	//main screen
	if (new_mode==0){
		key_func[0]=eampty_key;
		key_func[1]=eampty_key;
		key_func[2]=eampty_key;
		key_func[3]=eampty_key;
		key_func[4]=eampty_key;
		key_func[5]=eampty_key;
		key_func[6]=eampty_key;
		key_func[7]=eampty_key;
		key_func[8]=eampty_key;
		key_func[9]=eampty_key;
		key_func[10]=draw_sys_info_key;
		key_func[11]=change_screen_mode;
		draw_sys_info_key(0);
	}
	//secondary screen
	if (new_mode==1){
		key_func[0]=eampty_key;
		key_func[1]=eampty_key;
		key_func[2]=eampty_key;
		key_func[3]=eampty_key;
		key_func[4]=change_parametr_screen;
		key_func[5]=eampty_key;
		key_func[6]=change_parametr_screen;
		key_func[7]=eampty_key;
		key_func[8]=eampty_key;
		key_func[9]=eampty_key;
		key_func[10]=to_input_screen;
		key_func[11]=change_screen_mode;
		draw_menu_parametr_screen(0);
	}
	//input parametr
	if (new_mode==2){
		key_func[0]=digit_key;
		key_func[1]=digit_key;
		key_func[2]=digit_key;
		key_func[3]=digit_key;
		key_func[4]=digit_key;
		key_func[5]=digit_key;
		key_func[6]=digit_key;
		key_func[7]=digit_key;
		key_func[8]=digit_key;
		key_func[9]=digit_key;
		key_func[10]=enter_key;
		key_func[11]=cancel_key;
		draw_change_parametr_screen(input_value);
	}

	screen_mode=new_mode;
}

void check_key_pressed (void) {
	if ( (key_buff[0]==key_buff[1])&&(key_buff[1]==key_buff[2])&&(key_buff[0]!=12) ){
		if (key_pressed_flag==0) {
			on_key_pressed(key_buff[0]);
		}
		key_pressed_flag=1;
	}
	else
		key_pressed_flag=0;
}

void keyboard_internal_init (void){
	screen_mode=0;
	key_func[0]=eampty_key;
	key_func[1]=eampty_key;
	key_func[2]=eampty_key;
	key_func[3]=eampty_key;
	key_func[4]=eampty_key;
	key_func[5]=eampty_key;
	key_func[6]=eampty_key;
	key_func[7]=eampty_key;
	key_func[8]=eampty_key;
	key_func[9]=eampty_key;
	key_func[10]=draw_sys_info_key;
	key_func[11]=change_screen_mode;

}
