/*
 * Notice:
 * 
 * This library was designed for the PIC32MX340F512H microcontroller for a
 * clock frequency of 8MHz. Its successful use on other devices is not
 * guaranteed.
 */

#include "libpixel.h"

/*
 * T0H = 0.4us, T0L = 0.85us
 * T1H = 0.8US, T1L = 0.45us
 * RES = 50us+
 */

void libpixel_show(PIXEL *pix)
{
    asm volatile (                "\n"
    "    .set    noreorder"       "\n"  // Disallow any unexpected optimization
    "    li      $t0, 1"          "\n"  // $t0 = 1
    "    sllv    $t0, $t0, %3"    "\n"  // $t0 <<= pin
    "    move    %3, $t0"         "\n"  // pin = $t0
    "    b       2f"              "\n"  // ...
    "    lh      $t1, %0"         "\n"  // $t1 = *port ------+
    "0:"                          "\n"  // <-----------------|--+
    "    lw      $t2, 0(%2)"      "\n"  // $t2 = pixels      |  |
    "    addiu   %2, %2, 4"       "\n"  // ++pixels          |  |
    "    li      $t0, 24"         "\n"  // $t0 = 24          |  |
    "1:"                          "\n"  // <---------------+ |  |
    "    or      $t1, $t1, %3"    "\n"  // $t1 |= pin      | |  |
    "    ext     $t3, $t2, 31, 1" "\n"  // $t3 = $t2<31:1> | |  |
    "    sh      $t1, %0"         "\n"  // *port = $t1     | |  |
    "    xor     $t1, $t1, %3"    "\n"  // $t1 &= pin      | |  |
    "    beqzl   $t3, .+8"        "\n"  // if $t3 == 0 ... | |  |
    "    sh      $t1, %0"         "\n"  // *port = $t1   | | |  |
    "    addiu   $t0, $t0, -1"    "\n"  // ++$t0 <-------+ | |  |
    "    sh      $t1, %0"         "\n"  // *port = $t1     | |  |
    "    bnez    $t0, 1b"         "\n"  // if $t0 != 0 ... | |  |
    "    sll     $t2, $t2, 1"     "\n"  // $t2 <<= 1 ------+ |  |
    "2:"                          "\n"  // <-----------------+  |
    "    bnez    %1, 0b"          "\n"  // if n_pixels != 0 ... |
    "    addiu   %1, %1, -1"      "\n"  // n_pixels -= 1 -------+
    : "=m" (*pix->port)
    : "r"  (pix->n_pixels),
      "r"  (pix->pixels),
      "r"  (pix->pin)
    : "t0", "t1", "t2", "t3"
    );
}
