class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []
@@genreCount = {}
@@artistCount = {}

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

def self.genres
  @@genres.uniq!
end

def self.artists
  @@artists.uniq!
end

def self.genre_count
  @@genres.each do |genre|
    if @@genreCount.keys.include?(genre)
      @@genreCount[genre] +=  1
    else
      @@genreCount[genre] = 1
    end
  end
  return @@genreCount
end

def self.artist_count
  @@artists.each do |artist|
    if @@artistCount.keys.include?(artist)
      @@artistCount[artist] +=  1
    else
      @@artistCount[artist] = 1
    end
  end
  return @@artistCount
end

























end
