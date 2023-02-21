class Magazine
    attr_reader :name, :category
    
    @@all = []
    
    def initialize(name, category)
      @name = name
      @category = category
      @articles = []
      @@all << self
    end
    
    def self.all
      @@all
    end
    
    def add_article(article)
      @articles << article
      article.magazine = self
    end
    
    def contributors
      @articles.map { |article| article.author }.uniq
    end
    
    def article_titles
      @articles.map { |article| article.title }
    end
    
    def contributing_authors
      @articles.map { |article| article.author }.uniq - [nil]
    end
    
  end
  