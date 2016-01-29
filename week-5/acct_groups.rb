#Pseudocode

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



#Release 3
# In this case, the program would give us the same outputs 3 times in a row. If we wanted it to return different outputs, we could use "list_of_names.shuffle" at the beginning of the program.
# I don't see a reason for this program to store past outputs - however, if we wanted to store the output, we could declare a variable outside the method like so: "output = create_groups(my_cohort"
# If one person were to leave the cohort, we could run the program again and it would rearrange the groups so that they still had 4 or 5 people per group (assuming more than 7 people in cohort).
# We are done once every accountability group has 4, 5 (or in a few cases, 3) people.

#Refactored Solution:

