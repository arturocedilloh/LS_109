def triangle(side)
  (1..side).each do |i|
    puts "#{' '*(side - i)}  #{'*' * i}"
  end
end

triangle(10)
