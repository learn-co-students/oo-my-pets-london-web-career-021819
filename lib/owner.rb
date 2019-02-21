class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.reset_all
    @@all.clear
  end
  def say_species
    "I am a #{@species}."
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def buy_fish(name)
      @pets[:fishes] << Fish.new(name)
  end
  def walk_dogs
    self.pets[:dogs].each do |dogs|
    dogs.mood = "happy"
  end
end
  def play_with_cats
    self.pets[:cats].each do |cats|
    cats.mood = "happy"
  end
end
  def feed_fish
    self.pets[:fishes].each do |fishes|
    fishes.mood = "happy"
  end
end
  def sell_pets
    @pets.collect do |species, sold|
      sold.each do |pet|
        pet.mood = "nervous"
      end
    sold.clear
  end
end
  def list_pets
    dogs = @pets[:dogs].length
    cats = @pets[:cats].length
    fishes = @pets[:fishes].length
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
