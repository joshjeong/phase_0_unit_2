# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# # 2. Pseudocode what happens when the code above runs
# method assert will raise an error if the condition in the code block is not true
# in thise case, name= "bettysue"
# line 13 will run with no errors because the condition in the block is true
# line 14 will raise "Assertion failed" because "billybob" does not equal "bettysue"


# 3. Copy your selected challenge here
class CreditCard
  def initialize(cardNumb)
  	@cardNumb= cardNumb.to_s
    if @cardNumb.length != 16
      raise ArgumentError
  	end
  end

  def check_card
    arr_math=[]
  	arr=@cardNumb.split("")
    arr.each_with_index {|number, index|
    if index%2 ==0
      arr_math << number.to_i*2
    else 
      arr_math << number.to_i
    end
    }
    arr_join= Integer arr_math.join
    arr_string= String arr_join
    total= arr_string.split("")
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

# DRIVER TESTS GO BELOW THIS LINE
# puts card1= CreditCard.new(4408043234567893).check_card #false
# puts card2= CreditCard.new(4563960122001999).check_card #true 
# puts card3= CreditCard.new(1023984839273748).check_card #false



# 4. Convert your driver test code from that challenge into Assert Statements
def assert
	raise "Argument failed!" unless yield
end

card1= CreditCard.new(4408043234567893).check_card
card2= CreditCard.new(4563960122001999).check_card 
card3= CreditCard.new(1023984839273748).check_card

assert {card1== false}
assert {card2== true}
assert {card3== false}


# 5. Reflection

# This challenge was relatively straight forward and the code academy was a very good resource for yield.
# I'm looking forward to using assert in my future driver tests. Hopefully I won't run into any trouble!!


