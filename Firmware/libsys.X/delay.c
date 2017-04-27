#include "libsys.h"

void libsys_delay(uint32_t sc)
{
    while (sc--)
        libsys_delay_millis(1000);
}
