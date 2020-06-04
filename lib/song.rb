require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  attr_reader

  @@songs = []
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@songs << self
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_counts = @@genres.reduce({}) {|memo, genre| !memo[genre] ? memo[genre] = 1 : memo[genre] += 1 ; memo}
  end

  def self.artist_count
    artist_counts = @@artists.reduce({}) {|memo, artist| !memo[artist] ? memo[artist] = 1 : memo[artist] += 1 ; memo}
  end
end
