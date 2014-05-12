# U2.W6: Refactoring for Code Readability


# I worked on this challenge [with: Brendan Susens- Jenkens].


# Original Solution
# class CreditCard
	
# 	def initialize(number)
		
# 		@number = number.to_s.split(//).map {|chr| chr.to_i}
# 		# unless @number.count == 16
# 		if @number.count < 16 || @number.count > 16
# 			raise ArgumentError.new( "Card number must have 16 digits")
# 		end
		

# 	end

# 	def check_card
#   		number_array = @number
  # 		sum = number_array.each_with_index.map {|num, i| num if i.odd? }.compact
  		
  # 		sum = sum.inject(:+)
  # 		number_array = number_array.each_with_index.map { |num, i| num if i.even?} 
  # 		number_array.compact!
  # 		number_array.each do |even_num| 
  #       	double = even_num * 2 
  #         		if double > 9 
  #         		double.to_s.split(//).map{|x| sum += x.to_i }
  #         		end
  #       	sum += double if double <= 9
  #    end
  
	# sum % 10 == 0 ? true : false
	# end



# Refactored Solution
class CreditCard
	
  def initialize(number)
    @number = number.to_s.split(//).map {|chr| chr.to_i}
	# unless @number.count == 16
	if @number.count < 16 || @number.count > 16
	  raise ArgumentError.new( "Card number must have 16 digits")
	end
  end

  def check_card
  	number_array = @number
    num_array = number_array.each_with_index.map do |val, index| 
    if index.even? 
      val*=2
    else
      val
    end
    sum = number_array.join.split(//).map{|chr| chr.to_i}
    sum = sum.inject(:+)
    sum % 10 == 0 ? true : false
  end
end

# DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(4563960122001999)
card2 = CreditCard.new(4408041234567892)
begin
	card3 = CreditCard.new(1)
rescue
	puts "Can't have less than 16 digits"
end
assert { card1.check_card }
assert { card2.check_card == false}
assert { card3.check_card }




# Reflection 
# Rafactoring this code was a great challenge! I had an awesome time working with Brendan as we brainstormed different 
# ways to improve our code. We researched while at time did things by trial and error. The most difficult part of this 
# challenge was doubling the even indexes in a simple and clean fashion. 
