class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@songs = []
  end 
  
  def add_song(song)
    #song.artist = self 
    @@songs << song
  end 
  
  def songs 
    #song.all.select {|song| song.artist == self}
    @@songs
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
end 