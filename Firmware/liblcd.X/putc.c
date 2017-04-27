#include "liblcd.h"

void    liblcd_putc(LCD *lcd, uint8_t c)
{
    liblcd_send(lcd, c, true);
    lcd->col = (lcd->col + 1) % lcd->cols;
    if (!lcd->col) {
        lcd->row = (lcd->row + 1) % lcd->rows;
		liblcd_move(lcd, lcd->col, lcd->row);
	}
}
