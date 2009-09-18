#!/usr/bin/ruby -w
#
# Problem 9
# 25 January 2002
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

1.upto(999) do |a|
  a.upto(999) do |b|
    c = 1000 - a - b
    if (a*a + b*b - c*c).zero?
      print "#{a}, #{b}, #{c} => "
      puts a*b*c
      exit
    end
  end
end
