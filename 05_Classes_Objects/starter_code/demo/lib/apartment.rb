class Apartment
	attr_accessor :unit, :sqft, :num_bedrooms, :num_bathrooms, :rent, :renters

	def initialize (unit, sqft, bed, bath) # No rent or renters because all new apartments have no rent or tenants to start.
		@unit = unit
		@sqft = sqft
		@num_bedrooms = bed
		@num_bathrooms = bath
		@rent = 0
		@renters = []
	end

	def to_s
		puts "The apartment is unit #{@unit}, is #{@sqft} sqft, and has #{@num_bedrooms} bedrooms and #{@num_bathrooms} bathrooms."
	end

	def is_occupied?()
		@renters != []
	end

	def rent_out(price, tenant)
		@rent = price
		add_renter(tenant) # Okay to call method even though it's defined later, because that's how Ruby works, checks all defined methods first before any are run
		puts "#{@unit} has been rented out to #{tenant} for $#{@rent}" # "@rent" can also be "price" FYI
	end

	def add_renter(tenant)
		@renters << tenant
	end
end
