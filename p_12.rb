require_relative 'utilities.rb'

def solution
  triangles = (1..100).to_a.map{|n| triangle(n)}
  triangles.each do |tri|
    div_count = 0
    (1..tri).to_a.each do |number|
      if (tri % number == 0)
        div_count += 1
      end
    end
    if div_count > 500
      return tri
    end
  end
end

puts "noo not yet"
