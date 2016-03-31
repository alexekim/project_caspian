class AccountController < ApplicationController
  get '/' do
    erb :index
  end

  post '/register' do
    # @is_user_duplicate = true
    # if (params[:password_hash] != params[:password_hash])
    #   status 403
    # end

    # @all_users = Account.all
    # @all_users.each do |user|
    #   if (user.email == params[:email])
    #     status 403
    #   end
    # end

    password = BCrypt::Password.create(params[:password_hash])
    @account_create = Account.create({
      :email         => params[:email],
      :password_hash => password
    })

    if @account_create
      session[:logged_in] = true
      session[:email]     = params[:email]
      session[:user_id]   = @account_create.id
      redirect '/personal'
    else
      "Something went wrong"
  end
  end

  post '/login' do
    @account = Account.find_by(:email => params[:email])
    # puts @account.personal
    # 3. Set user to @instance variable
    # 4. Set session info

    if @account
      session[:logged_in] = true
      session[:user_id] = @account.id
      redirect '/profile'
    else
      status 403
      "error, logging in."
    end
  end

end
