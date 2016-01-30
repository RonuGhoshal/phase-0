# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself

# 0. Pseudocode

# What is the input? An array of test scores
# What is the output? (i.e. What should the code return?) A letter grade based on the
# average test score.
# What are the steps needed to solve the problem?
# DEFINE the method that takes one argument (an array of scores)
#   Declare a variable "average," set it to the sum of the scores divided by the number of
#   scores
#   return a letter grade based on the average
# END

#Initial Solution

def get_grade(scores)
  average = (scores.inject{|sum, x| sum + x}).to_f/scores.length
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else
    "F"
  end
end

