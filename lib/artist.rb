require 'pry'

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []

  end

#jimmy = Artist.new("Jimmy")
# jimmy.add_song("waterfall")

  def add_song(song)

    @songs.push(song)
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

  def self.song_count
    @@song_count
  end
#binding.pry
end
