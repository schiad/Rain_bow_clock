#ifndef LIBPIXEL_H
#define	LIBPIXEL_H

#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#include "libsys.h"

/* Type definitions    */
typedef struct {
    uint8_t               pin;
    volatile unsigned int *port;
    uint32_t              *pixels;
    uint32_t              n_pixels;
} PIXEL;

/* Function prototypes */
void libpixel_brightness(PIXEL *pix, uint8_t n);
void libpixel_clear(PIXEL *pix);
void libpixel_delete(PIXEL **pix);
bool libpixel_new(PIXEL **out, volatile unsigned int *port,
                  uint8_t pin, uint32_t n_pixels);
void libpixel_set(PIXEL *pix, uint32_t id, uint32_t r, uint32_t g, uint32_t b);
void libpixel_show(PIXEL *pix);

#endif
