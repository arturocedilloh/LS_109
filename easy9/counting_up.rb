def sequence(value)
  result = []
  1.upto(value) {|i| result << i}
  result
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
