class Song 
	@@all = []
	attr_accessor :name, :artist
	def initialize(name)
		@name = name
		@@all << self
		@artist = ""
	end
	def self.all
		@@all 
	end
	def name
		@name
	end
	# def artist=(artist)
	# 	@artist = artist
	# end
	# def artist
	# 	@artist
	# end
	def artist_name
		if self.artist == ""
			return nil
		else
		return self.artist.name
	end
	end



end
