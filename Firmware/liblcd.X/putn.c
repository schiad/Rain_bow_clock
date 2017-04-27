#include "liblcd.h"

void    liblcd_putn(LCD *lcd, int32_t n, uint32_t base, uint32_t size)
{
    uint32_t    i = 0;
    uint8_t     buff[32];
    bool        neg = false;

    if (n < 0) {
        neg = true;
        n = -n;
    }
    size = size > 32 ? 32 : size;
    while (n || size) {
        buff[i++] = "0123456789ABCDEF"[n % base];
        size -= size && 1;
        n /= base;
    }
    if (neg == true)
        liblcd_putc(lcd, '-');
    while (i > 0)
        liblcd_putc(lcd, buff[--i]);
}
