#ifndef RAINBOWCLOCK_H
#define	RAINBOWCLOCK_H

#include <xc.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "libsys.h"
#include "liblcd.h"
#include "libuart.h"
#include "libpixel.h"

#include "menu.h"

/* Definitions */

#define ISR(vec,pri)    __attribute__((vector(vec),interrupt(pri),nomips16))
#define ENCODER_DELAY   2000
#define MOD(a, b) (((a) + (b)) % b)

/* Enumerations */

typedef enum {
    MESSAGE_NONE,
    MESSAGE_KILL
} e_message;

/* Type definitions */

typedef struct {
    uint16_t r;
    uint16_t g;
    uint16_t b;
} COLOR;

typedef struct {
    COLOR    bg;
    COLOR    mk;
    COLOR    hr;
    COLOR    mn;
    COLOR    sc;
} SCHEME;

typedef struct {
    uint32_t day_of_week;
    uint32_t millis;
    uint32_t seconds;
    uint32_t minutes;
    uint32_t hours;
    uint32_t day;
    uint32_t month;
    uint32_t year;
} DATE;

typedef struct {
    e_message message;
    bool      active;
} TASK;

/* Function prototypes */

uint8_t     bcd_to_dec(uint8_t n);
uint8_t     dec_to_bcd(uint8_t n);
bool        initialize_system(void);
uint8_t     tondering_day_of_week(DATE *date);

void        crash_clock(void);
void        pixel_hello(void);
void        reset_clock(void);
void        say_hello(void);
void        toggle_lcd(void);

/* External references */

extern LCD      *lcd;
extern SCHEME   color;
extern MENU     *menu;
extern PIXEL    *pixels;
extern DATE     date;
extern TASK     task;

#endif
