#include "rainbowclock.h"

uint8_t *errors[] = {
    "Interrupt",            /*  0 */
    "Reserved",             /*  1 */
    "Reserved",             /*  2 */
    "Reserved",             /*  3 */
    "Address error ld",     /*  4 */
    "Address error st",     /*  5 */
    "Bus error fetch",      /*  6 */
    "Bus error ld/st",      /*  7 */
    "Syscall",              /*  8 */
    "Breakpoint",           /*  9 */
    "Reserved inst.",       /* 10 */
    "Coproc. unusable",     /* 11 */
    "Arithmetic overfl.",   /* 12 */
    "Trap",                 /* 13 */
    "Reserved",             /* 14 */
    "Reserved",             /* 15 */
    "Undefined",            /* 16 */
    "CorExtend unusable",   /* 17 */
    "Coprocessor 2",        /* 18 */
    "Reserved",             /* 19 */
                            /* .. */
};

void    _general_exception_context(void)
{
    char     buffer[32];
    char    *error;
    uint32_t var;

    liblcd_clear(lcd);
    liblcd_move(lcd, 0, 0);
    liblcd_puts(lcd, "Oops! That's a crash");
    liblcd_puts(lcd, "Prepare for a reboot");

    asm volatile ("mfc0 %0, $14": "=r" (var));
    utoa((char*)&buffer, (unsigned int)var, 16);
    liblcd_move(lcd, 0, 2);
    liblcd_puts(lcd, "EPC  : 0x");
    liblcd_puts(lcd, buffer);

    asm volatile ("mfc0 %0, $13": "=r" (var));
    error = errors[(var >> 2) & 0x1F];
    liblcd_moveputs(lcd, 0, 3, error);

    libpixel_clear(pixels);
    for (var = 0; var < 60; ++var)
        libpixel_set(pixels, var, 15, 15 * (var & 1), 15 * (var & 1));
    libpixel_show(pixels);

    while (1);
}
