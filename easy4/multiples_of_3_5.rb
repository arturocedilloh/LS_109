def multisum(num)
  sum = 0
  (num).times do |i|
    if (i + 1) % 3 == 0 || (i + 1) % 5 == 0
      sum += (i + 1)
    end
  end
sum
end

p multisum(3) #== 3
p multisum(5) #== 8
p multisum(10) #== 33
p multisum(1000) #== 234168
