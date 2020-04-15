/*	Author: maouc001 - Mahdi Aouchiche
 * 	Partner(s) Name: none
 *	Lab Section: 22
 *	Assignment: Lab # 3  Exercise # 2
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
    DDRC = 0xFF; PORTC = 0x00; // configure port C's 8 pins as outputs
   
    /* Insert your solution below */

    unsigned char level;       // holds the fuel tank level input from port A 
    unsigned char LED;         // holds the LED's to rpresent the fuel level
   
    while (1) {
	
	level = PINA & 0x0F ; 				// get input level from port A[3,0]
 
        if ( level == 0x01 || level == 0x02 ) {				// level 1 or 2
                LED = 0x60;          					// LED 5, 0110 0000
        }
	else if ( level == 0x03 || level == 0x04 ) { 			// level 3 or 4
                LED = 0x70;            					// LED 5, 4: 0111 0000
        }
	else if ( level == 0x05 || level == 0x06 ) { 			// level 5 or 6
                LED = 0x38;           					// LED 5, 4, 3: 0011 1000
        }          
        else if ( level == 0x07 || level == 0x08 || level == 0x09 ) {	// level 7 or 8 or 9
                LED = 0x3C;           					// LED 5, 4, 3, 2: 0011 1100
        }
	else if ( level == 0x0A || level == 0x0B || level == 0x0C ) {	// level 10 or or 11 or  12
                LED = 0x3E;                    				// LED 5, 4, 3, 2, 1: 0011 1110
        }
	else if ( level == 0x0D || level == 0x0E || level == 0x0F ) {  	// level 13 or 14 or 15               
                LED = 0x3F;                 				// LED 5, 4, 3, 2, 1, 0: 0011 1111 
        }
	else {                    					// level 0
                LED = 0x40;		        			// LED 6, 0100 0000
        }
	
	PORTC = LED;							// output LED to port C
 	
    }
    return 1;
}
