class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] +=1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
    #returns a hash of artists and the number of songs that have those artists
  end


  def self.genre_count
    #returns a hash of genres and the number of songs that have those genres
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] +=1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end



end
