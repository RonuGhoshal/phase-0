# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent 1 hour on this challenge.

# 0. Pseudocode

# Input: An integer greater than 0 (to represent the number of sides)
# Output: The "sides" method should output the number of sides, while the "roll" method
# should output a random number between 1 and the number of sides
# Steps:
# Declare a class "Die"
#   DEFine the Die.initialize method (taking one argument, for the number of sides)
#     IF the number of sides is less than 1
#       raise a new argument error
#     ELSE
#       declare an instance variable "@sides" and set it equal to the number being passed in to #       the initialize method
#     END
#  END
#
#  DEFINE the "Die.sides" method
#    return the @sides variable that we declared in the initialize method
#  END
#
#  DEFINE the "Die.roll" method
#    return a random number between 1 and the number of sides
#  END
#
# END the class

# 1. Initial Solution

class Die

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Number of sides must be 1 or more.")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end



# 3. Refactored Solution

class Die

  def initialize(sides)
    (sides < 1) ? (raise ArgumentError.new("Number of sides must be 1 or more.")) : (@sides = sides)
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end

end


# 4. Reflection

# An ArgumentError arises when you pass an argument that is not acceptable to your method.
# You would want to use one where your method requires a specific set of parameters and
# the method receives an argument that does not meet these parameters. For example, if your
# method required the user to enter their birthdate and they entered "cake," this would be a
# good place to raise an ArgumentError.

# The only new Ruby method I used here was "rand" - if this is considered a method. It seems
# easy to use, and I think it will be very useful in the future.

# A class in Ruby is a way of grouping related objects. You can use a class whenever you
# want to group objects that may be different but share certain functions or characteristics. I
# came across a good example that describe the concept of a "Vehicle" as a class - any
# vehicle may have wheels, horsepower, fuel capacity, etc... your vehicle and my vehicle
# would be considered separate instances of the class Vehicle.

# A local variable can only be accessed within the method where it was defined, while an
# instance variable can be accessed through one instance of a class.