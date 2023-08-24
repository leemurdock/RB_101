def palindrome(string)
	if string == string.reverse
		return true
	else
		puts "String is not a palindrome."
	end
end

def real_palindrome(string)
	string = string.downcase.delete('^a-z0-9')
	palindrome(string)
end

palindrome('madam')
palindrome('Madam')
palindrome("madam i'm adam")
palindrome('356653')