#include "../../inc/paper_screen/paper_screen_internal.h"
#include "../../inc/paper_screen/paper_screen.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
//#include <string.h>


#include "fontsepd.h"
#include "epd.h"


#define MAX_X_SIZE_BYTE 9 
#define BITS_ON_BYTE 8
#define NUM_BIT_ON_PIX 2
#define NUM_PIX_ON_CELL 4 


static sFONT * pFont = &Font12;
uint8_t current_info_row = 0;

uint8_t screen_paper_memory[3096] = {0};


void clear_paper_screen (void) {
	for (uint16_t num_cell = 0; num_cell < 3096; num_cell++){
		screen_paper_memory[num_cell] = 0xFF;
	}
}

void write_pixel (uint16_t x_value, uint16_t y_value, uint8_t color) {
	if (x_value >= 172 || y_value >= 72)
		return;

	uint16_t 
		num_byte = x_value * MAX_X_SIZE_BYTE * NUM_BIT_ON_PIX + y_value / NUM_PIX_ON_CELL,
		num_pos = y_value % NUM_PIX_ON_CELL;
	
	if (color == COLOR_BLACK)
		screen_paper_memory[num_byte] &= ~(0x3 << (6 - num_pos * NUM_BIT_ON_PIX));
	else
		screen_paper_memory[num_byte] |= (0x3 << (6 - num_pos * NUM_BIT_ON_PIX));
}

void draw_v_line (uint16_t x_value, uint16_t y_value, uint16_t length) {
	for (uint16_t shift = 0; shift < length; shift++) 
		write_pixel (x_value, y_value + shift, COLOR_BLACK);
}

void draw_h_line (uint16_t x_value, uint16_t y_value, uint16_t length) {
	for (uint16_t shift = 0; shift < length; shift++) 
		write_pixel (x_value + shift, y_value, COLOR_BLACK);
}

void draw_rectangle (uint16_t x_value, uint16_t y_value, uint16_t width, uint16_t height) {
	draw_h_line (x_value, y_value, width);
	draw_h_line (x_value, (y_value + height), (width + 1));

	draw_v_line (x_value, y_value, height);
	draw_v_line ((x_value + width), y_value, height);
}

#define PIX_COLOR(cell, num_pix) ((cell >> (6 - num_pix * 2)) & 0x3)
void draw_char (uint16_t x_value, uint16_t y_value, uint8_t ascii) {
  uint16_t
  	index = 0,  
  	width  = pFont->Width,
  	height = pFont->Height,
	data_length = height * width;

	ascii -= 32;
	const uint8_t * ch = &pFont->table[ascii * data_length];

	for (uint16_t num_h_index = 0; num_h_index < width; num_h_index++)
		for (uint16_t num_v_index = 0; num_v_index < height; num_v_index++){
			for (uint16_t num_pix = 0; num_pix < NUM_PIX_ON_CELL; num_pix++){
				write_pixel(
					x_value + num_h_index,
					y_value + num_v_index * NUM_PIX_ON_CELL  + num_pix,
					PIX_COLOR(ch[index], num_pix)
				);
			}
			index++;
		}
} 

#define SCREEN_X_SIZE 172
//#define CHAR_NOT_WITHOUT_FOR_SCREEN (((SCREEN_X_SIZE - (num_ch * pFont->Width)) & 0xFFFF) >= pFont->Width)
#define CHAR_NOT_WITHOUT_FOR_SCREEN ( (x_value + pFont->Width) <= SCREEN_X_SIZE )
void draw_string (uint16_t x_value, uint16_t y_value, uint8_t * text) {
	uint16_t 
		size = 0,
		num_ch = 0;
	uint8_t * ptr = text;
	while (*ptr++) size++;



	while ((*text != 0) &  CHAR_NOT_WITHOUT_FOR_SCREEN){
		draw_char(x_value, y_value, *text);
		x_value += pFont->Width;
		text++;
		num_ch++;
	}
}

void set_font (uint8_t font) {
	switch (font) {
		case 8: pFont = &Font8; break;
		case 12: pFont = &Font12; break;
		case 16: pFont = &Font16; break;
		case 20: pFont = &Font20; break;
		default: pFont = &Font12; break;
	}
}

void fill_rectangle (uint16_t x_value, uint16_t y_value, uint16_t width, uint16_t height, uint8_t color) {
	for (uint16_t num_v_line = 0; num_v_line < width; num_v_line++)
		for (uint16_t num_h_line = 0; num_h_line < height; num_h_line++){
			write_pixel(x_value + num_v_line, y_value + num_h_line, color);
		}
	
}

#define CHAR_NOT_IN_SCREEN ( (count_x + pFont->Width) <= SCREEN_X_SIZE )

