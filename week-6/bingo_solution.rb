# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

#  DEFINE call_number
#     set instance variable @letter equal to random letter from B-I-N-G-O
#    set instance variable @number equal to random number from 1-100
#     set instance variable @letter_index equal to 0 for B, 1 for I, etc..
#  END

# DEFINE check_number
#   Check the called column for the number called.
#   for EACH element in the board array, DO this:
#     IF the element[@letter_index] is equal to the number called
#     replace element[@letter_index] with an 'x'
#     END
#    END
# END

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
=begin
class BingoBoard


  def initialize(board)
    @bingo_board = board
  end

  def call_number
    @letter = (["B", "I", "N", "G", "O"]).sample
    @number = rand(1..100)
    if @letter == "B"
      @letter_index = 0
    elsif @letter == "I"
      @letter_index = 1
    elsif @letter == "N"
      @letter_index = 2
    elsif @letter == "G"
      @letter_index = 3
    elsif @letter == "O"
      @letter_index = 4
    end
    @letter + (@number).to_s
  end

  def check_number
    @bingo_board.each do |row|
    if row[@letter_index] ==  @number
      row[@letter_index] = "x"
    end
    end
    @bingo_board
  end

  def display_column(number)
    @bingo_board.each do |row|
      puts row[number - 1]
    end
  end

  def display_board
    @bingo_board.each do |row|
      p row
    end
  end

end

=end

# Refactored Solution

class BingoBoard


  def initialize(board)
    @bingo_board = board
  end

  def call_number
    @letter = (["B", "I", "N", "G", "O"]).sample
    @number = rand(1..100)
    case @letter
    when "B"
      @letter_index = 0
    when "I"
      @letter_index = 1
    when "N"
      @letter_index = 2
    when "G"
      @letter_index = 3
    when "O"
      @letter_index = 4
    end
    p @letter + (@number).to_s
  end

  def check_number
    @bingo_board.each do |row|
      row[@letter_index] = "x" if (row[@letter_index] == @number)
    end
  end

  def display_column(number)
    @bingo_board.each do |row|
      puts row[number - 1]
    end
  end

  def display_board
    @bingo_board.each do |row|
      p row
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
100.times do
  new_game.call_number
  new_game.check_number
  new_game.display_board
end

 new_game.display_column(1)



#Reflection