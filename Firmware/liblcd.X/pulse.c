#include "liblcd.h"

void    liblcd_pulse(LCD *lcd)
{
    write_bit(lcd->pins.e, 1);
    libsys_delay_micros(10);
    write_bit(lcd->pins.e, 0);
    libsys_delay_micros(10);
}
