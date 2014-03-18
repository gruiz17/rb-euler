require 'open-uri'

letter_map = {}
("A".."Z").to_a.each do |char|
  letter_map[char] = ("A".."Z").to_a.index(char) + 1
end

names = open("http://projecteuler.net/project/names.txt").read.gsub(/,|\"/, " ").split(" ").sort

score_arr = []

names.each do |name|
  sum = 0
  name.each_char do |char|
    sum += letter_map[char]
  end
  score_arr << sum * (names.index(name) + 1)
end

puts score_arr.reduce(:+)
