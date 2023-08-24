def palindrome(string)
	if string == string.reverse
		return true
	else
		puts "String is not a palindrome."
	end
end

palindrome('madam')
palindrome('Madam')
palindrome("madam i'm adam")
palindrome('356653')