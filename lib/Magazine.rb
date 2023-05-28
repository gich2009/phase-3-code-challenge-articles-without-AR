class Magazine
  attr_reader :name, :category

  @@all = []

  def initialize(name:, category:)
    begin 
      raise ArgumentError, "Name of #{self.class.name} must be a string" unless name.is_a?(String) 
      raise ArgumentError, "Category of #{self.class.name} must be a string" unless category.is_a?(String) 
      @name = name
      @category = category
      @@all << self
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
  end


  #I wrote custom getters instead of using attr_writers to ensure I check that the fields only accept strings.
  def name=(name)
    begin
      raise ArgumentError, "Name of #{self.class.name} must be a string" if !name.is_a?(String) 
      @name = name
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
  end


  def category=(category)
    begin 
      raise ArgumentError, "Category of #{self.class.name} must be a string" if !category.is_a?(String) 
      @category = category
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
  end


  def self.all
    @@all
  end


  def contributors
    contributors_for_this_magazine = self.articles_for_this_magazine.map(&:author).uniq
  end


  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end


  def article_titles
    article_titles_for_this_magazine  = self.articles_for_this_magazine.map(&:title).uniq
  end


  def contributing_authors
    authors_for_this_magazine = self.articles_for_this_magazine.map(&:author)
    duplicated_authors_for_this_magazine = Magazine.remove_single_occurrences(authors_for_this_magazine).uniq
  end


  private
  #The following are the helper methods.
  def articles_for_this_magazine
    Article.all.filter {|article| article.magazine == self}
  end

  def self.remove_single_occurrences(array)
    counts = Hash.new(0)
    array.each { |element| counts[element] += 1 }
    array.reject { |element| counts[element] == 1 }
  end
  
end