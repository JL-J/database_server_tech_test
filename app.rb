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
    "Hello world"
  end

  get '/set' do
    @memory = session[:memory]
    @memory.save_data(params)
    erb :set
  end

  run! if app_file == $0

end
