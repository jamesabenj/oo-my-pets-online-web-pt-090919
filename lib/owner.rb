require "pry"
class Owner
  # code goes here
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name)
    @species = "human"
    @name = name 
    @@all << self 
  end 
  
  def say_species 
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def cats 
    Cat.all.select {|cat| cat.owner.name == self.name}
  end 
  
  def dogs 
    Dog.all.map {|dog| dog.owner.name == self.name}
    #binding.pry 
  end 
  
  def buy_cat(cat)
    Cat.new(cat, self)
    #binding.pry
  end 
  
  def buy_dog(dog)
    Dog.new(dog, self)
  end 
  
  def walk_dogs
  end 
  
  def feed_cats
  end 
  
  def sell_pets
  end 
  
  def list_pets
    
  end 
 
  
end