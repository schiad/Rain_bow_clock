#include "rainbowclock.h"

uint8_t tondering_day_of_week(DATE *date)
{
    static int32_t table[] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};
    uint32_t        year;

    year = date->year - ((date->month) < 3);
    return ((year + year / 4 - year / 100 + year / 400
            + table[date->month - 1] + date->day) % 7 + 1);
}
