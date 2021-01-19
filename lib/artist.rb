class Artist
    @@all = []

    def self.all
        @@all
    end

    def self.song_count
        Song.all.length
    end

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def save
        self.class.all << self
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end
end