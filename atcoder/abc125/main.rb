# A

# a, b, t = gets.chomp.split.map(&:to_i)
# puts b * (t / a)

# B

# n = gets.chomp.to_i
# v = gets.chomp.split.map(&:to_i)
# c = gets.chomp.split.map(&:to_i)
#
# vc  = v.zip(c)
# max = 0
# vc.each { |e| d = e[0] - e[1]; max += d > 0 ? d : 0 }
# puts max

# C
# Runtime Error

def recursive(val, arr, i, lr)
  @memo_l = []
  @memo_r = []

  if arr.length == 0
    return val
  else
    if lr == 'l'
      return @memo_l[i] ||= val.gcd(recursive(arr[0], arr[1..-1], i + 1, lr))
    else
      return @memo_r[i] ||= val.gcd(recursive(arr[0], arr[1..-1], i + 1, lr))
    end
  end
end

_ = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
gcds = []

a.each_with_index do |_, i|
  gcds << recursive(0, a[0...i], i, 'r').gcd(recursive(0, a[i+1..-1], i + 1, 'l'))
end

puts gcds.max
