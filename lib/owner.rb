class Owner
  attr_accessor :name
  attr_reader :species, :pets
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.size
  end
  
  def initialize(name)
    @@all << self
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    f = Fish.new(name)
    @pets[:fishes] << f
  end
  
  def buy_dog(name)
    d = Dog.new(name)
    @pets[:dogs] << d
  end
  
  def buy_cat(name)
    c = Cat.new(name)
    @pets[:cats] << c
  end
  
  def walk_dogs
    arr = @pets[:dogs]
    arr.each {|e| e.mood = "happy"}
  end
  
  def play_with_cats
    arr = @pets[:cats]
    arr.each {|e| e.mood = "happy"}
  end
  
  def feed_fish
    arr = @pets[:fishes]
    arr.each {|e| e.mood = "happy"}
  end
  
  def sell_pets
    key_arr = @pets.keys
    
    key_arr.each do |k_e|
      pets = @pets[k_e]
    end
  end
end