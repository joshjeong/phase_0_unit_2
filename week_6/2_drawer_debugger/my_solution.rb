# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].


# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true

  end

  def open
    @open = true
  end

  def close
	@open = false
  end 

  def add_item(item)
	@contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? Removes last value in array
	@contents.delete(item)
  end

  def dump  # what should this method return?
	puts "Your drawer is empty."
  end

  def view_contents
	puts "The drawer contains:"
	@contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?
#clean_silverware

  def initialize(type, clean = true)
	@type = type
	@clean = clean
  end

  def eat
	puts "eating with a #{type}"
	@clean = false
  end

  def clean_silverware
  	puts "#{type} is now clean"
  end


end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? Items left in drawer

fork= Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork.eat
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
silverware_drawer.view_contents




#BONUS SECTION
# puts fork.clean



# 5. Reflection 
# Debugging challenges are always fun because I feel as though similar situations will be faced in the real world.
# We will be given a code that has been completed by someone else and needs to be fixed. In this challenge, I had some trouble
# when it came to the fork portion. I kept getting an error and later realized it was because the drawer was empty.
