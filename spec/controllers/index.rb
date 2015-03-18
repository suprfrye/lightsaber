get '/' do
  "Welcome to the Sea Lions Den."
end

get '/sealions' do
  sea_lions = ['Greg', 'Tiffany', 'Rosetta', 'Tommy']
  "Let's welcome the new cubs!"
  sea_lions.each do |lion|
    "Say 'hello' to #{lion}."
  end
end

post '/sealions' do
  redirect '/'
end

get '/sealions/:id' do
  "Tommy was born on Pier 39. He is the younger brother of Tiffany and Rosetta"
end

put '/sealions/:id' do
  redirect '/sealions/:id'
end

delete '/sealions/:id' do
  redirect '/sealions/:id'
end
