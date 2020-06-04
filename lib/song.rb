
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

    def self.count_duplicates(array)
        hash = {}
        array.each do |e|
            if hash[e] == nil
                hash[e] = 1
            else
                hash[e] += 1
            end
        end
        return hash
    end

    def self.genre_count
        count_duplicates(@@genres)
    end

    def self.artist_count
         count_duplicates(@@artists)   
    end

end