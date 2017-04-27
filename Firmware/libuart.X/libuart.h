#ifndef LIBUART_H
#define	LIBUART_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#include "libsys.h"

/* Enumerations */

typedef enum {
    UART1 = 0,
    UART2 = 1
} e_uart;

/* Type definitions */

typedef struct {
    uint32_t    reg;
    uint32_t    clr;
    uint32_t    set;
    uint32_t    inv;
} s_reg;

typedef struct {
    s_reg       mode;
    s_reg       sta;
    s_reg       tx;
    s_reg       rx;
    s_reg       brg;
} s_uart;

/* Function prototypes */
bool     libuart_available(e_uart id);
bool     libuart_begin(e_uart id, uint16_t speed);
bool     libuart_getc(e_uart id, uint8_t *in);
uint32_t libuart_gets(e_uart id, uint8_t **in);
bool     libuart_putc(e_uart id, uint8_t c);
bool     libuart_puts(e_uart id, uint8_t *s);

static volatile unsigned int _uart_base[] = {
    _UART1_BASE_ADDRESS,
    _UART2_BASE_ADDRESS,
};

#endif
