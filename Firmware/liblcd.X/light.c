#include "liblcd.h"

void    liblcd_light(LCD *lcd, bool val)
{
    write_bit(lcd->pins.led, val);
}
