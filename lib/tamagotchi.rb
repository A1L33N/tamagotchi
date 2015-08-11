class Tamagotchi
  attr_accessor :name, :sleep_level, :food_level, :play_level
  def initialize(name)
    @name = name
    @sleep_level = 10
    @food_level = 10
    @play_level = 10
  end

  def is_alive?
    @food_level > 0
  end
end
