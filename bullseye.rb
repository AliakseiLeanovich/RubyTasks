#Problem: Bullseye
#Origin: Google Code Jam Round 1A 2013 Problem A
#Source: http://code.google.com/codejam/contest/2418487/dashboard
#Usage: ruby thisfile.rb <input.in >output.out

require "bigdecimal"
require "bigdecimal/math"
include BigMath

def count_rings(r, t)
  discriminant = (2*r-1)**2+8*t
  discriminant_root = discriminant.sqrt(2)
  (1-2*r + discriminant_root)/4
end

test_num = gets.to_i

test_num.times do |i|
  input = gets.split(" ")  
  radius = BigDecimal.new(input[0])
  paint_amount = BigDecimal.new(input[1])
  
  ring_number = count_rings(radius, paint_amount).to_i
  puts "Case ##{i+1}: #{ring_number}"
end
