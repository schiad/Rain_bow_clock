#include "libi2c.h"

void    libi2c_disable(e_i2c id)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    i2c->con.clr = _I2C1CON_ON_MASK;
}
