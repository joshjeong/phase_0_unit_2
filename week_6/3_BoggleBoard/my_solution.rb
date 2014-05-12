# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode
# def class BoggleBoard
# use methods from previous challegne:
# - find letters according to coordinates
# - get row
# - get column



# 3. Initial Solution
# class BoggleBoard

#   def initialize(dice_grid)
#     @dice_grid= dice_grid
#   end

#   def create_word(dice_grid, *coords)
#     coords.map { |coord| dice_grid[coord.first][coord.last]}.join("")
#   end

#   def get_row(dice_grid, row)
# 	dice_grid[row]
#   end

#   def get_col(dice_grid, col)
# 	dice_grid.map { |x| x[col]}
#   end
 
# end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 

# 4. Refactored Solution
class BoggleBoard

  def initialize(dice_grid)
    @dice_grid= dice_grid
  end

  def create_word(*coords)
    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
  end

  def get_row(row)
	@dice_grid[row]
  end

  def get_col(col)
	@dice_grid.map { |x| x[col]}
  end
 
end


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
def assert
	raise "Argument Failed!!!" unless yield
end

row2= BoggleBoard.new(dice_grid).get_row(1)
col1= BoggleBoard.new(dice_grid).get_col(0)
code_word= BoggleBoard.new(dice_grid).create_word([1,2], [1,1], [2,1], [3,2])

assert {row2 == ["i", "o", "d", "t"]}
assert {col1 == ["b", "i", "e", "t"]}
assert {code_word == "dock"}

# implement tests for each of the methods here:

p BoggleBoard.new(dice_grid).get_row(2)
p BoggleBoard.new(dice_grid).get_col(3)
p BoggleBoard.new(dice_grid).create_word([3,0], [0,2], [2,2], [3,2])


# # 5. Reflection 
# Since this challenge was based on a previous one, it was not too dificult to translate. The challenge was 
# converting the variables to cover the scope of the class and to get the dice_grid to pass through the methods.
