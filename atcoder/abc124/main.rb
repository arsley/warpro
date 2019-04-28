# B

# _ = gets
# h = gets.chomp.split.map(&:to_i)
# m = h[0]
# c = 0
# h.each { |e| (c += 1; m = e) if e >= m }
# puts c

# C

s = gets.chomp.split('').map(&:to_i)
c1, c2 = 0, 0

s.each_with_index do |e, i|
  c1 += 1 if e == [0, 1][i % 2]
  c2 += 1 if e == [1, 0][i % 2]
end

puts [c1, c2].min
