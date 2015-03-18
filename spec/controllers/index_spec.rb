require_relative '../spec_helper'

describe 'Index Controller' do

  it 'should process get / route' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Welcome to the Sea Lions Den.")
  end

  it 'should process get /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Let's welcome the new cubs")
  end

  it 'should process post /sealions route' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome the new cubs:")
  end

  it 'should process get /sealions/:id route' do
    get '/sealions/:id'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Tommy was born on Pier 39. He is the younger brother of Tiffany and Rosetta")
  end

  it 'should process put /sealions/:id route' do
    put '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Tommy was born on Pier 39.")
  end

  it 'should process delete /sealions/:id route' do
    delete '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Tommy was born on Pier 39.")
  end
end
