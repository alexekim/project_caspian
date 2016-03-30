class ContactController < ApplicationController

  before do
    @current_user = Account.find session[:user_id]
  end

  get '/' do
    erb :contact_form, locals: {title: 'Contact Information'}
  end

  post '/create' do
  @contact_create = @current_user.contacts.create({
    :phone          => params[:phone],
    :address        => params[:address],
    :city           => params[:city],
    :state          => params[:state],
    :zip_code       => params[:zip_code],
    :country        => params[:country],
    :ice_name       => params[:ice_name],
    :ice_relation   => params[:ice_relation],
    :ice_phone      => params[:ice_phone]
    })
    @contact_create.save
  redirect '/medical'
  end

  get '/update' do
    erb :contact_update, locals: {title: 'Update Contact Information'}
  end


end
