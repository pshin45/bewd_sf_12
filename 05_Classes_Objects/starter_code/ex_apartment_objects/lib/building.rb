#Building Class
class Building
	attr_accessor :name, :address, :num_apartments, :apartments
	def initialize(name, address, apartments)
		@name = name
		@address = address
		@num_apartments = apartments
		@apartments = []
	end

	def display_apartments()
		@apartments.each do |i|
			puts "Unit #{i.unit} has #{i.sqft} sqft, #{i.num_bedrooms} bed, #{i.num_bathrooms} bath, it's available!"
		end
	end
end

