def palindrome(int)
	return false if int.negative?

	reversed = int.to_s.reverse.to_i
	reversed == int
end


p palindrome(34543)
p palindrome(123210)
p palindrome(22)
p palindrome(55)