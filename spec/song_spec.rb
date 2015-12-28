require 'song'

RSpec.describe Song do 
  
  before :each do 
    @song = Song.new("Title", "Artist")
  end
  
  describe "#new" do 
    it "creates an instance of Song" do 
      expect(@song).to(be_an_instance_of(Song))
    end
    
    it "With too few arguments throws an error" do 
      expect { Song.new("Title") }.to raise_error(ArgumentError)
    end
  end
  
  describe "#to_s" do 
    it "returns a string representation of a song instance" do 
      expect(@song.to_s).to eq("Title: #{@song.title} - Artist: #{@song.artist}")
    end
  end
end