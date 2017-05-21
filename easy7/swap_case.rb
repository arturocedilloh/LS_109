def swapcase(words)
  words.chars.map do |word|
    (word.downcase! == nil) ? word.upcase : word.downcase
  end.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV')
