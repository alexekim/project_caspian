class ApplicationController < Sinatra::Base

  require 'bundler'
  Bundler.require

  ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :database => 'camprice'
    )

  # allow static files to be put in /public and hosted at localhost/*
  set :public_folder, File.expand_path('../../public', __FILE__)
  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)


  not_found do
    erb :notfound
  end

end
