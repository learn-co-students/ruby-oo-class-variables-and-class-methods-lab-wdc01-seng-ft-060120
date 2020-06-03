class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        result = {}
        @@genres.each{|genre| result[genre] = @@genres.count(genre)}
        result
    end 

    def self.artist_count
        result = {}
        @@artists.each{|artist| result[artist] = @@artists.count(artist)}
        result
    end 
            



end 