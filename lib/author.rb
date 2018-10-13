class Author

  attr_accessor :name, :posts

  @@allposts = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@allposts +=1
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    @posts << newpost
    newpost.author = self
    @@allposts +=1
  end

  def self.post_count
    @@allposts
  end
end
