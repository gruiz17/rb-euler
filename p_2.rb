require_relative 'utilities.rb'

puts (fib_sequence(4000000).delete_if &:odd?).reduce(:+)
