#include "liblcd.h"

void    liblcd_cursor(LCD *lcd, bool val) {
    if (val == true)
        lcd->display |= CURSORON;
    else
        lcd->display &= ~CURSORON;
    liblcd_command(lcd, DISPLAYCONTROL, lcd->display);
}
