#include "liblcd.h"

void    liblcd_move(LCD *lcd, uint8_t col, uint8_t row)
{
    if (row >= lcd->rows)
        row = lcd->rows - 1;
    liblcd_command(lcd, SETDDRAMADDR, "\x00\x40\x14\x54"[row] + col);
    lcd->col = col;
    lcd->row = row;
}
