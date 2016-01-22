# Calculate a Grade

# I worked on this challenge with Alyssa Ransbury.


# Your Solution Below

def get_grade(average)
  if average.between?(90, 100)
  "A"
  elsif average.between?(80, 89)
  "B"
  elsif average.between?(70, 79)
  "C"
  elsif average.between?(60, 69)
  "D"
  elsif average < 60
  "F"
  end
end