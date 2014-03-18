require 'open-uri'
require_relative 'utilities.rb'

words = open("http://projecteuler.net/project/words.txt").read.gsub(/,|\"/, " ").split(" ")

triangle_array = (1..100).to_a.map{|i| triangle(i)}

triangle_count = 0

letters = letter_map

words.each do |word|
  word_val = 0
  word.each_char do |letter|
    word_val += letters[letter]
  end
  if triangle_array.include? word_val
    triangle_count += 1
  end
end

puts triangle_count
