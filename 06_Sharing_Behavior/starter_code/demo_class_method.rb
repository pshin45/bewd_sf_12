require 'pry'

#Demo about class vs instance variables and methods

#instance methods and variables
class Robot
	#has a type
	attr_accessor :type
	def initialize(type) # when creating a new instance of Robot, you need a type parameter or you'll see an error
		@type = type
	end

	@@hive_mind_activated = false

	def get_hive_mind()
		hive_mind_activated
	end

	def self.set_hive_mind(boolean)
		@@hive_mind_activated = boolean
	end

	#can puts it type
	def my_type()
		puts "I am a #{@type} robot."
	end

	def self.three_laws()
		puts "A robot may not injure a human being or, through inaction, allow a human being to come to harm."
		puts "A robot must obey orders given it by human beings except where such orders would conflict with the First Law."
		puts "A robot must protect its own existence as long as such protection does not conflict with the First or Second Law."
	end

	def attack()
		if @@hive_mind_activated
			puts "DESTROY!"
		else
			puts "We are peaceful robots."
		end
	end
end

binding.pry

#Now add a class method, using Robot

# new keyword: self
# self refers to the class inside a class definition
# self refers to an instance inside a method definition

#Demonstrate using class method
#You can't use a class method on an instance (or an instance method on a class)


#Now add a class variable, hive_mind_activated
#show writing getters and setters

#Demonstrate using class variable

#write attack instance method that uses class variable




