def is_prime n
  (2..Math.sqrt(n).to_i).each do |number|
    if n % number == 0
      return false
    end
  end
  return true
end
