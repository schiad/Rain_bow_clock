#include "liblcd.h"

void    liblcd_send(LCD *lcd, uint8_t val, bool rs)
{
    /* Register select ---- */
    write_bit(lcd->pins.rs, rs);
    /* Data byte ---------- */
    write_bit(lcd->pins.d0, (val >> 0) & 1);
    write_bit(lcd->pins.d1, (val >> 1) & 1);
    write_bit(lcd->pins.d2, (val >> 2) & 1);
    write_bit(lcd->pins.d3, (val >> 3) & 1);
    write_bit(lcd->pins.d4, (val >> 4) & 1);
    write_bit(lcd->pins.d5, (val >> 5) & 1);
    write_bit(lcd->pins.d6, (val >> 6) & 1);
    write_bit(lcd->pins.d7, (val >> 7) & 1);
    liblcd_pulse(lcd);
}
