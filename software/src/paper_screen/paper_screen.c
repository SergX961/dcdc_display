#include "../../inc/paper_screen/paper_screen_internal.h"

#include "stdio.h"
//#include "stdlib.h"
#include <tim.h>

uint32_t current_parametr_screen = 0;

const uint8_t info_names[MAX_INFO_ROWS_NUM][30] = {
		"Voltage cut", "Charging type", "Charge threshold Pb lower", "Charge threshold Pb upper",
		"Charge threshold others", "Discharge threshold", "Quantity cans", "Capacity",
		"Max allowable capacity", "Internal voltage default", "Type battery"
	};
uint8_t info_values[MAX_INFO_ROWS_NUM][10] = {
		"5V", "TEXT2", "TEXT3", "TEXT4",
		"TEXT5", "TEXT6", "TEXT7", "TEXT8",
		"TEXT9", "TEXT10", "TEXT11"
	};
const uint8_t info_note[MAX_INFO_ROWS_NUM][50] = {
		"Ni-ca:5-10V\tLiFePO4:1215\nLi-io:7-12V\tSLA:4-15V",
		"TEXT12\tTEXT\nTEXT\tTEXT12", "TEXTTEXT TEXT\nTEXT TEXTTEXT", "TEXTTEXTTEXTTEXTTEXTTEXTTEXT",
		"TEXT", "TEXT", "TEXT", "TEXT",
		"TEXT", "TEXT", "TEXT"
};
uint8_t param_type[MAX_INFO_ROWS_NUM] = {
		1,0,0,0,0,0,0,0,0,0,0
};
 uint8_t param1_val[4][10] = {"type1", "type2", "type3", "type4" };
uint8_t param_val_index=0;

float my_atof (uint8_t * text){
	uint8_t * ptr=text;
	float ret_val=0.0;
	uint8_t is_point = 0;
	uint32_t devine=10;
	while (*ptr!='\0' && ( (*ptr>47 && *ptr<57) || (*ptr==46) )){
		if (*ptr!=46){
			if (is_point==0){
				ret_val=ret_val*10;
				ret_val=ret_val+(*ptr-48);
			}
			else {
				ret_val=ret_val+((float)(*ptr-48))/devine;
				devine=devine*10;
			}
		}
		else
			is_point=1;
		ptr++;
	}
	return ret_val;
}

void draw_main_screen (void) {
	clear_paper_screen();

	set_font(12);
	//draw_string(48, 58, &"System info");
/*
	draw_string(30, 1, &"type");
	draw_string(110, 1, &"Li-io");

	draw_string(10, 12, &"STR 1 type");
	draw_string(30, 23, &"STR 2");
	draw_string(30, 34, &"STR 3");
	draw_string(30, 45, &"STR 4");
	draw_string(110, 45, &"Li-io");
*/
	//draw_string_fix_len(43, 45, 0, info_names[0]);
	//draw_string_fix_len(43, 34, 0, info_names[1]);
	//draw_string_fix_len(43, 23, 0, info_names[5]);
	//draw_string_fix_len(43, 12, 0, info_names[7]);
	//draw_string_fix_len(43, 12, 0, info_names[5]);

	//uint16_t curent_y = draw_sysinfo_row(45, 86, info_names[0], info_names[5]);
	//if (curent_y>0) curent_y = draw_sysinfo_row(curent_y, 86, info_names[0], info_names[5]);
	//if (curent_y>0) curent_y = draw_sysinfo_row(curent_y, 86, info_names[0], info_names[5]);

	draw_sys_info();

	//menu line
	/*draw_v_line(86, 0 , 57);
	draw_h_line(0, 13 , 172);
	draw_h_line(0, 24 , 172);
	draw_h_line(0, 35 , 172);
	draw_h_line(0, 46 , 172);
	draw_h_line(0, 57 , 172);*/

	//circuit
	//draw_h_line(0, 0 , 172);
	draw_h_line(0, 71 , 172);
	draw_v_line(0, 0 , 72);
	draw_v_line(171, 0 , 72);

	display_screen();
} 

