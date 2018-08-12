require 'benchmark'

# ビット位置判定のベンチマーク

val = 1_000_000_000
times = 1_000_000
c1 = 0
c2 = 0
Benchmark.bm 10 do |r|
  r.report 'original' do
    times.times do
      c1 = val.to_s(2).split('1')[-1].length
    end
  end
  r.report 'newVersion' do
    t = val
    c = 0
    loop do
      break if t[-0] == 1
      t >>= 1
      c += 1
    end
    c2 = c
  end
  r.report 'other' do
    val.to_s(2)[/0+\z/].size
  end
end

puts "#{c1} #{c2}"
