class Ship
  
  attr_accessor :name, :type, :booty_attributes
  
  @@all = []
  
  def initialize(name:, weight:, height:)
    @name = name
    @weight = weight
    @height = height
    @@all < self
  end
  
  def self.all
    @@all
  end
  
end