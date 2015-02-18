#Problem: All Your Base
#Origin: Google Code Jam Round 1C 2009 Problem A
#Source: http://code.google.com/codejam/contest/189252/dashboard#s=p0
#Usage: ruby thisfile.rb <input.in >output.out

test_num = gets.to_i

test_num.times do |i|

  message = gets.chomp.split("")
  
  letters = message.uniq
  letters[0], letters[1] = letters[1], letters[0]

  value = letters.collect.with_index { |x, index| x=[x,index] }
  value = value.to_h  
  
  base = value[letters[-1]] + 1
  
  sum = 0  
  
  message.reverse.each_with_index do |char, index|
   sum += base**index * value[char]
  end
  
  puts "Case ##{i+1}: #{sum}"
    
end
