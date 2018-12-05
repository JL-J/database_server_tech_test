# App Controller
require 'sinatra'
require './lib/memory.rb'

class App < Sinatra::Base
  set :port, 4000
  enable :sessions

  before do
    session[:memory] ||= Memory.new
  end

  get '/' do
    redirect '/set'
  end

  get '/set' do
    @memory = session[:memory]
    @memory.save_data(params)
    erb :set
  end

  get '/get' do
    @memory = session[:memory]
    @key = params[:somekey]
    @value = @memory.return_data(@key)
    erb :get
  end

  run! if app_file == $0

end
