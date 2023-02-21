class Author
    attr_reader :name
    
    @@all = []

    def initialize(name)
      @name = name
      @articles = []
      @@all << self
    end
    
    def add_article(article)
      @articles << article
      article.author = self
    end
    
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end
    def self.all
      @@all
    end
    def topic_areas
      topics = []
      arti
    end
  end