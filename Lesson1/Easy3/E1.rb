arr = []

puts "Enter a number:"
arr << gets.chomp.to_i
puts "Enter a 2nd number:"
arr << gets.chomp.to_i
puts "Enter a 3rd number:"
arr << gets.chomp.to_i
puts "Enter a 4th number:"
arr << gets.chomp.to_i
puts "Enter a 5th number:"
arr << gets.chomp.to_i
puts "Enter a last number:"
num6 = gets.chomp.to_i

if arr.include?(num6)
	puts "The number #{num6} appears in #{arr}."
else
	puts "The number #{num6} does not appear in #{arr}."
end

# def check_membership
#   system 'clear'
#   inputs = get_inputs
#   result = determine_result(inputs)
#   display_result(inputs, result)
# end

# def get_inputs
#   ordinals = %w(1st 2nd 3rd 4th 5th last)
#   numbers = ordinals.map do |ordinal|
#     get_input(ordinal)
#   end
#   [numbers, numbers.pop]
# end

# def get_input(ordinal)
#   loop do
#     print "==> Enter the #{ordinal} integer: "
#     input = gets.chomp
#     return input.to_i if valid_integer?(input)

#     invalid_entry
#   end
# end

# def valid_integer?(input)
#   input.to_i.to_s == input
# end

# def invalid_entry
#   puts
#   puts "Please enter only integers."
#   puts
# end

# def determine_result(inputs)
#   numbers, target = inputs
#   numbers.include?(target)
# end

# def display_result(inputs, result)
#   numbers, target = inputs
#   puts
#   print "The number #{target} "
#   puts (result ? "appears in #{numbers}." : "does not appear in #{numbers}.")
# end

# check_membership