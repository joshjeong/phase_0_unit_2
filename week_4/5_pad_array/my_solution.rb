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
  def pad!(number, padValue)
  	(number - self.length).times do self.push(padValue) 
  	end
  	replace(self)
  	return(self)
  end
  
  def pad(number, padValue = nil)
    duplicate= self.dup
    (number - self.length).times do duplicate.push(padValue) 
    end
  return duplicate
  end
end



# 3. Refactored Solution
class Array
  def pad!(number, padValue)
  	(number - self.length).times do self.push(padValue) 
  	end
  	replace(self)
  	return(self)
  end
  
  def pad(number, padValue = nil)
    dup.pad!(number, padValue)
  end
end


# 4. Reflection 
