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