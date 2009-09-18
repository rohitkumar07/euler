#!/usr/bin/ruby -w
#
# Problem 2
# 19 October 2001
#
# Each new term in the Fibonacci sequence is generated by adding the previous
# two terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# Find the sum of all the even-valued terms in the sequence which do not exceed
# four million.

require 'fibs'

fibs = Fibs.new(1,2)

sum = 0
n = 2
while (f = fibs[n]) < 4_000_000
  sum += f if f%2 == 0
  n += 1
end

print sum
