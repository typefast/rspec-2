class Mp3 
  attr_accessor :tracks
  
  def initialize
    @tracks = {}
  end
  
  def add_song(song)
    @tracks[song.title] = song
  end
  
  def list_songs
    @tracks.each {|title, artist| puts title }
  end
end