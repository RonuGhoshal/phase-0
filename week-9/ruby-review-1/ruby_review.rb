
#
#
#
# OO Basics: Student


# I worked on this challenge with Luis Ybarra
# This challenge took me 1 hours.

# Initial Solution
=begin
class Student
  attr_accessor :scores, :first_name, :letter_grade

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    sum = @scores.inject {|sum, x| sum + x}
    avg = sum/@scores.length
    if avg >= 90
      @letter_grade = "A"
    elsif avg >= 80
      @letter_grade = "B"
    elsif avg >= 70
      @letter_grade = "C"
    elsif avg >= 60
      @letter_grade = "D"
    else
      @letter_grade = "F"
    end
    return avg
  end


end

student1 = Student.new("Alex", [100,100,100,0,100])
student2 = Student.new("Jordan", [23,45,100,30,99])
student3 = Student.new("Pippen", [33,95,23,75,64])
student4 = Student.new("Rodman", [91,10,73,0,91])
student5 = Student.new("Rose", [1,55,66,77,88])
students = [student1, student2, student3, student4, student5]

def linear_search(array, name)
  array.each do |elem|
    if (elem.first_name == name)
      return array.index(elem)
    end
  end
    return -1
end

def binary_search(array, name)
  array.sort_by {|obj| obj.first_name }
  midpoint_index = array.length/2
  res = name <=> array[midpoint_index].first_name
  if (res == 0)
    return midpoint_index
  elsif (res == -1)
    for i in 0..midpoint_index
      if (array[i].first_name == name)
        return i
      end
    end
  else
    for i in midpoint_index...array.length
      if (array[i].first_name == name)
        return i
      end
    end
  end
  return -1
end
=end
# Refactored Solution

class Student
  attr_reader :scores, :first_name, :letter_grade

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    avg = (@scores.inject {|sum, x| sum + x})/@scores.length
    if avg >= 90
      @letter_grade = "A"
    elsif avg >= 80
      @letter_grade = "B"
    elsif avg >= 70
      @letter_grade = "C"
    elsif avg >= 60
      @letter_grade = "D"
    else
      @letter_grade = "F"
    end
    return avg
  end

end

student1 = Student.new("Alex", [100,100,100,0,100])
student2 = Student.new("Jordan", [23,45,100,30,99])
student3 = Student.new("Pippen", [33,95,23,75,64])
student4 = Student.new("Rodman", [91,10,73,0,91])
student5 = Student.new("Rose", [1,55,66,77,88])
students = [student1, student2, student3, student4, student5]

def linear_search(array, name)
  array.each do |elem|
    if elem.first_name == name
      return array.index(elem)
    end
  end
  return -1
end


def binary_search(array, name)
  if array.length == 0
    return - 1
  end
  array.sort_by {|obj| obj.first_name }
  midpoint_index = array.length/2
  result = name <=> array[midpoint_index].first_name
  if result == 0
    return midpoint_index
  else
    result == -1 ? array = array.slice(0, midpoint_index) : array = array.slice(midpoint_index + 1, array.length - 1)
  end
    binary_search(array, name)
end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex") == 0
p binary_search(students, "Alex")
p binary_search(students, "NOT A STUDENT") == -1

=begin
Reflection:
This was great practice on Ruby classes, instance variables, and reader/writer methods.
I also got practice using the spaceship <=> operator and recursion in my refactored
solution. I am still a bit confused on when attr:writer would be appropriate and am
trying to study up on that now!



=end