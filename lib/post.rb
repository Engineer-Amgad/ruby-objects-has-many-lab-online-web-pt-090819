class Post 
  attr_accessor :author, :name
  
  @@all = []
  
  def initialize(name, genre)
    @name = name 
    save 
  end
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def author_name
    self.author.name 
  end 
end 