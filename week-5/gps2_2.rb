# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create hash
  # add items to hash
  # set quantity to zero
  # print the list to the console [can you use one of your other methods here?]
# output: hash


def create_list(grocery_list)
    new_list = Hash.new
    grocery_list.split(' ').each do |item|
    add_item(item, new_list)
    end
    print_list(new_list)
end

def add_item(item, list, quantity=0)
  list[item] = quantity
  p list
end

def remove_item(item, list)
  list.delete(item)
  p list
end

def update_quantity (item, list, quantity)
  list[item] = quantity
  p list
end

def print_list (list)
  list.each do |item, quantity|
    puts item.to_s + ": " + quantity.to_s
  end
end


# Release 3
my_list = create_list("onions")
update_quantity("onions", my_list, 1)
add_item("lemonade", my_list, 2)
add_item("tomatoes", my_list, 3)
add_item("ice cream", my_list, 4)
remove_item("lemonade", my_list)
update_quantity("ice cream", my_list, 1)
my_list.each do |item, quantity|
  puts "#{item}: #{quantity}"
end

# Release 4: N/A

# Release 5: Reflection:

# We started a bit late due to my pair having some technical difficulties, so our guide allowed us to skip
# some of the pseudocoding. It seemed like pseuocode was useful for the first method, but the remaining
# methods were so short that it really didn't seem necessary.

# We preferred to use hashes rather than arrays here, since we wanted to track both items and their
# quantities.

# A method will return a value of some sort. If no value is explicitly returned, it will return the last listed value # within the method.

# You can pass any sort of object into a method - arrays, hashes, strings, numbers, etc.

# To pass information between methods, you can store this information in hashes or arrays.

# This challenge was pretty straightforward, although I am still getting a hang of the syntax for hashes.

