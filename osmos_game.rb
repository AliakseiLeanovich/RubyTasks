#Problem: Osmos
#Origin: Google Code Jam Round 1B 2013 Problem A
#Source: http://code.google.com/codejam/contest/2434486/dashboard
#Usage: ruby thisfile.rb <input.in >output.out

def count_operations(mote, array)
  while (!array.empty? && mote > array.first)
    mote += array.shift
  end
  res1 = count_if_remove(mote, array.dup)  
  res2 = count_if_add(mote, array.dup)
  res1 > res2 ? res2 : res1
end

def count_if_remove(mote, array)
  return 0 if array.empty?
  array.shift
  1 + count_if_remove(mote, array.dup)
end

def count_if_add(mote, array)
  return 0 if array.empty?
  mote += mote - 1
  1 + count_operations(mote, array.dup)
end

test_num = gets.to_i

test_num.times do |i|
  input = gets.split(" ")
  player_mote = input[0].to_i  
  
  sequence = gets.split(" ").collect { |i| i = i.to_i }
  sequence.sort! 
  
  if player_mote == 1
    puts "Case ##{i+1}: #{sequence.size}"
    next
  end 
  
  operation_number = count_operations(player_mote, sequence.dup)  
  puts "Case ##{i+1}: #{operation_number}"
  
end


