# A
# _, k = gets.chomp.split.map(&:to_i)
# s = gets
# puts s.tap { |w| w[k - 1] = w[k - 1].downcase }

# B
s = gets
h = s[0..1].to_i
t = s[2..3].to_i
m = 1..12
case
when (h >= 0 && m.include?(t)) && (t >= 0 && m.include?(h))
  puts 'AMBIGUOUS'
when h >= 0 && m.include?(t)
  puts 'YYMM'
when t >= 0 && m.include?(h)
  puts 'MMYY'
else
  puts 'NA'
end
