
LANGUAGE = 'en'

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# at the top of file

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# at top of file after initializing MESSAGES

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
	num.to_i.to_s == num
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
	word = case op
					 when '1'
						 'adding'
					 when '2'
						 'subtracting'
					 when '3'
						 'multiplying'
					 when '4'
						 'dividing'
				 end

	x = "A random line of code"

	word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
	name = Kernel.gets().chomp()

	if name.empty?()
		prompt(MESSAGES['valid_name'])
	else
		break
	end
end

prompt("Hi #{name}")

loop do #main loop

	number1 = ''
	number2 = ''

	loop do
		prompt(MESSAGES['first_number'])
		number1 = Kernel.gets().chomp()

		if valid_number?(number1)
			break
		else
			prompt(MESSAGES['not_valid_number'])
		end
	end

	loop do
		prompt(MESSAGES['second_number'])
		number2 = Kernel.gets().chomp()

		if valid_number?(number1)
			break
		else
			prompt(MESSAGES['not_valid_number'])
		end
	end

	operator_prompt = <<-MSG
		What operation would you like to perform?
		1) add
		2) subtract
		3) multiply
		4) divide
		MSG
	prompt(operator_prompt)

	operator = ''
	loop do
		operator = Kernel.gets().chomp()
	
		if %w(1 2 3 4).include?(operator)
			break
		else
			prompt(MESSAGES['you_must_choose'])
		end
	end

	prompt("#{operation_to_message(operator)} the two numbers...")

	result = case operator
					 when '1'
						 number1.to_i() + number2.to_i()
					 when '2'
						 number1.to_i() - number2.to_i()
					 when '3'
						 number1.to_i() * number2.to_i()
					 when '4'
						 number1.to_f() / number2.to_f()
					 end

	prompt("The result is #{result}")

	prompt(MESSAGES['again'])
	answer = Kernel.gets().chomp()
	break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thank_you'])