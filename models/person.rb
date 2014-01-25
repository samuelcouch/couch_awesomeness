class Person
	attr_accessor :name, :awesomeness

	def initialize(name, awesomeness = 0)
		@name = name
		@awesomeness = awesomeness
	end 
end