require 'rspec'
require './lib/tamagotchi'

describe Tamagotchi do
  describe "#initialize" do
    it 'sets name and starting life levels' do
      my_pet = Tamagotchi.new('Gator')
      expect(my_pet.name).to eq 'Gator'
      expect(my_pet.food_level).to eq 10
      expect(my_pet.sleep_level).to eq 10
      expect(my_pet.play_level).to eq 10
    end
  end
end
