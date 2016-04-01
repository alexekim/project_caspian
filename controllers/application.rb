class ApplicationController < Sinatra::Base

  # enable session support for our application
  enable :sessions


  # allow static files to be put in /public and hosted at localhost/*
  set :public_folder, File.expand_path('../../public', __FILE__)
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)



  get '/' do
    # session[:message] = 'global message test'
    erb :index, locals: {title: 'Caspian | Emergency Management'}
  end

  not_found do
    erb :notfound, locals: {title: '404 Not Found'}
  end

  # global app variables
  @is_user_logged_in = false

end
