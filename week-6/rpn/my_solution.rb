# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class RPNCalculator

  def initialize
  end

  def evaluate(input)
    @symbols = ["+", "-", "*"]
    @array = input.split(' ')
    @array.each_with_index do |x, index|
      if @symbols.include?(x)
      if x == "+"
      @sum = add(@array[index - 2], @array[index - 1])
      (@array[index - 2], @array[index - 1]) = @sum

      p @array
      end
    end
  end
    end

  def subtract(a, b)
    return (a - b).to_i
  end

  def add(a, b)
    (a.to_i + b.to_i)
  end

  def multiply(a, b)
    return (a * b).to_i
  end

end

rpn =  RPNCalculator.new
rpn.evaluate("70 10 4 + 5 * -")

# 4. Refactored Solution






# Reflection