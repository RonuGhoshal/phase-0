# Factorial

# I worked on this challenge with Saralis Rivera.


# Your Solution Below
def factorial(num)
  if (num == 0)
    product = 1
  else
    product = num
    while num > 1
      product = product * (num-1)
      num = num-1
    end
  end
 product
end

# If num is equal to 0
# Return 1
# Else
# set product equal to num
# While num is greater than 1
# set product equal to product * num-1
# set num equal to num-1
# end
# end
# #