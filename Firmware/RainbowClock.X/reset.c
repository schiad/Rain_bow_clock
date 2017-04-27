#include "rainbowclock.h"

void reset(void)
{
    void    *p;

    SYSKEY    = 0xAA996655;
    SYSKEY    = 0x556699AA;
    RSWRSTSET = 1;
    p = &RSWRST;
    while (1);
}
