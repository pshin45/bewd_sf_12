require_relative 'employee'

class Marketer < Employee

	attr_accessor :twitter

	def initialize (first_name, last_name, twitter)
		super(first_name, last_name)
		@twitter = twitter
	end

	def contact()
		"#{@twitter}"
	end


end