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

 def artist_name
   if self.artist.name == ""    #self is a song, pool the artist name
     return nil
   else
     return self.artist.name
 end


end


it 'knows the name of its artist' do
  drake = Artist.new('Drake')
  song.artist = drake
  expect(song.artist_name).to eq('Drake')
