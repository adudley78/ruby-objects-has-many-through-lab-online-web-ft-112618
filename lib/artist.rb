require 'pry'

class Artist

  attr_accessor :name#, :genre

  @@all = [ ]

  def initialize(name)
    @name = name
    # @genre = genre
    @songs = songs
    @songs = [ ]
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    # Song.new(name, self, genre)
    Song.new(name, self, genre)
    # song.artist = self
    # @songs << song
  end

  def genres
    # binding.pry
    #associate genres with songs
    songs.collect {|song| song.genre}
    # Genre.all.select {|genre| genre.songs}
  end

end
