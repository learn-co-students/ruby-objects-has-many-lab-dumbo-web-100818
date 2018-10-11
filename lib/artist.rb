class Artist
  attr_accessor :name
  @@all_songs = []

  def initialize(name)
    @name = name
  end

  def songs
    @@all_songs
  end

  def add_song(song)
    @@all_songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song_name = Song.new(song_name)
    song_name.artist = self
    @@all_songs << song_name
  end

  def self.song_count
    @@all_songs.count
  end

end
