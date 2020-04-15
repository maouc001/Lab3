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


# case 0: A = 1111 0000 , B = 0000 1111, C = 0000 0000
  test "PINA: 0xF0  => PORTB: 0x0F , PORTC: 0x00 "
# Set inputs
  setPINA 0xF0
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTB 0x0F
  expectPORTC 0x00
# Check pass/fail
 checkResult



#case 1: A = 0000 1111 , B = 0000 0000 , C = 1111 0000
  test "PINA: 0x0F  => PORTB: 0x00 , PORTC: 0xF0 "
# Set inputs
  setPINA 0x0F
# Continue for several ticks
 continue 2
# Set expect values
  expectPORTB 0x00
  expectPORTC 0xF0
# Check pass/fail
 checkResult


# case 2: A = 1100 0011 , B = 0000 1100 , C = 0011 0000
 test "PINA: 0xC3  => PORTB: 0x0C , PORTC: 0x30 "
# Set inputs
 setPINA 0xC3
# Continue for several ticks
 continue 2
# Set expect values
 expectPORTB 0x0C
 expectPORTC 0x30
# Check pass/fail
 checkResult


# case 3: A = 1010 0101 , B = 0000 1010, C = 0101 0000 
  test "PINA: 0xA5  => PORTB: 0x0A , PORTC: 0x50 "
# Set inputs
 setPINA 0xA5
# Continue for several ticks
  continue 2
# Set expect values
 expectPORTB 0x0A
 expectPORTC 0x50
# Check pass/fail
 checkResult

# Report on how many tests passed/tests ran
  set $passed=$tests-$failed
  eval "shell echo Passed %d/%d tests.\n",$passed,$tests
  echo ======================================================\













































































