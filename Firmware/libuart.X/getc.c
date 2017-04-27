#include "libuart.h"

bool libuart_getc(e_uart id, uint8_t *in)
{
    s_uart  *uart = (s_uart*)_uart_base[id];

    if (libuart_available(id)) {
        *in = uart->rx.reg;
        return (true);
    }
    return (false);
}
