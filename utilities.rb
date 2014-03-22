def fib_sequence(n)
  prev = 1
  curr = 2
  fibArr = [1]
  while curr < n
    tmp = curr
    fibArr << curr
    curr = prev + curr
    prev = tmp
  end
  return fibArr
end

def is_prime n
  if (n == 0 || n == 1)
    return false
  end
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

def letter_map
  char_map = {}
  ("A".."Z").to_a.each do |char|
    char_map[char] = ("A".."Z").to_a.index(char) + 1
  end
  return char_map
end
