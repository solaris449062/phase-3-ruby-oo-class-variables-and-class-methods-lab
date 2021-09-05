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
        @@artists << artist
    end

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
        tally = {}
        for i in 0..(@@genres.length - 1)
            if !tally.include?(@@genres[i])
                tally[@@genres[i]] = 1
            else
                tally[@@genres[i]] += 1
            end
        end
        return tally
    end

    def self.artist_count
        tally = {}
        for i in 0..(@@artists.length - 1)
            if !tally.include?(@@artists[i])
                tally[@@artists[i]] = 1
            else
                tally[@@artists[i]] += 1
            end
        end
        return tally
    end

end