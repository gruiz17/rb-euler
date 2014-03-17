def is_palindrome n
  digits = n.to_s.split("")
  left, right = 0, digits.length-1
  while left < right
    if digits[left] != digits[right]
      return false
    end
    left += 1
    right -= 1
  end
  return true
end

palin_array = []
(100..999).each do |i|
  (100..999).each do |j|
    if is_palindrome(i*j)
      palin_array << i*j
    end
  end
end

puts palin_array.max
