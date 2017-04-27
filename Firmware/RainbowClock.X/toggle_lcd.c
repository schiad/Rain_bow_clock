#include "rainbowclock.h"

void    toggle_lcd(void)
{
    LATCbits.LATC6 ^= 1;
}
