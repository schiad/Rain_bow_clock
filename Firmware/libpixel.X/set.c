/*
 * Notice:
 * 
 * This library was designed for the PIC32MX340F512H microcontroller for a
 * clock frequency of 8MHz. Its successful use on other devices is not
 * guaranteed.
 */

#include "libpixel.h"

void libpixel_set(PIXEL *pix, uint32_t id, uint32_t r, uint32_t g, uint32_t b)
{
    pix->pixels[id] = (b << 8) | (r << 16) | (g << 24);
}
