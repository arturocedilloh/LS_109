def repeater(words)
  result = ''
  words.each_char {|word| result << word * 2}
  result
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''
