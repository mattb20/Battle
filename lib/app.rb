require 'sinatra/base'

class App < Sinatra::Base
  get '/' do

    erb (:index)

  end

  post '/names' do

    @player1name = params[:'player1name']
    @player2name = params[:'player2name']

    erb :play



  end



end
