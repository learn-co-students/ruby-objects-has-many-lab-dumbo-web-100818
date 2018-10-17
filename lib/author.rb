class Author

  attr_accessor :name, :posts, :author

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title_name)
   post = Post.new(title_name)
   add_post(post)
 end

  def self.post_count
    Post.all.count
  end
end
