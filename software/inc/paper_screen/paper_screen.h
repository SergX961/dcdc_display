#ifndef _PAPER_SCREEN_H_
#define _PAPER_SCREEN_H_

#include <stdint.h>
 extern uint8_t tim6_counter;

void draw_main_screen (void);
void draw_menu_parametr_screen (uint8_t direction);
void draw_change_parametr_screen(uint8_t * value);
void set_info_value(uint8_t * value);

#endif//_PAPER_SCREEN_H_
