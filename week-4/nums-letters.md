"Puts" stands for "put string." It is used to print output to the console and add a new line. It's important to remember that puts does not return a value.

An integer is any number without a decimal point, while a float (or "floating-point" is any number with a decimal point. For example, 9 is an integer, while 9.0 or 9.5 or 9.25 would all be considered floats.

Float division will divide two numbers exactly - for example, if you calculated "9.0/2.0" or "9/2.0" or "9.0/2" this is float division. Your result will be 4.5. On the other hand, integer division will divide two numbers but round the result down to the nearest integer. In Ruby (and most programming languages), "9/2" will give you a result of 4.

```ruby
minutes_in_hour = 60
hours_in_day = 24
days_in_year = 365
years_in_decade = 10
hours_in_year = hours_in_day * days_in_year
minutes_in_decade = minutes_in_hour * hours_in_year * years_in_decade

p "There are #{hours_in_year} hours in a year."
p "There are #{minutes_in_decade} minutes in a decade (disregarding leap years)."
'''

Ruby handles addition, subtraction, multiplication, and division, in a manner similar to a traditional calculator. The only major difference here would be that when dividing one integer by another, Ruby will round down from the exact result and return the nearest integer (For example - 10/3 would return 3).

The difference between integers and floats is that floats include a decimal point. Float division is also handled differently than integer division - it will give you a more precise, non-rounded result. For example, when dividing 7.0/2.0, you will get the result of 3.5 (whereas 7/2 would give you a result of 3).

A string is a group of letters (and some other characters) in a program. You could use them whenever you want your program to print, change, or manipulate some text.

A local variable is a variable specific to a particular program. You would use local variables when you don't want them to be accessible from outside that program.

This challenge was a good review - I've done the RubyMonk and CodeAcademy tracks several time so there wasn't anything new here, but it was some nice practice with the basics.