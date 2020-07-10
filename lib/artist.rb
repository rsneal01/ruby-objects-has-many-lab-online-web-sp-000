class Artist
  
  attr_accessor :name
  # why we use these, where do we see it implemented in the code
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
    # whats happening here?
  end
  
  def add_song(song)
    song.artist = self
    # how does this work? artist= method is not defined in this class?
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end
  
  def self.song_count
    Song.all.count
  end
  
end