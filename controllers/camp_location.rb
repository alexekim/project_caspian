class LocationController < ApplicationController

  before do
    @current_user = Account.find session[:user_id]

  end

  get '/' do
    erb :camp_location_form, locals: {title: 'Camp & Vehicle Location'}
  end

  post '/create' do
    @camp_create = CampLocation.create({
      :park_name     => params[:park_name],
      :site_number   => params[:site_number],
      :vehicle_make  => params[:vehicle_make],
      :vehicle_model => params[:vehicle_model],
      :vehicle_year  => params[:vehicle_year],
      :vehicle_color => params[:vehicle_color],
      :vehicle_plate => params[:vehicle_plate],
      :account       => @current_user
      })
      redirect '/profile'
      # redirect '/personal/view'
    end

  get '/update' do
    erb :camp_location_update, locals: {title: 'Update Camp & Vehicle Location'}
  end

end
