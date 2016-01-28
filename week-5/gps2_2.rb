# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create hash
  # add items to hash
  # set quantity to zero
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
#steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

def create_list(grocery_list)
    new_list = Hash.new
    grocery_list.split(' ').each do |item|
    #array = grocery_list.split(' ')
    #array.each do |item|
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


# DRIVER CODE
katys_list = create_list("apples bananas")
add_item("carrots", katys_list, 3)
remove_item("apples", katys_list)
update_quantity("bananas", katys_list, 7)
print_list(katys_list)