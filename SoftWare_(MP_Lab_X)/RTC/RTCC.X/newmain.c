/*
 * File:   main.c
 * Author: bocal
 *
 * Created on March 24, 2016, 4:31 PM
 */

#include "p32xxxx.h"
#include "types.h"
#include <plib.h>

void    RTCC_set(void)
{
    IEC1CLR=0x00008000; // disable RTCC interrupts
    RTCCONCLR=0x8000; // turn off the RTCC
    while(RTCCON&0x40); // wait for clock to be turned off
    IFS1CLR=0x00008000; // clear RTCC existing event
    IPC8CLR=0x1f000000; // clear the priority
    IPC8SET=0x0d000000; // Set IPL=3, subpriority 1
    IEC1SET=0x00008000; // Enable RTCC interrupts
    RTCTIME=0x16153300; // safe to update time to 16 hr, 15 min, 33 sec
    RTCDATE=0x06102705; // update the date to Friday 27 Oct 2006
    RTCALRMCLR=0xCFFF; // clear ALRMEN, CHIME, AMASK and ARPT;
    ALRMTIME=0x16154300; // set alarm time to 16 hr, 15 min, 43 sec
    ALRMDATE=0x06102705; // set alarm date to Friday 27 Oct 2006
    RTCALRMSET=0x8000|0x00000600; // re-enable the alarm, set alarm mask at once per day
    RTCCONSET=0x8000; // turn on the RTCC
    while(!(RTCCON&0x40)); // wait for clock to be turned on
}

void    main(void)
{
    RTCC_set();
    while (1)
    {
        ;
    }
}

