
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

def find_fibonacci_index_by_length(length)
  index = 1
  loop do
    number = fibonacci(index)
    break if number.to_s.size >= length
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(9)
