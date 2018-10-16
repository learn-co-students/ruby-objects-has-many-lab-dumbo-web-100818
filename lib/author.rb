class Author
  attr_accessor :name, :author
  @@posts = []
  def initialize(name)
    @name = name
  end

  def posts
    @@posts
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
