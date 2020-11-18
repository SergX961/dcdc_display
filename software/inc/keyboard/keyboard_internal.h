#ifndef _KEYBOARD_INTERNAL_H_
#define _KEYBOARD_INTERNAL_H_

#include "keyboard.h"
#include "stdint.h"

extern void (* key_func[12])(uint8_t param);
extern uint8_t input_value[3];
extern uint8_t value_index;

void check_key_pressed();
void on_key_pressed(uint8_t key);
void set_screen_mode(uint8_t new_mode);
void keyboard_internal_init();

#endif//_KEYBOARD_INTERNAL_H_

