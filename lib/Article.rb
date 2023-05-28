#This Article class is the single source of truth for the created model.

class Article
  #I added a reader for author and magazine for the sake of display and logging during tests but they can be removed safely
  #as the question did not require them.
  attr_reader :title, :author, :magazine  
  
  @@all = []

  def initialize(author:, magazine:, title:)
    @author = author 
    @magazine = magazine
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end

end
