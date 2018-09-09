puts gets.not_nil!.split.map{ |i| i.to_i }.reduce { |a, i| a * i } % 2 != 0 ? "Yes" : "No"
