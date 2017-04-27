#include "libsys.h"

/* Attempt at drastically reducing our code size */

uint32_t libsys_strlen(uint8_t const *s)
{
    asm volatile (            "\n"
    "    .set noreorder"      "\n"
    "    move    $t0, %0"     "\n"
    "0:"                      "\n"
    "    lbu     $v0, 0(%0)"  "\n"
    "    bnez    $v0, 0b"     "\n"
    "    addiu   %0, %0, 1"   "\n"
    "    subu    %0, %0, $t0" "\n"
    "    addiu   %0, %0, -1"  "\n"
    :: "r" (s) : "v0", "t0" );
    return ((uint32_t)s);
}
