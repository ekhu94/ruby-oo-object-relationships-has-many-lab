class Author
    @@all = []

    def self.all
        @@all
    end

    def self.post_count
        Post.all.length
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def posts
        Post.all.select { |post| post.author == self }
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end
end