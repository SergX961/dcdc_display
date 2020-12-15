#ifndef _KEYBOARD_INTERNAL_H_
#define _KEYBOARD_INTERNAL_H_

#include "keyboard.h"
#include "stdint.h"

#define MAX_VALUE_INDEX 4
#define MAIN_SCREEN_MODE 0
#define SECONDARY_SCREEN_MODE 1
#define INPUT_PARAM_SCREEN_MODE 2
#define CONFIRM_VAL_SCREEN_MODE 3
#define CHOOSE_SCREEN_MODE 4

extern void (* key_func[12])(uint8_t param);
extern uint8_t input_value[MAX_VALUE_INDEX];
extern uint8_t value_index;

void check_key_pressed (void);
void keyboard_internal_init (void);
void set_screen_mode (uint8_t new_mode);

#endif//_KEYBOARD_INTERNAL_H_

