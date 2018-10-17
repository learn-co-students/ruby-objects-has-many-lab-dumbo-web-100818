class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    # artist.name ? artist.name : nil
    if artist
      return artist.name
    else
      return nil
    end

  end

end
