require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')
LANGUAGE = 'en'
MONTHS_IN_YEAR = 12

def prompt(key, lang='en')
  message = MESSAGES[lang][key] || key
  puts "#{message}"
end

def integer?(str)
  str.to_i.to_s == str
end

def float?(str)
  str.to_f.to_s == str
end

def numeric?(str)
  integer?(str) || float?(str)
end

def read_input(message)
  loop do
    prompt(message)
    input = gets.chomp
    return input if valid_input?(input, message)
  end
end

def read_duration_input(message)
  loop do
    input = {}
    prompt(message)
    prompt('loan_years')
    input[:years] = gets.chomp
    prompt('loan_months')
    input[:months] = gets.chomp
    return input if valid_input?(input, message)
  end
end

def valid_input?(input, message)
  case message
  when 'loan_amount' then valid_loan_amount?(input)
  when 'annual_interest' then valid_interest?(input)
  when 'loan_duration' then valid_loan_duration?(input)
  end
end

def valid_loan_amount?(input)
  if !numeric?(input)
    prompt('valid_number')
    return false
  elsif input.to_f <= 0
    prompt('loan_amount_zero')
    return false
  end
  true
end

def valid_interest?(input)
  if !numeric?(input)
    prompt('valid_number')
    return false
  elsif input.to_f.negative?
    prompt('interest_negative')
    return false
  end
  true
end

def valid_loan_duration?(input)
  unless integer?(input[:years]) && integer?(input[:months])
    prompt('loan_duration_integer')
    return false
  end

  values = input.values.map(&:to_i)
  if any_negative?(values)
    prompt('loan_duration_negative')
    return false
  elsif none_positive?(values)
    prompt('loan_duration_zero')
    return false
  end
  true
end

def any_negative?(values)
  values.any?(&:negative?)
end

def none_positive?(values)
  values.none?(&:positive?)
end

def calculate_monthly_payment(amount, monthly_interest, months)
  return amount / months if monthly_interest.zero?
  amount * (monthly_interest / (1 - ((1 + monthly_interest)**(-months))))
end

def display_summary(amount, annual_interest, duration, monthly_payment)
  prompt('calculating')
  sleep 0.5
  output_message = <<-MSG
Given a loan amount of $#{amount},
   a yearly interest rate of #{annual_interest}%,
   and a loan duration of #{duration[:years]} years, #{duration[:months]} months:

   Your monthly payments will be $#{monthly_payment}.
  MSG
  prompt(output_message)
end

def calculate_again?
  loop do
    prompt('calculate_again')
    input = gets.chomp.downcase
    return input == 'y' if ['y', 'n'].include?(input)
    prompt('again_invalid')
  end
end

loop do
  system('clear')
  # Inputs
  amount = read_input('loan_amount').to_f

  annual_interest = read_input('annual_interest').to_f
  monthly_interest = annual_interest / 100 / MONTHS_IN_YEAR

  duration = read_duration_input('loan_duration').transform_values(&:to_i)
  duration_in_months = (duration[:years] * MONTHS_IN_YEAR) + duration[:months]

  # Outputs
  monthly_payment = calculate_monthly_payment(amount,
                                              monthly_interest,
                                              duration_in_months).round(2)
  display_summary(amount, annual_interest, duration, monthly_payment)

  # Again?
  break unless calculate_again?
end
