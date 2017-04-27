/*
 * Notice:
 *
 * This library was designed for the PIC32MX340F512H microcontroller for a
 * clock frequency of 8MHz. Its successful use on other devices is not
 * guaranteed.
 */

#include "libpixel.h"

void libpixel_clear(PIXEL *pix)
{
    memset(pix->pixels, 0x00, sizeof(*pix->pixels) * pix->n_pixels);
}
