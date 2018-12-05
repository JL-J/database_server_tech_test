require 'sinatra'

class App < Sinatra::Base
  set :port, 4000

  get '/' do
    "Hello world"
  end

  run! if app_file == $0

end
