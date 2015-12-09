#Apartment class.
class Apartment
	attr_accessor :unit, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

	def initialize(unit, rent, sqft, bed, bath)
		@unit = unit
		@rent = rent
		@sqft = sqft
		@num_bedrooms = bed
		@num_bathrooms = bath
		@renters = []
	end

	def apply_renter?(applicant)
		puts applicant.credit_score > 600 && applicant.budget > @rent
	end

	def add_renter(tenant)
		@renters << tenant
	end

	def show_renters()
		puts "Unit #{@unit} has these renters: #{@renters.to_s()}"
	end

	def to_s
		renters.each do |i|
			puts "Name = #{i.name}, Budget = #{i.budget}, Credit Score = #{credit_score}" 
		end
	end
end
