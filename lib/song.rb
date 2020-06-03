class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists.push(artist)
        @@genres.push(genre)
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
        genre_hash = Hash.new
        @@genres.each{|genre| genre_hash[genre] = @@genres.count(genre)}
        genre_hash
    end

    def self.artist_count
        artist_hash = Hash.new
        @@artists.each{|artist| artist_hash[artist] = @@artists.count(artist)}
        artist_hash

    end


end