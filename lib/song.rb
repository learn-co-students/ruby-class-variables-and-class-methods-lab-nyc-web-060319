require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        # unique_genre = []
        # genres.each do |genre|
        #     unique_genre[genre] ||= []
        # end
        # unique_genre
        @@genres.uniq
    end

    def self.artists
        # unique_artist = []
        # artists.each do |artist|
        #     unique_artist[artist] ||= []
        # end
        # unique_artist
        @@artists.uniq
    end

    def self.genre_count
        genre_list = {}
        genres.each do |genre|
            if genre_list.has_key?(genre)
                genre_list[genre] += 1
            elsif
                genre_list[genre] = 1
            end
        end
        genre_list
    end

    def self.artist_count
        artist_list = {}
        artists.each do |artist|
            if artist_list.has_key?(artist) # if artists_list[artist]
                artist_list[artist] += 1
            elsif
                artist_list[artist] = 1
            end
        end
        artist_list
    end


    ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
    binding.pry

end # end Song class