class MedicalController < ApplicationController

  before do
    @current_user = Account.find session[:user_id]
  end

  get '/' do
      erb :medical_form, locals: {title: 'Medical Information'}
  end

  post '/create' do
    @medical_create = @current_user.medicals.create({
      :allergies             => params[:allergies],
      :diseases              => params[:diseases],
      :medication_dosage     => params[:medication_dosage],
      :smoking               => params[:smoking],
      :alcohol               => params[:alcohol],
      :implants              => params[:implants],
      :organ_donor           => params[:organ_donor]
      })
      @medical_create.save
    redirect '/camp_location'
  end

  get '/update' do
    erb :personal_update, locals: {title: 'Update Medical Information'}
  end


end
