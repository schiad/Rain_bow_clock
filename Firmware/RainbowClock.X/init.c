#include "rainbowclock.h"

static bool initialize_ports(void)
{
    /* Neopixels, LCD, Encoder ---- */
    TRISC = 0xFFFFFD3F;
    TRISB = 0xFFFF0277;
    TRISA = 0xFFFFFB7F;
    /* UART1 ---------------------- */
    U1RXR =  0b001;         /* RX   */
    RPA0R =  0b001;         /* TX   */
    /* Buttons -------------------- */
    INT1R = 0b111;          /* RPC4 */
    INT2R = 0b111;          /* RPC3 */
    INT3R = 0b110;          /* RPC8 */
    /* ANALOG1 -------------------- */
    AD1CON1 = _AD1CON1_ON_MASK & ~_AD1CON1_ASAM_MASK
        | (4 << _AD1CON1_FORM_POSITION) & ~_AD1CON2_VCFG_MASK
        & ~_AD1CON2_BUFM_MASK & ~_AD1CON2_ALTS_MASK;
    AD1CHSbits.CH0SA = 1;
    return (true);
}

static bool initialize_devices(void)
{
    LCD_PINS pins = {
        {&LATC,  9}, {&LATC,  7},  {&LATB, 10}, /* RS, E,   D0, */
        {&LATB, 11}, {&LATB, 12},  {&LATB, 13}, /* D1, D2,  D3, */
        {&LATA, 10}, {&LATA,  7},  {&LATB, 14}, /* D4, D5,  D6, */
        {&LATB, 15}, {&LATC,  6}                /* D7, LED+     */
    };

    libsys_delay_micros(20000); /* Wait for the LCD to boot up*/
    if (!liblcd_new(&lcd, &pins, 20, 4))
        return (false);
    liblcd_display(lcd, true);
    liblcd_cursor(lcd, false);
    liblcd_light(lcd, true);
    libuart_begin(UART1, 9600);
    if (!libpixel_new(&pixels, &LATB, 3, 60))
        return (false);
    return (true);
}

static bool initialize_interrupts(void)
{
    /* Clock Tick    */
    IFS0bits.T1IF   = 0;
    IPC1bits.T1IP   = 7;
    IPC1bits.T1IS   = 0;
    IEC0bits.T1IE   = 1;
    /* Button ENTER  */
    IFS0bits.INT1IF = 0;
    IPC1bits.INT1IP = 6;
    IPC1bits.INT1IS = 0;
    IEC0bits.INT1IE = 1;
    /* Button CANCEL */
    IFS0bits.INT2IF = 0;
    IPC2bits.INT2IP = 6;
    IPC2bits.INT2IS = 0;
    IEC0bits.INT2IE = 1;
    /* Encoder PREV  */
    IFS0bits.INT0IF = 0;
    IPC0bits.INT0IP = 6;
    IPC0bits.INT0IS = 0;
    IEC0bits.INT0IE = 1;
    /* Encoder NEXT  */
    IFS0bits.INT3IF = 0;
    IPC3bits.INT3IP = 6;
    IPC3bits.INT3IS = 0;
    IEC0bits.INT3IE = 1;

    INTCONbits.MVEC = 1;   /* Multivectored */
    asm volatile ("ei");
    return (true);
}

static bool initialize_timers(void)
{
    PR1 = libsys_get_pbclk() / 256 / 102; /* 102Hz (9ms) tickrate */
                                          /* with compensation    */
    T1CON = _T1CON_ON_MASK | (0b11 << _T1CON_TCKPS_POSITION);

    date.year  = 1970;
    date.month = 1;
    date.day   = 1;
    date.day_of_week = tondering_day_of_week(&date);
    return (true);
}

