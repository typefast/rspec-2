require 'song'
require 'mp3'

RSpec.describe Mp3 do 
  
  before :each do 
    @song = Song.new("Title", "Artist")
    @mp3 = Mp3.new
  end 
  
  describe "#new" do 
    it "creates an instance of Mp3" do 
      expect(@mp3).to(be_an_instance_of(Mp3))
    end
    
    it "Initializes Mp3 with an empty hash" do 
      expect(@mp3.tracks).to eq({})
    end
  end
  
  describe "#add_song" do 
    it "Adds a song to the mp3 tracks hash" do 
      expect(@mp3.tracks).to eq(@mp3.add_song(@song))
    end
  end
  
  
end