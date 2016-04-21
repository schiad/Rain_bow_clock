/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

#include "p32xxxx.h"
#include "types.h"
#include <stdio.h>

void    Serial_begin(u16 speed)
{
    U1MODEbits.ON = 0;      // disable uart
    IFS0bits.U1RXIF = 0;        // clear rx interrupt flag
    //IFS0bits.U1TXIF = 0;        // clear tx interrupt flag

    IEC0bits.U1RXIE = 1;        // enable Rx interrupts
    //IEC0bits.U1TXIE = 1;        // enable tx interrupts

    U1MODEbits.STSEL = 0;   // 1 stop bit
    U1MODEbits.PDSEL = 0;   // 8 bits data no parity
    U1MODEbits.BRGH = 0;    // 16x baud clock enable
    U1MODEbits.RXINV = 0;   // Idle state is 1
    U1STAbits.URXEN = 1;    // Enable control of ur pin
    U1STAbits.UTXEN = 1;    // Enable control of ut pin
    U1BRG = ((12000000 / (16 * speed)) - 1);
    U1MODEbits.ON = 1;      // Enable uart
}

void    Serial_putchar(u8 ch)
{
    while (U1STAbits.UTXBF)
        ;
    U1TXREG = ch;
}

void    Serial_putstr(u8 *str)
{
    u32 i = 0;
    while (str[i])
    {
        Serial_putchar(str[i]);
        i++;
    }
}

u8      Serial_available()
{
    return (U1STAbits.URXDA);
}

u8      Serial_get_char()
{
    if (Serial_available())
        return (U1RXREG);
    return ('\0');
}

void    Serial_get_str(u8 *str)
{
    u8  i = 0;
    while (i < 100)
    {
        delay_micros(500);
        if (Serial_available())
            str[i] = Serial_get_char();
        else
            str[i] = '\0';
        if (str[i] == '#')
            i = 0;
        else
            i++;
    }
    str[i] = '\0';
    return (str);
}

void    delay_micros(u32 ms)
{
        while (ms)
    {
        ms--;
    }
}

void    main(void)
{
    char str[101];
    Serial_begin (38400);
    while (1)
    {
        Serial_putstr("42 c'est fort\n");
        Serial_putstr("paris\n");
        u32 i = 0;
        while (1)
        {
            while (Serial_available())
            {
                Serial_get_str(str);
                Serial_putchar('\n');
                Serial_putchar('>');
                Serial_putstr(str);
            }

        }
    }
}