#include "libsys.h"

extern _pllodiv[8];

uint32_t libsys_get_pbclk(void)
{
    return (libsys_get_sysclk() / _pllodiv[(DEVCFG1 >> 12) & 3]);
}
