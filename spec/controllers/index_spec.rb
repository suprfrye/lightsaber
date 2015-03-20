require_relative '../spec_helper'

describe 'Index Controller' do
  before :each do
    sea_lion1 = SeaLion.create(name: "Nat", location: "NY", favorite_food: "rice cakes")
    sea_lion2 = SeaLion.create(name: "Pat", location: "NC", favorite_food: "octopus")
    sea_lion3 = SeaLion.create(name: "Alex", location: "NH", favorite_food: "gummy bears")
  end

  it 'should process get / route' do
    get '/'
    expect(last_response).to be_redirect
    follow_redirect!
    p last_response
    expect(last_response.body).to include("Let's welcome our new cubs: Nat, Pat, Alex")
  end

  it 'should process get /sealions route' do
    get '/sealions'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end

  it 'should process post /sealions route' do
    post '/sealions'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end

  it 'should process get /sealions/:id route' do
    get '/sealions/2'
    expect(last_response).to be_ok
    expect(last_response.body).to include("Hi, I'm Pat.\nYou can find me in NC.\nMy favorite food is octopus.")
  end

  it 'should process put /sealions/:id route' do
    put '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end

  it 'should process delete /sealions/:id route' do
    delete "/sealions/5"
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end
end
