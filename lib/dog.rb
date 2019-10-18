class Dog
  # code goes here
  attr_reader :name
  attr_writer :owner, :mood
  
  @@all = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner 
    @mood = "nervous"
    @@all << self 
    #binding.pry 
  end 
  
  def self.all 
    @@all 
  end 
  
end