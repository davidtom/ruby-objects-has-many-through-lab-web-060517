class Artist
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
    song.artist = self
  end

  def genres
    self.songs.collect {|s| s.genre}
  end

end
