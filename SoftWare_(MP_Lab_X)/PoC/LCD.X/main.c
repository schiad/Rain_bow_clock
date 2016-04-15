/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

/*
 * D0 - D7  -> RB0 - RB7
 * RS       -> RD0
 * E        -> RD1
 * RW       -> GND
*/
#include "p32xxxx.h"
#include "types.h"
#include "lcd.h"

u8 _displayfunction;
u8 _displaycontrol;
u8 _displaymode;

void    LCD_pin_reset()
{
    LATB    &= 0b1111111100000000;
    TRISB   &= 0b1111111100000000;
    LATD    &= 0b1111111111111100;
    TRISD   &= 0b1111111111111100;
}

void    LCD_pulseE()
{
    TRISDbits.TRISD1 = 0;
    //delaimicros(1);
    TRISDbits.TRISD1 = 1;
    //delaimicros(1);
    TRISDbits.TRISD1 = 0;
    //delaimicros(100);
}

void    LCD_send(u8 value, u8 mode)
{
    LCD_pin_reset();
    TRISDbits.TRISD0     = mode & 0b01;
    TRISB               |= value;
    LCD_pulseE();
}

void    LCD_display()
{
    LCD_send(LCD_DISPLAYCONTROL | _displaycontrol, 1);
}

void    LCD_clear()
{
    LCD_display(LCD_CLEARDISPLAY);
    //delaymicros(2000);
}

void    LCD_begin()
{
    LCD_pin_reset();
    LCD_clear();
    _displayfunction |= LCD_2LINE;
    LCD_send(LCD_FUNCTIONSET | _displayfunction, 1);
    // delaymicros(4500);
    LCD_send(LCD_FUNCTIONSET | _displayfunction, 1);
    // delaymicros(150);
    LCD_send(LCD_FUNCTIONSET | _displayfunction, 1);
    LCD_send(LCD_FUNCTIONSET | _displayfunction, 1);
    _displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
    LCD_display();
    LCD_clear();
    _displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
    LCD_send(LCD_ENTRYMODESET | _displaymode, 0);
}

void    main(void)
{
TRISFbits.TRISF1 = 0;
    TRISDbits.TRISD8 = 1;
    LATFbits.LATF1 = 1;
}
