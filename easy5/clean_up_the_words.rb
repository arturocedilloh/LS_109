def cleanup(sentence)
  ascii_lowercase = (97..122)
  ascii_upper = (65..90)
  result = sentence.chars.map do |letter|
    if ascii_lowercase.include?(letter.ord) || ascii_upper.include?(letter.ord)
      letter
    else
      letter = ' '
    end
  end
  result.join.squeeze(' ')
end

p cleanup("---what's my +*& line?")
