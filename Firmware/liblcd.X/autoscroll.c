#include "liblcd.h"

void    liblcd_autoscroll(LCD *lcd, bool val) {
    if (val == true)
        lcd->display |= ENTRYSHIFTINCREMENT;
    else
        lcd->display &= ~ENTRYSHIFTINCREMENT;
    liblcd_command(lcd, ENTRYMODESET, lcd->display);
}
