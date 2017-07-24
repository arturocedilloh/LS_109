DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  array = string.chars
  positive = true
  if array.first == '-'
    positive = false
    clean_array = array.drop(1)
  elsif array.first == '+'
    positive = true
    clean_array = array.drop(1)
  else
    clean_array = array
  end

  digits = clean_array.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  if positive
    value
  else
    value * -1
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
