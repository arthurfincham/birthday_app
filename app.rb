require 'sinatra'
require 'sinatra/reloader' if development?

class Birthday < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/secret' do
    "qw4erqerfg"
  end
run! if app_file == $0
end