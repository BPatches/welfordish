require "./Welford.rb"

w=Welford.new(10)
IO.foreach("testdata-200000-10.dat")do|l|
  w.newData(l.to_f)
end
puts w.xBar
puts w.var/w.i
w.getAutoCor.each do |j| 
  puts j
end
