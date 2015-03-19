require 'sinatra'

get '/' do
  redirect '/sealions'
end

get '/sealions' do
  erb :index, locals: {lions: SeaLion.all}
end

post '/sealions' do
  redirect '/sealions'
end

get '/sealions/:id' do
  erb :show, locals: {lion: SeaLion.find(params[:id])}
end

put '/sealions/:id' do
  redirect '/sealions/:id'
end

delete '/sealions/:id' do
  redirect '/sealions'
end
