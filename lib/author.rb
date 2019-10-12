class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end 
  
  def add_post(pos)
    pos.author = self 
  end 
  
  def posts 
    Post.all.select {|pos| pos.author == self}
  end 
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_post_by_name(name)
    pos = Post.new(name)
    add_post(pos)
  end 
end 