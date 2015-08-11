require 'sinatra'
require 'sinatra/reloader'
require './lib/tamagotchi'
also_reload('lib/**/*.rb')

get('/') do
 erb(:index)
end
get '/feed' do
  @pet = Tamagotchi.retrieve_pet
  @pet.feed
  erb :tamagotchi
end

post '/tamagotchi' do

  @pet = Tamagotchi.new(params['name'])
  @pet.save
  erb :tamagotchi
end
