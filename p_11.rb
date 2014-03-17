require_relative 'numbers.rb'

grid = p_11_number.to_s.split("\n")

num_arr = []

grid.each do |row|
  num_arr << row.split(" ").map{|s| s.to_i}
end

product_arr = []

i, j = 0,0

while i < num_arr.length
  while j < num_arr[i].length-4
    if (j+3 < num_arr[i].length)
      right_prod = num_arr[i][j..j+3].reduce(:*)
      product_arr << right_prod
    end
    if (i+3 < num_arr.length) && (j+3 < num_arr[i].length)
      dr_prod = [num_arr[i][j],num_arr[i+1][j+1],num_arr[i+2][j+2],num_arr[i+3][j+3]].reduce(:*)
      product_arr << dr_prod
    end
    if (i+3 < num_arr.length)
      down_prod = [num_arr[i][j],num_arr[i+1][j],num_arr[i+2][j],num_arr[i+3][j]].reduce(:*)
      product_arr << down_prod
    end
    if (i+3 < num_arr.length) && (j-3 >= 0)
      dl_prod = [num_arr[i][j],num_arr[i+1][j-1],num_arr[i+2][j-2],num_arr[i+3][j-3]].reduce(:*)
      product_arr << dl_prod
    end
    j += 1
  end
  j = 0
  i += 1
end

puts product_arr.max
