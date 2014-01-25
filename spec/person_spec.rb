require './models/person'

describe Person do
  describe "on initialization" do

    it "sets the name" do
      d = Person.new("joe")
      d.name.should == "joe"
    end

    it "sets a default awesomeness level" do
      d = Person.new("joe")
      d.awesomeness.should == 0
    end

    it "sets an awesomeness level" do
      d = Person.new("joe", 10)
      d.awesomeness.should == 10
    end
  end
end