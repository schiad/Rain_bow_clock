/* 
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

#include "p32xxxx.h"
#include "types.h"
#include <plib.h>
#include <stdio.h>

#define PERIODE 4000

void    PWM_setup(u8 ratio)
{
    INTEnableSystemMultiVectoredInt(); // Enable system wide interrupt to
    // multivectored mode.
    OC1CON = 0; // Turn off the OC1 when performing the setup
    OC1R = PERIODE; // Initialize primary Compare register
    OC1RS = (PERIODE * ratio) / 100; // Initialize secondary Compare register
    OC1CON = 0x0006; // Configure for PWM mode without Fault pin
    // enabled
    PR2 = PERIODE; // Set period
    // Configure Timer2 interrupt. Note that in PWM mode, the
    // corresponding source timer interrupt flag is asserted.
    // OC interrupt is not generated in PWM mode.
    IFS0CLR = 0x00000100; // Clear the T2 interrupt flag
    IEC0SET = 0x00000100; // Enable T2 interrupt
    IPC2SET = 0x0000001C; // Set T2 interrupt priority to 7
    T2CONSET = 0x8000; // Enable Timer2
    OC1CONSET = 0x8000; // Enable OC1
}

void    main(void)
{
    PWM_setup(90);
    PWM_setup(20);
    while(1); // Never return
}
// Example code for Timer2 ISR
void __ISR(_TIMER_2_VECTOR, ipl7) T2_IntHandler (void)
{
// Insert user code here
IFS0CLR = 0x0100; // Clearing Timer2 interrupt flag
}