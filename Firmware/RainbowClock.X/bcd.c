#include "rainbowclock.h"

uint8_t  bcd_to_dec(uint8_t n)
{
    return (n / 16 * 10 + n % 16);
}

uint8_t  dec_to_bcd(uint8_t n)
{
    return (n / 10 * 16 + n % 10);
}
