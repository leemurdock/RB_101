def middle(s)
  if s.length.even?
		return s[s.length/2-1] + s[s.length/2]
 else
		return s[s.length/2]
 end
end

puts middle('I love ruby') #== 'e'
puts middle('Launch School') #== ' '
puts middle('Launch') #== 'un'
puts middle('Launchschool') #== 'hs'
puts middle('x') #== 'x'