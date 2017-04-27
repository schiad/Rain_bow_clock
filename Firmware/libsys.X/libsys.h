#ifndef LIBSYS_H
#define	LIBSYS_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

void     libsys_delay(uint32_t sc);
void     libsys_delay_micros(uint32_t us);
void     libsys_delay_millis(uint32_t ms);
uint32_t libsys_get_pbclk(void);
uint32_t libsys_get_perf(void);
uint32_t libsys_get_sysclk(void);

/* Unrelated functions */

void     libsys_memcpy(void *a, void *b, uint32_t n);
void     libsys_memset(void *b, uint32_t c, uint32_t n);
uint32_t libsys_strlen(uint8_t const *s);

#endif
