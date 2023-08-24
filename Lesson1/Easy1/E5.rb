def print_in_box(message)
	horizontal_rule = "+#{'-' * (message.size + 2)}+"
	empty_line = "|#{' ' * (message.size + 2)}|"

	puts horizontal_rule
	puts empty_line
	puts "| #{message} |"
	puts empty_line
	puts horizontal_rule
end

print_in_box('Might get lucky tonight.')
print_in_box("Inside out and upside down, I'm 'bout to show all you folks what it's all about. Now it's time for us to get on the mic and make this mothafukkin party hype.")

def print_in_box_truncate(message)
  outer = message.length > 76 ? "+#{'-' * (78)}+" : "+#{'-' * (message.length+2)}+"
  inner = message.length > 76 ? "|#{' ' * (78)}|" : "|#{' ' * (message.length+2)}|"
  message = message.length > 76 ? "| #{message[0..72]}... |" : "| #{message} |"

  puts outer
  puts inner
  puts message
  puts inner
  puts outer
end

print_in_box_truncate('Might get lucky tonight.')
print_in_box_truncate("Inside out and upside down, I'm 'bout to show all you folks what it's all about. Now it's time for us to get on the mic and make this mothafukkin party hype.")

def print_in_box_full(message)
  outer = message.length > 76 ? "+#{'-' * (78)}+" : "+#{'-' * (message.length+2)}+"
  inner = message.length > 76 ? "|#{' ' * (78)}|" : "|#{' ' * (message.length+2)}|"
  times = 4 + (message.length/76.0).ceil
  split_message_arr = []

  if message.length <= 76
    split_message_arr << "| #{message} |"
  else
    split_message_arr = message.scan(/.{1,76}/)
    split_message_arr.each_with_index do |str, i| 
      str.prepend("| ")
      if i == (split_message_arr.length - 1)
        str << "#{' ' * (78-split_message_arr[i].length)} |"
      else str << " |" end
    end
  end

  for i in (1..times) do
    if i == 1 || i == times
      puts outer
    elsif i == 2 || i == (times-1)
      puts inner
    else 
      puts split_message_arr[0]
      split_message_arr.shift
    end
  end
end

print_in_box_full('Might get lucky tonight.')
print_in_box_full("Inside out and upside down, I'm 'bout to show all you folks what it's all about. Now it's time for us to get on the mic and make this mothafukkin party hype.")

