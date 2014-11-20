#
# Problem:
# The Latin alphabet contains 26 characters and telephones only
# have ten digits on the keypad. We would like to make it easier
# to write a message to your friend using a sequence of keypresses
# to indicate the desired characters. The letters are mapped onto
# the digits as on the mobile phone. To insert the character B for
# instance, the program would press 22. In order to insert two
# characters in sequence from the same key, the user must pause
# before pressing the key a second time. The space character ' '
# should be printed to indicate a pause.
#
# Input:
# The first line of input gives the number of cases, N.
# N test cases follow. Each case is a line of text
# formatted as "desired_message"
# Each message will consist of only lowercase characters a-z
# and space characters ' '. Pressing zero emits a space.
#
# Origin: Google Code Jam Qualification Round Africa 2010 Problem C
# Usage: ruby thisfile.rb <input.in >output.out
#

hash = {
"a" => "2", "b" => "22", "c" => "222",
"d" => "3", "e" => "33", "f" => "333",
"g" => "4", "h" => "44", "i" => "444",
"j" => "5", "k" => "55", "l" => "555",
"m" => "6", "n" => "66", "o" => "666",
"p" => "7", "q" => "77", "r" => "777", "s" => "7777",
"t" => "8", "u" => "88", "v" => "888",
"w" => "9", "x" => "99", "y" => "999", "z" => "9999",
" " => "0"}

num = gets
num.to_i.times do |i|

  str = gets

  hash.each do |key, value|
    str = str.gsub(key, value + "_")
  end

  str = str.gsub("_"," ")
  array = str.each_char.to_a

  array.each_with_index do |letter, index|
    if letter.eql?(" ")&&(array[index-1] != array[index+1])
      array[index] = ""
    end
  end
  
  array[-1] = "" if array[-1] == " "

  puts "Case ##{i+1}: " + array.join("")
end
