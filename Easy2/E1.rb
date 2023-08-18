puts "What's your name?"
name = gets.chomp
name = 'Teddy' if name.empty?

age = rand(20..200)
puts ("#{name} is #{age} years old!")

#gets always gives us a string
#puts always returns nil