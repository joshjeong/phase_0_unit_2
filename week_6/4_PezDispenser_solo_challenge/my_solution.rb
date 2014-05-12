# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# flavors is an array of different flavors the pez contains
# see_all_pez will print out values in array flavors
# add_pez will add a flavor to array flavors
# pez_count is length of flavors
# get_pez will randomly select a flavor from array

# 3. Initial Solution

class PezDispenser
 
  def initialize(flavors)
	@flavors= flavors
  end

  def see_all_pez
  	p @flavors
  end

  def add_pez(new_flavor)
  	@flavors << new_flavor
  end
  
  def pez_count
  	@flavors.length
  end

  def get_pez
  	pez_dispensed= @flavors.sample
  	@flavors.delete_at(@flavors.find_index(pez_dispensed))
  	end
end


# 4. Refactored Solution
# Code already seems pretty DRY. I couldn't figure out how to make get_pez a litte cleaner.

# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# # 5. Reflection 
# I enjoyed starting from the Driver test and working backwards. I'm slowly getting more comfortable with creating new 
# objects and following the syntax.
