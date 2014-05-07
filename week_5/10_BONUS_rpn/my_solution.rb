# U2.W5: Implement a Reverse Polish Notation Calculator
#DID NOT FINISH

# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class RPNCalculator

  def bonus (equation)
      arr = equation.split(" ")
      arr1=[]
      arr.each do |char|
        if char.ord >= 42 && char.ord <= 47
          math_sym= char.ord  
                
        else
          arr1 << char.to_i
        end
      end
      print arr1
  end
end


bonus("5 4 +")


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
