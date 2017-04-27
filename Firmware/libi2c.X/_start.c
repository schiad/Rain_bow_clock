/*
 * File:   _start.c
 * Author: vchesnea
 *
 * Created on April 28, 2016, 1:41 PM
 */

#include "libi2c.h"

bool    _libi2c_start(e_i2c id)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    while (i2c->stat.reg & _I2C1STAT_S_MASK);
    i2c->con.set = _I2C1CON_SEN_MASK;
    if (i2c->stat.reg & _I2C1STAT_BCL_MASK)
        return (false);
    return (true);
}
