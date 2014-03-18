require_relative 'numbers.rb'

puts p_13_number.each_line.inject(0){|sum, value| sum+value.to_i}.to_s[0..9]
