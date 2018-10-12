require 'pry'
class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    songs.push(song)
    increment_song_count
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    @@song_count
  end

  def increment_song_count
    @@song_count += 1
  end

end
