class MedicalController < ApplicationController
  get '/'
      erb :medical_form
  end

  post '/create'
    @medical_create = Medical.create({
      :allergies             => params[:allergies]
      :diseases              => params[:diseases]
      :medication_dosage     => params[:medication_dosage]
      :smoking               => params[:smoking]
      :alcohol               => params[:alcohol]
      :implants              => params[:implants]
      :organ_donor           => params[:organ_donor]
      })
      @medical_create.save
    redirect '/camp_location'
  end

  get '/update'
    erb :personal_update
  end


end