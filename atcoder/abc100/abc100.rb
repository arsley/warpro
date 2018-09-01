# input template
#
gets.chomp.split.map(&:to_i)
# gets.chomp

# ABC100 A
# a, b = gets.chomp!.split.map(&:to_i)
# if a <= 8 && b <= 8
#   puts 'Yay!'
# else
#   puts ':('
# end

# ABC100 B
# d, n = gets.chomp.split.map(&:to_i)
# a = 100**d * n
# if [100, 100**2, 100**3].include?(a)
#   puts a + 100**d
# else
#   puts a
# end
#
# puts [100, 100**2, 100**3].include?(a) ? a + 100**d : a

# ABC100 C
gets
a = gets.chomp.split.map(&:to_i)
c = 0
a.each do |t|
  loop do
    break if t[-0] == 1
    t >>= 1
    c  += 1
  end
end

puts c
