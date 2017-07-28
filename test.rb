def fibonacci(n)
  fib1 = 0
  fib2 = 0
  fib = 0

  (1..n).each do |num|
    if num <= 2
      fib = 1
      fib1 = 1
      fib2 = 1
    else
      fib1 = fib2
      fib2 = fib
      fib = fib1 + fib2
    end
  end

  fib.to_s.chars[-1].to_i
end
p fibonacci(15)
p fibonacci(20)
p fibonacci(100)
p fibonacci(100001)
