# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input? An array of numbers (or strings)

# What is the output? (i.e. What should the code return?) The median value (defined as "the number separating the higher half of a data sample, a population, or a probability distribution, from the lower half.")

# What are the steps needed to solve the problem?

#  sort the array (smallest to largest)
#  IF the array length is odd
#  return the value midway through - for example, in an array of 7 numbers, the 4th value
#  would be midway through. this would be the value with index 3. Looking at a few cases,
#  we can see that the value midway through will have the index (array.length/2) using
#  integer division.
#  ELSE (if the array length is even)
#  IF any value in the array is a string
#   return the two values midway through
#   for an array of 8 numbers, these two values will be the 4th and 5th value - or indexes 3     #   and 4.
#   we can see that the pattern to get the indexes for these numbers will be:
#  (array.length/2 - 1) and (array.length/2)
#
#  ELSE
#     return the mean of the two values midway through
#     to calculate the mean, we add these two values and divide by two.
#   END
# END



# 1. Initial Solution

def median(array)
  array.sort!
  if array.length % 2 != 0
    return array[array.length / 2 ]
  else
    if array.any? {|element| element.is_a? String}
      result = []
      result.push array[((array.length)/2 - 1)..((array.length)/2)]
    else
      return (array[((array.length)/2 - 1)] + array[(array.length)/2]) / 2.0
    end
  end
end


# 3. Refactored Solution

def median(array)
  array.sort!
  result = []
  halfway_index = (array.length/2)
  if array.length % 2 != 0
    result = array[halfway_index]
  else
    if array.any? {|element| element.is_a? String}
      result.push array[(halfway_index - 1)..halfway_index]
    else
      result = (array[(halfway_index- 1)] + array[halfway_index]) / 2.0
    end
  end
end


