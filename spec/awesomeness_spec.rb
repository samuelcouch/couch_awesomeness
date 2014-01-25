require './models/person'
require './models/awesomeness'

describe Awesomeness do

  before(:each) do
      @people = [Person.new("joe", 1), 
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
      @aTest = Awesomeness.new(@people)
    end

  describe "on initialization" do
    it "accepts array of people" do
      @aTest.people.any? == true
    end
  end

  describe "on request" do
    it "retrieves the most awesome person" do
      @aTest.mostAwesome.should == "bo"
    end

    it "calculates the average awesomeness" do
      @aTest.avgAwesomeness.should == 7.5
    end

    it "should return top 10 most awesome people" do
      names = []
      @aTest.topTen.each do |person|
        names << person.name
      end 
      names.should =~ ["fred", "ross", "jack", "frank", "will", "tim", "dog", "rat", "job", "bo"]
    end
  end
end





