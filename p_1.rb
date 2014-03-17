final = 0
(3..999).each do |number|
  if (number % 3 == 0) || (number % 5 == 0)
    final += number
  end
end
puts final
