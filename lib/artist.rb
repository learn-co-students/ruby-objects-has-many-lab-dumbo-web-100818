require 'pry'
class Artist
    attr_accessor :name, :songs
    #set a class instance variable
    @@sound_count = 0

    def initialize(name)
        @name = name
        #initialize an empty array of songs so we can shuvel songs into it
        @songs =  []
    end
    #.artist refers to the instance variable :artist in Song
    #add a song to the songs list
    def add_song(song)
        #set song artist to self
        #self refers to the Artist Name
        #when self is called it refers back to the argument
        #initialize(argument)
        song.artist = self
        @songs << song
        @@sound_count += 1
    end

    #create a new song with a name given in an argument
    #the new song should have the artist tied to it

    def add_song_by_name(song_name)
        #Song.new creates a new song through the initialize function 
        new_song = Song.new(song_name)
        add_song(new_song)
    end
    # create class method (setter) in order to use @@sound_count
    def self.song_count
        @@sound_count
    end





end
