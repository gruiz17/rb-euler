def is_prime n
  if (n == 2)
    return true
  end
  (2..Math.sqrt(n).to_i).each do |number|
    if n % number == 0
      return false
    end
  end
  return true
end

def triangle n
  return ((0.5)*n*(n+1)).to_i
end
