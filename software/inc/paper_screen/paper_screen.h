#ifndef _PAPER_SCREEN_H_
#define _PAPER_SCREEN_H_

#include <stdint.h>


#define MAX_INFO_ROWS_NUM 11

extern const uint8_t info_names[MAX_INFO_ROWS_NUM][30];
extern uint8_t info_values[MAX_INFO_ROWS_NUM][10];
extern const uint8_t info_note[MAX_INFO_ROWS_NUM][50];
extern uint8_t param_type[MAX_INFO_ROWS_NUM];

extern uint32_t current_parametr_screen;

void draw_main_screen (void);
void draw_menu_parametr_screen (uint8_t direction);
void draw_change_parametr_screen (uint8_t * value);
void draw_confirm_parametr_screen (uint8_t * value);
void set_info_value (uint8_t * value);
uint8_t get_param_type(void);
void set_choose_param_value (void);
void draw_choose_param_value(uint8_t direction);
void draw_value_param_screen (uint8_t * value);
#endif//_PAPER_SCREEN_H_
