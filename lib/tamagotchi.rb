class Tamagotchi
  attr_accessor :name, :sleep_level, :food_level, :play_level
  def initialize(name)
    @name = name
    @sleep_level = 10
    @food_level = 10
    @play_level = 10
  end

  def is_alive?
    self.food_level > 0
  end

  def time_passes
    self.food_level = self.food_level - 1
    self.sleep_level = self.sleep_level - 1
    self.play_level = self.play_level - 1
  end

  def feed
    self.food_level = self.food_level + 1
  end

  def sleep
    self.sleep_level = 10
  end
end
