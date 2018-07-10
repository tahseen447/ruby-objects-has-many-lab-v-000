class Author
  attr_accessor :name , :post
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def posts
   @posts
  end

  def self.post_count
    Post.all.count
  end

  def self.post_count
>>>>>>> 5521abe132599370b076b51d98f9aa08da507abd
  end
end
