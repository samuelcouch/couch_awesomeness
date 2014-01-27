require './models/person'
require './models/awesomeness'

people = [Person.new("joe", Random.rand(100)), 
              Person.new("bob", Random.rand(100)),
              Person.new("sam", Random.rand(100)),
              Person.new("tom", Random.rand(100)),
              Person.new("fred", Random.rand(100)),
              Person.new("ross", Random.rand(100)),
              Person.new("jack", Random.rand(100)),
              Person.new("frank", Random.rand(100)),
              Person.new("will", Random.rand(100)),
              Person.new("tim", Random.rand(100)),
              Person.new("dog", Random.rand(100)),
              Person.new("rat", Random.rand(100)),
              Person.new("job", Random.rand(100)), 
              Person.new("bo", Random.rand(100))]

awesomeness_demo = Awesomeness.new(people)

puts "The most awesome person is " + awesomeness_demo.mostAwesome
puts "The average awesomeness is " + awesomeness_demo.avgAwesomeness.to_s
puts "The top ten awesome people are: "
awesomeness_demo.topTen.each do |person|
  puts person.name + ", " + person.awesomeness.to_s + " awesomenesses"
end