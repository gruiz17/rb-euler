require_relative 'utilities.rb'


count = 2
corners = 0
corner_count = 1
interval = 2
location = 1
side_length = 1

prime_numbers = 0

while ((prime_numbers).to_f / (corner_count).to_f > 0.1 && corners != 4) || prime_numbers == 0
  location += count
  corner_count += 1
  if is_prime(location)
    prime_numbers += 1
    puts prime_numbers
  end
  corners += 1
  if corners == 4
    side_length += 2
    corners = 0
    count += 2
  end
end

puts side_length + 2
