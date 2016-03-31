class ProfileController < ApplicationController
  get '/' do
      
      # p session[:personal]
      # @personal_info = Personal.find_by(account_id: session[:user_id])
      # @contact_info  = Contact.find_by(account_id: session[:user_id])
      # @medical_info  = Medical.find_by(account_id: session[:user_id])
      # @location_info = CampLocation.find_by(account_id: session[:user_id])

      @account = Account.find session[:user_id]
      # @account.contact_info.address



      erb :profile, locals: {title: 'User Profile'}
  end
end
