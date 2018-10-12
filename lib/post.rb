class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def author_name
    return nil if !author
    return author.name if author
  end

end
