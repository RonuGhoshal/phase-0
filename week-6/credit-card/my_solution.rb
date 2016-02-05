# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

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

