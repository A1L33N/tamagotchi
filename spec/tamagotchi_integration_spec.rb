require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application

describe 'tamagotchi path', { type: :feature } do
  it 'takes user input for tamagotchi name and displays tamagotchi' do
    visit '/'
    fill_in 'name', with: 'Gator'
    click_button "Submit"
    expect(page).to have_content "Gator"
  end

end
