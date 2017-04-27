#include "libuart.h"

bool libuart_putc(e_uart id, uint8_t c)
{
    s_uart  *uart = (s_uart*)_uart_base[id];

    if (uart->sta.reg & _U1STA_UTXBF_MASK)
        return (false);
    uart->tx.reg = c;
    return (true);
}
