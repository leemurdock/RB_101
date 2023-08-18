
	puts "What is the bill?"
	bill = gets.chomp.to_f

	puts "What is the tip percentage?"
	percentage = gets.chomp.to_f / 100

	tip = bill * percentage.round(2)
	total = (bill + tip).round(2)

	puts "The tip is $#{tip}."
	puts "The total is $#{total}."


	#gets always gives us a string
	#puts always returns nil

