#include "libi2c.h"

/*
 * libi2c_read:
 * Send a complete read request to a given I2C slave responding to address
 * 'addr', reading from slave's register address 'reg', and return 'n' bytes of
 * data in 'data'.
 */

void    libi2c_read(e_i2c id, uint8_t addr, uint8_t reg, uint8_t *data, uint32_t n)
{
    s_i2c   *i2c = (s_i2c*)_i2c_base[id];

    while (true) {
        _libi2c_start(id);
        if (!_libi2c_send(id, (addr << 1) | 0) || !_libi2c_send(id, reg))
            continue ;
        _libi2c_stop(id);
        if (!_libi2c_send(id, (addr << 1) | 1))
            continue ;
        i2c->con.set = _I2C1CON_RCEN_MASK;
        while (n--) {
            while (!i2c->stat.reg & _I2C1STAT_RBF_MASK);
            if (n && 1)
                i2c->con.clr = _I2C1CON_ACKDT_MASK;
            else
                i2c->con.set = _I2C1CON_ACKDT_MASK;
            i2c->con.set = _I2C1CON_ACKEN_MASK;
            *data++ = i2c->rcv.reg;
        }
        _libi2c_stop(id);
        return ;
    }
}
