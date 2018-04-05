require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
end
