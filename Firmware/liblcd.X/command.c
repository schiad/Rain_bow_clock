#include "liblcd.h"

void    liblcd_command(LCD *lcd, uint8_t cmd, uint8_t val)
{
    liblcd_send(lcd, cmd | val, false);
    libsys_delay_micros(2000);
}
