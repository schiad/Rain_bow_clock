#include "libsys.h"

/* Attempt at drastically reducing our code size */

void libsys_memcpy(void *a, void *b, uint32_t n)
{
    asm volatile (           "\n"
    "    .set noreorder"     "\n"
    "    b       1f"         "\n"
    "    nop"                "\n"
    "0:"                     "\n"
    "    lbu     $v0, 0(%2)" "\n"
    "    addiu   %2, %2, 1"  "\n"
    "    sb      $v0, 0(%0)" "\n"
    "    addiu   %0, %0, 1"  "\n"
    "1:"                     "\n"
    "    bnez    %1, 0b"     "\n"
    "    addiu   %1, %1, -1" "\n"
    :: "r" (a), "r" (n), "r" (b) );
}
