require_relative 'utilities.rb'

count, infinity = 1, 2

while count < 10001
  infinity += 1
  if is_prime(infinity)
    count += 1
  end
end

puts infinity
