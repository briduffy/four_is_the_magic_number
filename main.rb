require 'to_words'

def menu
  puts `clear`
  puts
  puts "===================================="
  puts "     Four is the magic number.      "
  puts "===================================="
  puts
  puts "        Enter any number.           "
  puts
  @usernumber = gets.strip.to_i
  magic_count
end

def magic_count
  letters = @usernumber.to_words.gsub(/\s+/, "").length
  @usernumber = letters
  puts
  puts "#{@usernumber} is #{letters}."
  puts
  if @usernumber == 4
    puts "And 4 is the magic number!"
    puts
  else
    magic_count
  end
end

menu