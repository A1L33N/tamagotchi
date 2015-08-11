require 'sinatra'
require 'sinatra/reloader'
require './lib/tamagotchi'
also_reload('lib/**/*.rb')

get('/') do
  Tamagotchi.clear
 erb(:index)
end
get '/feed' do
  @pet = Tamagotchi.retrieve_pet
  @pet.feed
  redirect '/tamagotchi'
end

get '/play' do
  @pet = Tamagotchi.retrieve_pet
  @pet.play
  redirect '/tamagotchi'
end

post '/tamagotchi' do

  @pet = Tamagotchi.new(params['name'])
  @pet.save
  erb :tamagotchi
end

get '/sleep' do
  @pet = Tamagotchi.retrieve_pet
  @pet.asleep
  redirect '/tamagotchi'
end

get '/tamagotchi' do
  @pet = Tamagotchi.retrieve_pet
  @pet.time_passes
  erb :tamagotchi
end
