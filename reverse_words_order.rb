#
# Problem: Given a list of space separated words, reverse the order of the words.
# Input: The first line of input gives the number of cases, N. N test cases follow.
# Origin: Google Code Jam Qualification Round Africa 2010 Problem B
# Usage: ruby thisfile.rb <input.in >output.out
#

num = gets
num.to_i.times do |i|
  line = gets
  puts "Case ##{i+1}: " + line.split(" ").reverse*" "
end
