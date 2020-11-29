#include "../../inc/paper_screen/paper_screen_internal.h"
#include "stdio.h"

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
	clear_paper_screen();
	draw_confirm_param_screen(info_names[current_parametr_screen], info_note[current_parametr_screen], value);
	display_screen();
}

void set_info_value (uint8_t * value){
	sprintf(info_values[current_parametr_screen], "%s", value);
}
