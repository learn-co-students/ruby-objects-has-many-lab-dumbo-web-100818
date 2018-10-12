class Artist

  attr_accessor :name, :songs

  @@count = 0

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_song(song)
    song.artist = self
    @@count+=1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    new_song.artist = self
    @@count+=1
  end

  def self.song_count
    @@count
  end

end
