class Post

  attr_accessor :title, :post, :author, :author_name, :posts
  @@all = []
  @@post_count = 0

  def initialize(title)
    @title = title
    @posts = []
    # @author = nil
    # require 'pry'; binding.pry
    @@all << self   #pushes itself into the post
  end
  #
  # def author=(author_instance)
  # at author = author_instance
  # end
  #
  # def author
  #   at author
  # end

  def self.all
    @@all    #is a class method that returns an array of all post instances
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def posts
    @posts = []
  end

  def author_name
    if self.author   #if author has a name return it.

      self.author.name
    else
      # require 'pry';binding.pry
      return nil
    end
  end
end
