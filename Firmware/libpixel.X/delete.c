#include "libpixel.h"

void libpixel_delete(PIXEL **pix)
{
    free(*pix);
    *pix = NULL;
}
