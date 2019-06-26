def fibonacci(n)
  return 2 if n == 2
  return 1 if n == 1
  return 0 if n <= 0
  fibonacci(n - 1) + fibonacci(n - 2)
end

puts Array.new(33) { |i| fibonacci(i) }.select(&:even?).sum
#=> 4613732
