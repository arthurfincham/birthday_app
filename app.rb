require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/user.rb'

class Birthday < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    $user = User.new(params[:name], params[:birthday])
    redirect '/results'
  end

  get '/results' do
    @name = $user.name
    @birthday = $user.birthday
    erb(:results)
  end

  run! if app_file == $0
end