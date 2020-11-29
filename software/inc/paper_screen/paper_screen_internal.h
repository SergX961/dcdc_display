#ifndef _PAPER_SCREEN_INTERNAL_H_
#define _PAPER_SCREEN_INTERNAL_H_

#include "paper_screen.h"
#include <stdint.h>

// #define EPD_TESTS

#define COLOR_BLACK 0x00
// #define COLOR_DARKGRAY 0x1
// #define COLOR_LIGHTGRAY 0x2
#define COLOR_WHITE 0x3
#define MAX_INFO_ROWS_NUM 11

extern uint8_t screen_paper_memory[3096];
extern uint8_t info_names[MAX_INFO_ROWS_NUM][30];
extern uint8_t info_values[MAX_INFO_ROWS_NUM][20];
extern uint8_t info_note[MAX_INFO_ROWS_NUM][50];
extern uint8_t info_note_fonts[MAX_INFO_ROWS_NUM];

extern uint32_t current_parametr_screen;


void write_pixel (uint16_t x_value, uint16_t y_value, uint8_t color);
void draw_v_line (uint16_t x_value, uint16_t y_value, uint16_t length);
void draw_h_line (uint16_t x_value, uint16_t y_value, uint16_t length);
void draw_rectangle (uint16_t x_value, uint16_t y_value, uint16_t width, uint16_t height);
void fill_rectangle (uint16_t x_value, uint16_t y_value, uint16_t width, uint16_t height, uint8_t color);
void clear_paper_screen (void);
void draw_char (uint16_t x_value, uint16_t y_value, uint8_t ascii);
void draw_string  (uint16_t x_value, uint16_t y_value, uint8_t * text);
void set_font (uint8_t font);
void display_screen (void);

uint8_t * cut_string_by_word (uint8_t length, uint8_t * text);
uint8_t  rows_count (uint8_t length, uint8_t * text);
void draw_string_fix_len  (uint16_t x_value, uint16_t y_value, uint8_t length, uint8_t * source_text);
uint8_t draw_string_fix_len_centre_align  (uint16_t x_value, uint16_t y_value, uint8_t length, uint8_t * source_text);
void draw_string_centre_align  (uint16_t x_value, uint16_t y_value, uint8_t * text);

void draw_sys_info (void);
void draw_parametr_screen (uint8_t * name, uint8_t * value, uint8_t * note);
void draw_confirm_param_screen (uint8_t * name, uint8_t * note, uint8_t * value);
void draw_apply_param_screen (void);
void draw_undo_param_screen (void);
#endif//_PAPER_SCREEN_INTERNAL_H_

