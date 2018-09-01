# A
a = gets.split.map(&:to_i)
puts (a[0] - 1) * (a[1] - 1)

# B (WA)
N = gets.to_i
c = 0
(1..N).each do |n|
 next unless n.odd?
 c += (1..n).count { |m| (n % m).zero? } == 8 ? 1 : 0
end
puts c
