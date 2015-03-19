require 'sinatra'

get '/' do
  redirect '/sealions'
end

get '/sealions' do
  lions = SeaLion.pluck(:name)
  "Let's welcome our new cubs: #{lions.join(', ')}!"
end

post '/sealions' do
  redirect '/sealions'
end

get '/sealions/:id' do
  lion = SeaLion.find(params[:id])
  "Hi, I'm #{lion.name}.\nYou can find me in #{lion.location}.\nMy favorite food is #{lion.favorite_food}."
end

put '/sealions/:id' do
  redirect '/sealions'
end

delete '/sealions/:id' do
  lion = SeaLion.find(params[:id])
  lion.destroy
  redirect '/sealions'
end
