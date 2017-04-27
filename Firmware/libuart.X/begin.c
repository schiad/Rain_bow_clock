#include "libuart.h"

bool libuart_begin(e_uart id, uint16_t speed)
{
    s_uart  *uart = (s_uart*)_uart_base[id];

    uart->mode.clr = _U1MODE_ON_MASK;    /* Disable UART module   */
    uart->mode.clr = _U1MODE_STSEL_MASK; /* 1 stop bit            */
    uart->mode.clr = _U1MODE_PDSEL_MASK; /* 8-bit data w/o parity */
    uart->mode.clr = _U1MODE_BRGH_MASK;  /* 16x baud clock enable */
    uart->mode.clr = _U1MODE_RXINV_MASK; /* Idle state is 1       */
    uart->sta.set  = _U1STA_URXEN_MASK;  /* Enable RX pin         */
    uart->sta.set  = _U1STA_UTXEN_MASK;  /* Enable TX pin         */
    uart->brg.reg  = libsys_get_pbclk() / (16 * speed) - 1;
    uart->mode.set = _U1MODE_ON_MASK;    /* Enable UART module    */
    return (true);
}