void draw_menu_parametr_screen (uint8_t direction) {
	clear_paper_screen();

	if (direction==1){
		current_parametr_screen++;
		if (current_parametr_screen==MAX_INFO_ROWS_NUM) current_parametr_screen=0;
	}
	else if (direction==2){
		if (current_parametr_screen==0)
			current_parametr_screen=MAX_INFO_ROWS_NUM-1;
		else
			current_parametr_screen--;
	}

	draw_parametr_screen(info_names[current_parametr_screen], info_values[current_parametr_screen], info_note[current_parametr_screen]);
	/*
	set_font(16);
	draw_string(15, 50, &"<- CURRENT ->");
	draw_string(15, 25, &"1.000.000 A");


	set_font(12);
	//draw_string(15, 11, &"Ni-cd: 5-10 A");
	//draw_string_fix_len(5, 11, 80,  &"Ni-ca:5-10V\nLi-io:7-12V");
	//draw_string_fix_len(86, 11, 80, &"LiFePO4:12-15\nSLA:4-15V");
	draw_string_fix_len(2, 11, 165, info_note[0]);
	//draw_string(15, 1, &"Li-io: 8-12 A");

	//menu line
	draw_h_line(0, 24 , 172);
	draw_h_line(0, 48 , 172);

	//circuit
	draw_h_line(0, 0 , 172);
	draw_h_line(0, 71 , 172);
	draw_v_line(0, 0 , 72);
	draw_v_line(171, 0 , 72);
*/
	display_screen();
}

void draw_change_parametr_screen (uint8_t * value){
	uint8_t str[30];
	sprintf((char *)str, "Enter new value: %s", value);
	clear_paper_screen();
	draw_text_param_screen(info_names[current_parametr_screen], info_note[current_parametr_screen], (uint8_t *)&"", str);
	display_screen();
}
void draw_confirm_parametr_screen (uint8_t * value){
	uint8_t str[30];
	sprintf((char *)str, "New value: %s", value);

	clear_paper_screen();
	draw_text_param_screen(info_names[current_parametr_screen], info_note[current_parametr_screen], (uint8_t *)&"Confirm?", str);
	display_screen();
}

void set_info_value (uint8_t * value){
	float f;
	if (param_type[current_parametr_screen] == 0){
		uint8_t str[30];
		f=my_atof(value);
		if (f>50){ //для тестирование ограничений на ввод параметров
			sprintf((char *)str, "Value %s incorrect.", value);
		}
		else {
			sprintf((char *)info_values[current_parametr_screen], "%s", value);
			sprintf((char *)str, "You set: %s", value);
		}
		clear_paper_screen();
		draw_parametr_screen(info_names[current_parametr_screen], str, info_note[current_parametr_screen]);
		display_screen();
		HAL_TIM_Base_Start_IT(&htim21);
	}
}

void set_choose_param_value (void){
	sprintf((char *)info_values[current_parametr_screen], "%s", param1_val[param_val_index]);
	param_val_index=0;
	uint8_t str[30];
	sprintf((char *)str, "You set: %s", info_values[current_parametr_screen]);
	clear_paper_screen();
	draw_parametr_screen(info_names[current_parametr_screen], str, info_note[current_parametr_screen]);
	display_screen();
	HAL_TIM_Base_Start_IT(&htim21);
}

uint8_t get_param_type(void){
	return param_type[current_parametr_screen];
}

void draw_choose_param_value(uint8_t direction){
	if (direction==1){
		param_val_index++;
		if (param_val_index==4) param_val_index=0;
	}
	else {
		if (param_val_index==0)
			param_val_index=3;
		else
			param_val_index--;
	}
	clear_paper_screen();
	draw_parametr_screen(info_names[current_parametr_screen], param1_val[param_val_index], info_note[current_parametr_screen]);
	display_screen();
}

void draw_value_param_screen (uint8_t * value){
	clear_paper_screen();
	draw_parametr_screen(info_names[current_parametr_screen], value, info_note[current_parametr_screen]);
	display_screen();
	HAL_TIM_Base_Start_IT(&htim21);
}
