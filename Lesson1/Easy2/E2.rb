SQMETERS_TO_SQFEET = 10.7639

puts "What is the length of the room in meters?"
length = gets.to_f

puts "What is the width of the room in meters?"
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} " + \
		 "square meters (#{square_feet} square feet)."


#gets always gives us a string
#puts always returns nil

