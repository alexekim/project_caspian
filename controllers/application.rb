class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'caspian'
    )


  # enable session support for our application
  enable :sessions
  # allow static files to be put in /public and hosted at localhost/*
  set :public_folder, File.expand_path('../../public', __FILE__)
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)


  get '/' do
    erb :index, locals: {title: 'Home Page Title Tag'}
  end

  not_found do
    erb :notfound, locals: {title: '404 Not Found'}
  end

  # global app variables
  @is_user_logged_in = false

end
