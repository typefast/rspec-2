require 'mp3'

Rspec.describe Mp3 do 
  
  before :each do 
    @mp3 = Mp3.new
  end 
  
  describe "#new" do 
    it "creates an instance of Mp3" do 
      expect(mp3 = Mp3.new).to be_an_instance_of Mp3
    end
  end
  
end