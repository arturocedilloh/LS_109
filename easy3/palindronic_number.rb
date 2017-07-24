def palindromic_number?(num)
  reversed_array = []
  array = num.to_s.chars
  array.count.times do
    reversed_array << array.pop
  end
  reversed_num = reversed_array.join
  num.to_s == reversed_num
end

p palindromic_number?(34543) #== true
p palindromic_number?(123210) #== false
p palindromic_number?(22) #== true
p palindromic_number?(5) #== true
