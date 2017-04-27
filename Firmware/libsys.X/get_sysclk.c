#include "libsys.h"

static uint32_t _f_cpu;
static uint32_t _pllidiv[8] = {1, 2, 3, 4, 5, 6, 10, 12};
uint32_t        _pllodiv[8] = {1, 2, 4, 8, 16, 32, 64, 256};
static uint32_t _pllmult[8] = {15, 16, 17, 18, 19, 20, 21, 24};

uint32_t libsys_get_sysclk(void)
{
    uint32_t freq;

    if (_f_cpu != 0)     /* Don't recalculate */
        return (_f_cpu);
    freq = 8000000L;     /* Assumes a 8MHz oscillator */
    switch (OSCCONbits.COSC) {
        case 0b001:      /* Fast RC w/ PLL         */
        case 0b011:      /* Primary Osc w/ PLL     */
            freq /= _pllidiv[(DEVCFG2 >>  0) & 7];
            freq *= _pllmult[(DEVCFG2 >>  4) & 7];
            freq /= _pllodiv[(DEVCFG2 >> 16) & 7];
            break ;
        case 0b111:      /* Fast RC w/ DIV         */
            freq /= _pllodiv[(OSCCON  >> 24) & 7];
            break ;
        case 0b110:      /* Fast RC w/ DIV16       */
            freq /= 16;
            break ;
        case 0b000:      /* Fast RC                */
        case 0b010:      /* Primary Osc            */
            break ;
    }
    return (_f_cpu = freq);
}
