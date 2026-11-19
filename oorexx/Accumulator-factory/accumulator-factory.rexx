/*
* Purpose: Solves the Accumalator Factory problem, see
*          https://rosettacode.org/wiki/Accumulator_factory
* Author: unknown, unknown
* Changed/edited: Matt Ferlita, 2026-11-19
*/

accum = .Accumulator~new(1)    -- new accumulator with initial value of "1"
accum~call(5)
accum~call(2.3)
say "Accumulator value is now" accum    -- displays current value

/* Directives */

/*
* an accumulator class instance can be instantiated and used to sum up a
* series of numbers
*/
::class Accumulator

::method init    -- instance initializer...sets the accumulator initial value
   expose sum
   use strict arg sum = 0 -- sets default sum value if not specified

-- perform the accumulator function
::method call
   expose sum
   use strict arg num
   sum += num       -- bump the accumulator
   return sum       -- return the new value

-- extra credit...display the current accumulator value
::method string
   expose sum
   return sum
