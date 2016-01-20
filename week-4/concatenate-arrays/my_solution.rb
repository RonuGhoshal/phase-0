# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = []
  array_1.each do |x|
    new_array.push(x)
  end
  array_2.each do |x|
    new_array.push(x)
  end
  return new_array
end
