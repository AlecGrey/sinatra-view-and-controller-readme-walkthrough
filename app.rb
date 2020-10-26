require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "There doesn't seem to be anything to show here."
  end
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed_input = params["string"].reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end