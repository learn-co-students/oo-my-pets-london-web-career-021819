require "pry"
class Owner

  attr_accessor :name, :pets
  attr_reader :species
  attr_writer :mood

  @@all = []

def initialize(name=" ", species)
  @name = name
  @species = species
  @pets = {fishes: [], cats: [], dogs: []}
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
"I am a #{@species}."
end

def buy_fish(name)
fish = Fish.new(name)
@pets[:fishes] << fish
fish = self
end

def buy_cat(name)
cat = Cat.new(name)
@pets[:cats] << cat
cat = self
end

def buy_dog(name)
dog = Dog.new(name)
@pets[:dogs] << dog
dog = self
end

def walk_dogs
@pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end

def play_with_cats
@pets[:cats].each do |cat|
  cat.mood = "happy"
end
end

def feed_fish
@pets[:fishes].each do |fish|
  fish.mood = "happy"
end
end

def sell_pets
@pets.each do |animal, array|
  array.each do |mood, name|
  mood.mood = "nervous"
end
end
@pets.clear
end

def list_pets
"I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end



end
