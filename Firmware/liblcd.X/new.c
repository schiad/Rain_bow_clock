#include "liblcd.h"

bool    liblcd_new(LCD **out, LCD_PINS *in, uint8_t cols, uint8_t rows)
{
    if ((*out = malloc(sizeof(**out))) == NULL)
        return (false);
    (*out)->pins = *in;
    (*out)->control = DISPLAYON | CURSOROFF | BLINKOFF;
    (*out)->display = ENTRYLEFT | ENTRYSHIFTDECREMENT;
    liblcd_command(*out, FUNCTIONSET, BIT8 | DOT5x8 | LINE2);
    liblcd_command(*out, ENTRYMODESET, (*out)->display);
    (*out)->cols = cols;
    (*out)->rows = rows;
    liblcd_clear(*out);
    return (true);
}
