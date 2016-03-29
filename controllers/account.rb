class AccountController < ApplicationController

  get '/'

  end

  post '/register'
    redirect '/personal'
  end

  post '/login'
    erb :profile
  end


end
