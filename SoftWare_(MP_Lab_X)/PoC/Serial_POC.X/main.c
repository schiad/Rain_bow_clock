/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

#include "p32xxxx.h"
#include "types.h"

void    Serial_begin(u16 speed)
{
    U1MODEbits.ON = 0;      // disable uart
    U1MODEbits.STSEL = 0;   // 1 stop bit
    U1MODEbits.PDSEL = 0;   // 8 bits data no parity
    U1MODEbits.BRGH = 0;    // 16x baud clock enable
    U1MODEbits.RXINV = 0;   // Idle state is 1
    U1STAbits.URXEN = 1;    // Enable control of ur pin
    U1STAbits.UTXEN = 1;    // Enable control of ut pin
    U1BRG = ((12000000 / (16 * 9600)) - 1);
    U1MODEbits.ON = 1;      // Enable uart
}

void    Serial_putchar(u8 ch)
{
    while (U1STAbits.UTXBF)
        ;
    U1TXREG = ch;
}

void    main(void)
{
    Serial_begin (9600);
    while (1)
        Serial_putchar('a');
}