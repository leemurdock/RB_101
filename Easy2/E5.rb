
puts "What is your name?"
name = gets.chomp

if name.end_with?('!')
	puts "HELLO #{name.delete('!').upcase}. WHY ARE WE SCREAMING?"
else
	puts "Hello #{name}."
end

#gets always gives us a string
#puts always returns nil