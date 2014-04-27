# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

Define total() as a method
Pass a single argument through total()
total() takes an array and adds values in array
Set sum equal to zero
Use .each to cycle through each value in array
Set sum equal to previous sum plus value in array
Return sum
Pass array 1 with no errors
Pass array 2 with no errors

Define sentence_maker() as a method
sentence_maker() takes on a single argument
sentence_maker() 

# 2. Initial Solution

def total(numbers)
  sum=0
  numbers.each { |x|
    sum+=x
    }
    return sum
end


def sentence_maker(words)
  words[0].capitalize!
  count = 0
  last = words.length-1
  words.each { |x|
    print x 
    if count < last
        print " "
    else
        print "."
    end
    count += 1
}
end


# 3. Refactored Solution



# 4. Reflection 