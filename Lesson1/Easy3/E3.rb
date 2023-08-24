
puts "Please type one or more words:"
input = gets.chomp
puts "There are #{input.delete(" ").length} characters in '#{input}'."

