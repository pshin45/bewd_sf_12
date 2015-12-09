#Person Class.
class Person
	attr_accessor :name, :budget, :credit_score

	def initialize (name, budget, score)
		@name = name
		@budget = budget
		@credit_score = score
	end
end
