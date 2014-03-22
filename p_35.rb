require_relative 'utilities.rb'

def rotate_prime? n
  if n.to_s.length == 1 && is_prime(n)
    return true
  end
  if !((n.to_s =~ /[024568]/).nil?) || !is_prime(n)
    return false
  end
  original = n.to_s.split("")
  n_str = n.to_s.split("")
  tmp = n_str.shift
  n_str << tmp
  while n_str != original
    if !(is_prime(n_str.join.to_i))
      return false
    end
    first = n_str.shift
    n_str << first
  end
  return true
end

total = 0
i = 2
while i < 1000000
  if rotate_prime? i
    puts i
    total += 1
  end
  i += 1
end

puts total
