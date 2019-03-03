class Hero 
  attr_reader :name, :power, :biography
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(details)
    @name = details[:name]
    @power = details[:power]
    @biography = details[:biography]
    @@all << self
  end
  
end