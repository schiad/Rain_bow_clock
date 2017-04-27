#include "libi2c.h"

bool    _libi2c_send(e_i2c id, uint8_t byte)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    while (i2c->stat.reg & _I2C1STAT_TBF_MASK);
    i2c->trn.reg = byte;
    if (i2c->stat.reg & (_I2C1STAT_IWCOL_MASK | _I2C1STAT_BCL_MASK))
        return (false);
    while (i2c->stat.reg & _I2C1STAT_TRSTAT_MASK);
    return (!(i2c->stat.reg & _I2C1STAT_ACKSTAT_MASK));
}
