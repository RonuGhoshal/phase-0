# Calculate the mode Pairing Challenge

# I worked on this challenge with Luis Ybarra

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An array including the mode (most frequent value or values
# What are the steps needed to solve the problem?

# DEFINE a method "mode" that accepts one argument ("array")
# create an empty hash
# iterate over the array
# for each element in the array, if the element does not exist as key in the hash - pass the element in as a key, and its number of occurences as the value
# iterate over the hash and find the biggest value(s) - then pass them into a new array
# return the new array
#END


# 1. Initial Solution

def mode(array)
  h = Hash.new
  array.each do |element|
    if h[element] == nil
      h[element] = 1 # set initial count to 1
    else
      h[element] = h[element] + 1
    end
  end
  result = Array.new
  quantity = (h.values.max)
  h.each do |key,value|
    if value == quantity
      result << key
    end
 end
 result
end

# 3. Refactored Solution

def mode(array)
  h = Hash.new(0)
  array.each do |element|
    h[element] += 1
  end
  result = Array.new
  h.each do |key,value|
    if value == h.values.max
      result << key
    end
 end
 result
end


# 4. Reflection

# We decided to use a hash since we wanted to store key-value pairs - the keys being each # element that appeared in the array, and the value being the number of times a given
# element appeared.

# This one was definitely easier to pseudocode than the previous problem. My pair and I
# were able to talk out our ideas clearly and get some basic steps together. Then while
# writing our actual code, we were able to expand on the ideas we had pseudocoded.

# Initially we were unable to get our tests to pass when their were multiple modes. We were able to resolve this by using this loop:
#  h.each do |key,value|
#    if value == h.values.max
#      result << key
#    end

# We used .each and also .values and .max (the last two being new to me). While refactoring # and searching for methods, I also discovered a few additional methods that could be used # to simplify this code - .each_with_object seems like it could be very helpful. I did not use it # in my refactored soluton as I didn't feel comfortable with it to the point where I'd be able to # explain what the code was actually doing.
