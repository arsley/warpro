# C
N, M = gets.chomp.split.map(&:to_i)
route = Array.new(N, 0)
M.times do
  a, b = gets.chomp.split.map(&:to_i)
  if a == 1
    route[b - 1] += 1
  elsif b == N
    route[a - 1] += 1
  end
end
puts route.include?(2) ? 'POSSIBLE' : 'IMPOSSIBLE'