//Основной экран
uint16_t draw_sysinfo_row (uint16_t y_value, uint8_t length, uint8_t * name, uint8_t * text){
	uint16_t count_y=0,
			 current_y=0;

	uint8_t rows_name=0,
			rows_text=0,
			max_rows;
	//проверяем влезет или нет хотябы одна строка по вертикали
	if (y_value<4*pFont->Height)
		return 0;
	else
		current_y=y_value-4*pFont->Height;

	//расчет количества необходимых строк
	rows_name=rows_count(length/pFont->Width, name);
	rows_text=rows_count(length/pFont->Width, text);

	if (rows_name>=rows_text) max_rows=rows_name; else max_rows=rows_text;
	if (current_y<4*pFont->Height*max_rows)
		return 0;
	else {
		count_y=current_y-4*pFont->Height*max_rows;
	}
	draw_string_fix_len_centre_align(2, current_y, length, name);
	draw_string_fix_len_centre_align(length+2, current_y, 170-length, text);
	draw_h_line(0, count_y+1 , 172);
	draw_v_line(length+1, count_y+1 , y_value-count_y);
	draw_v_line(0, count_y+1 , y_value-count_y);
	draw_v_line(171, count_y+1 , y_value-count_y);

	return count_y;
}

void draw_sys_info (void){
	uint16_t y_value=57;
	draw_string(48, 58, (uint8_t *)&"System info");
	draw_h_line(0, 57 , 172);

	while (y_value>0){
		//сделать запрос на получение ячейки Name и Value
		y_value=draw_sysinfo_row(y_value, 92, info_names[current_info_row], info_values[current_info_row]);
		if (y_value>0){
			current_info_row++;
			if (current_info_row==MAX_INFO_ROWS_NUM) {
				current_info_row=0;
				break;
			}
		}
	}
}

//Второстепенные экраны
void draw_parametr_screen (uint8_t * name, uint8_t * value, uint8_t * note){
	uint16_t size=0;
	uint8_t * ptr = name;
	while (*ptr++) size++;
	if (size <=15) {
		set_font(16);
		draw_string_centre_align(86, 50, name);
	}
	else {
		set_font(12);
		draw_string_fix_len_centre_align(1, 60, 170, name);
	}

	ptr = value;
	size=0;
	while (*ptr++) size++;
	if (size <=15) {
		set_font(16);
		draw_string_centre_align(86, 25, value);
	}
	else {
		set_font(12);
		draw_string_fix_len_centre_align(1, 35, 170, value);
	}


	set_font(12);
	draw_string_fix_len(2, 11, 165, note);

	//menu line
	draw_h_line(0, 24 , 172);
	draw_h_line(0, 48 , 172);

	//circuit
	draw_h_line(0, 0 , 172);
	draw_h_line(0, 71 , 172);
	draw_v_line(0, 0 , 72);
	draw_v_line(171, 0 , 72);
}

void draw_text_param_screen (uint8_t * name, uint8_t * note, uint8_t * text1, uint8_t * text2){

	uint16_t size=0;
	uint8_t * ptr = name;
	while (*ptr++) size++;
	if (size <=15) {
		set_font(16);
		draw_string_centre_align(86, 50, name);
	}
	else {
		set_font(12);
		draw_string_fix_len_centre_align(1, 60, 170, name);
	}
	set_font(12);

	draw_string_centre_align(86, 35, text1);
	draw_string_centre_align(86, 22, text2);
	draw_string_fix_len(2, 9, 162, note);

	//menu line
	draw_h_line(0, 48 , 172);

	//circuit
	draw_h_line(0, 0 , 172);
	draw_h_line(0, 71 , 172);
	draw_v_line(0, 0 , 72);
	draw_v_line(171, 0 , 72);

}

//разбивка строки на слова
uint8_t * cut_string_by_word (uint8_t length, uint8_t * text){
	uint16_t size=0,
			num_ch=0;
	uint8_t * ptr = text,
			* gap_ptr,
			gap_flag=0;
	while (*ptr++) size++;
	uint8_t * buf;
	buf = calloc(size, sizeof(uint8_t));
	for(uint8_t i=0; i<=size; i++)
		buf[i]=text[i];
	ptr=buf;
	gap_ptr=buf;
	while(*buf!=0){
		if (*buf==32){
			gap_ptr=buf;
			gap_flag=1;
		}
		if (*buf==10){
			gap_ptr=buf;
			num_ch=0;
			gap_flag=0;
		}

		if (num_ch==length){
			num_ch=0;
			if (gap_flag==1){
				buf=gap_ptr;
				*buf=10;
				gap_flag=0;
			}
		}
		else
			num_ch++;
		buf++;
	}
	return ptr;

}

