#include "libi2c.h"

void    _libi2c_stop(e_i2c id)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    i2c->con.set = _I2C1CON_PEN_MASK;
}
