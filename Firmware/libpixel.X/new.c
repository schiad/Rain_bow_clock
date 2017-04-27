/*
 * Notice:
 * 
 * This library was designed for the PIC32MX340F512H microcontroller for a
 * clock frequency of 8MHz. Its successful use on other devices is not
 * guaranteed.
 */

#include "libpixel.h"

bool libpixel_new(PIXEL **out, volatile unsigned int *port,
                  uint8_t pin, uint32_t n_pixels)
{
    if ((*out = malloc(sizeof(**out))) == NULL)
        return (false);
    if (((*out)->pixels = malloc(sizeof(uint32_t) * n_pixels)) == NULL)
        return (false);
    memset((*out)->pixels, 0x00, sizeof(uint8_t) * n_pixels);
    (*out)->n_pixels = n_pixels;
    (*out)->port = port;
    (*out)->pin = pin;
    return (true);
}
