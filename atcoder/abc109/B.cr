n : Int32
n = gets.not_nil!.to_i
words = [] of String
n.times do
  words << gets.not_nil!
end
checked = [] of String
checked << words.shift
p = ->(words : Array(String), checked : Array(String)) do
  words.each do |w|
    if checked.includes? w
      puts "No"
      return
    end
    if w[0] != checked.last[-1]
      puts "No" 
      return
    end
    checked << w
  end
  puts "Yes"
end

p.call(words, checked)
