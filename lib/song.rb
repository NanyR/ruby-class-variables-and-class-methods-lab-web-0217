class Song

  @@count=0
  @@genres=[]
  @@artists=[]
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres <<genre
    @@artists <<artist
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
    create_hash(@@genres)
  end

  def self.artist_count
    create_hash(@@artists)
  end

  def self.create_hash(array)
    hash={}
    array.each do |key|
      if hash[key]
        hash[key]+=1
      else
        hash[key]=1
      end
    end
    hash
  end

end
