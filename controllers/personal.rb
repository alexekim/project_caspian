class PersonalController < ApplicationController
  get '/'
      erb :personal_form
  end

  post '/create'
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

  get '/update'
    erb :personal_update
  end


end
