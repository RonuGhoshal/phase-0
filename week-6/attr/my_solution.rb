#Attr Methods

# I worked on this challenge by myself, with

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_reader :name

  def initialize
    @name = "Ronu"
  end


end


class Greetings

  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello, #{@namedata.name}, how wonderful to see you today!"
  end

end

greet = Greetings.new
greet.hello

# Reflection

# Release 1:
# The methods here are changing the values of our instance variables @name @age and @occupation.
# They are modifying these values by taking new arguments and passing them to the instance variables
# (after creating a new instance of the class Profile).

# Release 2:
# In this release, we no longer need the what_is_age method. Instead, we added a reader method which
# enables us to view @age outside of the class - in fact, we can call it as a method. This does
# seem simpler than the previous code.

# Release 3:
# Here we no longer need the change_my_age method to modify @age. Since we added a writer method,
# we can now modify @age from outside of the class. Again, this seems simpler than having a separate
# change_my_age method.

# Release 6 (reflect)
# A reader method (attr_reader) is a method (declared at the beginning of a class) that enables you to access
# (but not modify) instance variables from outside of that class.
# A writer method (attr_writer) is a similar method but enables you to modify (but not view) instance variables
# from outside the class.
# If you want to view and modify instance variables from outside the class, you should use the
# attr_accessor method.
# You should only use attr_accessor if you need to modify your instance variables from outside the class.
# Otherwise you put these variables at risk of being changed (for security reasons, you may not want them to).
# Right now, I understand the basic concepts, I'm just still getting use to the syntax. I was also a bit confused
# by the methods with the = sign at the end.




