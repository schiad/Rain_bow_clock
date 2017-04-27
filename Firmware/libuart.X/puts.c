#include "libuart.h"

bool libuart_puts(e_uart id, uint8_t *s)
{
    s_uart  *uart = (s_uart*)_uart_base[id];

    while (*s != '\0') {
        while (!libuart_putc(id, *s));
        ++s;
    }
    return (true);
}
