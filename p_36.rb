def is_double_palin(n)
  return n.to_s == n.to_s.reverse && n.to_s(2) == n.to_s(2).reverse
end

i = 0
sum = 0

while i < 1000000
  if is_double_palin(i)
    sum += i
  end
  i += 1
end

puts sum
