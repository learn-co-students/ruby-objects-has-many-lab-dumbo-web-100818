require 'pry'

class Artist

  attr_accessor :name, :songs, :artist

@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end


  def add_song(song)
    #self equals and instance of an Artist
    #below we are pushing a song instance into and artist songs array
    self.songs << song
    #then associating that song for an artist
    song.artist = self
  end

  def add_song_by_name(song_name)
    #create a new instance of song with the song_name string as the parameter
    song = Song.new(song_name)
    # associated song to artist name
    #song.artist = self
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end
end
