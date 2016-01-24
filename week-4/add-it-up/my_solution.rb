# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input:  Array of numbers
# Output: Sum of all numbers in array
# Steps to solve the problem.

# define variable called sum
# set sum equal to 0
# iterate over the array
# add each number in the array to the sum
# return the sum

# 1. total initial solution

def total(array)
  sum = 0
  array.each do |x|
    sum = sum + x
  end
  sum
end

# 3. total refactored solution

def total(array)
  array.inject {|sum, x| sum + x}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: A sentence made up of the strings
# Steps to solve the problem.
# define variable "sentence" that is an empty string
# iterate over the array
# pass each word into the sentence
# return the sentence

# 5. sentence_maker initial solution

def sentence_maker(words)
  sentence = ''
  words[0].capitalize!
  words.each do |x|
    sentence = sentence + x.to_s + ' '
  end
  sentence = sentence.chop + "."
end



# 6. sentence_maker refactored solution

def sentence_maker(words)
  words = words.join(' ').capitalize + "."
end