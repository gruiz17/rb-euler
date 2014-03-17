def all_divisible n
  (11..20).each do |number|
    if n % number != 0
      return false
    end
  end
  return true
end

final = 20
while !all_divisible(final)
  final += 20
end

puts final
