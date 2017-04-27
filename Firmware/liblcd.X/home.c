#include "liblcd.h"

void    liblcd_home(LCD *lcd)
{
    liblcd_command(lcd, RETURNHOME, 0);
    lcd->col = 0;
    lcd->row = 0;
}
