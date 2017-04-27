#include "libsys.h"

/* Attempt at drastically reducing our code size */

void libsys_memset(void *b, uint32_t c, uint32_t n)
{
    asm volatile (           "\n"
    "    .set noreorder"     "\n"
    "    b       1f"         "\n"
    "    nop"                "\n"
    "0:"                     "\n"
    "    sb      %1, 0(%0)"  "\n"
    "    addiu   %0, %0, 1"  "\n"
    "1:"                     "\n"
    "    bnez    %2, 0b"     "\n"
    "    addiu   %2, %2, -1" "\n"
    :: "r" (b), "r" (c), "r" (n) );
}
