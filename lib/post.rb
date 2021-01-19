class Post
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :title, :author

    def initialize(title)
        @title = title
        save
    end

    def save
        self.class.all << self
    end

    def author_name
        self.author ? self.author.name : nil
    end
end