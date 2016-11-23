require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    p params
    erb(:index)
  end

  post '/names' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    p params
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
