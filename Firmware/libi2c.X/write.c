#include "libi2c.h"

/*
 * libi2c_write:
 * Send a complete write request to a given I2C slave module responding to
 * address 'addr'. The request shall be encoded in an array of UINT8 pointed
 * at by 'data' according to the specifications of your slave module,
 * with 'n' indicating the size in bytes of your request.
 * This function was not designed for reading data from a slave. For that
 * purpose, use the libi2c_read() function instead.
 */

void    libi2c_write(e_i2c id, uint8_t addr, uint8_t *data, uint32_t n)
{
retry:
    while (true) {
        _libi2c_start(id);
        if (!_libi2c_send(id, (addr << 1) | 0))
            continue ;
        while (n--)
            if (!_libi2c_send(id, *data++))
                goto retry;
        _libi2c_stop(id);
        return ;
    }
}
