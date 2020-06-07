require "pry"
class Song
    attr_accessor :name, :genre , :artist 
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name,artist, genre)
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

    def self.genres
       @@genres.uniq
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genre_count
        hash_genre = {}
        @@genres.each {|key| hash_genre[key] ? hash_genre[key] += 1 : hash_genre[key] = 1 }
        hash_genre   
    end 

    def self.artist_count
        hash_arstist = {}
        @@artists.each {|key| hash_arstist[key] ? hash_arstist[key]+= 1 : hash_arstist[key] = 1 }
        hash_arstist
    end 

    
end 