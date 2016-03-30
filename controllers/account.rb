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

    password = BCrypt::Password.create(params[:password_hash])
    @account_create = Account.create({
      :email         => params[:email],
      :password_hash => password
    })

    if @account_create
      session[:logged_in] = true
      session[:email]  = params[:email]
      session[:user_id]   = @account_create.id
      redirect '/personal'
    else
      "Something went wrong"
    end
  end

  post '/login' do
    # redirect '/profile'
    # 2. Find user by email
    @personal_info = Account.find_by(:email => params[:email])
    # 3. Set user to @instance variable
    # 4. Set session info
    if @personal_info
      session[:logged_in] = true
      session[:user_id] = @personal_info.id
      erb :profile, locals: {title: 'Profile'}
    else
      status 403
      "error, logging in."
    end
  end

end
