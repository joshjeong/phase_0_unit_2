# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Brendan Susens- Jackson ].


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
	
	def initialize(number)
		
		@number = number.to_s.split(//).map {|chr| chr.to_i}
		# unless @number.count == 16
		if @number.count < 16 || @number.count > 16
			raise ArgumentError.new( false, "Card number can't have less than 16!")
		end
		
		# else
		#     check_card
		# end
	end

	def check_card
  		number_array = @number
  		sum = number_array.each_with_index.map {|num, i| num if i.odd? }
  		sum.compact!
  		sum = sum.inject(:+)
  		number_array = number_array.each_with_index.map { |num, i| num if i.even?} 
  		number_array.compact!
  		number_array.each do |even_num| 
        	double = even_num * 2 
          		if double > 9 
          		double.to_s.split(//).map{|x| sum += x.to_i }
          		end
        	sum += double if double <= 9
      	end
  
		sum % 10 == 0 ? true : false

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


