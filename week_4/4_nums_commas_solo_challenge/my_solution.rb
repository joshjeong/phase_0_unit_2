# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def separate_comma(input)
  number= input.to_s
  if number.length>9
    number.insert(-4,',')
    number.insert(-8,',')
    number.insert(-12,',') 
  elsif number.length>6
  	number.insert(-4,',')
    number.insert(-8,',')
  elsif number.length>3
  	number.insert(-4,',')
  else
  	return number
end
end



# 3. Refactored Solution



# 4. Reflection 