
# puts "Please enter an integer greater than 0:"
# num = gets.chomp.to_i

# puts "Enter 's' to compute the sum, 'p' to compute the product."
# answer = gets.chomp

# if answer == 's'
# 	puts "The sum of the integers between 1 and #{answer} is #{(answer + 1)}."
# else
# 	puts "The product of the integers between 1 and #{answer} is #{(answer + [1..answer])}."
# end

def read_int
  loop do
    puts 'Please enter an integer greater than 0:'
    input = gets.chomp
    return input.to_i if positive_integer?(input)
    puts 'Must be a valid positive integer.'
  end
end

def positive_integer?(input)
  input.to_i.to_s == input && input.to_i.positive?
end

def read_mode
  loop do
    puts "Enter 's' to compute the sum, or 'p' to compute the product."
    input = gets.chomp.downcase
    return convert_mode(input) if ['s', 'p'].include?(input)
    puts "Input must be 's' or 'p'."
  end
end

def convert_mode(mode)
  case mode 
  when 's' then 'sum'
  when 'p' then 'product'
  end
end

def cumulative_sum(int)
  (1..int).reduce(:+)
end

def cumulative_product(int)
  (1..int).reduce(:*)
end

int = read_int
mode = read_mode

result = if mode == 'sum'
  cumulative_sum(int)
elsif mode == 'product'
  cumulative_product(int)
end

puts "The #{mode} of the integers between 1 and #{int} is #{result}."

#gets always gives us a string
#puts always returns nil