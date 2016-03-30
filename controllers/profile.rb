class ProfileController < ApplicationController
  get '/' do
      # binding.pry
      # p session[:personal]
      @personal_info = Personal.find session[:user_id]
      @contact_info = Contact.find session[:user_id]

      @meidcal_info = Medical.find session[:user_id]
      @location_info = CampLocation.find session[:user_id]
      puts '---------------'
      puts @personal_info.name

      erb :profile, locals: {title: 'User Profile'}
  end
end
