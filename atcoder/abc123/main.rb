# A
# inputs = []
# 5.times { inputs << gets.to_i }
# k = gets.to_i
# puts inputs.combination(2).map { |e| e[1] - e[0] }.any? { |e| e > k } ? ':(' : 'Yay!'

# B
inputs = []
5.times { inputs << gets.to_i }
puts inputs.reduce(0) { |mem, e| e % 10 == 0 ? mem + e : mem + e + (10 - e % 10) } - inputs.map { |e| e % 10 == 0 ? 0 : 10 - e % 10 }.max

