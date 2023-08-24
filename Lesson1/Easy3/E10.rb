def uppercase?(string)
	string == string.upcase
end

p uppercase?('t')
p uppercase?('T')
p uppercase?('Four Score')
p uppercase?('FOUR SCORE')
p uppercase?('4SCORE!')
p uppercase?('')

def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

