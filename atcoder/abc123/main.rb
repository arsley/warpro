# A
inputs = []
5.times { inputs << gets.to_i }
k = gets.to_i
puts inputs.combination(2).map { |e| e[1] - e[0] }.any? { |e| e > k } ? ':(' : 'Yay!'
