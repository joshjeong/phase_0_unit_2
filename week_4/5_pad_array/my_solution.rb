# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution


# number= arr.length
# number> arrlength
# my_array=[]

class Array
  def pad!(number, padding)
  	(number - self.length).times {self.push(padding)}
  	replace(self)
  end


  def pad(number, padding = nil)
    dup.pad!(number, padding)
  end
end



# 3. Refactored Solution



# 4. Reflection 