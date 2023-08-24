
puts "==> Enter a number:"
num1 = gets.chomp.to_i
puts "==> Enter a 2nd number:"
num2 = gets.chomp.to_i
puts "==> #{num1} + #{num2} = #{num1 + num2}"
puts "==> #{num1} - #{num2} = #{num1 - num2}"
puts "==> #{num1} * #{num2} = #{num1 * num2}"
puts "==> #{num1} / #{num2} = #{num1 / num2}"
puts "==> #{num1} % #{num2} = #{num1 % num2}"
puts "==> #{num1} ** #{num2} = #{num1 ** num2}"

#someone else's code:

OPERATORS = [:+, :-, :*, :/, :%, :**]

puts 'Enter the first number:'
num1 = gets.to_i

num2 = nil
loop do
  puts 'Enter the second number:'
  num2 = gets.to_i
  break unless num2.zero?
  puts 'Second number cannot be zero!'
end

OPERATORS.each do |op|
  result = [num1, num2].reduce(op)
  puts "#{num1} #{op.to_s} #{num2} = #{result}"
end