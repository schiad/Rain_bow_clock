/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

/*
 * Dx   -> RBx
 * RS   -> RD0
 * E    -> RD1
 * RW   -> GND
*/

#include "p32xxxx.h"
#include "types.h"
#include "lcd.h"
#include <plib.h>
#include <stdio.h>

u8 _displayfunction = 0;
u8 _displaycontrol = 0;
u8 _displaymode = 0;
u8 _curcol = 0;
u8 _currow = 0;
u8 _numrow = 0;
u8 _numcol = 0;

void    delay_micros(u32 ms)
{
        while (ms)
    {
        ms--;
    }
}

void    LCD_pin_reset()
{
    LATB    &= 0b1111111100000000;
    TRISB   &= 0b1111111100000000;
    LATD    &= 0b1111111111111100;
    TRISD   &= 0b1111111111111100;
}

void    LCD_command(u8 com)
{
    LCD_send(com, 0);
}

void    LCD_nodisplay()
{
    _displaycontrol &= ~LCD_DISPLAYON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

void    LCD_display()
{
    _displaycontrol |= LCD_DISPLAYON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

void    LCD_noCursor() {
    _displaycontrol &= ~LCD_CURSORON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void    LCD_cursor() {
    _displaycontrol |= LCD_CURSORON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

void    LCD_noBlink() {
    _displaycontrol &= ~LCD_BLINKON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}
void    LCD_blink() {
    _displaycontrol |= LCD_BLINKON;
    LCD_command(LCD_DISPLAYCONTROL | _displaycontrol);
}

void    LCD_autoscroll(void) {
  _displaymode |= LCD_ENTRYSHIFTINCREMENT;
  LCD_command(LCD_ENTRYMODESET | _displaymode);
}

// This will 'left justify' text from the cursor
void    LCD_noAutoscroll(void) {
  _displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
  LCD_command(LCD_ENTRYMODESET | _displaymode);
}

void    LCD_pulseE()
{
    LATDbits.LATD1 = 0;
    delay_micros(1); //1
    LATDbits.LATD1 = 1;
    delay_micros(1); //1
    LATDbits.LATD1 = 0;
    delay_micros(100); //100
}

void    LCD_setCursor(u8 col, u8 row)
{
  int row_offsets[] = { 0x00, 0x40, 0x14, 0x54 };
  if ( row > _numrow ) {
    row = _numrow-1;    // we count rows starting w/0
  }
  
  LCD_command(LCD_SETDDRAMADDR | (col + row_offsets[row]));
  _curcol = col;
  _currow = row;
}

void    LCD_putchar(u8 car)
{
    LCD_send(car, 1);
    _curcol++;
}

int     LCD_putstr(u8 *str)
{
    u32 i;
    i = 0;
    while (str[i] && (i < (_numcol * _numrow)))
    {
        if ((_curcol >= _numcol || str[i] == '\n'))
        {
            if (_currow < _numrow)
                LCD_setCursor(0, _currow + 1);
            if (str[i] == '\n')
                i++;
        }
        LCD_putchar(str[i]);
        i++;
    }
}

int     LCD_putstrPos(u8 *str, u8 col, u8 row)
{
    LCD_setCursor(col, row);
    LCD_putstr(str);
}

void    LCD_send(u8 value, u8 mode)
{
    LCD_pin_reset();
    LATDbits.LATD0     = mode;
    LATB               |= value;
    LCD_pulseE();
}

void    LCD_home()
{
    LCD_command(LCD_RETURNHOME);
    delay_micros(2000);
    _curcol = 0;
    _currow = 0;
}

void    LCD_clear()
{
    LCD_command(LCD_CLEARDISPLAY);
    delay_micros(2000);
    _curcol = 0;
    _currow = 0;
}

void    LCD_begin(u8 col, u8 row)
{
    _numrow = row;
    _numcol = col;
    _displayfunction = LCD_8BITMODE | LCD_1LINE | LCD_5x8DOTS;
    LCD_pin_reset();
    delay_micros(50000);
    _displayfunction |= LCD_2LINE;
    //_numlines = 2;
    //_currline = 0;
    LCD_send(LCD_FUNCTIONSET | _displayfunction, 0);
    delay_micros(4500);
//    LCD_send(LCD_FUNCTIONSET | _displayfunction, 0);
//    delay_micros(150);
//    LCD_send(LCD_FUNCTIONSET | _displayfunction, 0);
//    LCD_send(LCD_FUNCTIONSET | _displayfunction, 0);
    _displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF;
    LCD_display();
    LCD_clear();
    LCD_home();
    _displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT;
    LCD_send(LCD_ENTRYMODESET | _displaymode, 0);
}

void    main(void)
{
    u32 counter;
    char tmp[100];

    SYSTEMConfigPerformance(8000000);
    TRISFbits.TRISF1 = 0;
    TRISDbits.TRISD8 = 1;
    LATFbits.LATF1 = 0;
    LCD_begin(16, 2);
    LCD_setCursor(4, 0);
    LCD_putstrPos("42 en force", 0, 0);
//    LCD_clear();
    while (1)
    {
        asm volatile (         "\n"
        "    mfc0    $at,$9,0" "\n"
        "    sw      $at,%0"   "\n"
        :    "=m" (counter)
        :
        );
        delay_micros(1000000);
        sprintf(tmp, "%16d", counter);
        LCD_putstrPos(tmp, 0, 1);
    }
    LCD_cursor();
}
