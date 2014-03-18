puts (1..1000).to_a.map{|i| i**i}.reduce(:+).to_s[-10..-1]
