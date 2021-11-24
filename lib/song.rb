require "pry"

class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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
        genre_hash = {}
        @@genres.map{|genre| genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1}
        genre_hash
    end

    def self.artist_count
        @@artists.tally
    end

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end


end
