#This Article class is the single source of truth for the created model.

class Article
  #I added a reader for author and magazine for the sake of display and logging during tests but they can be removed safely
  #as the question did not require them.
  attr_reader :title, :author, :magazine  
  
  @@all = []


  #The initializer also has a try-catch/ begin-raise-rescue block to handle errors when the class is initialized with unexpected data types.
  def initialize(author:, magazine:, title:)
     begin
      raise ArgumentError, "Name of #{self.class.name} must be a string" unless title.is_a?(String)
      raise ArgumentError, "Magazine of #{self.class.name} must be a Magazine instance" unless magazine.is_a?(Magazine)
      raise ArgumentError, "Author of #{self.class.name} must be an Author instance" unless author.is_a?(Author)
      @author = author 
      @magazine = magazine
      @title = title
      @@all << self
    rescue ArgumentError => e
      puts "Error: #{e.message}"
    end
    
  end
  
  def self.all
    @@all
  end

end
