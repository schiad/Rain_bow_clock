#include "liblcd.h"

void    liblcd_display(LCD *lcd, bool val)
{
    if (val == true)
        lcd->display |= DISPLAYON;
    else
        lcd->display &= ~DISPLAYON;
    liblcd_command(lcd, DISPLAYCONTROL, lcd->display);
}
