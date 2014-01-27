require './models/person'
require './models/awesomeness'
require 'faker'

I18n.enforce_available_locales = false

people = [Person.new(Faker::Name.name, Random.rand(100)), 
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100)),
              Person.new(Faker::Name.name, Random.rand(100))]

awesomeness_demo = Awesomeness.new(people)

puts "The most awesome person is " + awesomeness_demo.mostAwesome
puts "The average awesomeness is " + awesomeness_demo.avgAwesomeness.to_s
puts "The top ten awesome people are: "
awesomeness_demo.topTen.each do |person|
  puts person.name + ", " + person.awesomeness.to_s + " awesomenesses"
end