def product
  (1..999).each do |i|
    (2..1000).each do |j|
      if i + j + Math.sqrt(i*i + j*j) == 1000
        return i*j*Math.sqrt(i*i + j*j)
      end
    end
  end
end

puts product
