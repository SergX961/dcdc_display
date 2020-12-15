#include "keyboard_internal.h"
#include "paper_screen.h"
#include <stdio.h>
#include "stdint.h"

uint8_t key_pressed_flag=0;
uint8_t screen_mode;
void (* key_func[12])(uint8_t param);
uint8_t input_value[MAX_VALUE_INDEX];//={48,48,48};
uint8_t value_index=0;

//eampty func
void eampty_key (uint8_t param){

}
//обработка простого нажатия на цифру
void digit_key (uint8_t param){
	if (value_index<MAX_VALUE_INDEX){
		for (uint8_t i=0; i<MAX_VALUE_INDEX-1; i++)
			input_value[i]=input_value[i+1];
		input_value[MAX_VALUE_INDEX-1]=param+48;
		value_index++;
	}
	draw_change_parametr_screen(input_value);
}
void point_key (uint8_t param){
	if (value_index<MAX_VALUE_INDEX){
		for (uint8_t i=0; i<MAX_VALUE_INDEX-1; i++)
			input_value[i]=input_value[i+1];
		input_value[MAX_VALUE_INDEX-1]='.';
		value_index++;
	}
	draw_change_parametr_screen(input_value);
}

void enter_input_key (uint8_t param){
	uint8_t ret_value[MAX_VALUE_INDEX];
	sprintf((char *)ret_value, "%s",input_value);
	uint8_t * ptr=ret_value;
	while (*ptr==48) {
		++ptr;
	}
	set_info_value(ptr);
	for (uint8_t i=0; i<MAX_VALUE_INDEX; i++)
		input_value[i]=48;
	value_index=0;
	//set_screen_mode(SECONDARY_SCREEN_MODE);
}
void cancel_input_key (uint8_t param){
	for (uint8_t i=0; i<MAX_VALUE_INDEX; i++)
		input_value[i]=48;
	value_index=0;
	draw_value_param_screen(&"Not saved.");
	//set_screen_mode(SECONDARY_SCREEN_MODE);
}
void confirm_key (uint8_t param){
	set_screen_mode(CONFIRM_VAL_SCREEN_MODE);
}

void enter_choose_param_key (uint8_t param){
	set_choose_param_value();
//	set_screen_mode(SECONDARY_SCREEN_MODE);
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

void choose_parametr_screen (uint8_t param){
	if (param==4){
		draw_choose_param_value(0);
	}
	if (param==6){
		draw_choose_param_value(1);
	}
}

//смена режима Основной\Второстепенный экран
void change_screen_mode (uint8_t param){
	if (screen_mode==0)
		set_screen_mode(SECONDARY_SCREEN_MODE);
	else if (screen_mode==1)
		set_screen_mode(MAIN_SCREEN_MODE);
}

void to_input_screen (uint8_t param){
	if (get_param_type()==0)
		set_screen_mode(INPUT_PARAM_SCREEN_MODE);
	else
		set_screen_mode(CHOOSE_SCREEN_MODE);
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

//Public functions
void set_screen_mode (uint8_t new_mode){
	//main screen
	if (new_mode==MAIN_SCREEN_MODE){
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
	if (new_mode==SECONDARY_SCREEN_MODE){
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
	if (new_mode==INPUT_PARAM_SCREEN_MODE){
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
		key_func[10]=confirm_key;
		key_func[11]=point_key;
		draw_change_parametr_screen(input_value);
	}
	//confirm screen
	if (new_mode==CONFIRM_VAL_SCREEN_MODE){
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
		key_func[10]=enter_input_key;
		key_func[11]=cancel_input_key;
		draw_confirm_parametr_screen(input_value);
	}
	//choose parameter value screen
	if (new_mode==CHOOSE_SCREEN_MODE){
		key_func[0]=eampty_key;
		key_func[1]=eampty_key;
		key_func[2]=eampty_key;
		key_func[3]=eampty_key;
		key_func[4]=choose_parametr_screen;
		key_func[5]=eampty_key;
		key_func[6]=choose_parametr_screen;
		key_func[7]=eampty_key;
		key_func[8]=eampty_key;
		key_func[9]=eampty_key;
		key_func[10]=enter_choose_param_key;
		key_func[11]=cancel_input_key;
		draw_choose_param_value(1);
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
	for (uint8_t i=0; i<MAX_VALUE_INDEX; i++)
		input_value[i]=48;
}
