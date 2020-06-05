require 'pry'
#==============================
class Song
    
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist        
    end
    #---------------------------------
    def self.count
        return @@count
    end

    def self.genres
        return (@@genres & @@genres)
    end

    def self.artists
        return (@@artists & @@artists)
    end

    def self.artist_count
        return histogram_helper(@@artists)
    end

    def self.genre_count
        return histogram_helper(@@genres)
    end 
    
    def self.histogram_helper(array)
        hash = {}

        array.each do |elmt|
            if hash[elmt]
               hash[elmt] += 1 
            else
                hash[elmt] = 1
            end
        end
        return hash
    end

    def self.tester
        binding.pry
    end
    #---------------------------------
end
#=====================================