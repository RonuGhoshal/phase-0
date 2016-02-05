# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Alyssa Ransbury
# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: credit card number (integer, 16 digits)
# Output: true or false
# Steps:
# DEFINE class credit-card
#  DEFINE method double-array
#    SPLIT integer into array
#    ITERATE through array
#      DOUBLE all even index digits
#    RETURN edited array (instance variable)
#  END
# DEFINE method sum
#  ITERATE through array
#    IF number > 9
#      TURN number into string
#      SPLIT number into characters
#      TURN back into array (sub-array)
#    FLATTEN new array into larger array
#   ITERATE through array
#    ADD all numbers in array together (inject)
#   RETURN sum as integer (instance variable)
#  END
# DEFINE method check-card
#  IF sum is divisible by 10 (%10)
#    return TRUE
#  ELSE
#    RETURN false
#  END
# END

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit number")
    else
      @number = number
    end
  end

  def double_array
    @number_array = @number.to_s.split('')
    @doubled_array = []
    @number_array.each_with_index do |x,index|
      if index % 2 == 0
        @doubled_array << (2 * x.to_i)
      else
        @doubled_array << x.to_i
      end
    end
  end


  def sum
    @summed_array = @doubled_array.map {|x| x>9? (x.to_s.split('')) : x }.flatten.map {|x| x.to_i}.inject {|sum,y| sum + y}
  end


  def check_card
    double_array
    sum
    if @summed_array % 10 == 0
      true
    else
      false
    end
  end

end
=end
# Refactored Solution

class CreditCard

  def initialize(number)
    if number.to_s.length != 16
      raise ArgumentError.new("Please enter a 16 digit number")
    else
      @number = number
    end
  end

=begin
  def double_array
    @doubled_array = []
    @number.to_s.split('').each_with_index do |x,index|
      index % 2 == 0 ? (@doubled_array << (2 * x.to_i)) : (@doubled_array << (x.to_i))
    end
  end
=end

  def double_array
    @doubled_array = @number.to_s.split('').map!.with_index {|x, index| (index.even?) ? (2 * x.to_i) : (x.to_i) }
  end

  def sum
    @summed_array = @doubled_array.map {|x| x>9? (x.to_s.split('')) : x }.flatten.map {|x| x.to_i}.inject {|sum,y| sum + y}
  end


  def check_card
    double_array
    sum
    @summed_array % 10 == 0
  end

end

# Release 5: Reflection

# I would say that the most difficult aspect of this was trying to determine whether to use destructive
# or non-destructive methods. In our original code, we settled on making a new array (non-destructive)
# for the double_array method - however, we were able to refactor using map! (destructive).

# The new thing here to me was using both .map! and .with_index together. I was familiar with
# .each_with_index but didn't realize .map!.with_index would be so easy to use.

# Other than this new combination of methods, this solidified my understanding of when to
# call a method from within another method.


