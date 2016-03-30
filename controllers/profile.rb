class ProfileController < ApplicationController
  get '/' do
      # binding.pry
      # p session[:personal]
      @personal_info = Personal.find(1)
      puts '---------------'
      puts @personal_info.name

      erb :profile, locals: {title: 'User Profile'}
  end
end
