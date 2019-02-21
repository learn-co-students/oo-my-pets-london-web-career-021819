require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    make_all_mood(:dogs, 'happy')
  end

  def play_with_cats
    make_all_mood(:cats, 'happy')
  end

  def feed_fish
    make_all_mood(:fishes, 'happy')
  end

  def sell_pets
    @pets.each { |type, pets| make_all_mood(type, 'nervous') }
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{pet_count(:fishes)} fish, #{pet_count(:dogs)} dog(s), and #{pet_count(:cats)} cat(s)."
  end

  private

  def make_all_mood(type, mood)
    @pets[type].each {|pet| pet.mood = mood}
  end

  def pet_count(type)
    if @pets[type]
      @pets[type].count
    else
      0
    end
  end
end
