class Genre
  attr_accessor :name, :songs
  attr_writer
  attr_reader

  #class attribute(s)

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect{|s| s.artist}
  end

end
