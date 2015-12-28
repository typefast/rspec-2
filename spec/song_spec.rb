require 'song'

RSpec.describe Song do 
  
  before :each do 
    @song = Song.new
  end
  
  describe "#new" do 
    it "creates an instance of Song" do 
      expect(@song).to(be_an_instance_of(Song))
    end
  end
end