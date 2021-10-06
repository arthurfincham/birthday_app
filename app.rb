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
    $user = User.new(params[:name], params[:day], params[:month])
    redirect '/results'
  end

  get '/results' do
    @name = $user.name
    @day = $user.day
    @month = $user.month
    @calc_days = $user.calc_days
    erb(:results)
  end

  run! if app_file == $0
end