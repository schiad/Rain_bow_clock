#include "rainbowclock.h"

SCHEME color = {
    {5, 5, 5}, {30, 30, 70}, /* BG, MK */
    {255, 0, 0}, {0, 255, 0},   /* HR, MN */
    {0, 0, 255}                 /* SC     */
};

static uint16_t sample_brightness(void)
{
    AD1CON1bits.SAMP = 1;
    libsys_delay_micros(10);
    AD1CON1bits.SAMP = 0;
    while (!AD1CON1bits.DONE);
    return ADC1BUF0;
}

static void     draw_markers(void)
{
    uint32_t i;

    libpixel_clear(pixels);
    for (i = 0; i < 60; ++i) {
        if (!(i % 5))
            libpixel_set(pixels, i, color.mk.r, color.mk.g, color.mk.b);
        else
            libpixel_set(pixels, i, color.bg.r, color.bg.g, color.bg.b);
    }
}

static uint8_t  long_month(uint8_t m, uint8_t y)
{
    if (m == 2) {
        if (!(y % 4) && (y % 100))
            return (29);
        return (28);
    }
    else if ((m >= 8) != (m % 2))
        return (31);
    return (30);
}

static void      refresh_clock(void)
{
    uint16_t    brightness;
    uint16_t    tmp;

    draw_markers();
    /*  hours ---------------------------------- */
    tmp = (5 * (date.hours % 12)) + date.minutes / 11;
    libpixel_set(pixels, (tmp + 59) % 60,
        color.hr.r / 4,
        color.hr.g / 4,
        color.hr.b / 4);
    libpixel_set(pixels, tmp % 60,
        color.hr.r,
        color.hr.g,
        color.hr.b);
    libpixel_set(pixels, (tmp +  1) % 60,
        color.hr.r / 4,
        color.hr.g / 4,
        color.hr.b / 4);
    /* minutes --------------------------------- */
    libpixel_set(pixels, date.minutes,
        color.bg.r + color.mn.r - color.mn.r * date.seconds / 59,
        color.bg.g + color.mn.g - color.mn.g * date.seconds / 59,
        color.bg.b + color.mn.b - color.mn.b * date.seconds / 59);
    libpixel_set(pixels, (date.minutes + 1) % 60,
        color.bg.r + color.mn.r * date.seconds / 59,
        color.bg.g + color.mn.g * date.seconds / 59,
        color.bg.b + color.mn.b * date.seconds / 59);
    /* seconds --------------------------------- */
    libpixel_set(pixels, date.seconds,
        color.bg.r + color.sc.r,
        color.bg.g + color.sc.g,
        color.bg.b + color.sc.b);
//    libpixel_set(pixels, (date.seconds + 1) % 60,
//        color.bg.r + color.sc.r * date.millis / 900,
//        color.bg.g + color.sc.g * date.millis / 900,
//        color.bg.b + color.sc.b * date.millis / 900);
    brightness = sample_brightness();
    libpixel_brightness(pixels, 255 * brightness / 1023);
    libpixel_show(pixels);
    if (!date.millis)
        menu_update(menu, lcd);
}

void ISR(_TIMER_1_VECTOR,IPL7AUTO) update_clock(void)
{
    date.millis = (date.millis + 10) % 1000;
    if (!date.millis) {
        date.seconds = (date.seconds + 1) % 60;
        if (!date.seconds) {
            date.minutes = (date.minutes + 1) % 60;
            if (!date.minutes) {
                date.hours = (date.hours + 1) % 24;
                if (!date.hours) {
                    date.day = date.day % 31 + 1;
                    if (!date.day) {
                        date.month = date.month % 12 + 1;
                        if (!date.month) {
                            date.year = (date.year + 1);
                        }
                    }
                    if (date.day > long_month(date.month, date.year))
                        date.day = 1;
                    date.day_of_week = tondering_day_of_week(&date);
                }
            }
        }
    }
    if (!task.active)
        refresh_clock();
    IFS0bits.T1IF = 0;
}
