# def running_total(array)
#   total = 0
#   new_array = array.map do |num|
#     total += num
#   end
# end

# def running_total(array)
#   sum1 = 0
#   new_array = array.each_with_object([]) do |num, sum|
#     sum << sum1 += num
#   end
# end

def running_total(array)
  sum1 = []
  array.inject do |sum, num|
    sum1 << sum + num
  end
  sum1
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
