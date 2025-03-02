/*
 * File:   main.c
 * Author: gerry
 *
 * Created on February 27, 2025, 7:10 PM
 */


#include <xc.h>
#include <math.h>

// PIC12F675 Configuration Bit Settings

// CONFIG
// Oscillator Selection bits (Internal oscillator: GPIO on GP4/GP5)
#pragma config FOSC  = INTRCIO  
// Watchdog Timer Enable bit (WDT disabled)
#pragma config WDTE  = OFF
// Power-Up Timer Enable bit (PWRT disabled)
#pragma config PWRTE = OFF      
// GP3/MCLR pin function select (GP3/MCLR pin function is digital
// I/O, MCLR internally tied to VDD)
#pragma config MCLRE = OFF      
// Brown-out Detect Enable bit (BOD disabled)
#pragma config BOREN = OFF      
// Code Protection bit (Program Memory code protection is disabled)
#pragma config CP    = OFF
// Data Code Protection bit (Data memory code protection is disabled)
#pragma config CPD   = OFF      


// IMPLEMENTATION STRATEGY
//
// CHIP PIN ASSIGNMENTS
//   5 = AC_SENSE 100/120Hz
//   6 - MUTING - 0=not muting, 1=muting
//   8 - Power Indicator LED
//

// The internal oscillator is running at 4MHz. Define this for a XC library
// runtime so it knows how to represent an approximately accurate delay
#define XTAL_FREQ 4000000

#define POWER_LED GPIObits.GPIO0
#define MUTING_ON GPIObits.GPIO1  // Low when muting is on, High when off

#define MAX_BRIGHTNESS 99
#define AC_SENSE_TICK_COUNT 10

// We are using TIMER 0 to count the AC pulses, we are counting the zero
// cross point of the AC waveform in the counter, meaning TMR0 is continuously
// incrementing at a rate of 100 (120 in the US) ticks per second. The rate
// is not important, we are using this in our main effect loop to *know* if
// there is an AC signal present or not.  We simple store the last count, and
// each time around our loop, we read the timer count, and if we have a 
// different number to the last number we read, them we know the AC power
// is present.  This function sets the GPIo2 pin at input and configures 
// TIMER 0 to take its clock input from that pin
void Timer0_Init(void) {
    OPTION_REGbits.T0CS  = 1;  // Configure Timer0 for clock input:
    TRISIO2 = 1;  // Set GP2 as input (T0CKI)
    TMR0 = 0;     // Clear Timer0 counter
}

// Simple function to read the current TIMER 0 count value
inline uint8_t Read_Timer0(void) {
    return TMR0;  // Return current Timer0 count value
}

// Us humans do not perceive LED brightness as directly in corelation to the
// power driving the LED, our vision is approximately logarithmic.  Our 
// brightness level is from 0-99, and this table maps an approximate log
// curve to help make the dimming effect feel more natural.  We use a table
// here because running the maths log() function is to computationally 
// expensive, where a table lookup is much faster. We also get the option to 
// tune the curve if we need a different visual response. 
const uint8_t log_table[100] = {
    0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20, 21, 22, 
    24, 25, 27, 28, 30, 31, 33, 34, 36, 37, 39, 41, 42, 44, 46, 48, 49, 51,
    53, 55, 57, 59, 61, 63, 65, 67, 69, 72, 74, 76, 78, 81, 83, 85, 88, 90,
    93, 96, 98, 101, 104, 106, 109, 112, 115, 118, 121, 124, 127, 130, 133, 
    137, 140, 143, 147, 150, 154, 158, 161, 165, 169, 173, 177, 181, 185, 189,
    193, 197, 202, 206, 211, 215, 220, 225, 230, 235, 240, 245, 250, 255
};

// The only job of this chip is to place an effect on a single LED
// with no other function. For simplicity then we are just generating the
// required PWM manually.  This creates around a 480Hz PWM modulated signal
// which is more than good enough for vision persistence to smooth things 
// over.  PWM is a very cheap way of controlling the average power delivered 
// into an LED. This function bit bangs a single cycle of the PWM control 
// signal to the LED.
//
// When powering up or down, we ramp the power as required using PWM modulation
// but, its intended that when the LED is full on or full of in its normal 
// static state, then the power to the LED will either ON or OFF. The current
// limiting resistor used in series with the LED will set the maximum LED
// current.  By not modulating the LED drive in the full on state, we are also
// removing the possibility of emitting any EMC noise inside our audio 
// equipment, this might otherwise be a problem if the wires to the front 
// panel LED route past any sensitive audio circuits. 
//
// As the use case for this project is the Pioneer SPEC-1 pre-amp, this has a
// in-built output muting relay, so the PWM ramp up/down action only ever 
// happens when the pre-amp is muting its output. at the muting circuit also
// detects the presence of the AC waveform.  There is a short delay on power
// up before the muting circuit un-mutes the output, and on power OFF the 
// the muting circuit instantly operates. 
inline void bitbang_pwm_cycle(uint8_t bri) 
{
    int16_t period = MAX_BRIGHTNESS;

    int16_t on = log_table[bri];
    while(period) {
        if(on) {
            POWER_LED = 1; 
            on--;
        }
        else
        {
            POWER_LED = 0; 
        }
        period--;          
    }
}

