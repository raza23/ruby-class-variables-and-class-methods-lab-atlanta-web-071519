require 'pry'

class Song
    attr_accessor :name,:artist,:genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        
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
        @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

      
        binding.pry
        end
    
    def self.artist_count
        
            @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
    end

end
