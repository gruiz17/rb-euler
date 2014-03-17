require_relative 'utilities.rb'

def prime_factors n
  factor_arr = []
  (2..Math.sqrt(n).to_i).each do |number|
    if is_prime(number) && (n % number == 0)
      factor_arr << number
    end
  end
  return factor_arr
end

puts prime_factors(600851475143).max
