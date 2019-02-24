class Fish

    attr_reader :name
    attr_accessor :mood

  def initialize(name, mood="nervous")
  @name = name
  @mood = mood
  end

  def change_mood=(mood)
  @mood = (mood)
  end

end
