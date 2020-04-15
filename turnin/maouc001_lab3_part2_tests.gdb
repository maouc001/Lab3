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

# case: 0 A = 0, C = 0100 0000
 test "PINA: 0x00  => PORTC: 0x40 "
 # Set inputs
 setPINA 0x00
  # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x40
 # Check pass/fail
 checkResult

 # case: 1 A = 1 , C = 0110 0000
 test "PINA: 0x01  => PORTC: 0x60 "
 # Set inputs
 setPINA 0x01
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x60
 # Check pass/fail
 checkResult

 # case: 2 A = 2, C = 0110 0000
 test "PINA: 0x02  => PORTC: 0x60 "
 # Set inputs
 setPINA 0x02
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x60
 # Check pass/fail
 checkResult

 # case: 3 A = 3, C = 0111 0000
 test "PINA: 0x03  => PORTC: 0x70 "
 # Set inputs
 setPINA 0x03
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x70
 # Check pass/fail
 checkResult

 # case: 4 A = 4, C = 0111 0000
 test "PINA: 0x04  => PORTC: 0x70 "
 # Set inputs
 setPINA 0x04
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x70
 # Check pass/fail
 checkResult

 # case: 5 A = 5, C = 0011 1000
 test "PINA: 0x05  => PORTC: 0x38 "
 # Set inputs
 setPINA 0x05
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x38
 # Check pass/fail
 checkResult

 # case: 6 A = 6, C = 0011 1000
 test "PINA: 0x06  => PORTC: 0x38 "
 # Set inputs
 setPINA 0x06
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x38 
 # Check pass/fail
 checkResult

 # case: 7 A = 7, C = 0011 1100
 test "PINA: 0x07  => PORTC: 0x3C "
 # Set inputs
 setPINA 0x07
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3C
 # Check pass/fail
 checkResult
  
 # case: 8 A = 8, C = 0011 1100
 test "PINA: 0x08  => PORTC: 0x3C "
 # Set inputs
 setPINA 0x08
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3C
 # Check pass/fail
 checkResult
 
 # case: 9 A = 9, C = 0011 1100 
 test "PINA: 0x09  => PORTC: 0x3C "
 # Set inputs
 setPINA 0x09
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3C
 # Check pass/fail
 checkResult
 
 # case: 10 A = 10, C = 0011 1110 
 test "PINA: 0x0A  => PORTC: 0x3E "
 # Set inputs
 setPINA 0x0A
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3E
 # Check pass/fail
 checkResult
 
 # case: 11 A = 11, C = 0011 1110
 test "PINA: 0x0B  => PORTC: 0x3E "
 # Set inputs
 setPINA 0x0B
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3E
 # Check pass/fail
 checkResult
 
 # case: 12 A = 12, C = 0011 1110
 test "PINA: 0x0C  => PORTC: 0x3E "
 # Set inputs
 setPINA 0x0C
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3E
 # Check pass/fail
 checkResult
 
 # case: 13 A = 13, C = 0011 1111
 test "PINA: 0x0D  => PORTC: 0x3F "
 # Set inputs
 setPINA 0x0D
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3F
 # Check pass/fail
 checkResult
 
 # case: 14 A = 14, C = 0011 1111
 test "PINA: 0x0E  => PORTC: 0x3F "
 # Set inputs
 setPINA 0x0E
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3F
 # Check pass/fail
 checkResult
 
 # case: 15 A = 15, C = 0011 1111
 test "PINA: 0x0F  => PORTC: 0x3F "
 # Set inputs
 setPINA 0x0F
 # Continue for several ticks
 continue 2
 # Set expect values
 expectPORTC 0x3F
 # Check pass/fail
 checkResult
 
 # Report on how many tests passed/tests ran
 set $passed=$tests-$failed
 eval "shell echo Passed %d/%d tests.\n",$passed,$tests
 echo ======================================================\n
