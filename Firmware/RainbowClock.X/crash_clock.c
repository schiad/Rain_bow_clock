#include "rainbowclock.h"

void    crash_clock(void)
{
    *(uint32_t*)0 = 0; /* Well done jackass! */
}
