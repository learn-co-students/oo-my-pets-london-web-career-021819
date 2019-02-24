require 'pry'

class Owner

  attr_accessor :pets, :name
  attr_reader :species
  #attr_reader

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    newfish = Fish.new(name)
    @pets[:fishes] << newfish
    @@all << newfish
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
    @@all << self
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
    @@all << self
  end

  def walk_dogs
    @pets[:dogs].each do
      |dog| dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do
      |cat| cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do
      |fish| fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animals|
      animals.each do
        |e|
          e.mood = "nervous"
        end
      animals.clear
      end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

#  binding.pry
end




# When an owner buys a new pet, the
# buy_cat/buy_dog/buy_fish methods take in an argument of a name. You must take that name and do the following:
#
# Make a new instance of the appropriate pet, initializing
#  it with that name.
# Associate that new pet instance to the owner by adding it to
# the appropriate array-value of the @pets hash stored in the pets attr_accessor.
