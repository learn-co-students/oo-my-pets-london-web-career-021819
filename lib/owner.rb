# an owner has many pets, knows about all of them, and can do many things with them

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :mood

  @@all = []

  def initialize(name)
    @name = name
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

  def species
    @species = "human"
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    # iterate over dogs array and change mood
    #self.pets[:dogs].each { |dog| dog.mood = "happy" }
    set_pets_mood(:dogs, "happy")
  end

  def play_with_cats
    # self.pets[:cats].each { |cat| cat.mood = "happy" }
    set_pets_mood(:cats, "happy")
  end

  def feed_fish
    # self.pets[:fishes].each { |fish| fish.mood = "happy" }
    set_pets_mood(:fishes, "happy")
  end

  def set_pets_mood(pet_type, mood)
    self.pets[pet_type].each { |pet| pet.mood = mood }
  end

  # this is a very misleading test!!!
  def sell_pets
    self.pets.each do |type, pets|
      pets.each { |pet| pet.mood = "nervous" }
      pets.clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
