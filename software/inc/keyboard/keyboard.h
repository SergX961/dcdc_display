#ifndef _KEYBOARD_H_
#define _KEYBOARD_H_

#include "stdint.h"

extern uint8_t key_buff[3];

void add_key_value (uint16_t key_value);
void keyboard_init (void);

#endif//_KEYBOARD_H_

