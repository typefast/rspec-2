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
      @mp3.add_song(@song)
      expect(@mp3.tracks).to have_key("Title")
    end
  end
  
  describe "#list_songs" do 
    it "lists the title of each song" do 
      
      @mp3.add_song(@song)
      expect { (@mp3.list_songs) }.to output("Title\n").to_stdout
      
    end
  end
  
  
end