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

  def asleep
    #@awake = false
    self.sleep_level = 10
  end

  def play
    self.play_level = self.play_level + 1
  end

  def status
    "Food level: #{self.food_level}, sleep level: #{self.sleep_level}, and play level: #{self.play_level}"
  end

  def emotion
    if (self.sleep_level + self.play_level + self.food_level) >= 30
      "happy"

    elsif (self.sleep_level + self.play_level + self.food_level) >= 21
      "content"
    else
      "grouchy"
    end
  end
  def wake_up
    @awake = true
    time = 3
    while @awake
      self.time_passes
      sleep 1
      time -= 1
      if time == 0
        @awake = false
      end
    end
    #every_n_seconds(5) { self.time_passes }
  end

  def every_n_seconds(n)
	  loop do
	    before = Time.now
	    yield
	    interval = n-(Time.now-before)
	    sleep(interval) if interval > 0
	  end
	end
end
