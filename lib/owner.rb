class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end


  def say_species
    "I am a #{@species}."
  end


  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end


  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end


  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end


  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end


  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end


  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end


  def sell_pets

    @pets.each do |category, pets_array|
      category = pets_array.map {|pet| pet.mood = "nervous"}
    end

    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
