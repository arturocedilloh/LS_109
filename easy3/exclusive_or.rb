def xor?(bool1, bool2)
  true_count = 0
  true_count = ([bool1, bool2].select {|value| value == true}).count
  true_count == 1 ? true : false
end

p xor?(5.even?, 4.even?) #== true
p xor?(5.odd?, 4.odd?) #== true
p xor?(5.odd?, 4.even?) #== false
p xor?(5.even?, 4.odd?) #== false
