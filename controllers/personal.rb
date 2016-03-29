class PersonalController < ApplicationController
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
      :blood_type => params[:blood_type]
      })
      @personal_create.save
    redirect '/medical'
  end

  get '/update' do
    erb :personal_update, locals: {title: 'Update Personal Information'}
  end


end
