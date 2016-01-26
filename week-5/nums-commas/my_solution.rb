# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? This same integer, but formatted in comma notation
# What are the steps needed to solve the problem?

#DEFine a method called separate_comma that takes an integer
#  IF the integer is less than 1000
#    convert this integer to a string and RETURN it
#  ELSE
#    convert the integer to a string
#    determine the number of commas
#    we can see that if  the integer has 4, 5, or 6 digits - 1 comma
#    and if it has 7, 8, or 9 digits  2 commas
#    using this pattern, we can see that:
#    the number of commas is equal to (number of digits - 1) / 3
#    declare a variable index and set it to -1 (to start from the last digit of our string)
#    (number of commas) times - DO the following action
#      set "index" to equal "index - 3" (take 3 steps backwards in our original number)
#      insert a comma at the current index
#      set "index" to equal "index - 1" (take 1 more step back to account for the new
#      comma we just added to the string)
#    END (closing the DO statement)
#    RETURN our newly formatted number
#  END (closing the if statement)
#END method

# 1. Initial Solution

def separate_comma(int)
  if int < 1000
    return int.to_s
  else
    int = int.to_s
    number_of_commas = (int.length - 1)/3
    index = -1
    number_of_commas.times do
      index = index -3
      int.insert(index, ",")
      index = index - 1
    end
    return int
  end
end


# 2. Refactored Solution

def separate_comma(int)
   result = ""
   int.to_s.reverse!.split('').each_slice(3).to_a.each do |subarray|
     result = result + subarray.join + ","
   end
   result = result.chop.reverse
   result
end



# 3. Reflection

# I considered several different approaches when breaking this problem down. My first
# instinct was to try and go backwards from the end of the integer, inserting a comma
# every three spaces. However, I thought this might get messy, not knowing how many # commas would necessarily go into any given number. Therefore, I decided to first
# calculate how many commas would be needed. Initially, my math was off and I was
# using the equation (number_of_commas = int.length/3) - however, I quickly realized
# the error and was able to recognize the correct pattern and put it into an equation. I
# then worked backwards from the last digit in the integer. After testing my code and
# wondering why the commas were not all ending up in the right places, I realized that I # needed to adjust my "index" variable each time I added a new comma. Finally, I
# added an "if" statement at the top of the program to account for numbers less than
# 1000.

# My pseudocode definitely helped me while I was putting together my initial solution. I # tried to remember that this particular task was something I could easily do myself, so I
# just needed to explain the task in terms that the computer could understand.
# However, my initial pseudocode was quite jumbled and messy, and after getting
# about halfway through the problem I took a break from pseudocoding in order to try
# running some actual code. Then, after coming to a solution, I went back and cleaned # up my pseudocode to be clear, legible and follow best practices. Here's what my
# initial pseudocode looked like:

# def separate_comma(int)
#   determine how many commas there will be:
#   if int < 1000, zero commas - return int
#   else
#   separate int into array
#   count the number of digits in int
#   if 4, 5, 6 digits - 1 comma
#   if 7, 8, 9 digits - 2 commas
#   using this pattern, we can determine that
#   number of commas = (number of digits - 1)/3  (integer division)
#   set index to -1 (start from last digit in array)
#   number of commas.times do
#   set index to (index -3) : take 3 steps backwards in the array
#   insert comma at index
#   set index to (index - 1): adjust index to account for new comma character
#   end
# end

#  When refactoring my solution, I used the Ruby method .each_slice(integer). I
#  actually had discovered this method earlier today while working on the "Create
#  Accountability Groups" challenge. The way I discovered it was by searching Google #  for "split Ruby array into arrays" and it actually seems like a very useful method. If I
#  had known of it previously, I might have approached my initial solution differently.
# My only confusion with it was that I wasn't certain if it could be used on strings - it
# could not, so I had to convert my string to an array.

# Initially, I iterated through the data structure by using a "do" loop and an index value.
# This helped me move from the end to the beginning of my integer, skipping 3 digits
# at a time and inserting a comma in between.

# I am not sure if my refactored solution is more readable than my initial solution. It
# seems a bit shorter, but the reader would have to be familiar with the method
# ".each_slice" as well as ".split", ".reverse", ".join", and ".chop". Since there doesn't
# seem to be a huge difference in readability, it might be most practical to use the
# method that works faster. After running a few timed trials, the initial method actually
# seems to be 10-15 times faster than the refactored version. I would love to get some # feedback on why that might be - is there a particular method in the refactored
# version that tends to be quite slow?