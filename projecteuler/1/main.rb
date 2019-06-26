puts (1...1000).to_a.select { |n| (n % 5).zero? || (n % 3).zero? }.sum
