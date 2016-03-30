class ProfileController < ApplicationController
  get '/' do
      # binding.pry
      # p session[:personal]
      @personal_info = Personal.find_by(account_id: session[:user_id])
      @contact_info  = Contact.find_by(account_id: session[:user_id])
      @medical_info  = Medical.find_by(account_id: session[:user_id])
      @location_info = CampLocation.find_by(account_id: session[:user_id])
      # binding.pry
      # puts '---------------'
      # puts @personal_info.name
      erb :profile, locals: {title: 'User Profile'}
  end
end
