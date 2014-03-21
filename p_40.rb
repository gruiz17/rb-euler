nums = (1..1000000).to_a.map{|i| i.to_s}.join

puts [nums[0],nums[9],nums[99],nums[999],nums[9999],nums[99999],nums[999999]].map{|s| s.to_i}.reduce(:*)
