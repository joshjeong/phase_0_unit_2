# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
 
 def initialize(board)
  @board= board
 end
 
   def create_word(board, *coords)
    board= @board
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
 
 def row(source, number)
    source[number].to_a
end

def col(source, numb)
	source.map { |x| 
		x[numb]
	}
end

end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:


# 5. Reflection 
