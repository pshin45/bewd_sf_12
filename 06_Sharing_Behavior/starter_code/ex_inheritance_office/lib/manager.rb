require_relative 'employee'

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
	#managers have titles and emails

	#make sure a Manager's full name includes their title

	#managers like to be contacted via email
	attr_accessor :title, :email

	def initialize (first_name, last_name, title, email)
		super(first_name, last_name)
		@title = title
		@email = email
	end

	def full_name()
	   #return a string
	   "#{@title} " + super()
	end

	def contact()
		"#{@email}"
	end
end
