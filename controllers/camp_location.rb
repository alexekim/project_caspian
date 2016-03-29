class LocationController < ApplicationController

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
      :vehicle_plate => params[:vehicle_plate]
      })
      @camp_create.save
      redirect '/profile'
    end

  get '/update' do
    erb :camp_location_update, locals: {title: 'Update Camp & Vehicle Location'}
  end

end
