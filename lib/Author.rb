class Author
  attr_reader :name 
  
  @@all = []

  #I added an error handler here incase a user tries to instantiate an author with a name that is not of type string.
  def initialize(name:)
    begin
      raise ArgumentError, "Name of #{self.class.name} must be a string" unless name.is_a?(String)
      @name = name
      @@all << self
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
  end


  def articles
    Article.all.filter { |article| article.author == self }
  end


  def magazines
    #Returns the magazine titles
    magazines_for_this_author = self.articles.map(&:magazine).uniq # { |article| article.magazine }

    #Returns the magazine instances/objects.
    Magazine.all.filter { |magazine| magazines_for_this_author.include?(magazine) }
  end


  def add_article(magazine:, title:)
    new_article = Article.new(author: self, magazine: magazine, title: title)
  end


  def topic_areas
    self.magazines.map(&:category).uniq
  end

  
  def self.all
    @@all
  end

end