class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def add_post(pos)
    post.author = self 
  end 
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end 
  
  def add_post_by_name(name)
    post = Post.new(name)
    add_post(pos)
  end 
end 