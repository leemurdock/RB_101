def stringy(x, 1)
	nums = []

	x.times do |i|
		num = i.even? ? 1 : 0
		nums << num
	end

	# 1.times do |i|
	# 	num = i.odd? ? 0 : 1
	# 	nums << num
	# end

  nums.join
end

puts stringy(9)