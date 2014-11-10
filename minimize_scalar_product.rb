#
# Problem:
# You are given two vectors. Suppose you are allowed to permute
# the coordinates of each vector as you wish. Choose two permutations
# such that the scalar product of your two new vectors is the smallest
# possible, and output that minimum scalar product.
#
# Input:
# The first line of the input file contains the number of test cases.
# For each test case, the first line contains integer number n.
# The next two lines contain n integers each, giving the coordinates
# of vectors respectively.
#
# Origin: Google Code Jam Round 1A 2008 Problem A
# Usage: ruby thisfile.rb <input.in >output.out
#

test_num = gets.to_i

test_num.times do |i|
  vector_length = gets.to_i
  scalar_product = 0
  x = gets.split(" ").map {|x_coord| x_coord.to_i}
  y = gets.split(" ").map {|y_coord| y_coord.to_i}
  
  vector_length.times do
    max_x = x.max
    x.delete(max_x)
    min_y = y.min
    y.delete(min_y)
    scalar_product += max_x*min_y    
  end
  
  puts "Case ##{i+1}: " + scalar_product.to_s
end
