# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: sides method should return the number of sides, roll method should return a random

# string from
#         the array of strings we input
# Steps:

# DEFINE class Die

#   DEFINE initialize method (taking one argument as input)
#     declare instance variable "labels" and pass it the array of strings we input
#   END method

#   DEFINE sides method
#     return the LENGTH of the array of strings
#   END

#   DEFINE roll method
#     return a random string from the array of strings
#   END

# END class


# Initial Solution

class Die
  def initialize(labels)
    if labels.length == 0
      raise ArgumentError.new("This is an empty array!")
    end
    @labels = labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels[rand(0..(@sides-1))]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @sides = labels.length
    if @sides == 0
      raise ArgumentError.new("This is an empty array!")
    end
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(0..(@sides-1))]
  end
end

# Reflection

# The main difference between this class and the previous die class was that this time, our input
# was an array of strings rather than an integer. The logic was mostly the same - we just had to calculate
# the length of that array in our initialize method, and then in the roll method, we had to calculate a random
# number that could represent the array INDEX. So, in a six-element array, we would calculate a random
# number between 0..5 rather than 1..6.

# This exercise was a good example of how it can be very convenient to write easily modifiable code. We barely
# had to change anything from the previous die class.

# I didn't learn any new methods on this challenge, but got some good practice using rand.

# As far as concepts related to classes, I also got more comfortable using instance variables and initializing classes.

