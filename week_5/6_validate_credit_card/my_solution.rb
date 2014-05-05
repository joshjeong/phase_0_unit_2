# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(cardNumb)
  	@cardNumb= cardNumb.to_s
    if @cardNumb.length != 16
      raise ArgumentError
  	end
  end

  def check_card
    arr_modified=[]
  	arr=@cardNumb.split("")
    arr.each_with_index {|number, index|
    if index%2 ==0
      arr_modified << number.to_i*2
    else 
      arr_modified << number.to_i
    end
    }
    tempString= Integer arr_modified.join
    tempString2= String tempString
    total= tempString2.split("")
    sum= 0
    total.each {|x|
      sum+=x.to_i
    }
    if sum%10==0
      return true
    else 
      false
    end
  end


end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
puts card= CreditCard.new(4408043234567893).check_card #false
puts card= CreditCard.new(4563960122001999).check_card #true 
puts card= CreditCard.new(1023984839273748).check_card #false






# 5. Reflection 
