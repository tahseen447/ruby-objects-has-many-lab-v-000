class Author
  attr_accessor :name , :post

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    self.posts << new_post
  end

  def posts
   @posts
  end

  def self.post_count
    puts "#{@posts.inspect}"
  end
end
