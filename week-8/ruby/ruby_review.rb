# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# 0, 1, 0 +1 = 1,  1+1 = 2, 2+1 = 3, 3 + 2 = 5


# Initial Solution

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

# Refactored Solution







# Reflection