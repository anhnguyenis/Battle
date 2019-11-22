require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
# get '/' do
#   'Testing infrastructure working!'
# end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player1 =  Player.new(params[:name1])
  $player2 =  Player.new(params[:name2])
    # @name1 = params[:name1]
    # @name2 = params[:name2]
  redirect('/play')
end

get '/play' do
  @player1 = $player1
  @player2 = $player2
  erb :play
end

get '/attack' do
  @player1 = $player1
  @player2 = $player2
  # @player_1 = $player1
  # @player_2 = $player2
  @player1.attack(@player2)
  erb :attack
end

  run! if app_file == $0
end
