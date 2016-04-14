/*
* File:   leds.c
* Author: schiad
*
* Created on 6 avril 2016, 18:55
*/

#include <xc.h>
#include <sys/attribs.h> // This unlocks the __ISR macro

#include "types.h"

/*
*
*/

#define NB_LED 1

u8 C_led = 0;
u8 B_led = 0;
u32 LED[NB_LED];
//LED[0] = 0;

void setup_interrupts(void)
{
    INTCON = 0; // completely wipe-out possible residual data
    INTCONbits.MVEC = 1; // enable multi-vector mode

    IFS0bits.T2IF = 0; // clear Timer1's interrupt flag ... just in case
    IPC2bits.T2IP = 2; // Timer1 Interrupt Priority
    IPC2bits.T2IS = 0; // Timer1 Interrupt Subpriority
    IEC0bits.T2IE = 1; // Timer1 Interrupt Enabled

    IFS0bits.T4IF = 0; // clear Timer1's interrupt flag ... just in case
    IPC4bits.T4IP = 2; // Timer1 Interrupt Priority
    IPC4bits.T4IS = 0; // Timer1 Interrupt Subpriority
    IEC0bits.T4IE = 1; // Timer1 Interrupt Enabled
}

void clear_watchdog(void)
{
    WDTCONbits.WDTCLR = 1;
}

void __ISR(_TIMER_2_VECTOR, IPL2AUTO) Timer2Handler(void)
{
    // called every 30 cycles of timer.
    if (C_led != NB_LED)
    {
        T4CONbits.ON = 1;
        _LATB3 = 1;
    }
    else
    {
        T2CONbits.ON = 0;
    }

    IFS0bits.T2IF = 0;  // clear Timer1's interrupt flag, otherwise it might
                        // be retriggered upon leaving the ISR
}

void __ISR(_TIMER_4_VECTOR, IPL2AUTO) Timer4Handler(void)
{
    // called 10 or 19 cycles in case of 0 or 1 is in transmition
    _LATB3 = 0;
    T4CONbits.ON = 0;
    TMR4 = 0;
    B_led++;
    if (B_led > 23)
    {
        B_led = 0;
        C_led++;
    }
    if (LED[0] & 1<<(23 - B_led))
        PR4 = 74;
    else
        PR4 = 39;
    IFS0bits.T4IF = 0; // clear Timer1's interrupt flag, otherwise it might
    // be retriggered upon leaving the ISR
}

void set_timers()
{
    T2CON = 0;
    T4CON = 0;
    T2CONbits.T32 = 0;
    T4CONbits.T32 = 0;
    T2CONbits.TCKPS = 0b000;
    T4CONbits.TCKPS = 0b000;
    PR2 = 117;
    if (LED[0] & 1<<(23))
        PR4 = 74;
    else
        PR4 = 39;
    TMR2 = 0;
    TMR4 = 0;
    T2CONbits.ON = 1;
    T4CONbits.ON = 1;
}

void Show_must_go_on()
{
    set_timers();
    C_led = 0;
    B_led = 0;
    while (C_led < NB_LED)
        ;
}

void main() {
    setup_interrupts();
    _TRISB3 = 0;
    LATB = 0;
    INTEnableInterrupts();
    while (1)
    {
//        _LATB3 = 1;
//        _LATB3 = 0;
        LATBSET = 0b1000;
        LATBSET = 0b1000;
        LATBCLR = 0b1000;

//        LED[0] = 0b101010101010101010101010;
//        LED[1] = 0b111111111111111111111111;
//        Show_must_go_on();
//        TMR1 = 0;
    }
}