# Test file for "Lab3"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# test: 0 
 test "PINA: 0x00, PINB: 0x00 => PORTC: 0"
 # Set inputs
 setPINA 0x00
 setPINB 0x00
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x00
 # Check pass/fail
 checkResult

# test: 1  A = 0000 0000, B = 1010 0010, C = 3
 test "PINA: 0x00, PINB: 0xA2  => PORTC: 0x03"
 # Set inputs
 setPINA 0x00
 setPINB 0xA2
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x03
 # Check pass/fail
 checkResult

# test: 3  A = 1010 0011, B = 0000 0000
 test "PINA: 0xA3, PINB: 0x00 => PORTC: 0x04"
 # Set inputs
 setPINA 0xA3
 setPINB 0x00
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x04
 # Check pass/fail
 checkResult

# test: 4  A = 0011 1111, B = 1111 0000
 test "PINA: 0x3F, PINB: 0xF0 => PORTC: 0x0A"
 # Set inputs
 setPINA 0x3F
 setPINB 0xF0
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x0A
 # Check pass/fail
 checkResult

# test: 5  A = 1111 1111, B = 1111 1111
 test "PINA: 0xFF, PINB: 0xFF  => PORTC: =  0x10"
 #Set inputs
 setPINA 0xFF
 setPINB 0xFF
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x10
 # Check pass/fail
 checkResult


# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
