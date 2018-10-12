class Post
	@@all = []
	attr_reader :title
	attr_accessor :author
	def initialize(title)
		@title = title
		@author = ""
		@@all << self
	end
	def self.all
		@@all
	end
	def author_name
		if self.author == ""
			return nil
		else
		return self.author.name
	end
	end
end

