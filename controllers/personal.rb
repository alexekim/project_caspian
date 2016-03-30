class PersonalController < ApplicationController
  before do
    @current_user = Account.find session[:user_id]
  end

  get '/' do
    erb :personal_form, locals: {title: 'Personal Information'}
  end

  post '/create' do
    @personal_create = @current_user.personals.create({
      :name       => params[:name],
      :birthdate  => params[:birthdate],
      :gender     => params[:gender],
      :height     => params[:height],
      :weight     => params[:weight],
      :blood_type => params[:blood_type]
    })
    # session[:personal] = params
    redirect '/contact'
  end

  get '/update' do
    erb :personal_update, locals: {title: 'Update Personal Information'}
  end

  # get '/view'
  #   @personal_all = Personal.all
  #   erb :profile
  # end
end
