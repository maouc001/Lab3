/*      Author: maouc001 - Mahdi Aouchiche
 *      Partner(s) Name: none
 *      Lab Section: 22
 *      Assignment: Lab # 3  Exercise # 4
 *      Exercise Description: [optional - include for your own benefit]
 *
 *      I acknowledge all content contained herein, excluding template or example
 *      code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif


int main(void) {
    /* Insert DDR and PORT initializations */
    DDRA = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs
    DDRB = 0xFF; PORTB = 0x00; // configure port B's 8 pins as outputs
    DDRC = 0xFF; PORTC = 0x00; // configure port C's 8 pins as outputs

    /* Insert your solution below */

    unsigned char upperNibble ;       // holds A7 A6 A5 A4 0000 
    unsigned char lowerNibble ;       // holds 0000 A3 A2 A1 A0

     while (1) {

        upperNibble = (PINA & 0xF0) ;
	lowerNibble = (PINA & 0x0F) ;
	
	PORTB = upperNibble >> 4;
	PORTC = lowerNibble << 4; 
    }
    return 1;
} 




