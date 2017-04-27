/* TODO:
 * - Rewrite libpixel  OK
 * - Rewrite libuart   OK
 * - Rewrite liblcd    OK
 * - Rewrite libi2c    ??
 */

#include "rainbowclock.h"

DATE    date;
TASK    task;
LCD     *lcd;
MENU    *menu;
PIXEL   *pixels;

void ISR(_EXTERNAL_1_VECTOR,IPL6AUTO) button_enter(void)
{
    libsys_delay_millis(1); /* Workaround for button hysteresis */
    if (menu->curr != NULL) {
        switch (menu->curr->type) {
            case ITEM_HOOK:
                task.active = true;
                break;
            case ITEM_LINK:
                if (menu->curr->type == ITEM_EDIT)
                    liblcd_cursor(lcd, false);
                menu = menu->curr->data.link.addr;
                menu_update(menu, lcd);
                if (menu->curr->type == ITEM_EDIT)
                    liblcd_cursor(lcd, true);
                break;
            case ITEM_EDIT:
                liblcd_blink(lcd, true);
                menu->editing = true;
                break;
            default:
                break;
        }
    }
    IFS0bits.INT1IF = 0;
}

void ISR(_EXTERNAL_2_VECTOR,IPL6AUTO) button_cancel(void)
{
    libsys_delay_millis(1); /* Workaround for button hysteresis */
    if (menu->editing) {
        *menu->curr->data.edit.addr = menu->curr->data.edit.value;
        liblcd_blink(lcd, false);
        menu->editing = false;
    } else if (task.active) {
        task.message = MESSAGE_KILL;
    } else if (menu->parent) {
        if (menu->curr->type == ITEM_EDIT)
            liblcd_cursor(lcd, false);
        menu = menu->parent;
        menu_update(menu, lcd);
        if (menu->curr->type == ITEM_EDIT)
            liblcd_cursor(lcd, true);
    }
    IFS0bits.INT2IF = 0;
}

void ISR(_EXTERNAL_0_VECTOR,IPL6AUTO) encoder_next(void)
{
    EDIT    *edit;
    int     value, i;

    libsys_delay_millis(1);
    if (menu->curr) {
        if (menu->curr->type == ITEM_EDIT) {
            edit = &menu->curr->data.edit;
            if (menu->editing) {
                i = edit->col;
                for (value = 1; i; --i)
                    value *= 10;
                edit->value = MOD(edit->value - value, edit->max + 1);
            } else {
                if (edit->col <= 0 && menu->curr->prev)
                    menu->curr = menu->curr->prev;
                else
                    --edit->col;
            }
        } else if (menu->curr->prev) {
            if (task.active)
                task.message = MESSAGE_KILL;
            menu->curr = menu->curr->prev;
        }
        menu_update(menu, lcd);
    }
    INTCONbits.INT0EP ^= 1;
    INTCONbits.INT3EP ^= 1;
    IFS0bits.INT3IF = 0;
    IFS0bits.INT0IF = 0;
}

void ISR(_EXTERNAL_3_VECTOR,IPL6AUTO) encoder_prev(void)
{
    EDIT    *edit;
    int     value, i;

    libsys_delay_millis(1);
    if (menu->curr) {
        if (menu->curr->type == ITEM_EDIT) {
            edit = &menu->curr->data.edit;
            if (menu->editing) {
                i = edit->col;
                for (value = 1; i; --i)
                    value *= 10;
                edit->value = MOD(edit->value + value, edit->max + 1);
            } else {
                if ((edit->col + 1) >= edit->size && menu->curr->next)
                    menu->curr = menu->curr->next;
                else
                    ++edit->col;
            }
        } else if (menu->curr->next) {
            if (task.active)
                task.message = MESSAGE_KILL;
            menu->curr = menu->curr->next;
        }
        menu_update(menu, lcd);
    }
    INTCONbits.INT0EP ^= 1;
    INTCONbits.INT3EP ^= 1;
    IFS0bits.INT0IF = 0;
    IFS0bits.INT3IF = 0;
}

static void      poll_command(void)
{
    uint8_t  c, *s, b[8];

    if (libuart_getc(UART1, &c) && c == 'T')
    {
        libuart_gets(UART1, &s);
        date.seconds = 10 * (s[0]  - '0') + s[1]  - '0';
        date.minutes = 10 * (s[2]  - '0') + s[3]  - '0';
        date.hours   = 10 * (s[4]  - '0') + s[5]  - '0';
        date.day     = 10 * (s[6]  - '0') + s[7]  - '0';
        date.month   = 10 * (s[8]  - '0') + s[9]  - '0';
        date.year    = 1000 * (s[10] - '0') + 100 * (s[11] - '0')
            + 10 * (s[12] - '0') + (s[13] - '0');
        date.day_of_week = tondering_day_of_week(&date);
        libuart_puts(UART1, "Ok!\n");
        free(s);
    }
}

static void      processing_queue(void)
{
    while (true) {
        if (task.active == true) {
            menu->curr->data.hook.addr();
            task.message = MESSAGE_NONE;
            task.active = false;
        }
        poll_command();
        WDTCONbits.WDTCLR = 1; /* Give periodic life signs to the watchdog */
    }
}

void             main(void)
{
    initialize_system();
    menu_update(menu, lcd);
    processing_queue();
    while (1);
}
