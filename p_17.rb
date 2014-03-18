def num_to_string n
  final_str = ""
  ones_map = {"0"=>"","1"=>"one", "2"=>"two", "3"=>"three","4"=>"four","5"=>"five","6"=>"six","7"=>"seven","8"=>"eight","9"=>"nine"}
  tens_map = {"0"=>"","2"=>"twenty", "3"=>"thirty","4"=>"forty","5"=>"fifty","6"=>"sixty","7"=>"seventy","8"=>"eighty","9"=>"ninety"}
  teens_map = {"0"=>"ten","1"=>"eleven", "2"=>"twelve", "3"=>"thirteen","4"=>"fourteen","5"=>"fifteen","6"=>"sixteen","7"=>"seventeen","8"=>"eighteen","9"=>"nineteen"}

  digits = n.to_s.split("")
  if n == 1000
    final_str = "onethousand"
  elsif digits.length == 3
    if digits[1] == "0" && digits[2] == "0"
      final_str << ones_map[digits[0]] << "hundred"
    elsif digits[1] == "1"
      final_str << ones_map[digits[0]] << "hundredand" << teens_map[digits[2]]
    else
      final_str << ones_map[digits[0]] << "hundredand" << tens_map[digits[1]] << ones_map[digits[2]]
    end
  elsif digits.length == 2
    if digits[0] == "1"
      final_str = teens_map[digits[1]]
    else
      final_str << tens_map[digits[0]] << ones_map[digits[1]]
    end
  elsif digits.length == 1
    final_str = ones_map[digits[0]]
  end

  return final_str
end

total = 0

(1..1000).each do |number|
  total += num_to_string(number).length
end

puts total
