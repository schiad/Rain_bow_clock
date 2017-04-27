#include "rainbowclock.h"

void    reset_clock(void)
{
    int volatile    *p;

    asm volatile ("di");
    SYSKEY    = 0xAA996655;
    SYSKEY    = 0x556699AA;
    RSWRSTSET = 1;
    p = &RSWRST;
    while (1);
}
