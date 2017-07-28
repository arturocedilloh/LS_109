# # Given integer n as input
# # Rules given
# # 1. return 1 if n is less than or equal to 2
# # 2. first 2 numbers equal 1
# # 3. from 3rd number each number is the sum of previous 2 numbers
#
# START
#   SET fib1 variable equal to 0
#   SET fib2 variable equal to 0
#   SET fib variable equal to 0
#
#   LOOP 1 to n with index idx
#     IF idx equals 1 or 2
#       fib equals 1
#       fib1 equals 1
#       fib2 equals 1
#     ELSE
#       fib1 equals fib2
#       fib2 equals fib
#       fib equals fib1 + fib2
#     END
#   END
#
#   RETRUN fib
# END

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

  fib
end
p fibonacci(20)
p fibonacci(100)
