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
    Cat.all.select {|cats| cats.owner.name == self.name}
  end 
  
  def dogs 
    Dog.all.select {|dogs| dogs.owner.name == self.name}
    #binding.pry 
  end 
  
  def buy_cat(cat)
    Cat.new(cat, self)
    #binding.pry
  end 
    
    
  

  

  
 
  
end