// This is our main processing loop, we do the iniital setup and then enter
// our run loop. 
void main(void)
{
    // Used as LED state machine control variable
    char _led_state = 0;

    ADCON0bits.ADON = 0;    // Turn off the ADC
    ANSELbits.ANS = 0;      // Make all inputs digital
    VRCON = 0;              // Turn off the internal voltage reference
    CMCON = 0x7;            // Turn off the comparator

    // Set up our I/O pins for the circuit. 
    TRISIObits.TRISIO0 = 0; // Make GPIO0 an output - LED
    TRISIObits.TRISIO1 = 1; // Make GPIO1 an input - MUTING_READY
    TRISIObits.TRISIO2 = 1; // Make GPIO2 an input - AC_SENSE
    
    // Initialize the AC sense counter so its counting AC zero cross cycles
    Timer0_Init();
    
    // Keep track of the last input state
    // Last input state, initialize assuming we are muting to start with 
    uint8_t last_state = MUTING_ON;
    // The current brightness thats been set, initially set to MAX_BRIGHTNESS
    // the main loop will ramp its current LED brightness to this value, either
    // up or down as required. 
    uint8_t set_brightness = MAX_BRIGHTNESS; 
    
    // The current LED brightness. The loop will incrementally change this
    // to reach the set_brightness value. 
    uint8_t led_brightness = 0;

    // keep track of the last timer state
    uint8_t last_timer_val = 0; 
    // The number of ticks allowed before the loop considered the AC signal
    // not present. This is required because the loop is much faster than 
    // the 100Hz counter frequency, so we need to wait a number of ticks
    // before we may detect a changed counter value.  
    // See the AC_SENSE_TICK_COUNT definition for the current number
    int16_t ac_sense_timeout = 0;
    
    // Number of ticks before the muting indication effect is triggered
    // When we first power on the LED we do not want the muting effect
    // to interfere with the power up/power down effect, so we hold of
    // detection for a number of ticks, which is around 1 second, this is
    // also the time between consecutive muting indications which repeat 
    // until the muting circuit un-mutes the output
    int16_t muting_counter = 500;
    
    while(1) 
    {
        // Our AC_SENSE input is being driven from the AC power in
        // through an AC coupled opto-isolator, giving us a 100Hz
        // pulse input to our Timer0 counter. We are simply reading
        // this counter to see if there has been a change in the 
        // counter value since the last time we checked.  If there
        // is a change, then we assume the AC power is present, and
        // if so, we set the brightness, and reset the AC SENSE 
        // counter.  If there is no change, then we do nothing. 
        uint8_t timer_val = Read_Timer0();
        if(timer_val != last_timer_val)
        {
            last_timer_val = timer_val;

            // Set the LED on, allowing the ramp up of LED power
            set_brightness = MAX_BRIGHTNESS;

            // Set a timeout (in ticks) for each cycle of
            // the PWM output. 
            ac_sense_timeout = AC_SENSE_TICK_COUNT;
        }
        
        // Output a single PWM cycle
        bitbang_pwm_cycle(led_brightness);
        
        // This code does the LED animation, each time around our program
        // loop we check to see if current brightness is at our set 
        // brightness, and if not we move one step towards our target 
        // value. 
        if(led_brightness != set_brightness) {
            
            if(led_brightness < set_brightness) 
                led_brightness++;
            else if(led_brightness > set_brightness)
                led_brightness--;
        }
        
        // If we are currently in a state where AC power is present
        // the sense timeout value will be non-zero. In this case we
        // decrement the counter, and, if we hit zero then we have 
        // seen no counter changes, meaning there is no longer an 
        // AC source driving the AC_SENSE input, which means, power is
        // off. So this will set the brightness to zero causing the LED
        // power to be ramped down. 
        if(ac_sense_timeout) {
            ac_sense_timeout--;
            if(ac_sense_timeout == 0) {
                set_brightness = 0;
                muting_counter = 500;
            }
        }
        
        // If muting is active and power is on, then we need to check if
        // its time to show the muting effect
        if(MUTING_ON && set_brightness) {
            // If the muting counter has been reset, its time. 
            if(muting_counter == 0) {
                // Do the effect twice
                for(int y = 0; y < 2; y++) {
                    // Ramp up for 20 cycles, (values were gained by 
                    // trial and error)
                    for(uint8_t x = 0; x < 30; x++) {

                        // Output a single PWM cycle
                        bitbang_pwm_cycle(10 + x);
                    }
                    // Ramp down for 20 cycles, (values were gained by 
                    // trial and error)
                    for(uint8_t x = 0; x < 20; x++) {

                        // Output a single PWM cycle
                        bitbang_pwm_cycle(30 + (x*2));
                    }
                }
                // Reset the muting counter ready for next muting effect. 
                muting_counter = 300;
            } else {
                muting_counter--;
            }
        }
    }
}