def right_triangle(n)
	n.times { |i| str = ('*' * (i + 1)).rjust(n, ' ')
  puts str
  }
end

right_triangle(3)
right_triangle(21)

# upside down
def right_triangle(n)
  n.times do |i|
    str = (' ' * (i)).ljust(n, '*')
    puts str
  end
end

# any orientation
# Assuming a grid with corners labeled as such:
# 1  2
# 3  4
# And that the corner argument will always be 1, 2, 3, or 4:

def triangle(n, corner=4)
  stars = [1, 2].include?(corner) ? n : 1

  n.times do |i|
    string = '*' * stars
    string = string.rjust(n, ' ') if [2, 4].include?(corner)
    puts string
    stars -= 1 if [1, 2].include?(corner)
    stars += 1 if [3, 4].include?(corner)
  end
end