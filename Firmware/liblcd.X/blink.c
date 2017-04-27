#include "liblcd.h"

void    liblcd_blink(LCD *lcd, bool val) {
    if (val == true)
        lcd->display |= BLINKON;
    else
        lcd->display &= ~BLINKON;
    liblcd_command(lcd, DISPLAYCONTROL, lcd->display);
}
