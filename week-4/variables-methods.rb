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
