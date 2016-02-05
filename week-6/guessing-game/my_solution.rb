# Build a simple guessing game


# I worked on this challenge [by myself]
# I spent 1 hour on this challenge.

# Pseudocode
#  DEFINE guess method(accept one argument -also an integer. let's call it guess)
#   IF guess is less than answer
#      return :low
#    ELSE IF user guess is more than answer
#      return :high
#    ELSE
#      return :correct
#  END

#  DEFINE solved? method(takes no arguments)
#     IF most recent guess was correct
#       return true
#     ELSE
#       return false
#     END

#  END class



# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
    (@most_recent_guess == :correct) ? true : false
  end

  def guess(guess)
    @guess = guess
    if @guess < @answer
      @most_recent_guess = :low
    elsif @guess > @answer
      @most_recent_guess = :high
    else
      @most_recent_guess = :correct
    end
  end
end
=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def solved?
    (@most_recent_guess == :correct) ? true : false
  end

  def guess(guess)
    @guess = guess
    if @guess < @answer
      @most_recent_guess = :low
    else
     @guess > @answer ? (@most_recent_guess = :high) : (@most_recent_guess = :correct)
    end
  end
end

# Reflection

# Instance variables behave like the characteristics of real world objects in the sense that they
# represent the property of one particular object. For example - all cars have "gas mileage" as
# one of their properties. However, a Toyota Corolla would have a specific "gas mileage" value
# that is unique to itself - this would be similar to an instance variable. Instance methods can only
# be accessed by a particular instance of a class. A good example here would be from this week's
# bingo board exercise. You have to call a number and check the number for each round of bingo,
# so call_number and check_number are instance methods.

# Flow control is essential for making sure that your program gets executed in the proper order.
# In this case, we want to make sure that the game is not "solved" unless the most recent guess is
# correct. So, our if-else statement in the "guess" method does not assign :correct to
# @most_recent_guess until we know that the guess is equal to the answer.

# Returning symbols rather than strings is useful for the purpose of saving memory and
# executing a program faster. Also, symbols are immutable - meaning they cannot be changed.
# This can save a programmer from the troubles that might arise from inadvertantly changing
# a string.