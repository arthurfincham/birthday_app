require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/user.rb'
require './lib/saver.rb'

class Birthday < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    user = User.new(params[:name], params[:day], params[:month])
    @saver = Saver.create(user.name, user.day, user.month)
    redirect '/results'
  end

  get '/results' do
    @saver = Saver.instance
    @name = @saver.name
    @day = @saver.day
    @month = @saver.month
    @calc_days = @saver.calc_days
    erb(:results)
  end

  run! if app_file == $0
end