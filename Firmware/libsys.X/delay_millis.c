#include "libsys.h"

void libsys_delay_millis(uint32_t ms)
{
    while (ms--)
        libsys_delay_micros(1000);
}
