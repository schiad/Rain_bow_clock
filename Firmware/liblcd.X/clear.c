#include "liblcd.h"

void    liblcd_clear(LCD *lcd)
{
    liblcd_command(lcd, CLEARDISPLAY, 0);
    lcd->col = 0;
    lcd->row = 0;
}
