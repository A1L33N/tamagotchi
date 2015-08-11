require 'rspec'
require './lib/tamagotchi'

describe Tamagotchi do
  before do
    @my_pet = Tamagotchi.new('Gator')
  end
  describe "#initialize" do
    it 'sets name and starting life levels' do
      expect(@my_pet.name).to eq 'Gator'
      expect(@my_pet.food_level).to eq 10
      expect(@my_pet.sleep_level).to eq 10
      expect(@my_pet.play_level).to eq 10
    end
  end

  describe "#is_alive?" do
    it "checks if the tamagotchi food level is above 0" do
      expect(@my_pet.is_alive?).to eq true
    end

    it 'is dead if the food_level is 0' do
      @my_pet.food_level = 0
      expect(@my_pet.is_alive?).to eq false
    end
  end

  describe '#time_passes' do
    it 'decreases all levels of tamagotchi' do
      @my_pet.time_passes
      expect(@my_pet.food_level).to eq 9
      expect(@my_pet.sleep_level).to eq 9
      expect(@my_pet.play_level).to eq 9
    end
  end
end
