require 'sinatra'

get '/' do
  redirect '/sealions'
end

get '/sealions' do
  @lions = SeaLion.all
  erb :index
end

get '/sealions/new' do
  erb :new
end

post '/sealions' do
  @new_lion = SeaLion.new(name: params[:name],
                          location: params[:location],
                          favorite_food: params[:favorite_food])
  if @new_lion.save
    redirect "/sealions/#{@new_lion.id}"
  else
    [404, "Could not add cub."]
  end
end

get '/sealions/:id' do
  @lion = SeaLion.find_by(id: params[:id])
  erb :show
end

delete '/sealions/:id' do
  lion = SeaLion.find_by(id: params[:id])
  lion.destroy
  redirect '/sealions'
end

get '/sealions/:id/edit' do
  @lion = SeaLion.find(params[:id])
  erb :update
end

put '/sealions/:id/edit' do
  @lion = SeaLion.find(params[:id])
  @lion.update_attributes(name: params[:name],
                          location: params[:location],
                          favorite_food: params[:favorite_food])
  redirect "/sealions/#{@lion.id}"
end


