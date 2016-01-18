# Analyze the Errors

# I worked on this challenge by myself.
# I spent 0.75 hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#   puts "What's there to hate about #{thing}?"
#end
#end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#     errors.rb
# 2. What is the line number where the error occurs?
#     The interpreter shows that it's on 170 - however, the actual error is on lines 17.
# 3. What is the type of error message?
#     Syntax error
# 4. What additional information does the interpreter provide about this type of error?
#     Unexpected end-of-input, while the interpreter expected the keyword "end.""
# 5. Where is the error in the code?
#     Technically, at the end of the document..
# 6. Why did the interpreter give you this error?
#     On line 17 there should be another "end" to close the method.

# --- error -------------------------------------------------------

# south_park = "south park"

# 1. What is the line number where the error occurs?
#     Line 35
# 2. What is the type of error message?
#     Name Error
# 3. What additional information does the interpreter provide about this type of error?
#     There is an undefined variable or method called "south_park."
# 4. Where is the error in the code?
#     At line 35
# 5. Why did the interpreter give you this error?
#     The variable "south_park" has not been defined

# --- error -------------------------------------------------------

#  def cartman()
#    end

# 1. What is the line number where the error occurs?
#     Line 50.
# 2. What is the type of error message?
#     No Method Error.
# 3. What additional information does the interpreter provide about this type of error?
#     There is an undefined method called "cartman."
# 4. Where is the error in the code?
#     Line 50
# 5. Why did the interpreter give you this error?
#     The method "cartman()" has not been defined.

# --- error -------------------------------------------------------

#def cartmans_phrase(argument)
  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#     Line 65 or 69
# 2. What is the type of error message?
#     Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#     There is an incorrect number of arguments (1 for 0)
# 4. Where is the error in the code?
#     Line 65 (or 69, depending on how you look at it)
# 5. Why did the interpreter give you this error?
#     The method cartmans_phrase is not defined to take any arguments, however when called on line 69 there is 1 argument ('I hate Kyle')

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says("Screw you!")

# 1. What is the line number where the error occurs?
#     Line 84 or 88
# 2. What is the type of error message?
#     Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#     Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#     Either line 84 or 88.
# 5. Why did the interpreter give you this error?
#     The method is defined on line 84 to take one argument, however, when called on line 88 there is no argument provided.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
# puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#     105 or 109
# 2. What is the type of error message?
#     Argument Error.
# 3. What additional information does the interpreter provide about this type of error?
#     Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#     On line 105 or line 109.
# 5. Why did the interpreter give you this error?
#     The method is defined to take two arguments - "lie" and "name." However, on line 109, the method is called with only one argument. Providing a second argument (or, removing one from the method definition) would resolve this error.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#     Line 124.
# 2. What is the type of error message?
#     Type Error.
# 3. What additional information does the interpreter provide about this type of error?
#     String cannot be coerced into a Fixnum.
# 4. Where is the error in the code?
#     On line 124, when you try to multiply with "*"
# 5. Why did the interpreter give you this error?
#     "Respect my authoritay" is a string, not a number. You cannot multiply by a string. However, if you changed the syntax to say '"Respect my authoritay" * 5', your result would be the string repeated five times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#     139
# 2. What is the type of error message?
#     Zero Division Error.
# 3. What additional information does the interpreter provide about this type of error?
#     The program tried to divide by zero.
# 4. Where is the error in the code?
#     Line 139 in the "/" method.
# 5. Why did the interpreter give you this error?
#     You cannot divide by zero, this will always create an error.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#     155
# 2. What is the type of error message?
#     Load Error
# 3. What additional information does the interpreter provide about this type of error?
#     The file "cartmans_essay.md" does not exist in the current directory.
# 4. Where is the error in the code?
#     In "require_relative."
# 5. Why did the interpreter give you this error?
#     The program is trying to load a file that does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# The syntax error in the method "cartman_hates" was probably the most difficult to read. It took me a while to figure out why the interpreter said the error was on line 170. I was able to locate the actual error by looking through the code for unclosed methods.

# Overall, I was able to figure out why each error message happened - the interpreter is very helpful at pointing out where the problem lies.

# In the future, I plan to debug by first checking the line(s) that the interpreter points to for the error. If no clear error exists in those lines, then I would double-check my indentations to make sure that all syntax is correct, methods are closed, etc...

