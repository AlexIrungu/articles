class Author
    attr_reader :name
    
    def initialize(name)
      @name = name
      @articles = []
    end
    
    def add_article(article)
      @articles << article
      article.author = self
    end
    
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end
  end