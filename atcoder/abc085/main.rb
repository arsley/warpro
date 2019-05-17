# A
# puts gets.tap { |s| s[3] = '8' }.chomp

# B
N = gets.to_i
d = []
N.times do
  input = gets.to_i
  d << input unless d.include? input
end

d.sort!
d << -1 # guard
count = 1
d.each_with_index { |e, i| e <= d[i + 1] ? count += 1 : break }
puts count
