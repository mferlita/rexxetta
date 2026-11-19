/*
* Purpose: Implements the Abstract Type task, see
*          https://rosettacode.org/wiki/Abstract_type
* Author: Rony G. Flatscher, 2012-05-26
* Changed/edited: Walter Pachl, 2012-05-28
*                 Matt Ferlita, 2026-11-19
*/

rect = .Rectangle~new(5,2)
say rect
say rect~name
say "rect~area:" rect~area
say

circ = .Circle~new(2)
say circ
say circ~name
say "circ~area:" circ~area
say

theShape = .Shape~new
say theShape
say theShape~name
-- invoking abstract method results in a runtime error.
say "theShape~area:" theShape~area

/* Directives */
::class Shape

::method area abstract

::method name
  return "self~class~id:" self~class~id
--------------------------------------------------------------------------------
::class Rectangle subclass Shape

::method init
  expose length width
  use strict arg length = 0, width = 0

::method area
  expose length width
  return length * width
--------------------------------------------------------------------------------
::class Circle subclass Shape

::method init
  expose radius
  use strict arg radius = 0

::method area
  expose radius
  numeric digits 20
  return radius * radius * 3.14159265358979323846