uint8_t  rows_count (uint8_t length, uint8_t * text){
	uint16_t num_ch=0;
	uint8_t * gap_ptr = text,
			* buf = text,
			rows_cnt=0,
			gap_flag=0;

	while(*buf!=0){
		if (*buf==32){
			gap_ptr=buf;
			gap_flag=1;
		}
		if (*buf==10){
			gap_ptr=buf;
			num_ch=0;
			rows_cnt++;
			gap_flag=0;
		}
		if (num_ch==length){
			num_ch=0;
			rows_cnt++;
			if (gap_flag==1){
				buf=gap_ptr;
				gap_flag=0;
			}
		}
		else
			num_ch++;
		buf++;
	}
	return rows_cnt;

}

//Вывод строк в фиксированную длинну с центровкой
uint8_t draw_string_fix_len_centre_align  (uint16_t x_value, uint16_t y_value, uint8_t length, uint8_t * source_text){
	uint16_t
		num_ch = 0,
		count_x=x_value,
		count_y=y_value;

	uint8_t current_line=0,
			* ptr,
			max_char_str=length/pFont->Width;

	uint8_t * text=cut_string_by_word(max_char_str, source_text);
	ptr=text;

	while (*text != 0){
		if ( (num_ch==max_char_str) || (*text==10) ){
			count_x=x_value+((length-num_ch*pFont->Width)/2);
			count_y=y_value-4*pFont->Height*current_line;
			current_line++;

			for (uint8_t i=0; i<num_ch; i++){
				if (*ptr!=10 && *ptr!=9) {
					draw_char(count_x, count_y, *ptr);
					count_x += pFont->Width;
					ptr++;
				}

			}
			num_ch=0;
			if (*text==10) {
				text++;
				ptr++;
			}
		}
		else {
			num_ch++;
			text++;
		}
	}
	count_x=x_value+((length-num_ch*pFont->Width)/2);
	count_y=y_value-4*pFont->Height*current_line;

	for (uint8_t i=0; i<num_ch; i++){
		if (*ptr!=10 && *ptr!=9) {
			draw_char(count_x, count_y, *ptr);
			count_x += pFont->Width;
			ptr++;
		}

	}
	//free(ptr);
	return current_line;
}

void draw_string_fix_len  (uint16_t x_value, uint16_t y_value, uint8_t length, uint8_t * source_text){
	uint16_t
		num_ch = 0,
		count_x=x_value,
		count_y=y_value,
		centre = x_value+length/2;

	uint8_t current_line=1,
			max_char_str=length/pFont->Width;
	uint8_t * text=cut_string_by_word(max_char_str, source_text);

	while (*text != 0){
		if ( (num_ch==max_char_str*current_line) || (*text==10) ){
			count_x=x_value;
			count_y=y_value-4*pFont->Height*current_line;
			current_line++;
		}
		if (*text!=10 && *text!=9) {
			draw_char(count_x, count_y, *text);
			count_x += pFont->Width;
			num_ch++;
		}
		if (*text==9) count_x=centre;
		text++;
	}
	//free(text);
}

//Вывод строки выровненной по центру
void draw_string_centre_align  (uint16_t x_value, uint16_t y_value, uint8_t * text) {
	uint16_t
		size = 0,
		num_ch = 0,
		count_x;
	uint8_t * ptr = text;
	while (*ptr++) size++;

	if (x_value > ((size/2)*pFont->Width)){
		count_x=x_value-(size/2)*pFont->Width;
	}
	else count_x=1;

	while ((*text != 0) &  CHAR_NOT_WITHOUT_FOR_SCREEN){
		draw_char(count_x, y_value, *text);
		count_x += pFont->Width;
		text++;
		num_ch++;
	}
}


#ifndef EPD_TESTS
#include "gpio.h"
extern EPD_DrvTypeDef gde021a1_drv;

#define EPD_BUSY_PIN GPIO_PIN_8
#define EPD_BUSY_GPIO_PORT GPIOA

void display_screen (void)  {
 gde021a1_drv.SetDisplayWindow(0, 0, 171, 17);

 for(uint32_t index = 0; index < 3096; index++)
 {
	  gde021a1_drv.WritePixel(screen_paper_memory[index]);
 }

 gde021a1_drv.RefreshDisplay();
 while (HAL_GPIO_ReadPin(EPD_BUSY_GPIO_PORT, EPD_BUSY_PIN) != (uint16_t)RESET);
 HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET);
 for (uint32_t i=0; i<100000; i++);
}

#else

void display_screen (void){

}

#endif
