puts "Hello! What is your first name?"
first = gets.chomp
puts "And your middle name?"
middle = gets.chomp
puts "How about your last name?"
last = gets.chomp
puts "Greetings, #{first} #{middle} #{last}!"
puts "What is your favorite number?"
fav_number = gets.chomp
puts "How about #{fav_number.to_i + 1}? Isn't that a bigger and better favorite number?"

# You define a local variable by assigning it a name and a value.
# Some examples of defining a local variable would include:
    # street_name = "Folsom"
    # age = 30
    # favorite_number = gets.chomp

#To define a method, you will want to use "def" and "end" to declare the boundaries of the method. If the method will accept any arguments, you will also want to make sure to declare those. Here is an example of a method that takes two arguments:
    # def method(argument1, argument2)
    #     puts "This is a method"
    # end

# The difference between a local variable and a method is that a local variable simply stores a value, while a method performs some kind of action and returns a value.

# To run a ruby file from the command line, simply type "ruby filename.rb" (we're using filename.rb as the name of the ruby file here).

# To run an Rspec file from the commandline, just type "rspec filename.rb".

#Nothing about this material has been confusing so far, the only thing I was uncertain about was how to easily copy a directory from Github to my local machine. Is it possible to easily copy a single directory without cloning the entire repository?

#Links to exercises:

#Format Address: https://github.com/RonuGhoshal/phase-0/blob/master/week-4/address/my_solution.rb

#Define Method: https://github.com/RonuGhoshal/phase-0/blob/master/week-4/define-method/my_solution.rb

#Math Methods: https://github.com/RonuGhoshal/phase-0/blob/master/week-4/math/my_solution.rb

