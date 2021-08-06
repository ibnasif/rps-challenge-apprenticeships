require 'sinatra/base'
require_relative "lib/ai.rb"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect'/play'
    
  end

  get'/play' do
    @name = session[:name]
    @option = session[:option]
    @ai = session[:ai]
    
    
    erb:play
  end

  post'/option'do
    session[:option] = params[:option]
    session[:ai] = Ai.new.choose
    
    redirect '/play'
  end

  

  run! if app_file == $0
end
