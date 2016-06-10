require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

	post '/names' do
    $game = Game.new(Player.new(params[:player1]), Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    $game.attack($game.player_2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
