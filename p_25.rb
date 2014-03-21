require_relative 'utilities.rb'

big_arr = fib_sequence(10**1000)

i = -1
found = false

while !found
  if big_arr[i].to_s.length < 1000
    found = true
    puts big_arr.length + i
  else
    i -= 1
  end
end
