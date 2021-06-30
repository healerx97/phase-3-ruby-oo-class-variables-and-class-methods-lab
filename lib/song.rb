class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre

        @@artists << artist

        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres & @@genres
    end

    def self.artists
        @@artists & @@artists
    end

    def self.genre_count
        returnArry = {}
        @@genres.each do |genre|
            if returnArry[genre]
                returnArry[genre] += 1
            else
                returnArry[genre] = 1
            end
        end
        returnArry
    end
    def self.artist_count
        returnArry = {}
        @@artists.each do |artist|
            if returnArry[artist]
                returnArry[artist] += 1
            else
                returnArry[artist] = 1
            end
        end
        returnArry
    end


end