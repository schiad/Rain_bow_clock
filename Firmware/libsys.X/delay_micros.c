#include "libsys.h"

void libsys_delay_micros(uint32_t us)
{
    uint32_t freq, old, new, i;

    old = libsys_get_perf();
    freq = libsys_get_sysclk() / 1000000; /* Converting Hz to MHz allows for */
    for (i = 0; i < freq * us;) {         /* longer delay ranges before      */
        new = libsys_get_perf();          /* overflowing, at the cost of     */
        i += 2 * (new - old);             /* functionality for processors    */
        old = new;                        /* below the Megahertz.            */
    }
}
