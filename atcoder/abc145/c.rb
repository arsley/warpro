n = gets.chomp.to_i
p = []
n.times { p << gets.chomp.split.map(&:to_i) }

r_sum = 0
allroutes = p.permutation.to_a

allroutes.each do |route|
  route.each_with_index do |place, i|
    next if i.zero?

    x1, y1 = place[0], place[1]
    x2, y2 = route[i - 1][0], route[i - 1][1]
    r_sum += Math.sqrt((x1 - x2)**2.to_f + (y1 - y2)**2.to_f)
  end
end

puts r_sum / allroutes.size
