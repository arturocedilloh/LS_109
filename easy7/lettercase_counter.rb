def letter_case_count(words)
  result = { :lowercase => 0, :uppercase => 0, :neither => 0}
  words.chars.each do |word|
    if ('a'..'z').include?(word) || ('A'..'Z').include?(word)
      word.downcase! ? result[:uppercase] += 1 : result[:lowercase] += 1
    else
      result[:neither] += 1
    end
  end
  result
end
p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
