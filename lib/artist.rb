require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  # def songs
  #   @songs
  # end

  def add_song(song)
    # self equals an instance of the artist_name
    #below we are pushing a song instance into the artists songs array
    self.songs << song
    #below we are now associating that song to the artists
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    #At this point we still need to associate the artist and song.
    #we already accomplished this with the add_song method
    add_song(song)
  end

  def self.song_count
    Song.all.count
  end

end
