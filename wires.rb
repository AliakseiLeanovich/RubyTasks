#Problem: Rope Intranet
#Origin: Google Code Jam Round 1C 2010 Problem A
#Source: http://code.google.com/codejam/contest/619102/dashboard#s=p0
#Usage: ruby thisfile.rb <input.in >output.out

test_num = gets.to_i

test_num.times do |i|
  wire_num = gets.to_i
  points_num = 0
  
  wire = Hash.new
  
  wire_num.times do
    flour = gets.split(" ").map {|f| f.to_i}
    wire[flour[0]] = flour[1]  
  end
  
  
  wire_num.times do
    left, right = wire.shift
  
    wire.each do |key, value|
      if ((left>key)&&(right<value))||((left<key)&&(right>value))
        points_num += 1
      end
    end
  end
  
  puts "Case ##{i+1}: " + points_num.to_s
end
