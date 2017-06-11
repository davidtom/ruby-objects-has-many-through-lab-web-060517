class Song
  attr_accessor :name, :genre, :artist
  attr_writer
  attr_reader

  #class attribute(s)

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

end
