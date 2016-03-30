class AccountController < ApplicationController

  get '/' do
    erb :index
  end

  post '/register' do
    @is_user_duplicate = true
    if (params[:password_hash] != params[:password_hash])
      status 403
    end

    @all_users = Account.all
    @all_users.each do |user|
      if (user.email == params[:email])
        status 403
      end
    end

    @account_create = Account.create({
      :email         => params[:email],
      :password_hash => BCrypt::Password.create(params[:password_hash])
    }).save
    redirect '/personal'
  end

  post '/login' do
    # redirect '/profile'
    erb :profile, locals: {title: 'Profile'}
  end

end
