#include "liblcd.h"

void    liblcd_delete(LCD **lcd)
{
    free(*lcd);
    *lcd = NULL;
}
