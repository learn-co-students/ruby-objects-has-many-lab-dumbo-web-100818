class Post


  attr_accessor :title, :author

    @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    # artist.name ? artist.name : nil
    if author
      return author.name
    else
      return nil
    end

  end
end
