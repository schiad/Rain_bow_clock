#include "libuart.h"

bool libuart_available(e_uart id)
{
    s_uart  *uart = (s_uart*)_uart_base[id];

    if (uart->sta.reg & _U1STA_OERR_MASK)
        uart->sta.clr = _U1STA_OERR_MASK;
    return (uart->sta.reg & _U1STA_URXDA_MASK ? true : false);
}
