/*
* Purpose: Implements the Abstract Type task, see
*          https://rosettacode.org/wiki/Abstract_type
* Author: unknown, unknown
* Changed/edited: Matt Ferlita, 2026-11-18
*/

rect = .Rectangle~new(5,2)
say rect
-- check for instance of
if rect~isA(.Shape) then
   say "a" rect~name "is a shape"
say "rect~area:" rect~area
say

circ = .Circle~new(2)
say circ
-- check for instance of shape works even if inherited
if circ~isA(.Shape) then
   say "a" circ~name "is a shape"
say "circ~area:" circ~area
say

/*
* a mixin is still a class and can be instantiated. The abstract methods
* will give an error if invoked
*/
theShape = .Shape~new
say theShape
say theShape~name
-- invoking abstract method results in a runtime error.
say "theShape~area:" theShape~area

/* Directives */

-- the "MIXINCLASS" tag makes this avaiable for multiple inhertance
::class Shape mixinclass Object

::method area abstract

::method name abstract
--------------------------------------------------------------------------------
-- directly subclassing the the interface
::class Rectangle subclass Shape

::method init
   expose length width
   use strict arg length = 0, width = 0

::method area
   expose length width
   return length * width

::method name
   return "Rectangle"
--------------------------------------------------------------------------------
-- inherits the shape methods
::class Circle subclass Object inherit Shape

::method init
   expose radius
   use strict arg radius = 0

::method area
   expose radius
   numeric digits 20
   return radius * radius * 3.14159265358979323846

::method name
   return "Circle"
