class Awesomeness
	attr_accessor :people

	def initialize (people)
		@people = people
	end

	def mostAwesome
		people = @people
		people.sort! { |a,b| a.awesomeness <=> b.awesomeness }
		name = people.last.name
		return name
	end

	def avgAwesomeness
		sum = 0
		@people.each do |person|
			sum += person.awesomeness
		end
		return (sum.to_f/@people.length.to_f)
	end

	def topTen
		topTen = @people
		topTen.sort! { |a,b| a.awesomeness <=> b.awesomeness }
		if topTen.length > 10
			return topTen.last(10)
		else
			return topTen
		end
	end

	def printTopTen
		@people.topTen.each do |person|
			puts person.name
		end
	end
end