static bool initialize_menu_tree(void)
{
    ITEM    *item;
    MENU    *sub1, *sub2, *sub3, *sub4;

    if (menu_new(&sub1, MENU_MAIN)) {
        if (menu_new(&sub2, MENU_HORIZONTAL)) {
            if (menu_new(&sub3, MENU_EDIT)) {
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Day", "" }, &date.day, 0, 2, 1, 2, 1, 31);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Month", "" }, &date.month, 3, 2, 1, 2, 1, 12);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Year", "" }, &date.year,  6, 2, 1, 4, 1, 2038);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Hours", "" }, &date.hours, 12, 2, 0, 2, 0, 23);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Minutes", "" }, &date.minutes, 15, 2, 1, 2, 0, 59);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_EDIT, (DESC) {
                    "Seconds", "" }, &date.seconds, 18, 2, 1, 2, 0, 59);
                menu_add_item(sub3, item);
            }
            menu_new_item(&item, ITEM_LINK, (DESC) {
                "TIME", "Set clock time." }, sub3);
            menu_add_item(sub2, item);
            if (menu_new(&sub3, MENU_VERTICAL)) {
                if (menu_new(&sub4, MENU_EDIT)) {
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Background", "Set background color." }, sub4);
                menu_add_item(sub3, item);
                if (menu_new(&sub4, MENU_EDIT)) {
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Foreground", "Set foreground color." }, sub4);
                menu_add_item(sub3, item);
                if (menu_new(&sub4, MENU_EDIT)) {
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Markers", "Set markers color." }, sub4);
                menu_add_item(sub3, item);
            }
            menu_new_item(&item, ITEM_LINK, (DESC) {
                "COLORS", "Set clock color." }, sub3);
            menu_add_item(sub2, item);
            if (menu_new(&sub3, MENU_VERTICAL)) {
                if (menu_new(&sub4, MENU_TEXT)) {
                    menu_new_item(&item, ITEM_TEXT, (DESC) {
                        "", ""} , 5, 1, "Sequence :");
                    menu_add_item(sub4, item);
                    menu_new_item(&item, ITEM_TEXT, (DESC) {
                        "", ""} , 3, 2, "TddMMYYssmmhh");
                    menu_add_item(sub4, item);
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Setting the time", "" }, sub4);
                menu_add_item(sub3, item);
                if (menu_new(&sub4, MENU_TEXT)) {
                    menu_new_item(&item, ITEM_TEXT, (DESC) {
                        "", ""} , 2, 2, "Nothing here yet");
                    menu_add_item(sub4, item);
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Bluetooth sync", "" }, sub4);
                menu_add_item(sub3, item);
                if (menu_new(&sub4, MENU_TEXT)) {
                    menu_new_item(&item, ITEM_TEXT, (DESC) {
                        "", ""} , 2, 2, "Nothing here yet");
                    menu_add_item(sub4, item);
                }
                menu_new_item(&item, ITEM_LINK, (DESC) {
                    "Changing colors", "" }, sub4);
                menu_add_item(sub3, item);
            }
            menu_new_item(&item, ITEM_LINK, (DESC) {
                "HELP", "Obtain usage advice." }, sub3);
            menu_add_item(sub2, item);
            if (menu_new(&sub3, MENU_VERTICAL)) {
                menu_new_item(&item, ITEM_HOOK, (DESC) {
                    "Toggle LCD", "Why???" }, toggle_lcd);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_HOOK, (DESC) {
                    "Crash Clock", "Good idea!" }, crash_clock);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_HOOK, (DESC) {
                    "Neopixel Hello", "Test pixels." }, pixel_hello);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_HOOK, (DESC) {
                    "Reset Clock", "Reset the clock." }, reset_clock);
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_HOOK, (DESC) {
                    "Say Hello", "Ping over Bluetooth." }, say_hello);
                menu_add_item(sub3, item);
            }
            menu_new_item(&item, ITEM_LINK, (DESC) {
                "ACTIONS", "Perform actions." }, sub3);
            menu_add_item(sub2, item);
            if (menu_new(&sub3, MENU_TEXT)) {
                menu_new_item(&item, ITEM_TEXT, (DESC) {
                    "", "" }, 1, 1, "RainbowClock V1.0");
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_TEXT, (DESC) {
                    "", "" }, 1, 2, "schiad - vchesnea");
                menu_add_item(sub3, item);
                menu_new_item(&item, ITEM_TEXT, (DESC) {
                    "", "" }, 6, 3, "- 2015 -");
                menu_add_item(sub3, item);
            }
            menu_new_item(&item, ITEM_LINK, (DESC) {
                "ABOUT", "About the clock." }, sub3);
            menu_add_item(sub2, item);
        }
        menu_new_item(&item, ITEM_LINK, (DESC) {
            "MAIN", "Access the main menu." }, sub2);
        menu_add_item(sub1, item);
    }
    menu = sub1;
    return (true);
}

bool        initialize_system(void)
{
    if (!initialize_ports()      ||
        !initialize_devices()    ||
        !initialize_interrupts() ||
        !initialize_timers()     ||
        !initialize_menu_tree())
        return (false);
    return (true);
}
