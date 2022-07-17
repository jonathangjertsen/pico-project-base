#include "onboard_led.h"
#include "pico/stdlib.h"

int main(void)
{
    onboard_led_init();
    while (1)
    {
        onboard_led_write(1);
        sleep_ms(250);
        onboard_led_write(0);
        sleep_ms(250);
    }
}
