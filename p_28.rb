def spiral_sum(n)
  sum = 0
  count = 2
  corners = 0
  corner_arr = []
  interval = 2
  arr = (1..n*n).to_a
  location = 0
  while location < n*n
    sum += arr[location]
    location += count
    corners += 1
    if corners == 4
      corners = 0
      count += 2
    end
  end
  return sum
end

puts spiral_sum(1001)
