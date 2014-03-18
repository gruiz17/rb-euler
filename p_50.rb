require_relative 'utilities.rb'

def primes_to n
  prime_arr = []
  (2..n-1).each do |num|
    if is_prime(num)
      prime_arr << num
    end
  end
  return prime_arr
end

primes_to_million = primes_to(1000000)

i = primes_to_million.length-1
total = primes_to_million.reduce(:+)
while total > 1000000
  total -= primes_to_million[i]
  i -= 1
end

i = 0
while !is_prime(total)
  total -= primes_to_million[i]
  i += 1
end

puts total
