def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3)/3
  p average
  case average
  when (90..100)
    'A'
  when (80..89)
    'B'
  when (70..79)
    'C'
  when (60..69)
    'D'
  else
    'F'
  end
end
p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
