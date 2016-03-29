class AccountController < ApplicationController

  get '/'
    erb :index
  end

  post '/register'
  @is_user_duplicate = true
    if (params[:password_hash] != params[:password_hash])
      status 403
  end

  @all_users = Account.all
  @all_users.each do |user|
    if (user.email == params[:email])
      status 403
  end

  @account_create = Account.create({
    :email         => params[:emaill]
    :password_hash => BCrypt::Password.create(params[:password_hash])
  }).save
    redirect '/personal'
  end

  post '/login'
    erb :profile
  end

end
