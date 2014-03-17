sum = 0
prev = 1
curr = 2
while curr < 4000000
  if curr % 2 == 0
    sum += curr
  end
  tmp = curr
  curr = prev + curr
  prev = tmp
end

puts sum
