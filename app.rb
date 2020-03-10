require 'sinatra/base'
require './lib/player.rb'
require './lib/cpu.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

enable :sessions

get '/setup' do
  "Setup working!!"
end

get '/' do
  erb(:index)
end

post '/name' do
  player1 = Player.new(params[:name])
  cpu = Cpu.new
  $game =  Game.new(player1, cpu)
  redirect '/play'
end

get '/play' do
  @game = $game
  @player1 = @game.player1
  @cpu = @game.cpu

  erb(:play)
end

post '/choose-weapon' do
  @game = $game
  @game.p1move = params[:p1move]
  redirect '/game'
end

get '/game' do
  @game = $game
  @player1 = @game.player1
  @choice = @game.p1move
  erb(:game)
end

run! if app_file == $0

end
