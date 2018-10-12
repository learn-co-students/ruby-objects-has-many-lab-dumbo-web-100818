class Song
  attr_accessor :name, :all, :artist
  def initialize(name)
    @name = name
    @@all = []

  end

  def all
    @@all
  end

def name(name)
  @name = name
end

 def add_song(song)
   song.artist = self
   @song << song
 end

 def songs
   @songs = []
 end

end
