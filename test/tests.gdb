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


# case: 0 A =0000 0000, C = 0100 0000
  test "PINA: 0x00  => PORTC: 0x40 "
# Set inputs
  setPINA 0x00
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x40
# Check pass/fail
  checkResult

# case: 1 A =0001 0001 , C = 0110 0000
  test "PINA: 0x11  => PORTC: 0x60 "
# Set inputs
  setPINA 0x11
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x60
# Check pass/fail
  checkResult

# case: 2 A = 0010 0010, C = 0110 0000
  test "PINA: 0x22  => PORTC: 0x60 "
# Set inputs
  setPINA 0x22
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x60
# Check pass/fail
  checkResult

# case: 3 A = 0011 0011, C = 1111 0000
  test "PINA: 0x33  => PORTC: 0xF0 "
# Set inputs
  setPINA 0x33
# Continue for several ticks
 continue 2
# Set expect values
  expectPORTC 0xF0
# Check pass/fail
  checkResult

# case: 4 A = 0100 0100, C = 0111 0000
  test "PINA: 0x44  => PORTC: 0x70 "
# Set inputs
  setPINA 0x44
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x70
# Check pass/fail
  checkResult

# case: 5 A = 0101 0101, C = 0011 1000
  test "PINA: 0x55  => PORTC: 0x38 "
# Set inputs
  setPINA 0x55
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x38
# Check pass/fail
  checkResult

# case: 6 A = 0110 0110, C = 0011 1000
  test "PINA: 0x66  => PORTC: 0x38 "
# Set inputs
  setPINA 0x66
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x38
# Check pass/fail
  checkResult
# case: 7 A = 0111 0111, C = 0011 1100
  test "PINA: 0x77  => PORTC: 0x3C "
# Set inputs
  setPINA 0x77
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3C
# Check pass/fail
  checkResult

# case: 8 A = 1000 1000, C = 0011 1100
  test "PINA: 0x88  => PORTC: 0x3C "
# Set inputs
  setPINA 0x88
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3C
# Check pass/fail
  checkResult

# case: 9 A = 1001 1001, C = 0011 1100
  test "PINA: 0x99  => PORTC: 0x3C "
# Set inputs
  setPINA 0x99
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3C
# Check pass/fail
  checkResult

# case: 10 A = 1010 1010, C = 0011 1110
  test "PINA: 0xAA  => PORTC: 0x3E "
# Set inputs
  setPINA 0xAA
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3E
# Check pass/fail
  checkResult

# case: 11 A = 1011 1011, C = 1011 1110
  test "PINA: 0xBB  => PORTC: 0xBE "
# Set inputs
  setPINA 0xBB
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0xBE
# Check pass/fail
  checkResult

# case: 12 A = 1100 1100, C = 0011 1110
  test "PINA: 0xCC  => PORTC: 0x3E "
# Set inputs
  setPINA 0xCC
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3E
# Check pass/fail
  checkResult

# case: 13 A = 1101 1101 , C = 0011 1111
  test "PINA: 0xDD  => PORTC: 0x3F "
# Set inputs
  setPINA 0xDD
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3F
# Check pass/fail
  checkResult

# case: 14 A = 1110 1110, C = 0011 1111
  test "PINA: 0xEE  => PORTC: 0x3F "
# Set inputs
  setPINA 0xEE
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3F
# Check pass/fail
  checkResult

# case: 15 A = 1111 1111, C = 0011 1111
  test "PINA: 0xFF  => PORTC: 0x3F "
# Set inputs
  setPINA 0xFF
# Continue for several ticks
  continue 2
# Set expect values
  expectPORTC 0x3F
# Check pass/fail
  checkResult


# tests for PORTC 7:
test "PINA: 0x30 => PORTC: 0xC0"
setPINA 0x30
continue 2
expectPORTC 0xC0
checkResult

test "PINA: 0xB0 => PORTC: 0xC0"
setPINA 0xB0
continue 2
expectPORTC 0xC0
checkResult

test "PINA: 0x70 => PORTC: 0x40"
setPINA 0x70
continue 2
expectPORTC 0x40
checkResult

test "PINA: 0xF0 => PORTC: 0x40"
setPINA 0xF0
continue 2
expectPORTC 0x40
checkResult





# Report on how many tests passed/tests ran
  set $passed=$tests-$failed
 eval "shell echo Passed %d/%d tests.\n",$passed,$tests
 echo ======================================================\n
