def bonus(x, bonus)
	bonus ? (x/2) : 0
end

puts bonus(2800, true) == 1400
puts bonus(1000, false) == 0
puts bonus(50000, true) == 25000

# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end