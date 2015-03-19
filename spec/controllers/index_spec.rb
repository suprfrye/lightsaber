require_relative '../spec_helper'

describe 'Index Controller' do

  it 'should process get / route' do
    get '/'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs: Isabel, Ralph, Tito, Lisa!")
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
    expect(last_response.body).to include("Hi, I'm Ralph. You can find me in Sea World. My favorite food is salmon.")
  end

  it 'should process put /sealions/:id route' do
    put '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end

  it 'should process delete /sealions/:id route' do
    delete '/sealions/:id'
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to include("Let's welcome our new cubs:")
  end
end
