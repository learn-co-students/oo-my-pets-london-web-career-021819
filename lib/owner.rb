require 'pry'
class Owner

attr_reader :species
attr_accessor :name, :pets
@@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.size
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    @pets[:dogs].map {|dog| dog.mood = 'nervous'}
    @pets[:cats].map {|cat| cat.mood = 'nervous'}
    @pets[:fishes].map {|fish| fish.mood = 'nervous'}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
