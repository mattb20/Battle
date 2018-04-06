require 'sinatra/base'
require './lib/player_class'
require './lib/game'



class App < Sinatra::Base

  # $player1hitpoints = 100
  # $player2hitpoints = 100

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

    @player1 = Player.new(session[:player1name])
    @player2 = Player.new(session[:player2name])

    erb :play



  end


  get '/attack2' do
    @player1 = Player.new(session[:player1name])
    @player2 = Player.new(session[:player2name])

    # @player_1_name = session[:player1name]
    # @player_2_name = session[:player2name]
    erb :attack2

  end

  get '/attack1' do
    @player1 = Player.new(session[:player1name])
    @player2 = Player.new(session[:player2name])


    erb :attack1
  end

  # post '/play' do
  #   erb :play
  #   $player1hitpoints = $player1hitpoints -= 10
  #   $player2hitpoints = $player2hitpoints -= 10
  #   redirect '/play2'
  # end

  # post '/play' do
  #   redirect
  # end



end
