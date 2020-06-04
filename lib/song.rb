require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
         @@count += 1
         @@genres << genre
         @@artists << artist
         @name = name
         @artist = artist
         @genre = genre
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
        hash = {}
        @@genres.each do |genre|
             if hash[genre]
                 hash[genre] += 1
             else
                hash[genre] = 1
             end
            #binding.pry
        end
        hash
        
    end

    def self.artist_count
        art_hash = {}
        @@artists.each do |artist|
             if art_hash[artist]
                 art_hash[artist] += 1
             else
                art_hash[artist] = 1
             end
            #binding.pry
        end
        art_hash
        
    end
end
    
