#include <p32xxxx.h>
 #include <plib.h>

 #define CPU_FREQUENCY      (20000000UL)

 #pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20, FPLLODIV = DIV_4
 #pragma config FWDTEN = OFF, WDTPS = PS1048576
 #pragma config FCKSM = CSDCMD, FPBDIV = DIV_4
 #pragma config OSCIOFNC = OFF
 #pragma config POSCMOD = HS, IESO = OFF, FSOSCEN = ON /* Enable SOSC */
 #pragma config FNOSC = PRIPLL
 #pragma config CP = OFF, BWP = OFF, PWP = OFF

 int main(void)
 {
    SYSTEMConfig(CPU_FREQUENCY, 0);

    RtccInit();
    while (RtccGetClkStat() != RTCC_CLK_ON); /* code can't pass this */

    while (1)
    {

    }

    return (0);
 }