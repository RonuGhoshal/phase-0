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
    while @array.length > 1
      @array.each_with_index do |x, i|
        if @symbols.include?(x)
          @result = calculate(@array[i-2], @array[i-1], x)
          @array.slice!(i-2..i)
          @array.insert((i-2), @result)
          break
        end
      end
    end
    @array.join.to_i
  end

  def calculate(a, b, method)
    a = a.to_i
    b = b.to_i
    case method
      when "+"
        a + b
      when "-"
        a - b
      when "*"
        a * b
      end
  end

end

# 4. Refactored Solution






# Reflection