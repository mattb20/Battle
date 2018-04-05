require 'sinatra/base'



class App < Sinatra::Base

 configure do
  enable :sessions
  set :session_secret, 'key'
end

  get '/' do

    erb (:index)

  end

  post '/names' do

    session[:player1name] = params[:'player1name']
    session[:player2name] = params[:'player2name']
    redirect '/play'



  end

  get '/play' do
    @player1name = session[:player1name]
    @player2name = session[:player2name]
    @hitpoints = 100
    erb :play

  end



end
