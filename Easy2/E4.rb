
puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
time_until_retirement = retire_age - age
retire_year = current_year + time_until_retirement


puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{time_until_retirement} more years of work to go."


#gets always gives us a string
#puts always returns nil

