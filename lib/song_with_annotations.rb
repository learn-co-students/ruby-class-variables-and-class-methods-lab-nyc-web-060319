#A more real-life way to view this is as if you had an MP3 player and were composing a music library for it!

require 'pry'
class Song

    @@count = 0 #class var--how many songs in library?
    @@artists = [] #class var--list of all artists in library
    @@genres = [] #class var--list of all genres in library
    @@genre_count = {} #class var--hash {genre : amt of songs in that genre}
    @@artist_count = {} #class var--hash {artist : amt of songs by that artist}

    attr_reader :name, :artist, :genre, :count

    def initialize(name, artist, genre) #each song MUST be init'd with name, artist, and genre
        @name = name #set @name to = arg of name
        @artist = artist #set @artist to = arg of artist
        @genre = genre #set @genre to = arg of genre
        @@count += 1 #upon a new song init, add 1 to @@count (@@count is class var rep'ing # of songs in library) 
        @@artists << artist #upon new song init, add artist to @@artists (@@artists is a class var rep'ing artists in lib)
        @@genres << genre #upon new song init, add genre to @@genres (@@genres is a class var rep'ing type of songs (like a search filter, you'd look for Jazz, Funk, Soul...))
        
        if @@genre_count.include?(genre) 
            @@genre_count[genre] += 1 #If the @@genre_count hash already has type of song added, increase amt of songs in that genre by 1
        else    
            @@genre_count[genre] = 1 #If genre of song added does not yet exist, add that song type and set number of songs for that song type for 1 (since you just added song of that type)
        end
        
        #Very similar to @@genre_count!!
        if @@artist_count.include?(artist) #If @@artist_count hash already contains artist, increase amt of songs by that artist by 1 
            @@artist_count[artist] += 1
        else    
            @@artist_count[artist] = 1 #If @@artist_count hash does not contain artist, add that artist, and set number of songs by them equal to 1 (since you just added song by that artist)
        end
    end

    def self.count #Return total amount of songs
        @@count
    end

    def self.artists #Return the list of artists, BUT make sure each artist is only listed once (ex. don't want to go through library and see "Amy Winehouse", "Amy Winehouse", "Amy Winehouse")
        @@artists.uniq! #When self.artists is called, we permanently make sure that the @@artist list is unique
    end

    def self.genres #Return list of genres, BUT make sure each genre only shows up once (ex. if searhing music by type, don't want to see  "Jazz", "Jazz", "Jazz")
        @@genres.uniq! #Wehn self.genres is called, we permanently make sure that @@genres list in unique
    end

    def self.genre_count #Returns @@genre_count, a class var--hash {genre : amt_of_songs_in_that_genre} 
      @@genre_count  
    end

    def self.artist_count #Returns @@artist_count, a class var--hash {artist : amt_of_songs_by_that_artist}
        @@artist_count
    end
end

s1 = Song.new("Back To Black", "Amy Winehouse", "Soul")

s2 = Song.new("Amy Amy Amy", "Amy Winehouse", "Soul")

s3 = Song.new("Don't Speak", "No Doubt", "Ska")

s4 = Song.new("Eet", "Regina Spektor", "Indie")

s5 = Song.new("He Said I Can", "Sharon Jones and The Dap Kings", "Soul")



binding.pry