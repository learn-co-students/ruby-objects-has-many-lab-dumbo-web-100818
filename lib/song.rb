require 'pry'

class Song
    attr_reader
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
      @name = name
      #@@all = []
      @@all.push(self)
      @artist = ""
      #binding.pry
    end

    def self.all
      @@all
    end

    def artist_name
      if self.artist != ""
        return self.artist.name
      else
        return nil
      end
    end

    def new_song(song)
      newsong = Song.new(song)
    end


end
