#include "libpixel.h"

void libpixel_brightness(PIXEL *pix, uint8_t n)
{
    uint32_t i;
    uint32_t r;
    uint32_t g;
    uint32_t b;

    for (i = 0; i < pix->n_pixels; ++i) {
        g = ((pix->pixels[i] >> 24) & 255) * n / 255;
        r = ((pix->pixels[i] >> 16) & 255) * n / 255;
        b = ((pix->pixels[i] >>  8) & 255) * n / 255;
        pix->pixels[i] = (b << 8) | (r << 16) | (g << 24);
    }
}
