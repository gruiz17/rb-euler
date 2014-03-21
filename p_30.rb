fifth_power_nums = []
e = 5

(10..(9**e * (e-1))).each do |i|
  if i.to_s.split("").map{|s| (s.to_i)**e}.reduce(:+) == i
    fifth_power_nums << i
  end
end

puts fifth_power_nums.reduce(:+)
