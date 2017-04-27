#include "libuart.h"

uint32_t libuart_gets(e_uart id, uint8_t **in)
{
    uint32_t    size, len, i, time;
    uint8_t     *old, *new;

    size = 0; len = 0; i = 0; time = 0;
    while (time < 10000) {
        if (size <= len) {
            if ((new = malloc((size + 32 + 1) * sizeof(*new))) == NULL)
                return (false);
            if (old != NULL) {
                memcpy(new, old, len * sizeof(*new));
                free(old);
            }
            size += 32;
            old = new;
        }
        if (libuart_getc(id, &old[i])) {
            time = 0;
            len++;
            i++;
        }
        else
            time++;
    }
    *in = old;
	old[i] = '\0';
    return (len);
}
