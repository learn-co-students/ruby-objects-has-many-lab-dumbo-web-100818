class Song
  attr_accessor :name, :all, :artist
  @@all = []

  def initialize(name)
    @name = name
    @artist = ""
    @@all << self  #instance of the object, which is the Song
  end

  def self.all
    @@all        #calls @@all 
  end



 def add_song(song)
   song.artist = self
   @song << song
 end

 def songs
   @songs = []
 end

end
