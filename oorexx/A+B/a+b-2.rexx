/*
* Purpose: Solves A+B problem, see https://rosettacode.org/wiki/A%2BB
* Author: unknown, unknown
* Changed/edited: Matt Ferlita, 2026-11-19
*/

numeric digits 1000

say 'enter some numbers to be summed:'
parse pull input

sum = 0
inputPlus = ''

do i = 1 by 1 while input \= ''
   parse var input num input
   if DATATYPE(num) \= 'NUM' then
      do
         say 'User entered something that is not a number:' num
         exit
      end
      select
        when i = 1 then
           inputPlus = num
        when num > 0 then
           inputPlus ||= '+' || abs(num)
        otherwise userInPlus ||= num
      end
      sum += num
end

say inputPlus '=' sum / 1
exit
