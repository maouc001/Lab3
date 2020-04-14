/*	Author: maouc001 - Mahdi Aouchiche
 * 	Partner(s) Name: none
 *	Lab Section: 22
 *	Assignment: Lab # 3  Exercise # 1
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
   
    /* Insert DDR and PORT initializations */
    DDRA = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs
    DDRB = 0x00; PORTB = 0xFF; // configure port B's 8 pins as inputs
    DDRC = 0xFF; PORTC = 0x00; // configure port C's 8 pins as outputs

    /* Insert your solution below */

    unsigned char count;       // holds the number of 1's from ports A and B
    unsigned char inputA;      // holds input from port A
    unsigned char inputB;      // holds input from port B
    unsigned char i;           // iterator of a for loop

    while (1) {

        count = 0;             // set the count to 0

        for (i = 0; i < 8; ++i) {
             inputA = PINA & ( 0x01 << i);
             if(inputA > 0x00) { count++ ; }

             inputB = PINB & ( 0x01 << i);
             if(inputB > 0x00) { count++ ; }
        }
	
	PORTC = count;         // output the count to port C
    }
    return 1;
}

