# I worked on this challenge by myself
# This challenge took me [2] hours.

# Pseudocode

# 0, 1, 0 +1 = 1,  1+1 = 2, 2+1 = 3, 3 + 2 = 5


# Initial Solution
=begin
def is_fibonacci?(num)
  if (num == 0) || (num == 1)
    return true
  end
  sum = 0
  x = 0
  y = 1
  while sum <= num
    sum = x + y
    x = y
    y = sum
    if sum == num
      return true
    end
  end
  false
end
=end
# Refactored Solution

def is_fibonacci?(num)
  sum = 0
  x = 0
  y = 1
  while sum <= num
    return true if num == sum
    sum = x + y
    x = y
    y = sum
  end
  false
end

# Reflection

=begin

This helped me solidify my understanding of flow control. I believe
there's a way to solve this recursively but the solution I came up with
caused my Terminal to freeze up! I plan to study recursion more to
see when this is a good technique to use.


=end