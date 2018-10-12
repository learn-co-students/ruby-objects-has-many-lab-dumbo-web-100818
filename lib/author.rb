class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(given_post)
    given_post.author = self
    @posts << given_post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    Post.all.count
  end
end
