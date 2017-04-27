#ifndef LIBLCD_H
#define	LIBLCD_H

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

#include "libsys.h"

/* Type definitions */

typedef struct {
    volatile unsigned int *port;
    uint8_t               pin;
} PIN;

typedef struct {
    PIN         rs;
    PIN         e;
    PIN         d0;
    PIN         d1;
    PIN         d2;
    PIN         d3;
    PIN         d4;
    PIN         d5;
    PIN         d6;
    PIN         d7;
    PIN         led;
} LCD_PINS;

typedef struct {
    uint16_t    row;
    uint16_t    col;
    uint16_t    cols;
    uint16_t    rows;
    LCD_PINS    pins;
    uint8_t     control;
    uint8_t     display;
} LCD;

static inline void write_bit(PIN p, bool val)
{
    volatile unsigned int   *reg;

    reg = p.port;
    *reg = (*reg & ~(1 << p.pin)) | (val << p.pin);
}

/* Definitions */

#define liblcd_moveputc(a,b,c,d) do { \
    liblcd_move((a), (b), (c));       \
    liblcd_putc((a), (d));            \
} while (0)

#define liblcd_moveputs(a,b,c,d) do { \
    liblcd_move((a), (b), (c));       \
    liblcd_puts((a), (d));            \
} while (0)

#define liblcd_moveputn(a,b,c,d,e,f) do { \
    liblcd_move((a), (b), (c));           \
    liblcd_putn((a), (d), (e), (f));      \
} while (0)

#define CLEARDISPLAY 0x01
#define RETURNHOME 0x02
#define ENTRYMODESET 0x04
#define DISPLAYCONTROL 0x08
#define CURSORSHIFT 0x10
#define FUNCTIONSET 0x20
#define SETCGRAMADDR 0x40
#define SETDDRAMADDR 0x80

#define ENTRYRIGHT 0x00
#define ENTRYLEFT 0x02
#define ENTRYSHIFTINCREMENT 0x01
#define ENTRYSHIFTDECREMENT 0x00

#define DISPLAYON 0x04
#define DISPLAYOFF 0x00
#define CURSORON 0x02
#define CURSOROFF 0x00
#define BLINKON 0x01
#define BLINKOFF 0x00

#define DISPLAYMOVE 0x08
#define CURSORMOVE 0x00
#define MOVERIGHT 0x04
#define MOVELEFT 0x00

#define BIT8 0x10
#define BIT4 0x00
#define LINE2 0x08
#define LINE1 0x00
#define DOT5x10 0x04
#define DOT5x8 0x00

/* External references */
void    liblcd_autoscroll(LCD *lcd, bool val);
void    liblcd_blink(LCD *lcd, bool val);
void    liblcd_clear(LCD *lcd);
void    liblcd_command(LCD *lcd, uint8_t cmd, uint8_t val);
void    liblcd_cursor(LCD *lcd, bool val);
void    liblcd_delete(LCD **lcd);
void    liblcd_display(LCD *lcd, bool val);
void    liblcd_home(LCD *lcd);
void    liblcd_light(LCD *lcd, bool val);
void    liblcd_move(LCD *lcd, uint8_t col, uint8_t row);
bool    liblcd_new(LCD **out, LCD_PINS *in, uint8_t cols, uint8_t rows);
void    liblcd_pulse(LCD *lcd);
void    liblcd_putc(LCD *lcd, uint8_t c);
void    liblcd_putn(LCD *lcd, int32_t n, uint32_t base, uint32_t size);
void    liblcd_puts(LCD *lcd, const uint8_t *s);
void    liblcd_send(LCD *lcd, uint8_t val, bool rs);

#endif
