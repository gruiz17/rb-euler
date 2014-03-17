require_relative 'numbers.rb'

digits = p_8_number.gsub(/\n/,'').split('').map{|n| n.to_i}

product_array = []

i = 0
while i < 996
  product_array << digits[i..i+4].reduce(:*)
  i += 1
end

puts product_array.max
