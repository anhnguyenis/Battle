require 'sinatra/base'


class Battle < Sinatra::Base
# get '/' do
#   'Testing infrastructure working!'
# end

enable :sessions

get '/' do
  erb :index
end

post '/names' do
  $player1 = params[:name1]
  $player2 = params[:name2]
    # @name1 = params[:name1]
    # @name2 = params[:name2]
  redirect('/play')
end

get '/play' do
  @name1 = $player1
  @name2 = $player2
  erb :play
end

get '/attack' do
  @name1 = $player1
  @name2 = $player2
  erb :attack
end

  run! if app_file == $0
end
