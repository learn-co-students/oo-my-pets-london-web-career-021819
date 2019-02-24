require 'pry'

class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    # @name = name
    @species = species
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}

    @@all << self

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
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)  #create new instance of a fish and add into fishes array within the @pets hash
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect do |dog| #iterate over the pets hash down to the dogs array. Collect iterates over the dogs
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat| #iterate over the pets hash down to the cats array. Collect iterates over the dogs
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish| #iterate over the pets hash down to the fishes array. Collect iterates over the dogs
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets_array|
      pets_array.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end


end
