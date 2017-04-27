#include "rainbowclock.h"

void    pixel_hello(void)
{
    uint32_t    i, n = 0;

    while (true) {
        if (task.message == MESSAGE_KILL)   /* Basic message handling */
            return;
        for (i = 0; i < 60; ++i) {
            libpixel_set(pixels, i,
                 8 * ((i + n) & 1),
                 8 * ((i + n) & 2),
                 8 * ((i + n)  & 4));
        }
        n = (n + 1) & 3;
        libpixel_show(pixels);
        libsys_delay_millis(50);
        WDTCONbits.WDTCLR = 1; /* Give periodic life signs to the watchdog */
    }
}
