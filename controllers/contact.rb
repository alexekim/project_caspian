class ContactController < ApplicationController

  get '/'
    erb :contact_form
  end



  post '/create'
  @contact_create = Contact.create({
    :phone          => params[:phone]
    :address        => params[:address]
    :city           => params[:city]
    :state          => params[:state]
    :zip_code       => params[:zip_code]
    :country        => params[:country]
    :ice_name       => params[:ice_name]
    :ice_relation   => params[:ice_relation]
    :ice_phone      => params[:ice_phone]
    })
    @contact_create.save
  redirect '/medical'
  end

  get '/update'
    erb :contact_update
  end


end
