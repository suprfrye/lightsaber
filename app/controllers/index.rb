require 'sinatra'

get '/' do
  redirect '/sealions'
end

get '/sealions' do
  @lions = SeaLion.all
  erb :index
end

post '/sealions' do
  redirect '/sealions'
end

get '/sealions/:id' do
  @lion = SeaLion.find_by(id: params[:id])
  erb :show
end

put '/sealions/:id' do
  redirect '/sealions'
end

delete '/sealions/:id' do
  lion = SeaLion.find_by(id: params[:id])
  lion.destroy
  redirect '/sealions'
end
