require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions
  # set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name1])
    $player_2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @name1 = $player_1.name
    @name2 = $player_2.name
    erb :attack
  end

end
