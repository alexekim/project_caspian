class PersonalController < ApplicationController
  before do
    @current_user = Account.find session[:user_id]
  end

  get '/' do
    erb :personal_form, locals: {title: 'Personal Information'}
  end

  post '/create' do
    @personal_create = Personal.create({
      :name       => params[:name],
      :birthdate  => params[:birthdate],
      :gender     => params[:gender],
      :height     => params[:height],
      :weight     => params[:weight],
      :blood_type => params[:blood_type],
      :account    => @current_user
    })
    redirect '/contact'
  end

  get '/update' do
    erb :personal_update, locals: {title: 'Update Personal Information'}
  end

  post '/update' do
    erb :profile
  end

end
