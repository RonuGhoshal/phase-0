# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
#  DEFINE guess method(accept one argument -also an integer. let's call it guess)
#    Print "Guess what number I'm thinking of!"
#    set guess to the number the user enters
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



# Refactored Solution






# Reflection