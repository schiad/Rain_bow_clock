#include "libsys.h"

uint32_t libsys_get_perf(void)
{
    uint32_t perf;
    asm volatile (       "\n"
    "    mfc0    %0, $9" "\n"
    : "=r" (perf)
    );
    return (perf);
}
