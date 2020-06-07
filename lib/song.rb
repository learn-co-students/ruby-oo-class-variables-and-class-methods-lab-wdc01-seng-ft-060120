require 'pry'
class Song
    attr_reader :name, :artist, :genre
    
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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
        genre_hash = {}
        self.genres.each do |uniq_genre|
            genre_hash[uniq_genre] = @@genres.select {|genre| genre == uniq_genre}.count
        end
        return genre_hash
    end

    def self.artist_count
        artist_hash = {}
        self.artists.each do |uniq_artist|
            artist_hash[uniq_artist] = @@artists.select {|artist| artist == uniq_artist}.count
        end
        return artist_hash
    end
end





