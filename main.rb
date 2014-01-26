require './models/person'
require './models/awesomeness'

people = [Person.new("joe", 1), 
              Person.new("bob", 2),
              Person.new("sam", 3),
              Person.new("tom", 4),
              Person.new("fred", 5),
              Person.new("ross", 6),
              Person.new("jack", 7),
              Person.new("frank", 8),
              Person.new("will", 9),
              Person.new("tim", 10),
              Person.new("dog", 11),
              Person.new("rat", 12),
              Person.new("job", 13), 
              Person.new("bo", 14)]

awesomeness_test = Awesomeness.new(people)

puts "The most awesome person is " + awesomeness_test.mostAwesome
puts "The average awesomeness is " + awesomeness_test.avgAwesomeness.to_s
puts "The top ten awesome people are: "
awesomeness_test.topTen.each do |person|
  puts person.name + ", " + person.awesomeness.to_s + " awesomenesses"
end