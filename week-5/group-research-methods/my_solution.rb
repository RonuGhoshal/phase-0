# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution

# Pseudocode:
# Create new empty array (this is what we will return at the end)
# iterate on "array" - check each word in array for "letter"
# for each word - if it contains "letter", pass the word into the new array
# return the new array

def my_array_finding_method(array, letter)
  new_array = []
  array.each do |x|
    x = x.to_s
    if x.include?(letter)
      new_array.push(x)
    end
  end
  new_array
end

# Pseudocode for hash finding method:
# create new array (this will be what we return)
# iterate on "hash" for each key-value pair in hash,
# if the value (age) is equal to "number," pass the key (name) into the new array
# return new array

def my_hash_finding_method(hash, number)
  new_array = []
  hash.each do |name, age|
    if (age == number)
    new_array.push(name)
    end
  end
  new_array
end

# Identify and describe the Ruby method(s) you implemented.
# In my_array_finding_method, I implemented a few Ruby methods:
# First, I used the method ".to_s" in order to make sure that each item in the array was converted to a string (if not already a string).
# Then, I used the method ".include?" to check each word in the array for the specified letter.
# Finally, I used the method ".push" to send each word to my new array if it contained the specified letter.
# In my_hash_finding_method, I didn't use any additional new methods here. I iterated over the hash - notice that between the |   |  (after each do),
# there are two variables - "name" (representing the hash's key) and "age" (representing the value). I used "==" to check if the hash's value was equal to that of the number being passed into the method. Finally, I used push again to send the selected names to my new array.
# One great thing about Ruby methods is that they are often named very intuitively. I already knew about "include?" but I think I discovered it by searching "Check to see if a string includes a particular character."

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#