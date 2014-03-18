require 'open-uri'
require_relative 'utilities.rb'

names = open("http://projecteuler.net/project/names.txt").read.gsub(/,|\"/, " ").split(" ").sort

score_arr = []
letters = letter_map
names.each do |name|
  sum = 0
  name.each_char do |char|
    sum += letters[char]
  end
  score_arr << sum * (names.index(name) + 1)
end

puts score_arr.reduce(:+)
