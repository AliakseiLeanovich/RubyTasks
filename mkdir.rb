#Problem: File Fix-it
#Origin: Google Code Jam Round 1B 2010 Problem A
#Source: http://code.google.com/codejam/contest/635101/dashboard#s=p0
#Usage: ruby thisfile.rb <input.in >output.out

test_num = gets.to_i

test_num.times do |i|
  command_num = 0
  
  old_dir = Array.new
  new_dir = Array.new

  old_num, new_num = gets.split(" ")
  old_num = old_num.to_i
  new_num = new_num.to_i
  
  old_num.times {
    old_dir << gets.chomp
  } 
  
  new_num.times {
  
    new_path = gets.chomp
    new_path[0] = ""
    path_parts = new_path.split "/"
    
    path_to_find = ""
    
    path_parts.each { |part|
      path_to_find += "/" + part
      
      if !old_dir.find_index (path_to_find)
        command_num += 1
        old_dir << path_to_find
      end      
    }
  } 
  
  puts "Case ##{i+1}: " + command_num.to_s
  
end
