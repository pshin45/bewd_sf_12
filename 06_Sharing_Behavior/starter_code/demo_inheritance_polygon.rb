require 'pry'

class Polygon
	attr_accessor :len_sides

	def initialize(len_sides)
		@len_sides = len_sides #array storing the length of each side
	end

	def num_sides()
		@len_sides.length # .length is an instance method, Array.length would be a class method
	end

	def is_regular()
		#check if all sides are the same length
		@len_sides.uniq().length == 1 # .uniq() removes duplicates
	end

	def to_s()
		"This is a #{self.class} with #{num_sides()} sides."
	end
end


class Rectangle < Polygon # This notation tells us that Rectangle class inherits from Polygon class
	attr_accessor :length, :width

	def initialize(length, width) # Overriding the parent class
		@length = length
		@width = width
		super([length, width, length, width]) # Could also be written as "@len_sides = [length, width, length, width]"
	end

	def area()
		@length * @width
	end

	def to_s()
		super() + " I have area #{self.area()}" # self here is optional
	end
end


class Square < Rectangle

end

binding.pry