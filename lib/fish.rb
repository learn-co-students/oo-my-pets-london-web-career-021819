class Fish
  # code goes here
  attr_reader :name, :species
  attr_accessor :mood
  def initialize(name, mood= "nervous")
    @name = name
    @species = species
    @mood = mood
  end

  def say_species
    @species
  end
end
