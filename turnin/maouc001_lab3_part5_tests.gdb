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

# case 1: D = 0010 0011 , B0 = 0, B = 0000 0010
  test "PIND: 0x23 , PINB: 0x00  => PORTB: 0x02 "
# Set inputs
  setPIND 0x23
  setPINB 0x00
# Continue for several ticks
 continue 2
# Set expect values
  expectPORTB 0x02
# Check pass/fail
 checkResult


# case 2: D = 1111 0000 , B0 = 1, B = 0000 0010
  test "PIND: 0xF0 , PINB: 0x01  => PORTB: 0x02 "
#  Set inputs
 setPIND 0xF0
 setPINB 0x01
# Continue for several ticks
 continue 2
# Set expect values
 expectPORTB 0x02
# Check pass/fail
 checkResult


# case 3: D = 0001 1111 , B0 = 0, B = 0000 0100
  test "PIND: 0x1F , PINB: 0x00  => PORTB: 0x04 "
# Set inputs
  setPIND 0x1F
  setPINB 0x00
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTB 0x04
# Check pass/fail
  checkResult


 # case 4: D = 0000 0111 , B0 = 1, B = 0000 0100 
   test "PIND: 0x07 , PINB: 0x01  => PORTB: 0x04 "
 # Set inputs
   setPIND 0x07
   setPINB 0x01
 # Continue for several ticks
   continue 2
 # Set expect values
   expectPORTB 0x04
 # Check pass/fail
   checkResult

# case 5: D = 0000 0010 , B0 = 1, B = 0000 0000 
 test "PIND: 0x02 , PINB: 0x01  => PORTB: 0x00 "
# Set inputs
setPIND 0x02
setPINB 0x01
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTB 0x00
# Check pass/fail
  checkResult


# case 6: D = 1111 1111 , B0 = 0, B = 0000 0010
  test "PIND: 0xFF , PINB: 0x00  => PORTB: 0x02 "
# Set inputs
 setPIND 0xFF
 setPINB 0x00
# Continue for several ticks
 continue 2
#Set expect values
  expectPORTB 0x02
# Check pass/fail
  checkResult


# case 7: D = 1111 1111 , B0 = 1, B = 0000 0010 
   test "PIND: 0xFF , PINB: 0x01  => PORTB: 0x02 "
# Set inputs
 setPIND 0xFF
 setPINB 0x01
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTB 0x02
# Check pass/fail
  checkResult


 # Report on how many tests passed/tests ran
  set $passed=$tests-$failed
  eval "shell echo Passed %d/%d tests.\n",$passed,$tests
  echo ======================================================\











































































