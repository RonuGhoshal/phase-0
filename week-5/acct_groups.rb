# Release 1: Pseudocode

# Input: A list of names (presumably an array)
# Output: a hash with each key being a group number, and each value being an array of names (members of the group)
#Steps to solve problem

# Note: Unless the list of names has 6 or 7 people, group size should be either 4 or 5

# DEFine a method "create_groups" that takes an array as an argument
#   Break the array "list_of_names" into sublists, creating a new sublist after each four names.
#   Then, take a look at the last sublist in your list.
#   IF this sublist has a length less than 4:
#     assign each name in this sublist to one of the previous sublists
#   END
#   Create an empty hash
#   For each sublist in the original list,
#   add a new key-value pair to your hash.
#   The key should reflect the sublist's placement in the original list,
#   while the value should be the sublist.
# END method

# Release 2: Initial Solution

my_cohort = ["Aaron Figueroa", "Alivia Blount", "Allison Scofield", "Alyssa Page", "Alyssa Ransbury", "Andria Reta", "Austin Dorff", "Autumn McFeeley", "Ayaz Uddin", "Ben Giamarino", "Benjamin Heidebrink", "Bethelhem Assefa", "Robert Reith", "Dana Breen", "Brett Ripley", "Brittany Bui", "Rene Castillo", "Justin J Chang", "Che Sanders", "Chris Henderson", "Chris Munguia", "Chris Pon", "Colette Pitamba", "Connor Reaumond", "Cyrus Vattes", "Dan Heintzelman", "David Lange", "Eduardo Bueno", "Elizabeth Roche", "FJ Collins Jr.", "Frances Pangilinan", "Francis Cuthbertson", "Ian Fricker", "Ian Thorp", "Ivy Vetor", "Jack Baginski", "Jack Hamilton", "Jillian Campblell", "John Craigie", "John Holman", "John Maguire", "John Pults", "Jones Melton", "Kenton Lin", "Kevin Serrano", "Kevin Sullivan", "Kyle Rombach", "Laura Montoya", "Luis Ybarra", "Martina Osteyee-Hoffman", "Megan Swanby", "Michael London", "Michael Wang", "Michael Yao", "Mike Gwozdek", "Miqueas Hernandez", "Mitchell Kroska", "Norberto Caceres", "Onofre Echevarria", "Patrick Skelley", "Peter Kang", "Philip Chung", "Phillip Barnett", "Pietro Martini", "Robbie Santos", "Rokas Simkonis", "Ronesh Ghoshal", "Ryan Nebuda", "Ryan Smith", "Saralis Rivera", "Sepand Assadi", "Spencer Alexander", "Stephanie Major", "Taylor Daugherty", "Thomas Farr", "Maeve Tierney", "Tori Huang", "Alexander Williams", "Victor Wong", "Xin Zhang", "Zach Barton" ]

def create_groups(list_of_names)
  if list_of_names.length == 6
   list_of_names = list_of_names.each_slice(3).to_a
  elsif list_of_names.length == 7
   list_of_names = list_of_names.each_slice(4).to_a
  else
  list_of_names = list_of_names.each_slice(4).to_a
    if list_of_names[-1].length < 4
      last_sublist = list_of_names.pop
      index = 0
      while index < last_sublist.length
        last_sublist.each do |name|
          list_of_names[index].push(name)
          index += 1
        end
      end
    end
  end
  groups = Hash.new
  group_index = 0
  list_of_names.each do |sublist|
    groups[(group_index + 1)] = sublist
    group_index += 1
  end
  groups
end

# Release 3: Complexity

# As of now, the program will have the same output if you run it three times in a row. We could change this
# by adding "list_of_names.shuffle" at the beginning of the method.

# I don't think we would want the program to store past outputs - however, we could make a new variable
# to store a given output - for example: "output = create_groups(my_cohort)"

# If one person left the cohort, we could run the program again to make sure that the groups are of 4 or 5.
# As long as there are more than 7 people in the cohort, everyone should be in a group of 4 or 5.

# I'm done when my code passes for 6, 7, or 8+ elements in the list being passed into the method.


#Release 4: Refactored Solution

def create_groups(list_of_names)
  if list_of_names.length == 6
    sliced_list = list_of_names.each_slice(3).to_a
  else
    sliced_list = list_of_names.each_slice(4).to_a
    if list_of_names.length != 7
      if sliced_list[-1].length < 4
        last_sublist = sliced_list.pop
        index = 0
        while index < last_sublist.length
          last_sublist.each do |name|
            sliced_list[index].push(name)
            index += 1
          end
        end
      end
    end
  end
  groups = Hash.new
  group_index = 0
  sliced_list.each do |sublist|
    groups[(group_index + 1)] = sublist
    group_index += 1
  end
  groups
end

# Release 5: Driver Code

puts create_groups([1, 2, 3, 4, 5, 6])
puts create_groups([1, 2, 3, 4, 5, 6, 7])
puts create_groups([1, 2, 3, 4, 5, 6, 7, 8])
puts create_groups(my_cohort)

# Release 6: Reflection

# I think the most interesting (and difficult) part here was determining how to go about approaching this
# program, with no tests to pass and very little structure. I knew what result I wanted (a hash) but it took me
# a while to figure out how to even get started. Also, I found refactoring to be very difficult - I did manage to
# delete one line of repeating myself, and renamed a variable to make things clearer.

# Pseduocode definitely helped me with this program. When the program is more complex, I find
# pseudocode to be quite helpful in determining what I actually want the program to do. When it's a simpler # problem, I have trouble writing pseudocode.

# I think my solution is pretty solid and covers all bases- I'm guessing there's a less long-winded and more # readable way to do it, though.

# I stored the groups in a hash so that we could call a particular group by its number (key) and return the
# names of the members (value).

# The most important thing I realized while refactoring is that it may often be much easier to declare a new # variable to store a modified data structure, rather than make a bunch of changes to the initial data
# structure. The new method I learned in this exercise (not while refactoring) was .each_slice.