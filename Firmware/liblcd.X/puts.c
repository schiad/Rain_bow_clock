#include "liblcd.h"

void    liblcd_puts(LCD *lcd, const uint8_t *s)
{
    while (*s != '\0') {
        if (*s == '\n') {
            lcd->row = (lcd->row + 1) % lcd->rows;
            liblcd_move(lcd, lcd->col, lcd->row);
                continue ;
        }
        liblcd_putc(lcd, *s++);
    }
}
