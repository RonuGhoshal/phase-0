# Leap Years

# I worked on this challenge with Alyssa Ransbury.


# Your Solution Below

def leap_year?(year)
  if year%4 != 0
    false
  elsif (year %100 == 0) &&  (year %400 != 0)
    false
  else true
  end
end