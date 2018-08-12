# A
# n = gets.to_i
# puts n.odd? ? n * 2 : n

# B
# gets
# a = gets.chomp!.split.map(&:to_i)
# puts a.max - a.min

# C (unsolved)

n = gets.to_i
a = gets.chomp!.split.map(&:to_i)
t = []
a.each_with_index do |n, i|
  t << (n - (i + 1))
end
s = t.sum
