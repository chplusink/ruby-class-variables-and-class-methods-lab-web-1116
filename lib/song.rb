require "pry"

class Song

  attr_reader :name, :artist, :genre

  ALL = []

  @@count = 0
  @@genres = []
  @@artists = []
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
    self.class.all << self
  end


  ## CLASS METHODS
  def self.all
    ALL
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      genre_count[genre] ? genre_count[genre] += 1 : genre_count[genre] = 1
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist] ? artist_count[artist] += 1 : artist_count[artist] = 1
    end
    artist_count
  end

end
