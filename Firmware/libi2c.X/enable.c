#include "libi2c.h"

void    libi2c_enable(e_i2c id, e_i2cmode mode)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    i2c->brg.reg = libsys_get_pbclk() / (2 * mode) - 2;
    i2c->con.set = _I2C1CON_ON_MASK;
}
