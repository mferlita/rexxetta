/*
* Purpose: Solves A+B problem, see https://rosettacode.org/wiki/A%2BB
* Author: unknown, unknown
* Changed/edited: Matt Ferlita, 2026-11-18
*/

numeric digits 1000 /* just in case the user gets ka-razy. */

say 'enter some numbers to be summed:'
parse pull input
inputPlus = addPlus(input)
sum = 0

do while input \= ''
   parse var input num input
   if DATATYPE(num) \= 'NUM' then
      do
         say 'User entered something that is not a number:' num
         exit
      end
   sum += num
end

say inputPlus '=' sum / 1
exit

addPlus:
parse arg list
list = space(list)
return translate(list,'+',' ')
