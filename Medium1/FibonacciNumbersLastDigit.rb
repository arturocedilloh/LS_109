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
#       SET fib equals 1
#       SET fib1 equals 1
#       SET fib2 equals 1
#     ELSE
#       SET fib1 equals fib2
#       SET fib2 equals fib
#       SET fib equals fib1 + fib2
#     END
#   END
#
#   RETRUN last digit of fib, by converting fib to string, then array,
#           getting last element of array and converting back to int
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

  fib.to_s.chars[-1].to_i
end
p fibonacci(20)
p fibonacci(100)
