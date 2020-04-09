class Genre

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
   Song.all.select {|song| song.genre == self}
  end

  def artists
    #iterates over the genre's collection of songs and collects the artist that owns each song.
    songs.map {|song| song.artist}
  end

end
