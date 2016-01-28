# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# input: array, minimum size, optional argument
# output an array of the specified length, padded with the optional argument
# steps:
# DEFine a method
#   IF array's length >= minimum size
#     RETURN array
#   ELSE (if array's length is less than minimum size)
#     WHILE array's length < minimum size
#        PUSH optional argument to the array
#     END
#     RETURN a new array with length of the minimum size
#   END
# END method

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    array
  else
    while array.length < min_size
      array.push (value)
    end
    array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
    new_array.push(x)
  end
  if array.length >= min_size
    new_array
  else
    while new_array.length < min_size
      new_array.push (value)
    end
    new_array
  end
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
  else
    array.push (value) until array.length >= min_size
  end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |x|
    new_array.push(x)
  end
  if array.length < min_size
    new_array.push (value) until new_array.length >= min_size
  end
  new_array
end

# 4. Reflection

# We were initially very successful in breaking down the problem into small steps. This helped us quickly put together an initial solution, although it didn't pass all the tests, most of the logic was good.

# Translating the pseudocode into real code was fairly easy - when we wrote our pseudocode, we tried to stick to a similar structure as we would in the actual code.

# Our initial solution was not passing all the tests. The destructive method worked fine, but our non-destructive solution seemed to keep modifying the original array being passed in. At this point we began trying a variety of solutions - many failed before we came to one that worked. It seems that our error involved trying to ue the "=" operator to pass the initial array into the new array. Our code only passed once we used .each to iterate on the original array and pass objects in one at a time. I believe this has something to do with the Object ID but I will need to read up on this further to fully understand it.

# Our refactoring was pretty simple - we just switched the "while" loop to a one-line "until" statement. I tend to prefer the structure of "while" loops since they have a clear beginning and end - however, we refactored to "until" for the sake of shortening the code. I also moved our return statement outside of the if/else loop, so as to not have to repeat it twice.

# To the best of my understanding: a destructive method modifies the existing data being passed into it, while a non-destructive method does not modify the existing data being passed in.

