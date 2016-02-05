# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

#p array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! {|y| y + 5}
  else
    x + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      if y.kind_of?(Array)
        y.map! {|z| z + "ly"}
      else
        y + "ly"
      end
    end
  else
      x + "ly"
  end
end

p startup_names

#Release 4: Refactored code

number_array2 = [5, [10, 15], [20,25,30], 35]

number_array2.map! do |x|
  x.kind_of?(Array) ? (x.map! {|y| y + 5}) : ( x + 5)
end
p number_array2

# Not much other refactoring I would do here - we could use the ternary operator in the startup names portion,
# but the code would sacrifice readibility. Here is another way we could refactor the startup names method,
# if we wanted to return a single array as a result:

startup_names2 = ["bit", ["find", "fast", ["optimize", "scope"]]]
p startup_names2.flatten.map! {|x| x + "ly"}


#Release 5: Reflection

# A general rule with nested arrays is that it's always a good idea to keep careful track of what index
# you're at in a given array. It may even be a good idea to comment out numbers to help you count.


# To iterate over nested arrays, you can use .map, .each, or any other enumerable method that you'd use with
# a one-dimensional array. You may need to use nested do..end statements as we did in the startup_names method.

# A new method I tried was .flatten, which is a very good method for combining nested arrays into one single array.

