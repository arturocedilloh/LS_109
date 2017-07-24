def fizzbuzz(num1, num2)
result = []
(num1..num2).each do |item|
  if item % 5 == 0 && item % 3 == 0
    result << "FizzBuzz"
  elsif item % 3 == 0
    result << "Fizz"
  elsif item % 5 == 0
    result << "Buzz"
  elsif
    result << item
  end
end
  print result.join(',')
end

fizzbuzz(1, 15)
