#define GPIO_SWs    0x80001400
#define GPIO_LEDs   0x80001404
#define GPIO_INOUT  0x80001408
#define AUDIO_SW    0x80001940      //Direccion para asignar valores de notas en switches
#define AUDIO_ON    0x80001944

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE(dir, value) { (*(volatile unsigned *)dir) = (value); }


void delay(int milliseconds) {
    for (volatile int i = 0; i < milliseconds * 1000; i++);
}


int main ( void )
{
    int En_Value=0xFFFF, switches_value;

    WRITE(GPIO_INOUT, En_Value);
    WRITE(AUDIO_ON, 1);

    while (1) { 
        switches_value = READ_GPIO(GPIO_SWs);
        switches_value = switches_value >> 16;

        WRITE(AUDIO_SW, switches_value); 
    }
    return(0);
}