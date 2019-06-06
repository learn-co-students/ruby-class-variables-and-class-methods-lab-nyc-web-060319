require 'pry'
class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}

    attr_reader :name, :artist, :genre, :count

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        
        if @@genre_count.include?(genre)
            @@genre_count[genre] += 1
        else    
            @@genre_count[genre] = 1
        end

        if @@artist_count.include?(artist)
            @@artist_count[artist] += 1
        else    
            @@artist_count[artist] = 1
        end
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
      @@genre_count  
    end

    def self.artist_count
        @@artist_count
    end
end

s1 = Song.new("Back To Black", "Amy Winehouse", "Soul")

s2 = Song.new("Amy Amy Amy", "Amy Winehouse", "Soul")

s3 = Song.new("Don't Speak", "No Doubt", "Ska")

s4 = Song.new("Eet", "Regina Spektor", "Indie")

s5 = Song.new("He Said I Can", "Sharon Jones and The Dap Kings", "Soul")



binding.pry