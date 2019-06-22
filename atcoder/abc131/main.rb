# A

# s = gets
# s = s.chars
# prev = s.shift
# res = 'Good'
# s.each do |e|
#   if prev == e
#     res = 'Bad'
#     break
#   end
#   prev = e
# end
#
# puts res

# B

# n, l = gets.split.map(&:to_i)
# flavors = []
# n.times do |i|
#   flavors << l + i
# end
#
# res =
#   if l.negative?
#     n <= l.abs ? flavors.inject(:+) + flavors.max.abs : flavors.inject(:+)
#   else
#     flavors[1..-1].inject(:+)
#   end
#
# puts res

# n, l = gets.split.map(&:to_i)
# flavors = Array.new(n) { |i| l + i }
# puts flavors.inject(:+) - flavors.min_by(&:abs)

# C

a, b, c, d = gets.split.map(&:to_i)

a -= 1
lcm = c.lcm(d)
f = a - a / c - a / d + a / lcm
g = b - b / c - b / d + b / lcm
puts g - f
