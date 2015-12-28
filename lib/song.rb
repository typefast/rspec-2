class Song
  attr_reader :title, :artist
  
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
  
  def to_s
    "Title: #{@title} - Artist: #{@artist}"
  end
end