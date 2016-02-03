# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#  error_counter = 3

#  library.each do |food|
#    if library[food] != library[item_to_make]
#       error_counter += -1
#    end
#   end
#   #For each element in the hash, if the input (items_to_make) is not in the hash, then increments the error counter down by 1

#   if error_counter > 0
#    raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
# # if the error counter is greater than zero (meaning less than 3 errors have occurred) - raise an argument error.
#   serving_size = library.values_at(item_to_make)[0]
#   remaining_ingredients = num_of_ingredients % serving_size
# # Setting a value for the serving size, which is the number of ingredients needed to make the item selected. Than dividing the number of ingredients needed by the amount fo ingredients you have and returning the remainder as remaining ingredients
#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#     #when the remaining ingredients are equal to 0, return this message showing how many items to make
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#     #when the remaining ingredients are more than 0, return this message showing how many items you can make and how many ingredients you have leftover.
#   end
# end

#Refactored Code
def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
 if library.has_key?(item_to_make)
    ingredients_needed = library[item_to_make]
    remaining_ingredients = num_of_ingredients % ingredients_needed

    if remaining_ingredients == 0
      return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}"
     elsif remaining_ingredients < 5
      return       "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients Suggested baking items: #{remaining_ingredients} cookies"
     elsif remaining ingredients == 5
      return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: 1 cake"
     elsif remaining_ingredients < 7
      cookies = remaining_ingredients -5
      return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: 1 cake and #{cookies} cookies."
     elsif remaining_ingredients == 7
      return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: 1 pie"
     elsif remaining_ingredients > 7
      cookies = remaining_ingredients - 7
      return "Calculations complete: Make #{num_of_ingredients / ingredients_needed} #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: 1 pie and #{cookies} cookies."
     end
   else
     raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)