require "pry"

class Artist

  attr_accessor :name, :songs



  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    #establish artist name here so we can pull it into the song class
    #the song class then can associate the .artest variable and assign the song to an artist
    new_song.artist = self
    @songs << new_song
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @songs << new_song
  end

  def self.song_count
    Song.all.count
  end




end
