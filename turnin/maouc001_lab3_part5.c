
 /*      Author: maouc001 - Mahdi Aouchiche
 *      rtner(s) Name: none
 *      Lab Section: 22
 *      Assignment: Lab # 3  Exercise # 5
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
    DDRD = 0x00; PORTD = 0xFF; // configure port D's 8 pins as inputs
    DDRB = 0xFE; PORTB = 0x01; // configure port B[0] pin as inputs and B[7-1] pins as output
    
    /* Insert your solution below */

    unsigned short passengerWeight ;	// holds the passenger's weight
    unsigned char airbagEnabled ;      	// set to 1 if airbag is enabled
    unsigned char airbagIcon ;		// set to 1 if airbag disabled icon is on 

    while (1) {

        passengerWeight = PIND ;			// get D's input
	passengerWeight = (passengerWeight << 1) ;    	// shift left D's input by 1
	passengerWeight = passengerWeight + ( PINB & 0x01 ) ; // add B0 
 
	if( passengerWeight >= 70 ) {
		airbagEnabled = 0x01 ;			// enable the airbag
		airbagIcon    = 0x00 ;			// airbag icon off 
	} 
	else if( passengerWeight > 5 ) {
		airbagEnabled = 0x00 ;			// disable the airbag
		airbagIcon    = 0x01 ;			// airbag icon on
	}
	else {
		airbagEnabled = 0x00 ;			// disable the airbag
		airbagIcon    = 0x00 ;			// airbag icon off
	}

	PORTB = (airbagEnabled << 1) + (airbagIcon << 2 ) ;
    }
    return 1;
}




