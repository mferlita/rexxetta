/*
* Purpose: Implements the Ackermann Function, see
*          https://rosettacode.org/wiki/Ackermann_function
* Author: unknown, unknown
* Changed/edited: Matt Ferlita, 2026-11-19
*/

loop m = 0 to 3
   loop n = 0 to 6
       say "Ackermann("m", "n") = " || ackermann(m, n)
   end
end

/* Directives */

::routine ackermann
  use strict arg m, n

  numeric digits 100  -- give us some precision room

  if m = 0 then
     return n + 1
  else if n = 0 then
     return ackermann(m - 1, 1)
  else
     return ackermann(m - 1, ackermann(m, n - 1))
