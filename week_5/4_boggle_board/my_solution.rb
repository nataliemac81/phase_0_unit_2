# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# initialize BoggleBoard class
# define method create_word that takes board and (multiple) coords as input
# for each set of coodinates take board[coordinates] to access each element to be included in an array
# and join the result into a string


# Initial Solution
class BoggleBoard
  def initialize(nested_array)
   @boggle_board = nested_array
  
  def get_row(row)
    @boggle_board[row]
  end

   def get_col(index)
    @boggle_board.map {|row| row[index]}
  end



def create_word (board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution
#
# I thought the initial code was good and didn't need to be refactored. Not sure exactly what we were supposed to do here.
#


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# define method called get_row that takes a row as input
# output should be the contents of the array


# Initial Solution
 
 def get_row(row)
    @boggle_board[row]
  end

# Refactored Solution

#I thought the initial code was clear and DRY and didn't need to be refactored. 



# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1) ==  ["i", "o", "d", "t"]

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# define get_col that takes col_index as input
# loop through each row and print index


# Initial Solution

 def get_col(col_index)
    @boggle_board.map {|row| row[col_index]}
  end


# Refactored Solution

#I thought the initial code was clear and DRY and didn't need to be refactored. 


# DRIVER TESTS GO BELOW THIS LINE

puts get_col(1)  ==  ["r", "o", "c", "a"]
puts get_col(0)  ==  ["b", "i", "e", "t"]




# Reflection 
