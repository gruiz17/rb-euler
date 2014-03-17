require_relative 'utilities.rb'

sum = 0
(2..2000000).each do |i|
  if is_prime(i)
    sum += i
  end
end

puts sum
