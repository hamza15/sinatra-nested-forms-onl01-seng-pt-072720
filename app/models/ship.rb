class Ship
  
  attr_accessor :name, :type, :booty_attributes
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @weight = params[:type]
    @height = params[:booty_attributes]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end