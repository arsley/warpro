# A
# puts gets.tap { |s| s[3] = '8' }.chomp

# B
# N = gets.to_i
# d = []
# N.times do
#   input = gets.to_i
#   d << input unless d.include? input
# end

# d.sort!
# d << -1 # guard
# count = 1
# d.each_with_index { |e, i| e <= d[i + 1] ? count += 1 : break }
# puts count

# C
N, y = gets.chomp.split.map(&:to_i)
y /= 1000
a, b, c = 0, 0, 0

N.times do |i|
  case
  when y - 10 >= 0
    a += 1
    y -= 10
  when y - 5 >= 0
    b += 1
    y -= 5
  when y - 1 >= 0
    c += 1
    y -= 1
  else
    a, b, c, = -1, -1, -1
  end
end

puts "#{a} #{b} #{c}"
